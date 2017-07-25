//
//  ViewController.swift
//  GWUnitTestProject
//
//  Created by Greaso Wang on 2017/7/24.
//  Copyright © 2017年 Greaso Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Prorperty
    @IBOutlet var myView: MyView!
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: Button Action
    @IBAction func myButtonAction(_ sender: UIButton) {
        myView.ResultLabel.text = "\(calculator(input:Int(myView.myTextField.text!) ?? 0))"
    }

    //MARK: Calculator func
    func calculator(input:Int) -> Int{
        return input * 100
    }
    
    typealias backResult = (_ result: String?, _ errorString: String?) -> Void
    
    func callBackTest(backResult: @escaping backResult) {
        let delayInSeconds = 1.0
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + delayInSeconds) {
            backResult("result","errorString")
        }
    }

    typealias checkResult = (_ result: String?, _ errorString: String?) -> Void
    
    func measureTest(checkResult: @escaping checkResult) {
        sleep(1)
        checkResult("result","errorString")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

