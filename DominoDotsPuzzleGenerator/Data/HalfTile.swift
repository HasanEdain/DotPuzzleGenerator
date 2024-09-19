//
//  HalfTile.swift
//  DominoDotsPuzzleGenerator
//
//  Created by Hasan Edain on 9/18/24.
//

import Foundation

class HalfTile: Identifiable, Equatable, CustomDebugStringConvertible {
    var id: UUID
    var value: Int

    var debugDescription: String {
        return "\(value)"
    }

    init(id: UUID = UUID(), value: Int) {
        self.id = id
        self.value = value
    }

    static func == (lhs: HalfTile, rhs: HalfTile) -> Bool {
        lhs.value == rhs.value
    }

    static func random() -> HalfTile {
        let value = Int.random(in: 0...6)

        return HalfTile(value: value)
    }
}
