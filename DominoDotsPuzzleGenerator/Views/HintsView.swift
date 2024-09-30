//
//  HintsView.swift
//  DominoDotsPuzzleGenerator
//
//  Created by Hasan Edain on 9/19/24.
//

import SwiftUI

struct HintsView: View {
    var puzzle: Puzzle

    var body: some View {
        hintTiles
    }

    @ViewBuilder var hintTiles: some View {
        let hintCollection = puzzle.gatherHints()
        HStack (spacing: 8){
            ForEach(hintCollection.tiles.indices, id: \.self) { tileIndex in
                let tile = hintCollection.tiles[tileIndex]
                TileView(tile: tile)
                    .background(.white)
            }
        }
        .padding(8)
        .border(.black)
    }
}

#Preview {
    let puzzle = Puzzle.create(width: 6, height: 6, numberOfHints: 7)

    HintsView(puzzle: puzzle)
        .padding()
}
