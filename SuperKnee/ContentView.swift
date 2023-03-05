//
//  ContentView.swift
//  SuperKnee
//
//  Created by nate wert on 3/4/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var forceDataManager: ForceDataManager
    
    @State var firstData: [Float] = [0.0]
    @State var secondData: [Float] = [0.0]
    
    var body: some View {
        Text("Hello, world!")
            .padding()
        
        Text("First Data: \(firstData[0])")
            .padding()
        
        Text("Second Data: \(secondData[0])")
        
        Button(action: {
            Task {
                let (err, data) = await forceDataManager.getRecentData()
                if err != "" {
                    print(err)
                } else {
                    var newFirstData: [Float] = []
                    for data in data.firstData {
                        newFirstData.append( Float(data) ?? 0.0)
                    }
                    firstData = newFirstData
                    print(newFirstData)
                    var newSecondData: [Float] = []
                    for data in data.secondData {
                        newSecondData.append(Float(data) ?? 0.0)
                    }
                    secondData = newSecondData
                    print(newSecondData)
                }
            }
        }, label: {
            Text("generate force data")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
