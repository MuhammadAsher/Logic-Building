//
//  ViewController.swift
//  Demo Project Euler Problem # 5
//
//  Created by Muhammad Asher Azeem on 24/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var valuesArr: [String] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // call funciton
       checkNumber(numberRange: 1000000)
    }
    
  
    
    // MARK: - Q
    
    
    
    /**
     * @ Question 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
     * What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20
     */
    func checkNumber(numberRange: Int) {
        for index in 1...numberRange {
            let divisbleNumber =  smallestDivisibleNumber(index, lastRange: 17)
            if divisbleNumber != "" {
                valuesArr.append(divisbleNumber)
                print(valuesArr)
                print("First Smallest Number" + "=" + valuesArr.first!)
            }
        }
    }
    
    func smallestDivisibleNumber(_ num: Int, lastRange: Int) -> String {
        for index in 1...lastRange {
            if num % index == 0 {
                // how we can check
               // print("Asher \(index)")
                if index == lastRange {
                    return "\(num)"
                }
            } else {
                break
            }
        }
        return ""
    }
}

