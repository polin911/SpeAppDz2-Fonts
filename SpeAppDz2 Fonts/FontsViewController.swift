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
    var indexOfFont = [0]
    var nameFonts: String = ""
    
    
    @IBOutlet var tableView: UITableView!
    
  
    
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let segueDestination = segue.destination as? ResultFontsViewController,
           
            let nameFFF = sender as? String {
            segueDestination.nameF = nameFFF
        }
        
    }

}

extension FontsViewController:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var newArray = [""]
        for familyName in familyFontName {
            let names = UIFont.fontNames(forFamilyName: familyName)
            newArray.append(contentsOf: names)
        }
        return newArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let nameOfFonts = familyFontName[indexPath.row]
        
        self.nameFonts = nameOfFonts
        cell.textLabel?.font = UIFont(name: nameOfFonts, size: 16)
        cell.textLabel?.text = familyFontName[indexPath.row]
        
        return cell
    }
    
}

extension FontsViewController:UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Result Font", sender: familyFontName[indexPath.row])
        
        
    }
}




