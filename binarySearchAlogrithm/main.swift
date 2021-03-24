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
    print("-----")
    print("The target number is \(searchNumber)")
    print("The start of the array is \(startOfArray)")
    print("The middle of the array is \(middleOfArray)")
    print("The end of the array is \(positionOfLastElement)")
    print("-----")
    print("------")
    print("Index:\t", terminator: "")
    for i in startOfArray...positionOfLastElement {
        print("\(i)\t", terminator: "")
    }
    print("")
    print("Values: ", terminator: "")
    for i in startOfArray...positionOfLastElement {
        print("\(dataSet[i])\t", terminator: "")
    }
    print("")
    if  searchNumber == middleNumber {
        
        print("the target number is in position \(middleOfArray)")
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



