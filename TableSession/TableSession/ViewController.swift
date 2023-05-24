//
//  ViewController.swift
//  TableSession
//
//  Created by DA MAC M1 131 on 2023/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}

//mark - tableView
extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomeCell", for: indexPath) as? CustomeCell else {return UITableViewCell()}
        
        cell.firstNameLabel.text = "Lebohang"
        cell.lastNameLabel.text = "Mokoena"
        cell.emailLable.text = "lvkoena@gmail.com"
        cell.imageLabel.image = UIImage(systemName: "person.circle.fill")
        
        return cell
    }
    
}
