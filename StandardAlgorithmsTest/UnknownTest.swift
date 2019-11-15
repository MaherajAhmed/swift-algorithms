//
//  UnknownTest.swift
//  StandardAlgorithmsTest
//
//  Created by Ahmed, Maheraj (HWTA) on 15/11/2019.
//  Copyright © 2019 Ahmed, Maheraj (HWTA). All rights reserved.
//

import XCTest

class UnknownTest: XCTestCase {

    func testSumOfFirstAndLastWithIntegerArrayReturnsSumOfFirstAndLast() {
        //arrange
        let inputData = [1,3,4,5]
        let expected = 6
        let unknown = Unknown()
        
        //act
        let actual = unknown.sumOfFirstAndLast(inputData: inputData)
        
        //asset
        
        XCTAssertEqual(actual, expected)
        
    
    }
    
    func testCalculateTheModeOfSortedIntegerArray() {
        //arrange
        let inputData = [1,3,3,5]
        let expected = 3
        let unknown = Unknown()
        
        //act
        let actual = unknown.calculatingTheMode(inputData:inputData)
        
        //assert
        
        XCTAssertEqual(actual, expected)
    }
}
