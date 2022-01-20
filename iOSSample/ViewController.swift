//
//  ViewController.swift
//  iOSSample
//
//  Created by DAO QUAN on 2022/01/18.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func pushButton(sender:UIButton) {
        let ctr = UIViewController(nibName: nil, bundle: nil)
        ctr.title = "第２画面"
        ctr.view.backgroundColor = .cyan
        navigationController?.pushViewController(ctr, animated: true)
    }
    
    override func viewDidLoad() {
        title = "第1画面"
        super.viewDidLoad()
    }
}

