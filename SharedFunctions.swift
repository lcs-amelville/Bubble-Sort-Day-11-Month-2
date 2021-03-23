//
//  SharedFunctions.swift
//  Bubble Sort Day 11 Month 2
//
//  Created by Melville, Aidan on 2021-03-23.
//

import Foundation

// Pause to allow user to see output
func waitForInput() {
    print("Press RETURN to contiue...")
    _ = readLine()
}



// Tp a;;pw the array to be passes by refrence rather than a copy we will mark the parameter as "inout" which means we can change the array
func bubbleSort(unsorted dataSet: inout [Int]) {
    
    // New variable for the array which reduces the passes each pass.
    
    var swap = false
    // Sort the array
    
    // Loop through the array "n" times
    //(However many times there are elements in the array)
    for i in 0..<dataSet.count {
        
        swap = false
        
        // One pass through the array to float the highest number to the end
        // "i" will equal the number of sorted elements.
        for j in 0..<dataSet.count - 1 - i {
            
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
        
        
        // Print the aray after "n" passes
        print("Array after pass \(i + 1)")
        print(dataSet)
        waitForInput()
        
    }
}
