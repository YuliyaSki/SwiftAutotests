//
//  NowPlayingPage.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 27.05.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

class nameNowPlayingPage: CommonPage {
    let albumImage = XCUIApplication().images["albumImage"]
    let previousButton = XCUIApplication().buttons["previousButton"]
    let playPauseButton = XCUIApplication().buttons["playPauseButton"]
    let stopButton = XCUIApplication().buttons["stopButton"]
    let nextButton = XCUIApplication().buttons["nextButton"]
    let songName = XCUIApplication().staticTexts["songName"]
    let artistName = XCUIApplication().staticTexts["artistName"]
    let volMinButton = XCUIApplication().images["volMinButton"]
    let volMaxButton = XCUIApplication().images["volMaxButton"]
    let companyButton = XCUIApplication().buttons["companyButton"]
    let shareButton = XCUIApplication().buttons["shareButton"]
    let informationButton = XCUIApplication().buttons["informationButton"]
    let horizontalSlider = XCUIApplication().sliders.element.adjust(toNormalizedSliderPosition: 0.25)
    
    
    func clickOnStopButton() {
        stopButton.tap()
    }
    
    func clickOnpreviousButton() {
        previousButton.tap()
    }
    
    func clickPlayPauseButton() {
        playPauseButton.tap()
    }
    
    func clickNextButton() {
        nextButton.tap()
    }
    
    func clickCompanyButton() {
        companyButton.tap()
    }
    
    func clickShareButton() {
        shareButton.tap()
    }
    
    func clickInformationButton() {
        informationButton.tap()
    }
    
    
}
