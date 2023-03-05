//
//  ForceData.swift
//  SuperKnee
//
//  Created by nate wert on 3/4/23.
//

import Foundation

struct ForceData: Codable {
    var firstData: [String]
    var secondData: [String]
    var thirdData: [String]
}

let fakeForceData = ForceData(firstData: [], secondData: [], thirdData: [])
