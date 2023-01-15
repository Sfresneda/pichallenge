//
//  MainViewTests.swift
//  PiChallengeTests
//
//  Created by likeadeveloper on 15/1/23.
//

import XCTest
@testable import PiChallenge

final class MainViewTests: XCTestCase {
    var sut: MainViewModel!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = MainViewModel()
        continueAfterFailure = true
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }

    func test_viewTitle_must_return_pichallenge() {
        // given
        let expectedTitle = "πChallenge"

        // when
        let title = sut.viewTitle

        // then
        XCTAssertEqual(expectedTitle, title)
    }
    func test_buttonsAtScreen_must_return_three_bottom_items() {
        // given
        let expectedNumberOfItems = 3

        // when
        let items = sut.buttonsAtBottom.count

        // then
        XCTAssertEqual(expectedNumberOfItems, items)
    }
    func test_buttonsAtScreen_must_contain_one_upper_buttons() {
        // given
        let expectedNumberOfItems = 1

        // when
        let items = sut.buttonsAtNavigationBar.count

        // then
        XCTAssertEqual(expectedNumberOfItems, items)
    }
    func test_versionNumber_must_return_bundle_version() {
        // given
        let expectedVersionNumber = String.versionNumberFormated

        // when
        let version = sut.versionNumber

        // then
        XCTAssertEqual(expectedVersionNumber, version)
    }
    func test_backgroundLabel_must_contains_first_1000_pi_decimals() {
        // given
        let expectedContent: AttributedString = ""

        // when
        let backgroundLabelContent = sut.backgroundLabelContent

        // then
        XCTFail("to implement")
        XCTAssertEqual(expectedContent, backgroundLabelContent)
    }
}
