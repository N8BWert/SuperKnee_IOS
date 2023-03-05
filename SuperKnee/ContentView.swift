//
//  ContentView.swift
//  Consumer Exoskeleton
//
//  Created by mgordon on 3/4/23.
//

import SwiftUI
import Charts
import Foundation
import CoreBluetooth
import OSLog

struct ContentView: View {
    var body: some View {
        VStack {
            
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarChart()
    }
}

struct BarChart: View {
    var body: some View {
        VStack {
            GroupBox ( "This is a graph") {
                Chart {
                    ForEach(myGraph) {
                        LineMark(
                            x: .value("Time", $0.x),
                            y: .value("Force", $0.y)
                        )
                    }
                }
            }
        }
    }
}

struct XYPair: Identifiable {
    let id = UUID()
    let x: Double
    let y: Double
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}


let myGraph: [XYPair] = [
    XYPair(x: 1, y: 1),
]

