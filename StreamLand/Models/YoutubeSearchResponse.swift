//
//  YoutubeSearchResponse.swift
//  StreamLand
//
//  Created by Vaibhav on 21/08/24.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String?
}
