//
//  NowPlayingPage.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 27.05.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

struct NowPlayingPage: BaseScreen {

    typealias NowPlayingPage = AccessibilityIDs.NowPlayingPage

    //MARK: UI elements
    
    static let albumImage = app.images[NowPlayingPage.albumImage.rawValue]
    
    static let previousButton = app.buttons[NowPlayingPage.previousButton.rawValue]
    
    static let playPauseButton = app.buttons[NowPlayingPage.playPauseButton.rawValue]
    
    static let stopButton = app.buttons[NowPlayingPage.stopButton.rawValue]
    
    static let nextButton = app.buttons[NowPlayingPage.nextButton.rawValue]
    
    static let songName = app.staticTexts[NowPlayingPage.songName.rawValue]
    
    static let artistName =  app.staticTexts[NowPlayingPage.artistName.rawValue]
    
    static let volMinButton = app.images[NowPlayingPage.volMinButton.rawValue]
    
    static let volMaxButton = app.images[NowPlayingPage.volMaxButton.rawValue]
    
    static let openAboutPage = app.buttons[NowPlayingPage.openAboutPage.rawValue]
    
    static let shareButton = app.buttons[NowPlayingPage.shareButton.rawValue]
    
    static let openInfoPage = app.buttons[NowPlayingPage.openInfoPage.rawValue]
    
    static let airPlay = app.buttons[NowPlayingPage.airPlay.rawValue]
    
    static let leftNavBarButton = app.navigationBars.children(matching: .button).firstMatch
    
    
    //let horizontalSlider = XCUIApplication().sliders.element.adjust(toNormalizedSliderPosition: 0.25)
    
    //MARK: Actions

    static func clickOnStopButton() {
        stopButton.tap()
    }

    static func clickOnPreviousButton() {
        previousButton.tap()
    }

    static func clickPlayPauseButton() {
        playPauseButton.tap()
    }

    static func clickNextButton() {
        nextButton.tap()
    }

    static func clickOpenAboutPageButton() {
        openAboutPage.tap()
    }

    static func clickShareButton() {
        shareButton.tap()
    }

    static func clickBackNavBarButton(){
        leftNavBarButton.tap()
    }

    static func checkSongName(){
        XCTAssertTrue(songName.exists)
    }

    static func checkSongPause() {
        XCTAssertEqual(songName.label, "Station Paused...")
    }

    static func checkSongStop() {
        XCTAssertEqual(songName.label, "Station Stopped...")
    }
    
    static func checkSongPlayAfterStop() {
        XCTAssertNotEqual(songName.label, "Station Stopped...")
    }
    
}
