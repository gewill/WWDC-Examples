//
//  ViewController.swift
//  10209
//
//  Created by Will on 06/07/2021.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.global().async {
            // 运行时问题断点
            // Thread 4: UIViewController.view must be used from main thread only
            self.view.backgroundColor = UIColor.systemGreen
        }
        
        // 符号断点
        // 但是寄存器名称不好记，我们也可以使用 $arg1、$arg2 等符号来查看方法入参。如下图，$arg1是方法第一个参数也就是对象本身，$arg2是方法第二个参数也就是 SEL，po 命令无法直接输出函数名，需要加上(SEL)强转，$arg3是被赋给text的值。
    }

    @IBAction func buttonClick(_ sender: UIButton) {
        // 列断点
        var array = Array(0 ... 10)
        array = array.map { $0 * 2 }.map { $0 + 2 }
    }
}
