//
//  FontsViewController.swift
//  SpeAppDz2 Fonts
//
//  Created by Polina on 07.03.17.
//  Copyright © 2017 Polina. All rights reserved.
//

import UIKit

class FontsViewController: UIViewController {

    let familyFontName = UIFont.familyNames
    
    @IBOutlet var tableView: UITableView!
    
   let fontFamilyNames = UIFont.familyNames
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Fonts Style"
        loadFontsInTableView()
        
        // Do any additional setup after loading the view.
    }

    private func loadFontsInTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }

}

extension FontsViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return familyFontName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let nameOfFonts = familyFontName[indexPath.row]
        cell.textLabel?.font = UIFont(name: nameOfFonts, size: 16)
        cell.textLabel?.text = familyFontName[indexPath.row]
        
        return cell
    }
}

extension FontsViewController:UITableViewDelegate {
    
}




