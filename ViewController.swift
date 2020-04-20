//
//  ViewController.swift
//  计算器
//
//  Created by cdj990918 on 2020/4/17.
//  Copyright © 2020 cdj990918. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var myjsq = jisuanqi()
    private var store_number  = 0.0
    private var store_operator = " "
    private var count = 0
    private var status = 0
    
    private var store_string = " "
    {
        didSet{
            lable.text=store_string
        }
        
    }
    
    private var string_temp = " "
    
    @IBAction func touchCard(_ sender: UIButton) {
        if let temp = sender.currentTitle{
            store_string += temp
            if temp == "1"
            {
                store_number = 10*store_number + 1
               
            }
            else if temp == "2"
            {
                store_number = 10*store_number + 2
                
            }
            else if temp == "3"
            {
                store_number = 10*store_number + 3
            }
            else if temp == "4"
            {
                store_number = 10*store_number + 4
            }
            else if temp == "5"
            {
                store_number = 10*store_number + 5
            }
            else if temp == "6"
            {
                store_number = 10*store_number + 6
            }
            else if temp == "7"
            {
                store_number = 10*store_number + 7
            }
            else if temp == "8"
            {
                store_number = 10*store_number + 8
            }
            else if temp == "9"
            {
                store_number = 10*store_number + 9
            }
            
            count+=1
            
        }
        else
        {
            print("input error")
        }
    }
    
    @IBOutlet weak var lable: UILabel!
    
    @IBAction func qinglin(_ sender: UIButton) {
        store_number = 0
        store_string = " "
        count = 0
        status = 0
    }
    
    @IBOutlet private var Numberbuttons: [UIButton]!
    
    
    func Check_number()
    {
        if status == 1
        {
            let temp = store_number/pow(10,Double(count))
            myjsq.set_operator1(at: temp)
        }
        else
        {
             myjsq.set_operator1(at: store_number)
        }
    }
    
    @IBAction func Operate(_ sender: UIButton) {
        if let operator_f = sender.currentTitle
        {
            Check_number()
            if operator_f == "+"
            {
                store_operator = "+"
            }
            else if operator_f == "-"
            {
                store_operator = "-"
            }
            else if operator_f == "x"
            {
                store_operator = "x"
            }
            else if operator_f == "➗"
            {
                store_operator = "/"
            }
            status = 0
            store_number = 0
            store_string += operator_f
        }
    }
    
    @IBAction func dengyu(_ sender: UIButton) {
        if status == 1
               {
                   let temp = store_number/pow(10,Double(count))
                   myjsq.set_operator2(at: temp)
               }
               else
               {
                    myjsq.set_operator2(at: store_number)
               }
        let tempx = myjsq.get_ans(at: store_operator)
        store_string = String(tempx)
        store_number = 0
        status = 0
    }
    
    @IBAction func dian(_ sender: UIButton) {
        count = 0
        status = 1
     store_string += "."
    }
    
    
    
    
    
}

