//
//  Mission.swift
//  Moonshot
//
//  Created by Ken Muyesu on 21/01/2022.
//

import Foundation

struct Mission: Codable, Identifiable {
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "Not Available"
    }
    
    //nested struct
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
}
