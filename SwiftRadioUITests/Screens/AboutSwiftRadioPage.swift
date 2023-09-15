//
//  AboutSwiftRadioPage.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 27.05.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

struct AboutSwiftRadioPage:BaseScreen {

    typealias AboutSwiftRadioPage = AccessibilityIDs.AboutSwiftRadioPage
    
    //MARK: UI elements
    
    static let okayButton = app.buttons[AboutSwiftRadioPage.okayButton.rawValue]
    
    static let logoImage =  app.images[AboutSwiftRadioPage.logoImage.rawValue]
    
    static let radioAppInfo = app.staticTexts[AboutSwiftRadioPage.radioAppInfo.rawValue]
    
    static let infoAppFeatures = app.staticTexts[AboutSwiftRadioPage.infoAppFeatures.rawValue]
    
    static let infoVersionSwift = app.images[AboutSwiftRadioPage.infoVersionSwift.rawValue]
    
    static let siteInfo = app.buttons[AboutSwiftRadioPage.siteInfo.rawValue]
    
    static let email = app.buttons[AboutSwiftRadioPage.email.rawValue]
    
    
    //MARK: Actions

    static func clickOkayButton(){
        XCTAssertTrue(okayButton.exists)
        okayButton.tap()
    }

    static func openSiteInfo(){
        XCTAssertEqual(siteInfo.label, "matthewfecher.com")
        siteInfo.tap()
    }

    static func openEmailForm(){
        email.tap()
    }

    static func checkLogoSwiftAboutPage(){
        XCTAssertTrue(logoImage.exists)
    }

    static func checkAppInfo(){
        XCTAssertTrue(radioAppInfo.exists)
    }

    static func checkinfoVersionSwift(){
        XCTAssertTrue(infoVersionSwift.exists)
    }

    static func checkAppFeatures(){
        XCTAssertTrue(infoAppFeatures.exists)
    }

    static func checkEmailButton(){
        email.tap()
    }
    
}

