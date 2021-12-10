//
//  FriendsViewController.swift
//  NeVK
//
//  Created by Mikhail Papullo on 12/3/21.
//

import UIKit

final class FriendsViewController: UITableViewController {
    
    @IBOutlet weak var SearchBar: UISearchBar!
    
    private var friends = FriendsLoader.iNeedFriends()
    private var lettersOfNames = [String]()
    //private var searchFriend = [String]()

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.showsVerticalScrollIndicator = false
        loadLetters()
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return friends.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends[section].data.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = friends[section]

        return String(section.key)
    }

    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return lettersOfNames
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendsViewCell
        else {
            return UITableViewCell()
        }
        
        let section = friends[indexPath.section]
        let name = section.data[indexPath.row].name
        let image = section.data[indexPath.row].avatar

        cell.configure(name: name, image: UIImage(named: image) ?? UIImage())
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return createHeaderView(section: section)
    }
    
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is FriendPhotoCollectionViewController {
		guard let vc = segue.destination as? FriendPhotoCollectionViewController else { return }
            guard let indexPathSection = tableView.indexPathForSelectedRow?.section else { return }
            guard let indexPathRow = tableView.indexPathForSelectedRow?.row else { return }
            let section = friends[indexPathSection]
            vc.friend = section.data[indexPathRow]
        }
    }
}

// MARK: - Private
private extension FriendsViewController {
    func loadLetters() {
        for user in friends {
            lettersOfNames.append(String(user.key))
        }
    }

    func createHeaderView(section: Int) -> UIView {
        let header = GradientView()
        header.startColor = .systemOrange
        header.endColor = .white

        let letter = UILabel(frame: CGRect(x: 10, y: 10, width: 10, height: 10))
        letter.textColor = .black
        letter.text = lettersOfNames[section]
        letter.font = UIFont.systemFont(ofSize: 15)
        header.addSubview(letter)
        return header
    }
}
//extension FriendsViewController: UISearchBarDelegate {
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        searchFriend.filter({$0.prefix(searchText.count) == searchText})
//    }
//}
