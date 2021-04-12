//
//  Thread.swift
//  gmail-client
//
//  Created by Praneet S on 09/04/21.
//

import Foundation

struct Thread : Codable {
    let id: String?
    let snippet: String?
    let historyId: String?
    let messages: [Message]?
}

struct ThreadList : Codable {
    let threads: [Thread]?
    let nextPageToken: String?
    let resultSizeEstimate: Int?
}

struct ThreadModifyBody : Codable {
      let addLabelIds: [String]?
      let removeLabelIds: [String]?
}
