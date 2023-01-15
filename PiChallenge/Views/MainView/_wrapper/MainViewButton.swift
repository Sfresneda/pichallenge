//
//  MainViewButton.swift
//  PiChallenge
//
//  Created by likeadeveloper on 15/1/23.
//

import Foundation

enum MainViewButton: CaseIterable {
    case game
    case score
    case archivement
    case settings
}

extension MainViewButton {
    static var bottom: [Self] {
        [.game, .score, .archivement]
    }
    static var navigationBar: [Self] {
        [.settings]
    }
}
