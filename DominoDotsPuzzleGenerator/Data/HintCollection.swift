//
//  HintCollection.swift
//  DominoDotsPuzzleGenerator
//
//  Created by Hasan Edain on 9/19/24.
//

import Foundation

class HintCollection {
    var tiles: [Tile] = [Tile]()

    func clear() {
        tiles.removeAll()
    }

    func add(tile: Tile) {
        tiles.append(tile)
    }
}
