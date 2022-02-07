//
//  ViewController.swift
//  Calculator
//
//  Created by 엄철찬 on 2022/01/27.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 키보드 안나타나게 하기
        let dummyView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        textView.inputView = dummyView
        textView.becomeFirstResponder()
        
        zeroBtn.addTarget(self, action: #selector(zeroBtnClicked), for: .touchDown)
        oneBtn.addTarget(self, action: #selector(oneBtnClicked), for: .touchDown)
        twoBtn.addTarget(self, action: #selector(twoBtnClicked), for: .touchDown)
        threeBtn.addTarget(self, action: #selector(threeBtnClicked), for: .touchDown)
        fourBtn.addTarget(self, action: #selector(fourBtnClicked), for: .touchDown)
        fiveBtn.addTarget(self, action: #selector(fiveBtnClicked), for: .touchDown)
        sixBtn.addTarget(self, action: #selector(sixBtnClicked), for: .touchDown)
        sevenBtn.addTarget(self, action: #selector(sevenBtnClicked), for: .touchDown)
        eightBtn.addTarget(self, action: #selector(eightBtnClicked), for: .touchDown)
        nineBtn.addTarget(self, action: #selector(nineBtnClicked), for: .touchDown)
        
        historyBtn.addTarget(self, action: #selector(historyBtnClicked), for: .touchDown)
        deleteBtn.addTarget(self, action: #selector(deleteBtnClicked), for: .touchDown)
        negativeBtn.addTarget(self, action: #selector(negativeBtnClicked), for: .touchDown)
        parenthesisBtn.addTarget(self, action: #selector(parenthesisBtnClicked), for: .touchDown)
        percentBtn.addTarget(self, action: #selector(percentBtnClicked), for: .touchDown)
        divideBtn.addTarget(self, action: #selector(divideBtnClicked), for: .touchDown)
        multiplyBtn.addTarget(self, action: #selector(multiplyBtnClicked), for: .touchDown)
        subtractBtn.addTarget(self, action: #selector(subtractBtnClicked), for: .touchDown)
        addBtn.addTarget(self, action: #selector(addBtnClicked), for: .touchDown)
        allClearBtn.addTarget(self, action: #selector(allClearBtnClicked), for: .touchDown)
        dotBtn.addTarget(self, action: #selector(dotBtnClicked), for: .touchDown)
        equalBtn.addTarget(self, action: #selector(equalBtnClicked), for: .touchDown)

    }
    
    

    //var input         = [String]()
    var audioPlayer   = AVAudioPlayer()

    //화면
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var resultView: UILabel!
  
    //버튼 모음
    @IBOutlet weak var zeroBtn  : UIButton!
    @IBOutlet weak var oneBtn   : UIButton!
    @IBOutlet weak var twoBtn   : UIButton!
    @IBOutlet weak var threeBtn : UIButton!
    @IBOutlet weak var fourBtn  : UIButton!
    @IBOutlet weak var fiveBtn  : UIButton!
    @IBOutlet weak var sixBtn   : UIButton!
    @IBOutlet weak var sevenBtn : UIButton!
    @IBOutlet weak var eightBtn : UIButton!
    @IBOutlet weak var nineBtn  : UIButton!
    
    @IBOutlet weak var historyBtn     : UIButton!
    @IBOutlet weak var deleteBtn      : UIButton!
    @IBOutlet weak var negativeBtn    : UIButton!
    @IBOutlet weak var parenthesisBtn : UIButton!
    @IBOutlet weak var percentBtn     : UIButton!
    @IBOutlet weak var divideBtn      : UIButton!
    @IBOutlet weak var multiplyBtn    : UIButton!
    @IBOutlet weak var subtractBtn    : UIButton!
    @IBOutlet weak var addBtn         : UIButton!
    @IBOutlet weak var allClearBtn    : UIButton!
    @IBOutlet weak var dotBtn         : UIButton!
    @IBOutlet weak var equalBtn       : UIButton!






    
    @objc func zeroBtnClicked() {
        operandBtnClicked(input: "0")
        soundEffect()
        animationEffect(input: zeroBtn)
    }
    @objc func oneBtnClicked() {
        operandBtnClicked(input: "1")
        soundEffect()
        animationEffect(input: oneBtn)
    }
    @objc func twoBtnClicked() {
        operandBtnClicked(input: "2")
        soundEffect()
        animationEffect(input: twoBtn)
    }
    @objc func threeBtnClicked() {
        operandBtnClicked(input: "3")
        soundEffect()
        animationEffect(input: threeBtn)
    }
    @objc func fourBtnClicked() {
        operandBtnClicked(input: "4")
        soundEffect()
        animationEffect(input: fourBtn)
    }
    @objc func fiveBtnClicked() {
        operandBtnClicked(input: "5")
        soundEffect()
        animationEffect(input: fiveBtn)
    }
    @objc func sixBtnClicked() {
        operandBtnClicked(input: "6")
        soundEffect()
        animationEffect(input: sixBtn)
    }
    @objc func sevenBtnClicked() {
        operandBtnClicked(input: "7")
        soundEffect()
        animationEffect(input: sevenBtn)
    }
    @objc func eightBtnClicked() {
        operandBtnClicked(input: "8")
        soundEffect()
        animationEffect(input: eightBtn)
    }
    @objc func nineBtnClicked() {
        operandBtnClicked(input: "9")
        soundEffect()
        animationEffect(input: nineBtn)
    }
    @objc func historyBtnClicked() {
        soundEffect()
        animationEffect(input: historyBtn)
    }
    @objc func deleteBtnClicked() {
        soundEffect()
        animationEffect(input: deleteBtn)
        textView.deleteBackward()
    }
    @objc func negativeBtnClicked() {
        soundEffect()
        animationEffect(input: negativeBtn)
    }
    @objc func parenthesisBtnClicked() {
        soundEffect()
        animationEffect(input: parenthesisBtn)
        parenthesis()
    }
    @objc func percentBtnClicked() {
        soundEffect()
        animationEffect(input: percentBtn)
        operatorBtnClicked(input: "%")
    }
    @objc func divideBtnClicked() {
        soundEffect()
        animationEffect(input: divideBtn)
        operatorBtnClicked(input: "÷")
    }
    @objc func multiplyBtnClicked() {
        soundEffect()
        animationEffect(input: multiplyBtn)
        operatorBtnClicked(input: "×")
    }
    @objc func subtractBtnClicked() {
        soundEffect()
        animationEffect(input: subtractBtn)
        operatorBtnClicked(input: "-")
    }
    @objc func addBtnClicked() {
        soundEffect()
        animationEffect(input: addBtn)
        operatorBtnClicked(input: "+")
    }
    @objc func allClearBtnClicked() {
        soundEffect()
        animationEffect(input: allClearBtn)
        textView.text = ""
    }
    @objc func dotBtnClicked() {
        soundEffect()
        animationEffect(input: dotBtn)
        operatorBtnClicked(input: ".")
    }
    @objc func equalBtnClicked() {
        equalSoundEffect()
        animationEffect(input: equalBtn)
        
        var result = String(slice()[0])
        
        for char in result{
            if char == "."{
                if let a = Double(result){
                    result = String(format: "%.0f", a)
                    resultView.text = result
                }
                
            }
        }
        compute()
    }
    
    
    
    
    
    
    
//MARK: - 입력부분

    func parenthesis(){
        var openParenthesis = 0
        var closeParenthesis = 0

        //textView의 괄호 갯수 파악
        for char in slice(){
            if char == "("{
                openParenthesis += 1
            }else if char == ")"{
                closeParenthesis += 1
            }
        }
       
        if openParenthesis > closeParenthesis{      //여는 괄호가 닫는 괄호보다 많을 때
            switch cursor().beforeCursor{
            case  "+","-","×","÷","%","","(",".":   //커서 앞에 숫자가 아닌 이상 여는 괄호 입력
                textView.insertText("(")
            default:                                //커서 앞에 숫자가 있거나 닫는 괄호가 있으면 닫는 괄호 입력
                switch cursor().afterCursor{
                    case "+","-","×","÷","%","","(",".":
                    textView.insertText(")")
                default:
                    textView.insertText(")×")       //커서 뒤에 숫자가 있다면 x 자동 완성
                }
            }
        }else{                                      //여는 괄호와 닫는 괄호의 갯수가 같을 때
            switch cursor().beforeCursor{
            case "+","-","×","÷","%","","(",".":
                textView.insertText("(")
            default:
                textView.insertText("×(")}          //커서 앞에 숫자가 있다면 x 자동 완성
            }
        
        openParenthesis = 0
        closeParenthesis = 0
    }
    
    func operandBtnClicked(input:String){
        if cursor().beforeCursor == ")" || cursor().beforeCursor == "%"{       //닫는 괄호 또는 % 뒤에 입력 시 x 자동 완성
        textView.insertText("×" + input)
        }else{
            textView.insertText(input)
        }
    }
    
    func operatorBtnClicked(input:String){
        
        switch cursor().afterCursor{
        case "+","-","×","÷","%",".":           //커서 뒤에 연산자가 있을 경우 입력 방지
            textView.insertText("")
        default:
            switch cursor().beforeCursor{
            case "+","-","×","÷","." :          //커서 앞 문자가 연산자 중 하나라면 그 연산자를 지우고 현재 입력하고자 하는 연산자를 입력한다
                textView.deleteBackward()
                textView.insertText(input)
            case "","(":                        //처음부터 연산자 입력 방지, 여는 괄호 바로 다음 연산자 입력 방지
                textView.insertText("")
            case "%" where input == "%":        //커서 앞 문자가 % 이면서 또 %를 입력할려고 할 때 방지
                textView.insertText("")
            default:                            //그 외의 경우라면(피연산자) 현재 입력하고자 하는 연산자를 입력한다
                textView.insertText(input)
            }
        }
        
        
    }
    
    func cursor() -> (beforeCursor : String, afterCursor : String) {
        let textString = textView.text!
        let textRange = textView.selectedTextRange!                                                             //커서가 위치한 곳의 범위
        let offset = textView.offset(from: textView.beginningOfDocument, to: textRange.start)                   //커서가 위치한 곳의 위치
        let beforeString = textString.substring(to: textString.index(textString.startIndex, offsetBy: offset))  // 커서 앞에 위치한 텍스트
        let afterString = textString.substring(from: textString.index(textString.startIndex, offsetBy: offset)) // 커서 뒤에 위치한 텍스트
        var beforeCursor = ""
        var afterCursor  = ""
        
        if beforeString.count > 0 {
            beforeCursor = String(beforeString[beforeString.index(before: beforeString.endIndex)])              //beforeString의 마지막 문자값
        }
        
        if afterString.count > 0 {
            afterCursor = String(afterString[afterString.startIndex])                                           //afterString의 첫번째 문자값
        }
        
        return (beforeCursor,afterCursor)
    }
    
    
    
    
    
//MARK: - 계산부분
    
    //연산자(operands)와 피연산자(operators) 구분 하여 새로운 배열에 담아 반환. 예) 3+4x2 -> [3],[+],[4],[x],[2]
    func slice() -> [String] {
        var input   = [String]()
        var number  = ""

        for value in textView.text{
            switch value{
                case "+","-","×","÷","(",")":   //textView에 연산자가 있으면
                if number != ""{            //"" operands에 대입 방지
                    input.append(number)     //그 전까지 모아 놓았던 number를 oeprands배열에 대입
                }
                input.append(String(value))     //operator에 연산자 대입
                number = ""                 //다음 숫자를 받기위해 number를 초기화
            default:                        //연산자가 없는 경우
                number += String(value)     //number에 현재 숫자를 추가
            
            }
        }
        
        if number != ""{                    //"" operands에 대입 방지
        input.append(number)                //식의 마지막 숫자를 operands배열에 대입
        }

        
        print(" \(input)")
        
        return input
    }
       
    func compute() -> String{
        var resultValue = slice()                                                                       //입력식을 resultValue에 대입
        repeat {
            if let start = resultValue.lastIndex(of: "(") {                                             //여는 괄호가 있는지
                guard let end = resultValue.lastIndex(of: ")"), start < end else{                       //닫는 괄호가 있고 그것이 여는 괄호보다 뒤에 있을 경우
                    resultValue.append(")")                                                             //닫는 괄호가 없거나, 있어도 그것이 여는 괄호보다 앞에 있을 경우 마지막에 닫는 괄호 생성
                    continue                                                                            //-> 마지막 닫는 괄호 없는 것은 실수나 사용자의 귀차니즘이라고 판단
                }
                    for value in start...end{                                                           //마지막 여는 괄호의 짝이 항상 마지막 닫는 괄호가 아닐 수 있기 때문에 검사 진행
                        if resultValue[value] == ")"{                                                   //범위 안에 닫는 괄호가 발견 되었다면
                            resultValue.replaceSubrange(start...end, with: calculate(input: Array(resultValue[start...value])))  //여는 괄호와 닫는 괄호 사이의 값을 계산 후
                        }                                                                                                        //그 값을 계산 범위 값과 대체
                    }
            }else{                                                                                      //여는 괄호가 없다면
                let start = resultValue.startIndex                                                      //식의 처음
                let end   = resultValue.index(before: resultValue.endIndex)                             //식의 끝
                resultValue.replaceSubrange(start...end, with: calculate(input: Array(resultValue[start...end])))   //식 전체를 계산 후 대입 -> 입력식의 길이 1, 루프를 빠져나간다
            }
        }while ( resultValue.count != 1 )                                                               //입력식의 길이가 1이 될때까지 위의 과정을 반복한다
        resultView.text = resultValue[0]
        return resultValue[0]
    }
    
    func calculate( input : [String] ) -> [String]{
        var calculate = input
        repeat {
            outerLoop : for (index, value) in calculate.enumerated() {          //계산식에 곱하기나 나누기가 있는지 검사
                switch value {
                case "×" :
                    print("calculate is \(calculate))")
                    calculate.replaceSubrange(index-1...index+1, with: [ "\(Double(calculate[index-1])! * Double(calculate[index+1])!)" ] )
                    break outerLoop                                             //곱하기 수행 시, for 문까지 빠져나감 -> replaceSubrange로 줄어든 계산식의 길이를 반영하여 다시 계산하기 위해서
                case "÷" :
                    calculate.replaceSubrange(index-1...index+1, with: [ "\(Double(calculate[index-1])! / Double(calculate[index+1])!)" ] )
                    break outerLoop                                             //나눗셈 수행 시, for 문까지 빠져나감 -> replaceSubrange로 줄어든 계산식의 길이를 반영하여 다시 계산하기 위해서
                default:
                    break
                }
            }
        }while(calculate.firstIndex(of: "×") != nil || calculate.firstIndex(of: "÷") != nil )  //입력 수식에 곱하기나 나누기가 없을 때 까지 반복한다. 없다면 다음 덧셈과 뺄셈 시작
        
        repeat {
            outerLoop : for (index, value) in calculate.enumerated() {          //계산식에 덧셈이나 뺄셈이 있는지 검사
                switch value {
                case "+" :
                    calculate.replaceSubrange(index-1...index+1, with: [ "\(Double(calculate[index-1])! + Double(calculate[index+1])!)" ] )
                    break outerLoop                                             //덧셈 수행 시, for 문까지 빠져나감 -> replaceSubrange로 줄어든 계산식의 길이를 반영하여 다시 계산하기 위해서
                case "-" :
                    calculate.replaceSubrange(index-1...index+1, with: [ "\(Double(calculate[index-1])! - Double(calculate[index+1])!)" ] )
                    break outerLoop                                             //뺄셈 수행 시, for 문까지 빠져나감 -> replaceSubrange로 줄어든 계산식의 길이를 반영하여 다시 계산하기 위해서
                default:
                    break
                }
            }
        }while(calculate.firstIndex(of: "+") != nil || calculate.firstIndex(of: "-") != nil )  //입력 수식에 더하기나 빼기가 없을 때 까지 반복한다
        
        print(calculate)
        
        if calculate.count == 3{        //괄호가 포함되었을 경우
        calculate.removeFirst()         //여는 괄호 제거
        calculate.removeLast()          //닫는 괄호 제거
        }
   
        return calculate
        
    }
    
   
    
    
    
    
//MARK: - effect부분
    
    func soundEffect(){
        let soundURL = NSURL(fileURLWithPath: Bundle.main.path(forResource: "buttonSound", ofType: "wav")!)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL as URL)
            audioPlayer.play()
        }catch {
            print("there was some error. The error was \(error)")
        }
    }
    
    func equalSoundEffect(){
        let soundURL = NSURL(fileURLWithPath: Bundle.main.path(forResource: "equalSound", ofType: "wav")!)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL as URL)
            audioPlayer.play()
        }catch {
            print("there was some error. The error was \(error)")
        }
    }
    
    func animationEffect(input:UIButton){
        UIView.animate(withDuration: 0.05, delay: 0, options: .allowUserInteraction, animations: {input.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)}, completion: {finished in UIView.animate(withDuration: 0.05, animations: {input.transform = CGAffineTransform.identity})}
            )
    }
    
   

    
}

















