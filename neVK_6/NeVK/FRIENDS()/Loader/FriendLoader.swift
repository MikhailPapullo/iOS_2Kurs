//
//  FriendLoader.swift
//  NeVK
//
//  Created by Mikhail Papullo on 12/8/21.
//

class FriendsLoader {
    static var friends: [FriendModel] = [
        FriendModel(name: "Кеша", avatar: "ab-kesha", pic: "kesha1"),
        FriendModel(name: "Тучка", avatar: "ab-tuchka", pic: "tuchka1"),
        FriendModel(name: "Лисичка", avatar: "ab-lisichka", pic: "lisichka1")
    ]

    static func iNeedFriends() -> [FriendsSection] {
        let sortedArray = sortFriends(array: friends)
        let sectionsArray = formFriendsSection(array: sortedArray)
        return sectionsArray
    }


    static func sortFriends(array: [FriendModel]) -> [Character: [FriendModel]] {
        var newArray: [Character: [FriendModel]] = [:]
        for friend in array {
            guard let firstChar = friend.name.first else {
                continue
            }

            guard var array = newArray[firstChar] else {
                let newValue = [friend]
                newArray.updateValue(newValue, forKey: firstChar)
                continue
            }

            array.append(friend)
            newArray.updateValue(array, forKey: firstChar)
        }
        return newArray
    }

    static func formFriendsSection(array: [Character: [FriendModel]]) -> [FriendsSection] {
        var sectionsArray: [FriendsSection] = []
        for (key, array) in array {
            sectionsArray.append(FriendsSection(key: key, data: array))
        }
        sectionsArray.sort { $0 < $1 }

        return sectionsArray
    }
}

