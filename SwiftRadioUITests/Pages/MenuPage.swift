//
//  MenuPage.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 27.05.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

class MenuPage: CommonPage {
    let closeButton = XCUIApplication().buttons["closeButton"]
    let swiftRadioImage = XCUIApplication().images["swiftRadioImage"]
    let aboutButton = XCUIApplication().buttons["aboutButton"]
    let webSiteButton = XCUIApplication().buttons["webSiteButton"]
    let signature = XCUIApplication().staticTexts["signature"]
    
    func closeMenuPage() {
        closeButton.tap()
    }
    
    func openAboutSwiftRadioPage() {
        aboutButton.tap()
    }
    
    func openWebSite() {
        webSiteButton.tap()
    }
}
