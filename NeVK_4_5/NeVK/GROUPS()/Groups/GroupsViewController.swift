//
//  GroupsViewController.swift
//  NeVK
//
//  Created by Mikhail Papullo on 12/3/21.
//

import UIKit

class GroupsViewController: UITableViewController {

    var groups: [GroupModel] = [
        GroupModel(name: "Волшебный Лес", avatar: "VolLes"),
        GroupModel(name: "Северный Полюс", avatar: "SevPol")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as? GroupsViewCell
        else {
            return UITableViewCell()
        }

        cell.GroupName.text = groups[indexPath.row].name
		cell.GroupAvatar.image = UIImage(named: groups[indexPath.row].avatar)

        return cell
    }
}
