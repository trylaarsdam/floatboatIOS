//
//  File.swift
//  
//
//  Created by Todd Rylaarsdam on 7/2/22.
//

import Foundation

public struct API_GetVideo: Decodable {
    public init(status: String, quality360: String, quality480: String, quality720: String, quality1080: String) {
        self.status = status
        self.quality360 = quality360
        self.quality480 = quality480
        self.quality720 = quality720
        self.quality1080 = quality1080
    }
    
    public var status: String
    public var quality360: String
    public var quality480: String
    public var quality720: String
    public var quality1080: String
}
