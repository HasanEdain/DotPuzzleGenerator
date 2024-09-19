//
//  Puzzle.swift
//  DominoDotsPuzzleGenerator
//
//  Created by Hasan Edain on 9/18/24.
//

import Foundation

class Puzzle {
    var halfTiles: [[HalfTile]]
    var hintLocations: [[Hint]]
    var width: Int
    var height: Int
    var numberOfHints: Int

    init(halfTiles: [[HalfTile]], hintLocations:[[Hint]] = [[Hint]](), width: Int, height: Int, numberOfHints: Int) {
        self.halfTiles = halfTiles
        self.width = width
        self.height = height
        self.numberOfHints = numberOfHints
        self.hintLocations = hintLocations
    }

    static func create(width: Int, height: Int, numberOfHints: Int) -> Puzzle {
        var tempHalfTiles = [[HalfTile]]()
        var tempHintLocations = [[Hint]]()

        for row in 0..<height {
            tempHalfTiles.append([HalfTile]())
            tempHintLocations.append([Hint]())
            for _ in 0..<width {
                tempHalfTiles[row].append(HalfTile.random())
                tempHintLocations[row].append(Hint(hintNumber: 0))
            }
        }
        let puzzle = Puzzle(halfTiles: tempHalfTiles, hintLocations: tempHintLocations, width: width, height: height, numberOfHints: numberOfHints)
        puzzle.createHints()

        return puzzle
    }

    func gatherHints() -> HintCollection {
        var hintLocationPairs = [LocationPair]()
        let max = maxHintNumber()
        for hintNum in 1...max {
            if let safePair:LocationPair = collectHint(number: hintNum) {
                hintLocationPairs.append(safePair)
            }
        }

        let hintCollection = HintCollection()
        hintLocationPairs.forEach { locationPair in
            let halfTileA = halfTile(at: locationPair.locationA)
            let halfTileB = halfTile(at: locationPair.locationB)
            let tile = Tile(halfA: halfTileA, halfB: halfTileB)
            hintCollection.add(tile: tile)
        }

        return hintCollection
    }

    func collectHint(number: Int) -> LocationPair? {
        var locationA: Location? = nil
        var locationB: Location? = nil

        for row in 0..<height {
            let rowHints = hintLocations[row]
            for column in 0..<width {
                let hint = rowHints[column]
                if hint.hintNumber == number {
                    if locationA == nil {
                        locationA = Location(x: column, y: row)
                    } else if locationB == nil {
                        locationB = Location(x: column, y: row)
                    } else {
                        print("Shouldn't get here")
                        return nil
                    }
                }
            }
        }

        guard let safeA = locationA else {
            return nil
        }

        guard let safeB = locationB else {
            return nil
        }

        return LocationPair(locationA: safeA, locationB: safeB)
    }

    func createHints() {
        for _ in 0...numberOfHints {
            createHintPair()
        }
    }

    func createHintPair() {
        var location = randomLocation()

        while canPlaceHint(at: location) == false {
            location = randomLocation()
        }

        var direction = Direction.random()
        var offsetLocation = Direction.location(movingIn: direction, from: location)
        var tryCount = 0
        while canPlaceHint(at: offsetLocation) == false && tryCount < 10 {
            direction = Direction.random()
            offsetLocation = Direction.location(movingIn: direction, from: location)
            tryCount = tryCount + 1
        }
        if tryCount > 9 {
            print("Failed to place hint")
        } else {
            let hintNumber = maxHintNumber() + 1
            updateHintNumber(location: location, value: hintNumber)
            updateHintNumber(location: offsetLocation, value: hintNumber)
            print("Hint Location: \(location) \(offsetLocation)")
        }

    }

    func maxHintNumber() -> Int {
        //TODO: FIXME:
        let flatHints = hintLocations.joined()

        let result = flatHints.max()

        guard let safeResult = result else {
            return 0
        }

        return safeResult.hintNumber
    }

    func updateHintNumber(location: Location, value: Int) {
        hintLocations[location.y][location.x].hintNumber = value
    }

    func hintValue(at: Location) -> Int {
        return hintLocations[at.y][at.x].hintNumber
    }

    func canPlaceHint(at: Location) -> Bool {
        if inBounds(location: at) == false {
            return false
        }
        let hintValue: Int = hintValue(at: at)

        if hintValue == 0 {
            return true
        } else {
            return false
        }
    }

    func inBounds(location: Location) -> Bool {
        if location.x < 0 {
            return false
        }
        if location.y < 0 {
            return false
        }
        if location.x >= width {
            return false
        }
        if location.y >= height {
            return false
        }

        return true
    }

    func randomLocation() -> Location {
        let xLoc = Int.random(in: 0..<width)
        let yLoc = Int.random(in: 0..<height)

        let location = Location(x: xLoc, y: yLoc)

        return location
    }

    func halfTile(at location: Location) -> HalfTile {
        return halfTiles[location.y][location.x]
    }

}
