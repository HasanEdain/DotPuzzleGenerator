//
//  Hint.swift
//  DominoDotsPuzzleGenerator
//
//  Created by Hasan Edain on 9/18/24.
//

import Foundation

class Hint: Identifiable, Equatable, Comparable, CustomDebugStringConvertible {


    var hintNumber: Int
    var id: UUID

    var debugDescription: String {
        return "\(hintNumber)"
    }

    init(hintNumber: Int, id: UUID = UUID()) {
        self.hintNumber = hintNumber
        self.id = id
    }

    static func == (lhs: Hint, rhs: Hint) -> Bool {
        return lhs.hintNumber == rhs.hintNumber
    }

    static func < (lhs: Hint, rhs: Hint) -> Bool {
        return lhs.hintNumber < rhs.hintNumber
    }
}
