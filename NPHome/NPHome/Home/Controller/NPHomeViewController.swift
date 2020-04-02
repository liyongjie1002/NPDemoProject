//
//  NPHomeViewController.swift
//  NPDemoProject
//
//  Created by 李永杰 on 2020/3/11.
//  Copyright © 2020 NewPath. All rights reserved.
//

import UIKit
import NPBaseKit
import NPMine

public class NPHomeViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()

        configUI()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("将要出现")
        NPMineLayout().look()
    }
    
    func configUI() {
        self.view.backgroundColor = kAppMainColor
    }
}