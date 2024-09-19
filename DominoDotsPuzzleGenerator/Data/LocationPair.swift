//
//  LocationPair.swift
//  DominoDotsPuzzleGenerator
//
//  Created by Hasan Edain on 9/19/24.
//

class LocationPair: CustomDebugStringConvertible {
    var locationA: Location
    var locationB: Location

    var debugDescription: String {
        return "A: (\(locationA)), (\(locationB))"
    }

    init(locationA: Location, locationB: Location) {
        self.locationA = locationA
        self.locationB = locationB
    }
}
