//
//  ViewController.swift
//  DemoAPI
//
//  Created by Tien Dinh on 7/14/18.
//  Copyright © 2018 Tien Dinh. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnSignUp() {
        Provider.shared.authenticationService.getWordbook().asObservable().subscribe(onNext: { (wordBook) in
            print("success")
            print("\(wordBook)")
        }).disposed(by: disposeBag)
    }


}

