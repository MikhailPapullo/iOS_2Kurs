//
//  NewsController.swift
//  NeVK
//
//  Created by Mikhail Papullo on 12/11/21.
//

import UIKit

    final class NewsController: UITableViewController {
    
    var news = NewsLoader.iNeedNews()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "CustomNewsCell", bundle: nil), forCellReuseIdentifier: "NewsCellId")
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard
                let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCellId", for: indexPath) as? CustomNewsCell
            else {
                return UITableViewCell()
               
            }
            
        
//            cell.newsName.text = arrayOfNewsData[indexPath.row].text
//            let cell = Bundle.main.loadNibNamed("NewsCell", owner: self, options: nil)?.first as! NewsCell
//            cell.newsName.text = arrayOfNewsData[indexPath.row].name
//            cell.newsPhoto.image = arrayOfNewsData[indexPath.row].image
            
            
//        }
//        else if arrayOfNewsData[indexPath.row].cell == 2 {
//    }
//        else {
//
//        }
//
//
//
//        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            guard
//                let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendsViewCell
//            else {
//                return UITableViewCell()
//            }
            
//        cell.newsName.text = arrayOfNewsData[indexPath.row].name
//        cell.newsPhoto.image = UIImage(named: arrayOfNewsData[indexPath.row].image) ?? UIImage()
            
        let name = news[indexPath.row].name
        let image = news[indexPath.row].image
        
        cell.configure(name: name, image: UIImage(named: image)!)
            return cell
        }
        

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 517
    
    }

}
