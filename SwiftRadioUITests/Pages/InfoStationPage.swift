//
//  InfoStationPage.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 27.05.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

class InfoStationPage: CommonPage {
    
    // MARK: - Initializers
    
    init(app: XCUIApplication) {
        super.init(
            view: app.otherElements[AccessibilityIDs.InfoStationPage.screen.rawValue],
            app: app
        )
    }
    
    //MARK: UI elements
    
    private lazy var stationImageInfo: XCUIElement = {
        app.images[AccessibilityIDs.InfoStationPage.stationImageInfo.rawValue]
    }()
    
    private lazy var stationIconInfo: XCUIElement = {
        app.images[AccessibilityIDs.InfoStationPage.stationIconInfo.rawValue]
    }()
    
    private lazy var stationLongDescInfo: XCUIElement = {
        app.staticTexts[AccessibilityIDs.InfoStationPage.stationLongDescInfo.rawValue]
    }()
    
    private lazy var okayButtonInfo: XCUIElement = {
        app.buttons[AccessibilityIDs.InfoStationPage.okayButtonInfo.rawValue]
    }()
    
    private lazy var leftNavBarButtonInfoPage: XCUIElement = {
        app.navigationBars.children(matching: .button).firstMatch
    }()
    
    
    //MARK: Actions
    
    func returnNowPlayingPage() -> NowPlayingPage {
        leftNavBarButtonInfoPage.tap()
        return NowPlayingPage(app: app)
    }
    
    func closeInfoPage() -> NowPlayingPage {
        XCTAssertTrue(okayButtonInfo.exists)
        okayButtonInfo.tap()
        return NowPlayingPage(app: app)
    }
    
    func checkStationNameInfoPage() -> Self {
        XCTAssertTrue(stationImageInfo.exists)
        return self
    }
    
}
