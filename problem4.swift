import Foundation

var shoppingList = [String]()

func showMenu() {
    print("""
    Shopping List Manager
    1. Add item
    2. Remove item
    3. View list
    4. Exit
    """)
}

func addItem() {
    print("Enter the item to add:")
    if let item = readLine() {
        shoppingList.append(item)
        print("\(item) added to the list.")
    }
}

func removeItem() {
    print("Enter the item to remove:")
    if let item = readLine(), let index = shoppingList.firstIndex(of: item) {
        shoppingList.remove(at: index)
        print("\(item) removed from the list.")
    } else {
        print("Item not found in the list.")
    }
}

func viewList() {
    if shoppingList.isEmpty {
        print("Your shopping list is empty.")
    } else {
        print("Your shopping list:")
        for (index, item) in shoppingList.enumerated() {
            print("\(index + 1). \(item)")
        }
    }
}

while true {
    showMenu()
    if let choice = readLine(), let option = Int(choice) {
        switch option {
        case 1:
            addItem()
        case 2:
            removeItem()
        case 3:
            viewList()
        case 4:
            print("Exiting...")
            break
        default:
            print("Invalid option. Please try again.")
        }
    }
    if shoppingList.contains("4") { break }
}
