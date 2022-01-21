//
//  Mission.swift
//  Moonshot
//
//  Created by Ken Muyesu on 21/01/2022.
//

import Foundation

struct Mission: Codable, Identifiable {
    
    //nested struct
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
