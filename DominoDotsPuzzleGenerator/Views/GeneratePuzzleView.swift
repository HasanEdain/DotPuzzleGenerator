    //
    //  GeneratePuzzleView.swift
    //  DominoDotsPuzzleGenerator
    //
    //  Created by Hasan Edain on 9/19/24.
    //

import SwiftUI

struct GeneratePuzzleView: View {
    @State var widthString: String = "5"
    @State var heightString: String = "5"
    @State var hintCountString: String = "5"

    @State var fileName: String = "DominoDot"

    @State var puzzle: Puzzle = Puzzle.create(width: 5, height: 5, numberOfHints: 5)

    @State private var saveCount: Int = 0

    var body: some View {
        VStack {
            HStack {
                VStack {
                    puzzleForm
                        .padding(8)
                    saveForm
                        .padding(8)
                }
                solvedPuzzleView
                    .padding(8)
                unsolvedPuzzleView
                    .padding(8)
            }
            HintsView(puzzle: puzzle)
        }
    }

    @ViewBuilder var puzzleForm: some View {
        Form {
            TextField(text: $widthString) {
                Label(
                    title: { Text("Width") },
                    icon: { Image(systemName: "arrow.left.and.right") }
                )
            }
            TextField(text: $heightString) {
                Label(
                    title: { Text("Height") },
                    icon: { Image(systemName: "arrow.up.and.down") }
                )
            }
            TextField(text: $hintCountString) {
                Label(
                    title: { Text("Hint Count") },
                    icon: { Image(systemName: "number") }
                )
            }
            Button("Generate") {
                gen()
            }
        }
    }

    @ViewBuilder var saveForm: some View {
        Form {
            TextField(text: $fileName) {
                Label(
                    title: { Text("File Name") },
                    icon: { Image(systemName: "doc.richtext") }
                )
            }
            Button("Save") {
                save()
            }
        }
    }

    @ViewBuilder var solvedPuzzleView: some View {
        PuzzleSolutionView(puzzle: puzzle)
    }

    @ViewBuilder var unsolvedPuzzleView: some View {
        PuzzleView(puzzle: puzzle)
    }

    @ViewBuilder var hintView: some View {
        HintsView(puzzle: puzzle).padding(16)
    }

    @MainActor func save() {
        let rendererSolved = ImageRenderer(content: solvedPuzzleView)
        let redererPuzzle = ImageRenderer(content: unsolvedPuzzleView)
        let renderHints = ImageRenderer(content: hintView)

        let homeURL = FileManager.default.homeDirectoryForCurrentUser
        let solvedUrl = homeURL.appending(path: "\(fileName)_\(saveCount)_solved.pdf")
        print("\(solvedUrl.absoluteString)")
        let unsolvedUrl = homeURL.appending(path: "\(fileName)_\(saveCount)_puzzle.pdf")
        let hintsUrl = homeURL.appending(path: "\(fileName)_\(saveCount)_hints.pdf")

        guard let width = Float(widthString) else  {
            return
        }
        guard let height = Float(heightString) else {
            return
        }

        rendererSolved.render { size, renderInContext in
            var box = CGRect(
                origin: .zero,
                size: .init(width: CGFloat(width*48), height: CGFloat(height*48))
            )

            guard let context = CGContext(solvedUrl as CFURL, mediaBox: &box, nil) else {
                return
            }

            context.beginPDFPage(nil)
            renderInContext(context)
            context.endPage()
            context.closePDF()
        }

        redererPuzzle.render { size, renderInContext in
            var box = CGRect(
                origin: .zero,
                size: .init(width: CGFloat(width*48), height: CGFloat(height*48))
            )

            guard let context = CGContext(unsolvedUrl as CFURL, mediaBox: &box, nil) else {
                return
            }

            context.beginPDFPage(nil)
            renderInContext(context)
            context.endPage()
            context.closePDF()
        }

        renderHints.render { size, renderInContext in
            var box = CGRect (origin: .zero, size: .init(width: CGFloat(puzzle.hintLocations.count*64)+96.0, height: CGFloat(3 * 48)))

            guard let context = CGContext(hintsUrl as CFURL, mediaBox: &box, nil) else {
                return
            }

            context.beginPDFPage(nil)
            renderInContext(context)
            context.endPage()
            context.closePDF()
        }

        self.saveCount = saveCount + 1
    }


    func gen() {
        guard let widthValue = Int(widthString) else {
            return
        }
        guard let heightValue = Int(heightString) else {
            return
        }
        guard let numberHintsValue = Int(hintCountString) else {
            return
        }

        puzzle = Puzzle.create(width: widthValue, height: heightValue, numberOfHints: numberHintsValue)
        puzzle.numberOfHints = numberHintsValue

    }
}

#Preview {
    GeneratePuzzleView()
}
