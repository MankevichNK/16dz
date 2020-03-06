//
//  ViewController.swift
//  16dz
//
//  Created by Пользователь on 3/5/20.
//  Copyright © 2020 Пользователь. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var namesArray: [(UIImage, String)] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.dataSource = self
        tableView.rowHeight = 80
    }

    @IBAction func addButton(_ sender: Any) {
        showSVC()
    }
    
    func showSVC() {
        let secondScreen = getVC()
        secondScreen.saveData = saveData
        navigationController!.pushViewController(secondScreen, animated: true)
    }
    
    func saveData(image: UIImage?, name: String?){
        
            let tuple = (image, name)
        namesArray.append(tuple as! (UIImage, String))
            tableView.reloadData()
        
    }
    
    func getVC() -> SecondViewController{
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        return storyboard.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        let tuple = namesArray[indexPath.row]
        cell.set(photo: tuple.0, name: tuple.1)
    
        return cell
    }
    
  
    
}

