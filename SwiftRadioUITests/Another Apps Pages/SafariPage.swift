//
//  SafariPage.swift
//  SwiftRadioUITests
//
//  Created by y.v.kolesnikova on 30.01.2022.
//  Copyright © 2022 matthewfecher.com. All rights reserved.
//

import Foundation
import XCTest

final class SafariPage:BaseScreen {
    
    let safariApp =
        XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
    
    // MARK: - Initializers
    
    private lazy var URL: XCUIElement = {
        safariApp.textFields["URL"].firstMatch
    }()
    
}
