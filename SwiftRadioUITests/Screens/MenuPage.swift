//
//  MenuPage.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 27.05.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

struct MenuPage: BaseScreen {

    typealias MenuPage = AccessibilityIDs.MenuPage
    
    // MARK: UI elements
    
    static let closeButton = app.buttons[MenuPage.closeButton.rawValue]
    static let swiftRadioImage = app.images[MenuPage.swiftRadioImage.rawValue]
    static let aboutButton = app.buttons[MenuPage.aboutButton.rawValue]
    static let webSiteButton = app.buttons[MenuPage.webSiteButton.rawValue]
    static let signature = app.staticTexts[MenuPage.signature.rawValue]
    static let closeMenuField = app.images[MenuPage.closeMenuField.rawValue]
    
    // MARK: Actions
    
    static func closeMenuPage(){
        closeButton.tap()
    }

    static func openAboutSwiftRadioPage(){
        waitFor(timeInterval: 3)
        aboutButton.tap()
    }

    static func openWebSite(){
        webSiteButton.tap()
    }

    static func closeMenuFieldTap(){
        waitFor(timeInterval: 3)
        closeMenuField.tap()
    }
}
