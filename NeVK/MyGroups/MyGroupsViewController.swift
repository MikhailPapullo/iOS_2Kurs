//
//  TableViewController.swift
//  NeVK
//
//  Created by Mikhail Papullo on 12/3/21.
//

import UIKit

class MyGroupsViewController: UITableViewController {

	var groups: [GroupModel] = []

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	// MARK: - Table view data source
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return groups.count
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard
			let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroupCell", for: indexPath) as? MyGroupsCell
		else {
			return UITableViewCell()
		}

		cell.MyGroupName.text = groups[indexPath.row].name
		cell.MyGroupAvatar.image = UIImage(named: groups[indexPath.row].avatar)

		return cell
	}

	override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
		if editingStyle == .delete {
			groups.remove(at: indexPath.row)
			tableView.deleteRows(at: [indexPath], with: .fade)
		}
	}

	@IBAction func addGroup(segue: UIStoryboardSegue) {

		if segue.identifier == "addGroup" {
			guard
				let groupsViewController = segue.source as? GroupsViewController
			else {
				return
			}

			if let indexPath = groupsViewController.tableView.indexPathForSelectedRow {
				let group = groupsViewController.groups[indexPath.row]
				if !groups.contains(where: { $0 == group }) {

					groups.append(group)

					tableView.reloadData()
				}
			}
		}
	}
}
