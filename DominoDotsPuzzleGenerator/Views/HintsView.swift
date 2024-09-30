//
//  HintsView.swift
//  DominoDotsPuzzleGenerator
//
//  Created by Hasan Edain on 9/19/24.
//

import SwiftUI

struct HintsView: View {
    var puzzle: Puzzle
    let rowHeight: CGFloat = 108.0
    var body: some View {
        hintTiles
    }

    @ViewBuilder var hintTiles: some View {
        let hintCollection = puzzle.gatherHints()
        let columns = [GridItem(.flexible(minimum: rowHeight)),
                       GridItem(.flexible(minimum: rowHeight)),
                       GridItem(.flexible(minimum: rowHeight))]
        LazyHGrid (rows: columns, spacing: 4) {
            ForEach(hintCollection.tiles.indices, id: \.self) { tileIndex in
                let tile = hintCollection.tiles[tileIndex]
                TileView(tile: tile)
                    .background(.white)
            }
        }
        .padding(4)
        .border(.black)
    }
}

#Preview {
//    let puzzle4 = Puzzle.create(width: 6, height: 6, numberOfHints: 4)
    let puzzle5 = Puzzle.create(width: 6, height: 6, numberOfHints: 5)
//    let puzzle6 = Puzzle.create(width: 6, height: 6, numberOfHints: 6)
//    let puzzle7 = Puzzle.create(width: 6, height: 6, numberOfHints: 7)
//    let puzzle11 = Puzzle.create(width: 12, height: 12, numberOfHints: 11)
//    let puzzle12 = Puzzle.create(width: 12, height: 12, numberOfHints: 12)
//    let puzzle15 = Puzzle.create(width: 15, height: 15, numberOfHints: 15)
//    let puzzle17 = Puzzle.create(width: 15, height: 15, numberOfHints: 17)
    VStack {
        HintsView(puzzle: puzzle5)
            .padding()
//        HintsView(puzzle: puzzle5)
//            .padding()
//        HintsView(puzzle: puzzle6)
//            .padding()
//        HintsView(puzzle: puzzle7)
//            .padding()
    }
}
