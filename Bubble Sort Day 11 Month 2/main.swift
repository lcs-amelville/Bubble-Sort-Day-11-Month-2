//
//  main.swift
//  Bubble Sort Day 11 Month 2
//
//  Created by Melville, Aidan on 2021-03-19.
//

import Foundation

// Pause to allow user to see output
func waitForInput() {
    print("Press RETURN to contiue...")
    _ = readLine()
}

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


// New variable for the array which reduces the passes each pass.
var unsorted = dataSet.count - 1
var swap = false
// Sort the array

// Loop through the array "n" times
//(However many times there are elements in the array)
for i in 0..<dataSet.count {
    
    
    // One pass through the array to float the highest number to the end
    for j in 0..<unsorted {
      swap = false
        //What comparison is this?
        print("Pass \(i + 1), comparison \(j + 1)...")
        
        // Compare left value to right value
        if dataSet[j] > dataSet[j + 1] {
           
            swap = true
            //Swap value when the left value is greater than the right value
            let temperaryValue = dataSet[j]     //Set aside the left value
            dataSet[j] = dataSet[j + 1]         // Replace the left with right
            dataSet[j + 1] = temperaryValue     // Replace right with temporary value
        }
       
    }
    if swap == false {
        break
    }
    
    // Lower the variable by 1
    unsorted -= 1
    
    // Print the aray after "n" passes
    print("Array after pass \(i + 1)")
    print(dataSet)
    waitForInput()

}


// Print Sorted Array
print("Sorted:")
print(dataSet)
waitForInput()

