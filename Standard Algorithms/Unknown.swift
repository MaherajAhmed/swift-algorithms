//
//  Unknown.swift
//  Standard Algorithms
//
//  Created by Ahmed, Maheraj (HWTA) on 15/11/2019.
//  Copyright © 2019 Ahmed, Maheraj (HWTA). All rights reserved.
//

import Foundation

class Unknown {
    
    func sumOfFirstAndLast (inputData: [Int]) -> Int {
        let array = inputData
        let arrayCount = array.count
        if arrayCount == 1 {
            let doubleTheNumber = array[0]*2
            return doubleTheNumber
        }
        else{
        let numberOne = array[0]
        let numberTwo = array[array.count-1]
        let totalOfNumbers = numberOne+numberTwo
        return totalOfNumbers
        }
    }
    
    func calculatingTheMode (inputData: [Int]) -> Int {
        let arrayCount = inputData.count
        let array = inputData
        for i in 0...arrayCount {
            var firstNumber = array[i-1]
            var secondNumber = array[i]
            if firstNumber == secondNumber {
                let mode = firstNumber
                return mode
            }
            else {
                firstNumber = secondNumber
                secondNumber = array[secondNumber+1]
            }
        }
    }
}
