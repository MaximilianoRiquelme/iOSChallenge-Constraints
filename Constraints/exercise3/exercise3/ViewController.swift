//
//  ViewController.swift
//  exercise3
//
//  Created by Maximiliano Riquelme Vera on 26/07/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var board_tableView: UITableView!
    
    //let messages = [Message]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        board_tableView.delegate = self
        board_tableView.dataSource = self
    }
    
    //Called when a cell is selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Do something perhaps
    }
    
    //Sets the amount of rows on the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5 //ammount of rows
    }
    
    //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sended", for: indexPath)
        
        //Change the cell somehow.
    
        return cell
    }
}

