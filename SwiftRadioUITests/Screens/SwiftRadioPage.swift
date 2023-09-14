//
//  SwiftRadioPage.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 02.06.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

struct SwiftRadioPage: BaseScreen {
    
    static let tablesQuery = XCUIApplication().tables
    typealias SwiftRadioPage = AccessibilityIDs.SwiftRadioPage
    
    // MARK: UI elements
    
    static let stationImage = app.images[SwiftRadioPage.stationImage.rawValue]
    
    static let stationName = app.staticTexts[SwiftRadioPage.stationName.rawValue]
    
    static let stationDesc = app.staticTexts[SwiftRadioPage.stationDesc.rawValue]
    
    static let playingAnimationImage = app.images[SwiftRadioPage.playingAnimationImage.rawValue]
    
    static let nowPlayingButton = app.buttons[SwiftRadioPage.nowPlayingButton.rawValue]
    
    static let leftNavBarButton = app.navigationBars.children(matching: .button).element(boundBy: 0)
    
    static let rightNavBarButton = app.navigationBars.children(matching: .button).element(boundBy: 1)
    
    //MARK: Actions
    
//    static func clickRightNavBarButton(){
 //       if rightNavBarButton.exists {
//            rightNavBarButton.tap()
//            waitFor(timeInterval: 3)
 //       } else {
  //          return nil
 //       }
//    }

    static func selectStation() {
        tablesQuery.staticTexts["Absolute Country Hits"].tap()
    }

    static func clickleftNavBarButton(){
        leftNavBarButton.tap()
    }

    static func clicknowPlayingButton () {
        nowPlayingButton.tap()
    }
    
    
}
