//
//  ViewController.swift
//  haberuygulamasi
//
//  Created by Emir Seçer on 16.09.2023.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newstableviewmodel == nil ? 0 : self.newstableviewmodel.numberOfRowsInSection()   }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! newsCell
        
        
        

        let newsviewmodel = self.newstableviewmodel.newsAtIndexPath(_index:indexPath.row)
        
        cell.titlelabel.text  = newsviewmodel.title
        
        cell.storylabel.text = newsviewmodel.story
        
        return cell
    }
    

    @IBOutlet weak var tableview: UITableView!
    
    private var newstableviewmodel : newstableviewmodel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.delegate = self
        tableview.dataSource = self
        
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = UITableView.automaticDimension
        
        verilerial()
     
               
            }
            
    func verilerial()  {
                let url = URL(string: "https://raw.githubusercontent.com/atilsamancioglu/BTK-iOSDataSet/master/dataset.json")
                
                webservises().haberleriindir(url: url!) { (haberler) in
                    if let haberler  = haberler  {
                        self.newstableviewmodel = haberuygulamasi.newstableviewmodel(newslist: haberler)
                        
                        DispatchQueue.main.async {
                            self.tableview.reloadData()
                        }
                        
                
            }
        }
        
        func tableView (  tableView : UITableView, heightForRowAt indexPath : IndexPath) -> CGFloat {
            return UITableView.automaticDimension
            
        }
        
    }


}

