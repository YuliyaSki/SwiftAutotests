//
//  WorkPlayerTest.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 28.01.2022.
//  Copyright © 2022 matthewfecher.com. All rights reserved.
//

import XCTest

final class WorkPlayerTest:CommonTestCase {
    
    func testCheckWorkPauseButton() {
        SwiftRadioPage.selectStation()
        waitFor(timeInterval: 5)
        NowPlayingPage.clickPlayPauseButton()
       // self.waitUntilVisible(application.accessibilityUserInputLabels["Station Paused..."])
        NowPlayingPage.checkSongPause()
    }
    
    func testCheckWorkStopButton() {
        SwiftRadioPage.selectStation()
        waitFor(timeInterval: 5)
        NowPlayingPage.clickOnStopButton()
        waitFor(timeInterval: 5)
        NowPlayingPage.checkSongStop()
    }
    
    func testCheckPlayButtonAfterStoping() {
        SwiftRadioPage.selectStation()
        waitFor(timeInterval: 5)
        NowPlayingPage.clickOnStopButton()
        waitFor(timeInterval: 5)
        NowPlayingPage.checkSongStop()
        NowPlayingPage.clickPlayPauseButton()
        NowPlayingPage.checkSongPlayAfterStop()
    }
}
