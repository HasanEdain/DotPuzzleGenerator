//
//  Direction.swift
//  DominoDotsPuzzleGenerator
//
//  Created by Hasan Edain on 9/18/24.
//

import Foundation

enum Direction: CaseIterable {
    case north
    case south
    case east
    case west

    static func location(movingIn: Direction, from: Location) -> Location {
        switch movingIn {
            case .east:
                return Location(x: from.x + 1, y: from.y)
            case .west:
                return Location(x: from.x - 1, y: from.y)
            case .south:
                return Location(x: from.x, y: from.y + 1)
            case .north:
                return Location(x: from.x, y: from.y - 1)
        }
    }


    static func random() -> Direction {
        let all = Direction.allCases

        return all.randomElement() ?? .north
    }
}
