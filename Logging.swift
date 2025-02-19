//  Logging.swift
//
//  Created by Remy Skelton
//  Created on 2025-February-18
//  Version 1.0
//  Copyright (c) Remy Skelton. All rights reserved.
//
//  This program will calculate the maximum number of logs that can fit into a truck based on certain lengths.

// import foundation
import Foundation

// Constants
let MAX_WEIGHT: Int = 1100
let QUARTER_LOG_LENGTH: Double = 0.25
let HALF_LOG_LENGTH: Double = 0.5
let FULL_LOG_LENGTH: Double = 1.0

func Logging() {
    // Welcome message
    print("This program will calculate the maximum number of logs that can fit into a truck based on certain lengths.")

    // Declare log length variable as double
    var logLengthDouble: Double?

    // Repeat until valid input
    repeat {
        // Ask user for log length
        print("Please enter the length of the logs in meters (0.25, 0.5, or 1.0):")

        // Read user input and convert to double with using guard
        guard let logLengthAsString = readLine(), let logLengthDoubleLoop = Double(logLengthAsString) else {
            print("Invalid input. Please enter a valid log length.")
            // exit guard and stay in loop
            continue
        }

        // Check if log length is valid
        if logLengthDoubleLoop == QUARTER_LOG_LENGTH || logLengthDoubleLoop == HALF_LOG_LENGTH || logLengthDoubleLoop == FULL_LOG_LENGTH {
            // Store valid log length
            logLengthDouble = logLengthDoubleLoop
            // Exit loop
            break
        } else {
            print("Invalid input: \(logLengthDoubleLoop). Log length must be 0.25, 0.5, or 1.")
        }
    } while true

    // Calculate weight per log
    let weightPerLog: Double = logLengthDouble * 20

    // Calculate the number of logs
    let numLogsInt: Int = Int(Double(MAX_WEIGHT) / weightPerLog)  // Convert result to Int

    // Display the max number of logs
    print("The maximum number of logs that can fit into a truck with \(logLengthDouble)m logs is \(numLogsInt) logs.")
}

// Call function
Logging()
