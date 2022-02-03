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
        SwiftRadioPage(app: application)
            .selectStation()
        NowPlayingPage(app: application)
            .clickBackNavBarButton()
        SwiftRadioPage(app: application)
            .clickRightNavBarButton()
    }
    
    func testClickNowPlayingButton() {
        SwiftRadioPage(app: application)
            .selectStation()
        NowPlayingPage(app: application)
            .clickBackNavBarButton()
        SwiftRadioPage(app: application)
            .clicknowPlayingButton()
            .checkSongName()
    }
    
}
