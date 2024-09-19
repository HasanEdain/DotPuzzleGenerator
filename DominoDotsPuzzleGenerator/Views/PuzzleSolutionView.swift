//
//  PuzzleSolutionView.swift
//  DominoDotsPuzzleGenerator
//
//  Created by Hasan Edain on 9/18/24.
//

import SwiftUI

struct PuzzleSolutionView: View {
    var puzzle: Puzzle

    var body: some View {
        VStack (spacing:0) {
            ForEach(puzzle.halfTiles.indices, id: \.self) { yIndex in
                VStack (spacing:0) {
                    HStack (spacing:0) {
                        ForEach(puzzle.halfTiles[yIndex].indices, id: \.self) { xIndex in
                            halfTileView(xIndex: xIndex, yIndex: yIndex)
                        }
                    }
                }
            }
        }
    }

    @ViewBuilder func halfTileView(xIndex: Int, yIndex:Int) -> some View {
        let halfTile = puzzle.halfTile(at: Location(x: xIndex, y: yIndex))
        let hintNumber = puzzle.hintValue(at: Location(x: xIndex, y: yIndex))
        HalfTileView(halfTile: halfTile, hintValue: hintNumber)
    }
}

#Preview {
    let puzzle = Puzzle.create(width: 6, height: 6, numberOfHints: 7)

    PuzzleSolutionView(puzzle: puzzle)
}
