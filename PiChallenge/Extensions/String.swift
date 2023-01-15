//
//  String.swift
//  PiChallenge
//
//  Created by likeadeveloper on 15/1/23.
//

import Foundation
import Darwin

extension String {
    static var versionNumber: Self? {
        Bundle
            .main
            .infoDictionary?["CFBundleShortVersionString"] as? String
    }
    static var versionNumberFormated: Self {
        if let info = String.versionNumber {
            return "Ver. \(info)"
        }
        return "-"
    }
    static var piDecimals: Self {
        ""
    }
}
