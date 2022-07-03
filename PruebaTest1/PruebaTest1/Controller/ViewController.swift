//
//  ViewController.swift
//  PruebaTest1
//
//  Created by catalina lozano on 02/07/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var tableView: UITableView!
    
    var elements = ["horse", "cat"]
    
    let show = Shows()
    var model: ShowModel?

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        show.apicall()
        
        tableView.dataSource = self
        tableView.delegate = self
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return model?.name?.count ?? 0
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
       // cell.nombreLbl.text = model?[indexPath.row].name
        //cell.imgImage.image = UIImage(named: image?.medium[indexPath])
        cell.nombreLbl.text = elements[indexPath.row]
        return cell
    }
    
   
    
    
}
