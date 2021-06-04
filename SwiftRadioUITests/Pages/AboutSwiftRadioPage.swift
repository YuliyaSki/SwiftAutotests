//
//  AboutSwiftRadioPage.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 27.05.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

class AboutSwiftRadioPage:CommonPage {
    
    let okayButton = XCUIApplication().buttons["okayButton"]
    let stationImage = XCUIApplication().images["stationImage"]
    let stationLongDesc = XCUIApplication().staticTexts["stationLongDesc"]
    let stationIcon = XCUIApplication().images["stationIcon"]
    let siteInfo = XCUIApplication().buttons["siteInfo"]
    let email = XCUIApplication().buttons["email"]
    
    func clickOkayButton() {
        okayButton.tap()
    }
    
    func openSiteInfo() {
        siteInfo.tap()
    }
    
    func openEmailForm() {
        email.tap()
    }
}

