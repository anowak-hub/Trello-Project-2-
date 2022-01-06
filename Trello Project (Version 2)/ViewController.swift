//
//  ViewController.swift
//  Trello Project (Version 2)
//
//  Created by Andrew Nowak on 1/6/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
// MARK: - Outlets, Constants, and Variables
    @IBOutlet weak var trelloTableView: UITableView!
    @IBOutlet weak var itemTextField: UITextField!
    
    
// MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
// MARK: - Functions, Actions, etc.

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    @IBAction func addItem(_ sender: UIBarButtonItem) {
    
    }
    
}

