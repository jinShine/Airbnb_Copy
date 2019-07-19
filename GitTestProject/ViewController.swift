//
//  ViewController.swift
//  GitTestProject
//
//  Created by 김승진 on 2018. 7. 29..
//  Copyright © 2018년 김승진. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Pull Request Test
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var valueTextField: UITextField!
    @IBOutlet weak var deleteItemTextField: UITextField!
    @IBOutlet weak var selectItemTextField: UITextField!
    @IBOutlet weak var resultTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("fork test!")
        //태형 :  ㄹㅇ너린어라ㅣㅓ라ㅣㄴ어리ㅏ너리나런이ㅏ
        
        let button1: UIButton = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        button1.backgroundColor = UIColor.brown
        button1.setTitle("요거 눌러봐", for: .normal)
        self.view.addSubview(button1)
        button1.addTarget(self, action: #selector(goLoginView), for: UIControlEvents.touchUpInside)
    }
    
    @objc func goLoginView() {
        let storyboard = UIStoryboard(name: "LoginView", bundle: nil)
        let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC, animated: true) {
            print("LoginVC 이동 성공")
        }
    }


}

