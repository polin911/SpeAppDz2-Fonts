//
//  ResultFontsViewController.swift
//  SpeAppDz2 Fonts
//
//  Created by Polina on 07.03.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import UIKit

class ResultFontsViewController: UIViewController {
    var fontsVC = FontsViewController()
    var nameF: String = ""
    var indexFonts = 0

    @IBOutlet var labelResultFonts: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //var nameF = fontsVC.nameFonts
        
       
        labelResultFonts.font = UIFont(name: nameF, size: 25)
        
    }

}
