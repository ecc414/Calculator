//
//  ViewController.swift
//  Calculator
//
//  Created by 엄철찬 on 2022/01/27.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let dummyView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        textField.inputView = dummyView
        textField.becomeFirstResponder()
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBOutlet weak var textField: UITextView! //화면 창
    
    //버튼 모음
    @IBAction func zeroBtn(_ sender: Any) {
        operandBtnClicked(input: 0)
    }
    @IBAction func oneBtn(_ sender: Any) {
        operandBtnClicked(input: 1)
    }
    @IBAction func twoBtn(_ sender: Any) {
        operandBtnClicked(input: 2)
    }
    @IBAction func threeBtn(_ sender: Any) {
        operandBtnClicked(input: 3)
    }
    @IBAction func fourBtn(_ sender: Any) {
        operandBtnClicked(input: 4)
    }
    @IBAction func fiveBtn(_ sender: Any) {
        operandBtnClicked(input: 5)
    }
    @IBAction func sixBtn(_ sender: Any) {
        operandBtnClicked(input: 6)
    }
    @IBAction func sevenBtn(_ sender: Any) {
        operandBtnClicked(input: 7)
    }
    @IBAction func eightBtn(_ sender: Any) {
        operandBtnClicked(input: 8)
    }
    @IBAction func nineBtn(_ sender: Any) {
        operandBtnClicked(input: 9)
    }
    @IBAction func dotBtn(_ sender: Any) {
    }
    @IBAction func ACBtn(_ sender: Any) {      //초기화 버튼
        textField.text = ""
    }
    @IBAction func AddBtn(_ sender: Any) {
        operatorBtnClicked(input: "+")
    }
    @IBAction func SubBtn(_ sender: Any) {
        operatorBtnClicked(input: "-")
    }
    @IBAction func MulBtn(_ sender: Any) {
        operatorBtnClicked(input: "×")
    }
    @IBAction func divBtn(_ sender: Any) {
        operatorBtnClicked(input: "÷")
    }
    @IBAction func risBtn(_ sender: Any) {
        operatorBtnClicked(input: "%")
    }
    @IBAction func parSBtn(_ sender: Any) {
        operatorBtnClicked(input: "(")
    }
    @IBAction func parEBtn(_ sender: Any) {
        operatorBtnClicked(input: ")")
    }
    @IBAction func eqBtn(_ sender: Any) {
        print(textField.text)
    }
    @IBAction func historyBtn(_ sender: Any) {
    }
    @IBAction func backBtn(_ sender: Any) {      //삭제 버튼
        textField.deleteBackward()
    }
    
    
    
    
    
    
    
    func operandBtnClicked(input:Int){
        textField.text += "\(input)"
    }
    func operatorBtnClicked(input:String){
        textField.text += input
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


