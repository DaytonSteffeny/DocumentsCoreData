//
//  Document.swift
//  Documents
//
//  Created by Dayton on 2/21/19.
//  Copyright © 2019 Dayton Steffeny. All rights reserved.
//

import Foundation

struct Document {
    let url: URL
    let name: String
    let size: UInt64
    let modificationDate: Date

    var content: String? {
        get {
            return try? String(contentsOf: url, encoding: .utf8)
        }
    }
}
