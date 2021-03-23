//
//  main.swift
//  Bubble Sort Day 11 Month 2
//
//  Created by Melville, Aidan on 2021-03-19.
//

import Foundation



// Create an empty array
var dataSet: [Int] = []

// Populate Array
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

//Print the unsorted array
print("Unsorted:")
print(dataSet)
waitForInput()


//Sort the array
bubbleSort(unsorted: &dataSet)

// Print Sorted Array
print("Sorted:")
print(dataSet)
waitForInput()

