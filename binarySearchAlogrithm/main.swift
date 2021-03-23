//
//  main.swift
//  binarySearchAlogrithm
//
//  Created by Melville, Aidan on 2021-03-23.
//

import Foundation


waitForInput()


var dataSet: [Int] = []


for _ in 1...15 {
    dataSet.append(Int.random(in: 1...100))
}

bubbleSort(unsorted: &dataSet)



// Variables for the loop
var searchNumber = dataSet[Int.random(in: 0...dataSet.count - 1)]
var sizeOfArray = dataSet.count
var startOfArray = 0
var positionOfLastElement = dataSet.count - 1

    
for _ in 0...dataSet.count {
        
    let middleOfArray = (positionOfLastElement + startOfArray) / 2
    let middleNumber = dataSet[middleOfArray]
        
        if  searchNumber == middleNumber {
            
            print("the target number is \(middleOfArray) position")
            break
            
        } else if searchNumber > middleNumber {
          
          startOfArray = middleOfArray + 1
          
        } else  if searchNumber < middleNumber {
            
            positionOfLastElement = middleOfArray - 1
            
        } else if startOfArray > positionOfLastElement {
            print("The number isn't in this array")
            break
        }
        
      
        
    }



