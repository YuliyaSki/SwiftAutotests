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
        SwiftRadioPage.clickleftNavBarButton()
        MenuPage.closeMenuFieldTap()
    }
    
    func testOpenSwiftRadionInfo() {
        SwiftRadioPage.selectStation()
        NowPlayingPage.clickOpenAboutPageButton()
        AboutSwiftRadioPage.checkAppInfo()
        AboutSwiftRadioPage.clickOkayButton()
    }
    
    func testCheckEmail() {
        SwiftRadioPage.selectStation()
        NowPlayingPage.clickOpenAboutPageButton()
        AboutSwiftRadioPage.checkEmailButton()
        emailErrorAlertHandler()
        AboutSwiftRadioPage.clickOkayButton()
    }
    
    func testCheckOpenSite() {
        SwiftRadioPage.selectStation()
        NowPlayingPage.clickOpenAboutPageButton()
        AboutSwiftRadioPage.openSiteInfo()
       // AboutSwiftRadioPage.checkMainDomain("https://mobile.twitter.com/analogmatthew")
    }
    
}
