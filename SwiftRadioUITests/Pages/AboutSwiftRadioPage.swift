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
    
    // MARK: - Initializers
    
    init(app: XCUIApplication) {
        super.init(
            view: app.otherElements[AccessibilityIDs.AboutSwiftRadioPage.screen.rawValue],
            app: app
        )
    }
    
    //MARK: UI elements
    
    private lazy var okayButton: XCUIElement = {
        app.buttons[AccessibilityIDs.AboutSwiftRadioPage.okayButton.rawValue]
    }()
    
    private lazy var logoImage: XCUIElement =  {
        app.images[AccessibilityIDs.AboutSwiftRadioPage.logoImage.rawValue]
    }()
    
    private lazy var radioAppInfo: XCUIElement = {
        app.staticTexts[AccessibilityIDs.AboutSwiftRadioPage.radioAppInfo.rawValue]
    }()
    
    private lazy var infoAppFeatures: XCUIElement = {
        app.staticTexts[AccessibilityIDs.AboutSwiftRadioPage.infoAppFeatures.rawValue]
    }()
    
    private lazy var infoVersionSwift: XCUIElement = {
        app.images[AccessibilityIDs.AboutSwiftRadioPage.infoVersionSwift.rawValue]
    }()
    
    private lazy var siteInfo: XCUIElement = {
        app.buttons[AccessibilityIDs.AboutSwiftRadioPage.siteInfo.rawValue]
    }()
    
    private lazy var email: XCUIElement = {
        app.buttons[AccessibilityIDs.AboutSwiftRadioPage.email.rawValue]
    }()
    
    
    //MARK: Actions
    
    @discardableResult
    func clickOkayButton() -> MenuPage {
        XCTAssertTrue(okayButton.exists)
        okayButton.tap()
        return MenuPage(app: app)
    }
    
    @discardableResult
    func openSiteInfo() -> Self {
        XCTAssertEqual(siteInfo.label, "matthewfecher.com")
        siteInfo.tap()
        return self
    }
    
    @discardableResult
    func openEmailForm() -> Self {
        email.tap()
        return self
    }
    
    @discardableResult
    func checkLogoSwiftAboutPage() -> Self {
        XCTAssertTrue(logoImage.exists)
        return self
    }
    
    @discardableResult
    func checkAppInfo() -> Self {
        XCTAssertTrue(radioAppInfo.exists)
        return self
    }
    
    @discardableResult
    func checkinfoVersionSwift() -> Self {
        XCTAssertTrue(infoVersionSwift.exists)
        return self
    }
    
    @discardableResult
    func checkAppFeatures() -> Self {
        XCTAssertTrue(infoAppFeatures.exists)
        return self
    }
    
    @discardableResult
    func closeAboutSwiftRadioPage() -> MenuPage {
        return MenuPage(app: app)
    }
    
    @discardableResult
    func checkEmailButton() -> Self {
        email.tap()
        return self
    }
    
    @discardableResult
    func checkMainDomain(_ domain: String) -> Self {
        view.buttons["URL"].firstMatch.waitForExistence(timeout: 3)
        XCTAssertTrue((view.buttons["URL"].firstMatch.value as! String).contains(domain), "\(domain) not found")
        return self
    }
    
}

