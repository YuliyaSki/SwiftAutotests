//
//  InfoPage.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 27.05.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

class InfoPage: CommonPage {
    let stationImage = XCUIApplication().images["stationImage"]
    let stationIcon = XCUIApplication().images["stationIcon"]
    let stationLongDesc = XCUIApplication().staticTexts["stationLongDesc"]
    let okayButton = XCUIApplication().buttons["okayButton"]
    let leftNavBarButton = XCUIApplication().navigationBars.children(matching: .button).firstMatch
    
    func openNowPlayingPage() {
        leftNavBarButton.tap()
    }
    
    func closeInfoPage() {
        okayButton.tap()
    }
}
