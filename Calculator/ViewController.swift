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
        textView.inputView = dummyView
        textView.becomeFirstResponder()
        
        
 
    }
    
    
    
    
    var parenthesis = 0
    var isNumberInput = false

     
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var resultView: UILabel!
    
    
    //버튼 모음
    @IBAction func zeroBtn(_ sender: Any) {
        operandBtnClicked(input: "0")
        UIView.animate(withDuration: 0.1, animations: {
            
        })
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
        textView.text = ""
        parenthesis = 0
        isNumberInput = false
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
    @IBAction func NegBtn(_ sender: Any) {
    }
    @IBAction func parBtn(_ sender: Any) {
        parenthesis(input: ")")
    }
    
    @IBAction func historyBtn(_ sender: Any) {
    }
    
    @IBAction func backBtn(_ sender: Any) {      //삭제 버튼
        
        if cursor().beforeCursor == "(" {
            parenthesis -= 1
        }else if cursor().beforeCursor == ")" {
            parenthesis += 1
        }

        textView.deleteBackward()

    }
    
    @IBAction func eqBtn(_ sender: Any) {
        var startIndex = 0
        var endIndex   = 0
        for (index, value) in textView.text.enumerated(){
            
            startIndex = index
            if value == "(" {
                for (index, value) in textView.text.enumerated(){
                    if value == ")" {
                        endIndex = index
                        print("StartIndex is \(startIndex), and EndIndex is \(endIndex)")
                    }
                }
            }
            //print("value : \(value) at index : \(index)")
        }
    
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    func parenthesis(input:String){
        if input == "(" {            // ")" 을 "("가 사용되지 않은 상태에서 사용할 수 없고, ")"의 사용횟수는 "("의 사용횟수에 의해 제어된다.
            parenthesis += 1
            textView.insertText(input)
        }else if parenthesis > 0{
            textView.insertText(input)
            parenthesis -= 1
        }
        
        
        
        //        for char in textView.text{
        //            if char == "(" || input == "("{
        //                textView.text += input
        //            }
        //        }
        
    
        
    }
    
    
    
    
    func operandBtnClicked(input:String){
        isNumberInput = true
        textView.insertText(input)
    }
    
    func operatorBtnClicked(input:String){
        
        switch cursor().afterCursor{      //커서 뒤에 연산자가 있을 경우 입력 방지
        case "+","-","×","÷","%",".":
            textView.insertText("")
        default:
            switch cursor().beforeCursor{
            case "+","-","×","÷","%",".": //커서 앞 문자가 연산자 중 하나라면 그 연산자를 지우고 현재 입력하고자 하는 연산자를 입력한다
                textView.deleteBackward()
                textView.insertText(input)
            case "":                       //처음부터 연산자 입력 방지
                textView.insertText("")
            default:                      //그 외의 경우라면(피연산자) 현재 입력하고자 하는 연산자를 입력한다
                textView.insertText(input)
                
            }
        }

        
    }
    
    
    
    
    
    
    
    
    
    func cursor() -> (beforeCursor : String, afterCursor : String) {
        let textString = textView.text!
        let textRange = textView.selectedTextRange!                //커서가 위치한 곳의 범위
        let offset = textView.offset(from: textView.beginningOfDocument, to: textRange.start)         //커서가 위치한 곳의 위치
        let beforeString = textString.substring(to: textString.index(textString.startIndex, offsetBy: offset))  // 커서 앞에 위치한 텍스트
        let afterString = textString.substring(from: textString.index(textString.startIndex, offsetBy: offset)) // 커서 뒤에 위치한 텍스트
        var beforeCursor = ""
        var afterCursor  = ""
        
        if beforeString.count > 0 {
            beforeCursor = String(beforeString[beforeString.index(before: beforeString.endIndex)])  //beforeString의 마지막 문자값
        }
        
        if afterString.count > 0 {
            afterCursor = String(afterString[afterString.startIndex])    //afterString의 첫번째 문자값
        }
        
        return (beforeCursor,afterCursor)
    }
    
    

    
    
    
    
    
    
    
}

















