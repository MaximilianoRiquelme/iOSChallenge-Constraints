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
        let nib = UINib(nibName: "MessageTableViewCell", bundle: nil)
        board_tableView.register(nib, forCellReuseIdentifier: "MessageTableViewCell")
        board_tableView.delegate = self
        board_tableView.dataSource = self
        
        board_tableView.rowHeight = UITableView.automaticDimension
        board_tableView.estimatedRowHeight = 300
        
        parseAndReload()
    }
    
    func parseAndReload()
    {
        guard let path = Bundle.main.path(forResource: "messages", ofType: "json") else{
            return
        }
        
        guard let jsonData = try? Data(contentsOf: URL(fileURLWithPath: path)) else{
            return
        }
        
        guard let jsonMessages = try? JSONDecoder().decode([Message].self, from: jsonData) else {
            return
        }
        
        messages = jsonMessages
        board_tableView.reloadData()
    }
    
    //Called when a cell is selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Do something perhaps
    }
    
    //Sets the amount of rows on the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let rows = messages?.count else {
            return 0
        }
        
        return rows
    }
    
    //Loads all cells in order
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageTableViewCell", for: indexPath) as! MessageTableViewCell
        
        //Change the cell with the proper information
        let msg = messages?[indexPath.row]
        
        cell.message.text = msg?.message
        cell.username.text = msg?.username
        cell.timeMessage.text = msg?.timeMessage
        cell.selectionStyle = .none
    
        return cell
    }
}
