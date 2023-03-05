//
//  ForceData.swift
//  SuperKnee
//
//  Created by nate wert on 3/4/23.
//

import Foundation

struct ForceData: Codable {
    var firstData: [Float]
    var secondData: [Float]
    var thirdData: [Float]
}

static let fakeForceData = ForceData(firstData: [], secondData: [], thirdData: [])
