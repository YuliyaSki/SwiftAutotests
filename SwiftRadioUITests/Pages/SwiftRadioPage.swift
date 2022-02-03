//
//  SwiftRadioPage.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 02.06.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

class SwiftRadioPage: CommonPage {
    
    let tablesQuery = XCUIApplication().tables
    
    // MARK: - Initializers
    
    init(app: XCUIApplication) {
        super.init(
            view: app.otherElements[AccessibilityIDs.SwiftRadioPage.screen.rawValue],
            app: app
        )
    }
    
    // MARK: UI elements
    
    private lazy var stationImage: XCUIElement = {
        app.images[AccessibilityIDs.SwiftRadioPage.stationImage.rawValue]
    }()
    
    private lazy var stationName: XCUIElement = {
        app.staticTexts[AccessibilityIDs.SwiftRadioPage.stationName.rawValue]
    }()
    
    private lazy var stationDesc:XCUIElement = {
        app.staticTexts[AccessibilityIDs.SwiftRadioPage.stationDesc.rawValue]
    }()
    
    private lazy var playingAnimationImage: XCUIElement = {
        app.images[AccessibilityIDs.SwiftRadioPage.playingAnimationImage.rawValue]
    }()
    
    private lazy var nowPlayingButton: XCUIElement = {
        app.buttons[AccessibilityIDs.SwiftRadioPage.nowPlayingButton.rawValue]
    }()
    
    private lazy var leftNavBarButton: XCUIElement = {
        app.navigationBars.children(matching: .button).element(boundBy: 0)
    }()
    
    private lazy var rightNavBarButton: XCUIElement = {
        app.navigationBars.children(matching: .button).element(boundBy: 1)
    }()
    
    //MARK: Actions
    
    func openNowPlayng() -> Self {
        nowPlayingButton.tap()
        return self
    }
    
    func openMenuPage() -> Self {
        leftNavBarButton.tap()
        return self
    }
    
    func checkStationName() {
    }
    
    @discardableResult
    func clickRightNavBarButton() -> NowPlayingPage? {
        if rightNavBarButton.exists {
            rightNavBarButton.tap()
            waitFor(timeInterval: 3)
            return NowPlayingPage(app: app)
        } else {
            return nil
        }
    }
    
    @discardableResult
    func selectStation() -> Self {
        tablesQuery.staticTexts["Absolute Country Hits"].tap()
        return self
    }
    
    @discardableResult
    func clickleftNavBarButton() -> MenuPage {
        leftNavBarButton.tap()
        return MenuPage(app: app)
    }
    
    @discardableResult
    func clicknowPlayingButton () -> NowPlayingPage {
        nowPlayingButton.tap()
        return NowPlayingPage(app: app)
    }
    
    
}
