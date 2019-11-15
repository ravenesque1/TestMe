//
//  TestMeUITests.swift
//  TestMeUITests
//
//  Created by Raven Weitzel on 11/15/19.
//  Copyright © 2019 Raven Weitzel. All rights reserved.
//

import XCTest

class TestMeUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        let app = XCUIApplication()
        app.buttons["Reset"].tap()
    }

    func testExample() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func testFakeLabelWillFail() {
        
        //setup
        let app = XCUIApplication()
        app.launch()
        
        //create test that will absolutely fail first
        XCTAssert(!app.staticTexts["This text does not exist in the app"].exists)
    }
    
    func testExistsHelloWorldLabel() {
        
        //setup
        let app = XCUIApplication()
        app.launch()
        
        //assert label exists
        XCTAssert(app.staticTexts["Hello, World!"].exists)
    }
    
    func testScrambleButton() {
        
        //setup
        let app = XCUIApplication()
        app.launch()
        
        //assert screen is reset
        XCTAssert(app.staticTexts["Hello, World!"].exists)
        
        //scramble
        app.buttons["Scramble"].tap()
        XCTAssert(!app.staticTexts["Hello, World!"].exists)
    }
    
    func testResetButton() {
        
        //setup
        let app = XCUIApplication()
        app.launch()
        
        //assert screen is reset
        XCTAssert(app.staticTexts["Hello, World!"].exists)
        
        //scramble
        app.buttons["Scramble"].tap()
        XCTAssert(!app.staticTexts["Hello, World!"].exists)
        
        //reset
        app.buttons["Reset"].tap()
        XCTAssert(app.staticTexts["Hello, World!"].exists)
    }
}
