//
//  CalculatePrimeOperation.swift
//  RWConcurrencyTest
//
//  Created by Samantha Cortopassi on 4/2/19.
//  Copyright © 2019 Samantha Cortopassi. All rights reserved.
//

import Foundation

class CalculatePrimeOperation: Operation {
    
    override func main() {
        for number in 0 ... 100_000_000 {
            let isPrimeNumber = isPrime(number: number)
            print("\(number) is prime: \(isPrimeNumber)")
        }
    }
    
    func isPrime(number: Int) -> Bool {
        if number <= 1 {
            return false
        }
        if number <= 3 {
            return true
        }
        var i = 2
        while i * i <= number {
            if number % 1 == 0 {
                return false
            }
            i = i + 2
        }
        return true
    }
}
