import Foundation

func hasUniqueCharacters(_ text: String) -> Bool {
    var characterSet = Set<Character>()
    
    for char in text {
        if characterSet.contains(char) {
            return false
        }
        characterSet.insert(char)
    }
    
    return true
}

print("Enter a string to check if all characters are unique:")
if let input = readLine() {
    if hasUniqueCharacters(input) {
        print("All characters in \(input) are unique.")
    } else {
        print("\(input) contains duplicate characters.")
    }
}
