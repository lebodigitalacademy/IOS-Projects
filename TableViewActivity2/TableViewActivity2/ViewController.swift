//
//  ViewController.swift
//  TableViewActivity2
//
//  Created by DA Mac 141 on 2023/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      tableView.dataSource = self
    }


}

//Mark: - TableView Methods
extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell else {return UITableViewCell()}
        
        cell.firstName.text = "Lebohang"
        cell.lastName.text = "Mokoena"
        cell.email.text = "lebodigitalacademy@gmail.com"
        cell.imageLabel.image = UIImage(named: "person.circle")
        return cell
    }
}

