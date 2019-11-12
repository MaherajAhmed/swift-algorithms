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
        for _ in 0..<array.count {
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
    
   func merge(left: [Int], right: [Int]) -> [Int] {
       var leftCount = 0
       var rightCount = 0
       
       var completeArray = [Int]()
       
       while leftCount < left.count && rightCount < right.count {
           if left[leftCount] < right[rightCount]  {
               completeArray.append(left[leftCount])
               leftCount += 1
           } else if left[leftCount] > right[rightCount] {
               completeArray.append(right[rightCount])
               rightCount += 1
           } else {
               completeArray.append(left[leftCount])
               leftCount += 1
               completeArray.append(right[rightCount])
               rightCount += 1
           }
       }
       
       while leftCount < left.count {
           completeArray.append(left[leftCount])
           leftCount += 1
       }
       
       while rightCount < right.count {
           completeArray.append(right[rightCount])
           rightCount += 1
       }
       return completeArray
   }
   
   func mergeSort(array: [Int]) -> [Int] {

       if array.count == 1 {
           return array
       }
       let middle = array.count / 2
       let left = mergeSort(array: Array(array[0..<middle]))
       let right = mergeSort(array: Array(array[middle..<array.count]))
       
       return merge(left: left, right: right)
       
        }
    }



