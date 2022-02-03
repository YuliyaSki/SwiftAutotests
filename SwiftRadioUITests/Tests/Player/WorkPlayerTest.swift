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
        SwiftRadioPage(app: application)
            .selectStation()
        waitFor(timeInterval: 5)
        NowPlayingPage(app: application)
            .clickPlayPauseButton()
        self.waitUntilVisible(application.accessibilityUserInputLabels["Station Paused..."])
        NowPlayingPage(app: application)
            .checkSongPause()
    }
    
    func testCheckWorkStopButton() {
        SwiftRadioPage(app: application)
            .selectStation()
        waitFor(timeInterval: 5)
        NowPlayingPage(app: application)
            .clickOnStopButton()
        waitFor(timeInterval: 5)
        NowPlayingPage(app: application)
            .checkSongStop()
    }
    
    func testCheckPlayButtonAfterStoping() {
        SwiftRadioPage(app: application)
            .selectStation()
        waitFor(timeInterval: 5)
        NowPlayingPage(app: application)
            .clickOnStopButton()
        waitFor(timeInterval: 5)
        NowPlayingPage(app: application)
            .checkSongStop()
        NowPlayingPage(app: application)
            .clickPlayPauseButton()
            .checkSongPlayAfterStop()
    }
}
