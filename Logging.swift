//  LogCalculator.swift
//
//  Created by Remy Skelton
//  Created on 2025-February-10
//  Version 1.0
//  Copyright (c) Remy Skelton. All rights reserved.
//
//  This program will calculate the maximum number of logs that can fit into a truck based on certain lengths.

// Import foundation
import Foundation

// Function to calculate the maximum number of logs that fit in a truck
func calculateMaxLogs() {
    // Constants
    let maxWeight = 1100.0
    let weightPerMeter = 20.0
    
    // Welcome message
    print("This program will calculate the maximum number of logs that can fit into a truck based on certain lengths.")
    print("Please enter the log length you will be using (0.25, 0.5, or 1):")
    
    // Read user input and see if it is invalid using guard
    guard let logLengthString = readLine(), let logLength = Double(logLengthString),
          logLength == 0.25 || logLength == 0.5 || logLength == 1 else {
        print("Invalid input: \(logLengthString). Log length must be 0.25, 0.5, or 1.")
        return
    }
    
    // Calculate the weight per log
    let weightPerLog = weightPerMeter * logLength
    
    // Calculate the number of logs
    let numLogs = Int(maxWeight / weightPerLog)
    
    // Display the maximum number of logs
    print("The truck will be able to take \(numLogs) logs that are \(logLength) meter(s) in length.")
}

// Call function
calculateMaxLogs()