//
//  OpenAboutTest.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 11.08.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import XCTest

final class OpenAboutTest:CommonTestCase {
    
    func testOpenAboutInfo() {
        SwiftRadioPage(app: application)
            .clickleftNavBarButton()
        MenuPage(app: application)
            .closeMenuFieldTap()
    }
    
    func testOpenSwiftRadionInfo() {
        SwiftRadioPage(app: application)
            .selectStation()
        NowPlayingPage(app: application)
            .clickOpenAboutPageButton()
        AboutSwiftRadioPage(app: application)
            .checkAppInfo()
            .clickOkayButton()
    }
    
    func testCheckEmail() {
        SwiftRadioPage(app: application)
            .selectStation()
        NowPlayingPage(app: application)
            .clickOpenAboutPageButton()
        AboutSwiftRadioPage(app: application)
            .checkEmailButton()
        emailErrorAlertHandler()
        AboutSwiftRadioPage(app: application)
            .clickOkayButton()
    }
    
    func testCheckOpenSite() {
        SwiftRadioPage(app: application)
            .selectStation()
        NowPlayingPage(app: application)
            .clickOpenAboutPageButton()
        AboutSwiftRadioPage(app: application)
            .openSiteInfo()
            .checkMainDomain("https://mobile.twitter.com/analogmatthew")
    }
    
}
