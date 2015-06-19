//
//  ViewController.swift
//  introduce
//
//  Created by MAEDA HAJIME on 2014/06/03.
//  Copyright (c) 2014年 MAEDA HAJIME. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 名前
    @IBOutlet var tffName : UITextField!
    // 自己紹介メッセージ
    @IBOutlet var lbMessage : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configureTextField()
    }

    // MARK: Configuration
    
    func configureTextField() {
        
        //tffName.placeholder = NSLocalizedString("Placeholder text", comment: "")
        tffName.autocorrectionType = .Yes
        tffName.returnKeyType = .Done
        tffName.clearButtonMode = .Never
        
        // log
        println ("configureTextField")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // 自己紹介画面ボタン
    @IBAction func intoroduceMe(sender : AnyObject) {
        
        // 自己紹介文の表示
        // stringWithFormat 文字列を置き換える
        //
        
        // 定数の型はString型に
        let name:String  = self.tffName.text //String型
        
        self.lbMessage.text = "私は、\(name) です。"
        
        // キーボードの表示制御
        tffName.resignFirstResponder()
        
        // NSlog
        //println("自己紹介文の表示")

    }
    
}

