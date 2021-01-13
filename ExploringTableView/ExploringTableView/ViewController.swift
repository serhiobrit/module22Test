//
//  ViewController.swift
//  ExploringTableView
//
//  Created by Serhio Brit on 06.01.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //        return 1
    //    }
    
    //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //        return UITableViewCell()
    //    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let userArray = ["Евгения", "Николай", "Катерина", "Станислав", "Артур", "Марина", "Вячеслав", "Петр"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // берем массив и получаем общее значение данных которые хранятся в нем
        return userArray.count
    }
    
    //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath) as? FirstCell else { return UITableViewCell() }
    //        cell.userName.text = userArray[indexPath.row]
    //        return cell
    //    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Names"
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "We're out of people, Karl!"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.register(UINib(nibName: "UniversalCell", bundle: nil), forCellReuseIdentifier: "UniversalCell")
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UniversalCell", for: indexPath) as? UniversalCell else { return UITableViewCell() }
        
        cell.userName.text = userArray[indexPath.row]
        
        return cell
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
