//
//  ColorsDetailViewController.swift
//  RandomColors-SeanAllen
//
//  Created by Yuri Ershov on 15.02.21.
//

import UIKit

class ColorsDetailViewController: UIViewController {
    
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        // If some color was passed to variable, then change background to it
        view.backgroundColor = color ?? .systemBackground
    }
    
}
