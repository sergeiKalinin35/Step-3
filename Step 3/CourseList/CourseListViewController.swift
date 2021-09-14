//
//  ViewController.swift
//  Step 3
//
//  Created by Sergey on 13.09.2021.
//

import UIKit


class CourseListViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    
//MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 100
        setupNavigationBar()
    }
  
    
    
 
        
    
//MARK: - setup Navigation Bar
    private func setupNavigationBar() {
        if #available(iOS 13.0, *) {
            
        title = "ЗАГОЛОВОК"
            
    let navigationBar = UINavigationBarAppearance()
        navigationBar.configureWithOpaqueBackground() // ???
        navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navigationBar.backgroundColor = UIColor(
                                                 displayP3Red: 21/255,
                                                 green: 101/255,
                                                 blue: 192/255,
                                                 alpha: 194/255
                                                )
      
        navigationController?.navigationBar.standardAppearance = navigationBar
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBar
           
     }
   }
}
//MARK: - Table View Data Source
extension CourseListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "Все получается, гни свою линию!"
        
       
        return cell
        
    }
}

//MARK: - Table View Delegate
extension CourseListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}
