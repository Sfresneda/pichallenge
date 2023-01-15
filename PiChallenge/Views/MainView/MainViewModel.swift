//
//  MainViewModel.swift
//  PiChallenge
//
//  Created by likeadeveloper on 15/1/23.
//

import Foundation

final class MainViewModel: ObservableObject {
    var viewTitle: String = {
        "πChallenge"
    }()
    var buttonsAtBottom: [MainViewButton] = {
        MainViewButton.bottom
    }()
    var buttonsAtNavigationBar: [MainViewButton] = {
        MainViewButton.navigationBar
    }()
    var versionNumber: String = {
        .versionNumberFormated
    }()
    var backgroundLabelContent: AttributedString = {
        AttributedString(stringLiteral: .piDecimals)
    }()
}
