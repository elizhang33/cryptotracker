//
//  CryptosTrackerUITests.swift
//  CryptosTrackerUITests
//
//  Created by Eli  on 8/15/21.
//

import XCTest

class CryptosTrackerUITests: XCTestCase {

    func testCryptosListDetails() {
        let app = XCUIApplication()
        
        let cryptosNavigationBar = app.navigationBars["Cryptos"]
        let cryptosList = app.tables["Cryptos List"]
        let reloadButton = cryptosNavigationBar.buttons["Reload Button"]
        
                
        XCTAssertTrue(cryptosNavigationBar.exists, "The crypto navigation bar does not exist")
        XCTAssertTrue(cryptosList.exists, "The cryptos list does not exist")
        XCTAssertEqual(cryptosList.cells.count, 50, "The Crypto list has wrong number of cryptos listed")
        XCTAssertTrue(reloadButton.exists, "The Reload button does not exist")
        
        let cryptoInfoBeforeReload = cryptosList.cells.element(boundBy: 0)
        
        reloadButton.tap()
        
        let cryptoInfoAfterReload = cryptosList.cells.element(boundBy: 0)
        
        XCTAssertNotEqual(cryptoInfoBeforeReload, cryptoInfoAfterReload)
    }
    
    func testCryptosCellDetails() {
        let app = XCUIApplication()
        let cryptosList = app.tables["Cryptos List"]
        let firstCell = cryptosList.cells.element(boundBy: 0)
        
        XCTAssertTrue(cryptosList.isHittable, "The crypto list is not on screen")
        
        firstCell.tap()

        let cryptoDetailsNavigationBar = app.navigationBars["Bitcoin"]

        XCTAssertTrue(cryptoDetailsNavigationBar.exists, "The crypto detail view navigation bar does not exist")
        
        let cryptoDetailsScrollView = app.scrollViews["Crypto Details"]
        
        let cryptoHeader = cryptoDetailsScrollView.staticTexts["Header"]
        
        let cryptoPrice = cryptoDetailsScrollView.staticTexts["Current Price"]
        
        let cryptoChange = cryptoDetailsScrollView.staticTexts["24h change"]
        
        let cryptoRank = cryptoDetailsScrollView.staticTexts["Rank"]
        
        let cryptoGraph = cryptoDetailsScrollView.staticTexts["Graph"]
        
        XCTAssertTrue(cryptoHeader.exists, "The crypto header does not exist")
        
        XCTAssertTrue(cryptoPrice.exists, "The crypto price does not exist")
        
        XCTAssertTrue(cryptoChange.exists, "The crypto change does not exist")
        
        XCTAssertTrue(cryptoRank.exists, "The crypto rank does not exist")
        
        XCTAssertTrue(cryptoGraph.exists, "The crypto Graph does not exist")
        
        
        let backButton = cryptoDetailsNavigationBar.buttons["Cryptos"]
        
        backButton.tap()
        
        
    }
    
    
    override func setUp() {
        super.setUp()

        continueAfterFailure = false

        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.wait(for: .runningForeground, timeout: 1), "The application did not reach the runningForeground state")
    }

}
