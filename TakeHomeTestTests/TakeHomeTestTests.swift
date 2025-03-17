//
//  TakeHomeTestTests.swift
//  TakeHomeTestTests
//
//  Created by Sri Satish M on 3/11/25.
//

import XCTest
@testable import TakeHomeTest

final class TakeHomeTestTests: XCTestCase {

    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        super.setUp()
                
                // Initialize the app
               
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
       
    }

   
    
    func testfetchShapes() async throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        let viewModel = ShapeViewModel()
        await viewModel.fetchShapes()
        
        XCTAssertEqual(viewModel.shapes.count, 3)
    }

  

}
