//
//  ForceDataManager.swift
//  SuperKnee
//
//  Created by nate wert on 3/4/23.
//

import Foundation

class ForceDataManager: ObservableObject {
    @Published var mostRecentData: [Float]
    @Published var timeData: [Float]
    
    init() {
        mostRecentData = [Float](repeating: 0.0, count: 20)
        timeData = [Float](repeating: 0.0, count: 20)
    }
    
    func getRecentData() async -> (String, ForceData) {
        guard let url = URL(string: "http://143.215.84.249:5000/") else {
            return ("bad url", fakeForceData)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        var data: Data
        
        do {
            (data, _) = try await URLSession.shared.data(for: request)
        } catch {
            return ("url session failed", fakeForceData)
        }
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        let forceData: ForceData
        
        do {
            forceData = try decoder.decode(ForceData.self, from: data)
        } catch {
            return ("failed to decode data", fakeForceData)
        }
        
        return ("", forceData)
    }
}
