//
//  ViewController.swift
//  exercise3
//
//  Created by Maximiliano Riquelme Vera on 26/07/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var board_tableView: UITableView!
    
    var messages : [Message]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let nib = UINib(nibName: "MessageCell", bundle: nil)
        board_tableView.register(nib, forCellReuseIdentifier: "MessageCell")
        board_tableView.delegate = self
        board_tableView.dataSource = self
        
        //Should load from .json file and save on the array
        
    }
    
    //Called when a cell is selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Do something perhaps
    }
    
    //Sets the amount of rows on the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 //messages!.count //amount of rows
    }
    
    //Loads all cells in order
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell", for: indexPath) as! MessageTableViewCell
        
        //Change the cell with the proper information
        cell.backgroundColor = .systemTeal
        cell.message.text = "hola"
        cell.username.text = "Fulanito"
        cell.timeMessage.text = "00:00"
    
        return cell
    }
}

