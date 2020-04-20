//
//  jisuanqi.swift
//  计算器
//
//  Created by cdj990918 on 2020/4/17.
//  Copyright © 2020 cdj990918. All rights reserved.
//

import Foundation

class jisuanqi
{
    private var operator1: Double
    private var operator2: Double
    init() {
        operator1=0
        operator2=0
        
    }
    
  
    public func set_operator1 (at temp:Double)
    {
        self.operator1 = temp
    }
    public func set_operator2(at temp :Double)
    {
        self.operator2 = temp
    }
    public func get_ans(at index:String)->Double
    {
        if index == "+"
        {
             return operator1 + operator2
        }
      else if index == "x"
        {
             return operator1*operator2
        }
        else if index == "-"
        {
            return operator1-operator2
        }
        else
        {
            return operator1/operator2
        }

    }
    
}
