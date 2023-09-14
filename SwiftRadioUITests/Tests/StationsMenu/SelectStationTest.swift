//
//  SelectStationTest.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 08.08.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import XCTest

final class SelectStationTest: CommonTestCase {
    
    func testSelectRadioStation() {
        SwiftRadioPage.selectStation()
        NowPlayingPage.clickBackNavBarButton()
       // SwiftRadioPage.clickRightNavBarButton()
    }
    
    func testClickNowPlayingButton() {
        SwiftRadioPage.selectStation()
        NowPlayingPage.clickBackNavBarButton()
        SwiftRadioPage.clicknowPlayingButton()
        NowPlayingPage.checkSongName()
    }
    
}
