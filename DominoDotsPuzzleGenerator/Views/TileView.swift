//
//  TileView.swift
//  DominoDotsPuzzleGenerator
//
//  Created by Hasan Edain on 9/19/24.
//

import SwiftUI

struct TileView: View {
    var tile: Tile

    var body: some View {
        VStack(spacing: 4.0) {
            HalfTileView(halfTile: tile.halfA, hintValue: 1)
            HalfTileView(halfTile: tile.halfB, hintValue: 1)
        }
        .padding(4)
        .border(.black)
    }
}

#Preview {
    let halfTileOne = HalfTile(value: 1)
    let halfTileTwo = HalfTile(value: 2)
    let halfTileThree = HalfTile(value: 3)
    let halfTileFour = HalfTile(value: 4)
    let halfTileFive = HalfTile(value: 5)
    let halfTileSix = HalfTile(value: 6)
    let halfTileZero = HalfTile(value: 0)


    let tileOneFive = Tile(halfA: halfTileOne, halfB: halfTileFive)
    let tileTwoZero = Tile(halfA: halfTileTwo, halfB: halfTileZero)
    let tileFiveSix = Tile(halfA: halfTileFive, halfB: halfTileSix)
    let tileFourThree = Tile(halfA: halfTileFour, halfB: halfTileThree)

    HStack {
        TileView(tile: tileOneFive)
        TileView(tile: tileTwoZero)
        TileView(tile: tileFiveSix)
        TileView(tile: tileFourThree)
    }

}
