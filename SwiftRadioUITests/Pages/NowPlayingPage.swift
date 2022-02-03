//
//  NowPlayingPage.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 27.05.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

class NowPlayingPage: CommonPage {
    
    // MARK: - Initializers
    
    init(app: XCUIApplication) {
        super.init(
            view: app.otherElements[AccessibilityIDs.NowPlayingPage.screen.rawValue],
            app: app
        )
    }
    
    //MARK: UI elements
    
    private lazy var albumImage: XCUIElement = {
        app.images[AccessibilityIDs.NowPlayingPage.albumImage.rawValue]
    }()
    
    private lazy var previousButton: XCUIElement = {
        app.buttons[AccessibilityIDs.NowPlayingPage.previousButton.rawValue]
    }()
    
    private lazy var playPauseButton: XCUIElement = {
        app.buttons[AccessibilityIDs.NowPlayingPage.playPauseButton.rawValue]
    }()
    
    private lazy var stopButton: XCUIElement = {
        app.buttons[AccessibilityIDs.NowPlayingPage.stopButton.rawValue]
    }()
    
    private lazy var nextButton: XCUIElement = {
        app.buttons[AccessibilityIDs.NowPlayingPage.nextButton.rawValue]
    }()
    
    private lazy var songName: XCUIElement = {
        app.staticTexts[AccessibilityIDs.NowPlayingPage.songName.rawValue]
    }()
    
    private lazy var artistName: XCUIElement =  {
        app.staticTexts[AccessibilityIDs.NowPlayingPage.artistName.rawValue]
    }()
    
    private lazy var volMinButton: XCUIElement = {
        app.images[AccessibilityIDs.NowPlayingPage.volMinButton.rawValue]
    }()
    
    private lazy var volMaxButton: XCUIElement = {
        app.images[AccessibilityIDs.NowPlayingPage.volMaxButton.rawValue]
    }()
    
    private lazy var openAboutPage: XCUIElement = {
        app.buttons[AccessibilityIDs.NowPlayingPage.openAboutPage.rawValue]
    }()
    
    private lazy var shareButton: XCUIElement = {
        app.buttons[AccessibilityIDs.NowPlayingPage.shareButton.rawValue]
    }()
    
    private lazy var openInfoPage: XCUIElement = {
        app.buttons[AccessibilityIDs.NowPlayingPage.openInfoPage.rawValue]
    }()
    
    private lazy var airPlay: XCUIElement = {
        app.buttons[AccessibilityIDs.NowPlayingPage.airPlay.rawValue]
    }()
    
    private lazy var leftNavBarButton: XCUIElement = {
        app.navigationBars.children(matching: .button).firstMatch
    }()
    
    
    //let horizontalSlider = XCUIApplication().sliders.element.adjust(toNormalizedSliderPosition: 0.25)
    
    //MARK: Actions
    
    @discardableResult
    func clickOnStopButton() -> Self {
        stopButton.tap()
        return self
    }
    
    @discardableResult
    func clickOnPreviousButton() -> Self {
        previousButton.tap()
        return self
    }
    
    @discardableResult
    func clickPlayPauseButton() -> Self {
        playPauseButton.tap()
        return self
    }
    
    @discardableResult
    func clickNextButton() -> SwiftRadioPage {
        nextButton.tap()
        return SwiftRadioPage(app: app)
    }
    
    @discardableResult
    func clickOpenAboutPageButton() -> AboutSwiftRadioPage {
        openAboutPage.tap()
        return AboutSwiftRadioPage(app: app)
    }
    
    @discardableResult
    func clickShareButton() -> Self {
        shareButton.tap()
        return self
    }
    
    @discardableResult
    func clickInformationButton() -> InfoStationPage {
        openInfoPage.tap()
        return InfoStationPage(app: app)
    }
    
    @discardableResult
    func clickBackNavBarButton() -> SwiftRadioPage {
        leftNavBarButton.tap()
        return SwiftRadioPage(app: app)
    }
    
    @discardableResult
    func checkSongName() -> Self {
        XCTAssertTrue(songName.exists)
        return self
    }
    
    @discardableResult
    func checkSongPause() -> Self {
        XCTAssertEqual(songName.label, "Station Paused...")
        return self
    }
    
    @discardableResult
    func checkSongStop() -> Self {
        XCTAssertEqual(songName.label, "Station Stopped...")
        return self
    }
    
    func checkSongPlayAfterStop() -> Self {
        XCTAssertNotEqual(songName.label, "Station Stopped...")
        return self
    }
    
}
