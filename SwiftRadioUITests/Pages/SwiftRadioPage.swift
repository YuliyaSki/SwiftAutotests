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
    let stationImage = XCUIApplication().images["stationImage"]
    let stationName = XCUIApplication().staticTexts["stationName"]
    let stationDesc = XCUIApplication().staticTexts["stationDesc"]
    let playingAnimationImage = XCUIApplication().images["playingAnimationImage"]
    let nowPlayingButton = XCUIApplication().buttons["nowPlayingButton"]
    let leftNavBarButton = XCUIApplication().navigationBars.children(matching: .button).firstMatch
    
    func openNowPlayng() {
        nowPlayingButton.tap()
    }
    
    func openMenuPage() {
        leftNavBarButton.tap()
    }
}
