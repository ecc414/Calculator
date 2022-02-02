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
        
        // 키보드 안나타나게 하기
        let dummyView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        textField.inputView = dummyView
        textField.becomeFirstResponder()
    }
    
   
    

    var parenthesis = 0
    
    
    @IBOutlet weak var textField: UITextView! //화면 창
    
    //버튼 모음
    @IBAction func zeroBtn(_ sender: Any) {
        operandBtnClicked(input: "0")
    }
    @IBAction func oneBtn(_ sender: Any) {
       operandBtnClicked(input: "1")
    }
    @IBAction func twoBtn(_ sender: Any) {
        operandBtnClicked(input: "2")
    }
    @IBAction func threeBtn(_ sender: Any) {
        operandBtnClicked(input: "3")
    }
    @IBAction func fourBtn(_ sender: Any) {
        operandBtnClicked(input: "4")
    }
    @IBAction func fiveBtn(_ sender: Any) {
        operandBtnClicked(input: "5")
    }
    @IBAction func sixBtn(_ sender: Any) {
        operandBtnClicked(input: "6")
    }
    @IBAction func sevenBtn(_ sender: Any) {
        operandBtnClicked(input: "7")
    }
    @IBAction func eightBtn(_ sender: Any) {
        operandBtnClicked(input: "8")
    }
    @IBAction func nineBtn(_ sender: Any) {
        operandBtnClicked(input: "9")
    }
    @IBAction func dotBtn(_ sender: Any) {
        operatorBtnClicked(input: ".")
    }
    @IBAction func ACBtn(_ sender: Any) {      //초기화 버튼
        textField.text = ""
        parenthesis = 0
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
        parenthesis(input: "(")
    }
    @IBAction func parEBtn(_ sender: Any) {
        parenthesis(input: ")")
    }
    
    @IBAction func historyBtn(_ sender: Any) {
    }
    
    @IBAction func backBtn(_ sender: Any) {      //삭제 버튼
        textField.deleteBackward()
    }
    
    @IBAction func eqBtn(_ sender: Any) {
        
        for (index, value) in textField.text.enumerated(){
            
            print("value : \(value) at index : \(index)")
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func parenthesis(input:String){
     
        if input == "(" {            // ")" 을 "("가 사용되지 않은 상태에서 사용할 수 없고, ")"의 사용횟수는 "("의 사용횟수에 의해 제어된다.
            parenthesis += 1
            textField.text += input
        }else if parenthesis > 0{
            textField.text += input
            parenthesis -= 1
        }


        print(parenthesis)
        
//        for char in textField.text{
//            if char == "(" || input == "("{
//                textField.text += input
//            }
//        }
        
    }
    
    
    
    
    func operandBtnClicked(input:String){
        textField.text += input
    }
    
    func operatorBtnClicked(input:String){
        
        if textField.text.count != 0 {  //처음부터 연산자 입력 방지
            
            let lastOne = textField.text[textField.text.index(before: textField.text.endIndex)] //lastOne에 입력 수식의 마지막 문자를 대입한다
            
            switch lastOne {
                
            case "+","-","×","÷","%",".":     //마지막 문자가 입력 연산자 중 하나라면 그 연산자를 지우고 현재 입력하고자 하는 연산자를 입력한다
                textField.deleteBackward()
                textField.text += input
                
            default:                      //그 외의 경우라면(피연산자) 현재 입력하고자 하는 연산자를 입력한다
                textField.text += input
            }
            
        }
        
    }
    
    
        
        
}

    

    
    
    
    

    
    
    
    
    
    



