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
    
    func MergeSort (data: [Int]) -> [Int] {
        if data.count/2 <= 1 {
            return data
        }
        else {
            let middleOflist = data.count/2
            var leftofList = Array([(data[0..<middleOflist])])
            var rightofList = Array([(data[middleOflist...data.count])])
            var left = MergeSort(leftofList)
            var right = MergeSort(rightofList)
            return merge(left, right)
            }
        
                
            }
        }


