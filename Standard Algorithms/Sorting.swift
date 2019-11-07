//
//  Sorting.swift
//  Standard Algorithms
//
//  Created by Ahmed, Maheraj (HWTA) on 05/11/2019.
//  Copyright © 2019 Ahmed, Maheraj (HWTA). All rights reserved.
//

import Foundation

class Sorting {
    func bubbleSort(data: [Int]) -> [Int] {
        var array =  data
        for i in 0..<array.count {
            for j in 0..<array.count-2 {
                if array[j]>array[j+1] {
                    let temp = array[j]
                    array[j] = array[j+1]
                    array[j+1] = temp
                }
                
            }
            
        }
       return array
    }
}

//func MergeSort (data: [Int]) -> [Int] {
//    let middleOflist = data.count/2
//    var leftOfList = [(data[0..<middleOflist])]
//    var rightOfList = [(data[middleOflist..<data.count])]
//}
