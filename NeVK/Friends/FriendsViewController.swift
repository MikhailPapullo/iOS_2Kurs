//
//  FriendsViewController.swift
//  NeVK
//
//  Created by Mikhail Papullo on 12/3/21.
//

import UIKit

class FriendsViewController: UITableViewController {

    var friends: [FriendModel] = [
        FriendModel(name: "Кеша", avatar: "ab-kesha"),
        FriendModel(name: "Тучка", avatar: "ab-tuchka"),
        FriendModel(name: "Лисичка", avatar: "ab-lisichka")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendsViewCell
        else {
            return UITableViewCell()
        }
        cell.FriendName.text = friends[indexPath.row].name
		cell.FriendAvatar.image = UIImage(named: friends[indexPath.row].avatar)

        return cell
    }

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let vc = segue.destination as? FriendPhotoCollectionViewController else {
			return
		}
		guard let indexPathRow = tableView.indexPathForSelectedRow?.row else {
			return
		}

		vc.friends = friends[indexPathRow]
	}
   

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
