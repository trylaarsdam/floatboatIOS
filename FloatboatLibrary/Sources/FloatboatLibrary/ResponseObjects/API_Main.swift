//
//  File.swift
//  
//
//  Created by Todd Rylaarsdam on 7/2/22.
//

import Foundation

public struct API_Main: Decodable {
    public init(status: String) {
        self.status = status
    }
    
    var status: String
}
