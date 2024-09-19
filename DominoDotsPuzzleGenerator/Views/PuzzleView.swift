//
//  PuzzleView.swift
//  DominoDotsPuzzleGenerator
//
//  Created by Hasan Edain on 9/18/24.
//

import SwiftUI

struct PuzzleView: View {
    var puzzle: Puzzle

    var body: some View {
        VStack (spacing:0) {
            ForEach(puzzle.halfTiles.indices, id: \.self) { yIndex in
                VStack (spacing:0) {
                    HStack (spacing:0) {
                        ForEach(puzzle.halfTiles[yIndex].indices, id: \.self) { xIndex in
                            let halfTile = puzzle.halfTile(at: Location(x: xIndex, y: yIndex))
                            HalfTileView(halfTile: halfTile, hintValue: 0)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    let puzzle = Puzzle.create(width: 6, height: 6, numberOfHints: 7)

    PuzzleView(puzzle: puzzle)
}
