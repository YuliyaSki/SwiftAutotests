//
//  AccessibilityIDs.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 23.06.2021.
//  Copyright © 2021 matthewfecher.com. All rights reserved.
//

import Foundation

public struct AccessibilityIDs {
    
    public enum MenuPage: String {
        
        case screen
        case signature = "signature"
        case closeButton = "closeButton"
        case swiftRadioImage = "swiftRadioImage"
        case aboutButton = "aboutButton"
        case webSiteButton = "webSiteButton"
        case closeMenuField = "closeMenuField"
        
}
    public enum SwiftRadioPage: String {
        
        case screen
        case stationImage = "stationImage"
        case stationName = "stationName"
        case stationDesc = "stationDesc"
        case playingAnimationImage = "playingAnimationImage"
        case nowPlayingButton = "nowPlayingButton"
        case leftNavBarButton = "leftNavBarButton"
        
    }
    
    public enum NowPlayingPage: String {
        
        case screen
        case albumImage = "albumImage"
        case previousButton = "previousButton"
        case playPauseButton = "playPauseButton"
        case stopButton = "stopButton"
        case nextButton = "nextButton"
        case songName = "songName"
        case artistName = "artistName"
        case volMinButton = "volMinButton"
        case volMaxButton = "volMaxButton"
        case companyButton = "companyButton"
        case openAboutPage = "openAboutPage"
        case shareButton = "shareButton"
        case openInfoPage = "openInfoPage"
        case airPlay = "airPlay"
        
    }
    
    public enum InfoStationPage: String {
        
        case screen
        case stationImageInfo =  "stationImageInfo"
        case stationIconInfo = "stationIconInfo"
        case stationLongDescInfo = "stationLongDescInfo"
        case okayButtonInfo = "okayButtonInfo"
        
    }
    
    public enum AboutSwiftRadioPage: String {
        
        case screen
        case okayButton = "okayButton"
        case logoImage = "logoImage"
        case infoAppFeatures = "infoAppFeatures"
        case infoVersionSwift = "infoVersionSwift"
        case siteInfo = "siteInfo"
        case email = "email"
        case radioAppInfo = "radioAppInfo"
        
    }
    
}
