//
//  PuzzleTests.swift
//  DominoDotsPuzzleGeneratorTests
//
//  Created by Hasan Edain on 9/19/24.
//

import Testing

@testable import DominoDotsPuzzleGenerator

struct PuzzleTests {

    @Test func testMaxHint() async throws {
        let puzzle = Puzzle.create(width: 6, height: 6, numberOfHints: 7)
        let numberOfHints = puzzle.hintLocations.count
        print("Hint Locations: \(puzzle.hintLocations)")
        let maxHint = puzzle.maxHintNumber()
        #expect(maxHint == (numberOfHints+2))
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    }

}
