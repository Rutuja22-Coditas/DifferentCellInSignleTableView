

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var empData = [Emp]()
    var userViewModel = ViewModelUser()
    override func viewDidLoad() {
        super.viewDidLoad()
        userViewModel.fetchJson { (data) in
            self.empData = data
            print(self.empData)
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        tableView.register(UINib(nibName: "FirstTableViewCell", bundle: .main), forCellReuseIdentifier: "FirstTableViewCell")
        tableView.register(UINib(nibName: "SecondTableViewCell", bundle: .main), forCellReuseIdentifier: "SecondTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 || indexPath.row == 2 || indexPath.row == 4 || indexPath.row == 6{
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath)as! FirstTableViewCell
            cell.idLbl.text = "FirstTableViewCell"
            //cell.empImage.image = 
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath)as! SecondTableViewCell
            cell.emailLbl.text = "rutuja.hulsure@coditas.com"
            cell.nameLbl.text = "Rutuja"
            return cell
        }
        
       
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
  
}
  
       
  

