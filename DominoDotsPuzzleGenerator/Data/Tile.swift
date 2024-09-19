//
//  Tile.swift
//  DominoDotsPuzzleGenerator
//
//  Created by Hasan Edain on 9/19/24.
//

import Foundation

class Tile: Identifiable, CustomDebugStringConvertible {
    var halfA: HalfTile
    var halfB: HalfTile
    var id: UUID

    var debugDescription: String {
        return "A: (\(halfA)), B: (\(halfB))"
    }

    init(halfA: HalfTile, halfB: HalfTile, id: UUID =  UUID()) {
        self.halfA = halfA
        self.halfB = halfB
        self.id = id
    }
}
