//
//  ViewController.swift
//  CalculatorApp_Swift_Xcode_ios
//
//  Created by DA MAC  M1 154 on 2023/06/28.
//

import UIKit

class ViewController: UIViewController {
    var workings: String = ""

    @IBOutlet weak var calculatorResults: UILabel!
    @IBOutlet weak var CalculatorWorkings: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clearAll()
    }
    func clearAll() {
        workings = ""
        CalculatorWorkings.text = ""
        calculatorResults.text = ""
    }

    @IBAction func EqualsTap(_ sender: Any) {
        let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResults(result: result)
        calculatorResults.text = resultString
    }
    func formatResults(result: Double) -> String {
        if(result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format: "%.0f", result)
        }else {
            return String(format:".2f", result)
        }
    }
    
    @IBAction func AllClearTap(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func BackTap(_ sender: Any) {
        if(!workings.isEmpty){
            workings.removeLast()
            CalculatorWorkings.text = workings
        }
    }
    func addToWorkings(value: String) {
        workings = workings + value
        CalculatorWorkings.text = workings
    }
    @IBAction func PercentTap(_ sender: Any) {
        addToWorkings(value: "%")
    }
    
    @IBAction func DivideTap(_ sender: Any) {
        addToWorkings(value: "/")
    }
    @IBAction func TimesTap(_ sender: Any) {
        addToWorkings(value: "*")
    }
    @IBAction func MinusTap(_ sender: Any) {
        addToWorkings(value: "-")
    }
    @IBAction func plusTap(_ sender: Any) {
        addToWorkings(value: "+")
    }
    @IBAction func DecimalTap(_ sender: Any) {
        addToWorkings(value: ".")
    }
    @IBAction func ZeroTap(_ sender: Any) {
        addToWorkings(value: "0")
    }
    @IBAction func OneTap(_ sender: Any) {
        addToWorkings(value: "1")
    }
    @IBAction func TwoTap(_ sender: Any) {
        addToWorkings(value: "2")
    }
    @IBAction func ThreeTap(_ sender: Any) {
        addToWorkings(value: "3")
    }
    @IBAction func FourTap(_ sender: Any) {
        addToWorkings(value: "4")
    }
    @IBAction func FiveTap(_ sender: Any) {
        addToWorkings(value: "5")
    }
    @IBAction func SixTap(_ sender: Any) {
        addToWorkings(value: "6")
    }
    @IBAction func SevenTap(_ sender: Any) {
        addToWorkings(value: "7")
    }
    @IBAction func EightTap(_ sender: Any) {
        addToWorkings(value: "8")
    }
    @IBAction func NineTap(_ sender: Any) {
        addToWorkings(value: "9")
    }
}

