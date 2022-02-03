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
    
    // MARK: - Initializers
    
    init(app: XCUIApplication) {
        super.init(
            view: app.otherElements[AccessibilityIDs.MenuPage.screen.rawValue],
            app: app
        )
    }
    
    // MARK: UI elements
    
    private lazy var closeButton: XCUIElement = {
        app.buttons[AccessibilityIDs.MenuPage.closeButton.rawValue]
    }()
    private lazy var swiftRadioImage: XCUIElement = {
        app.images[AccessibilityIDs.MenuPage.swiftRadioImage.rawValue]
    }()
    private lazy var aboutButton: XCUIElement = {
        app.buttons[AccessibilityIDs.MenuPage.aboutButton.rawValue]
    }()
    private lazy var webSiteButton: XCUIElement = {
        app.buttons[AccessibilityIDs.MenuPage.webSiteButton.rawValue]
    }()
    private lazy var signature: XCUIElement = {
        app.staticTexts[AccessibilityIDs.MenuPage.signature.rawValue]
    }()
    private lazy var closeMenuField: XCUIElement = {
        app.images[AccessibilityIDs.MenuPage.closeMenuField.rawValue]
    }()
    
    // MARK: Actions
    
    func closeMenuPage() -> SwiftRadioPage {
        closeButton.tap()
        return SwiftRadioPage(app: app)
    }
    
    @discardableResult
    func openAboutSwiftRadioPage() -> AboutSwiftRadioPage {
        waitFor(timeInterval: 3)
        aboutButton.tap()
        return AboutSwiftRadioPage(app: app)
    }
    
    @discardableResult
    func openWebSite() -> Self {
        webSiteButton.tap()
        return self
    }
    
    @discardableResult
    func closeMenuFieldTap() -> SwiftRadioPage {
        waitFor(timeInterval: 3)
        closeMenuField.tap()
        return SwiftRadioPage(app: app)
    }
}
