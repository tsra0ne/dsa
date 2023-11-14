// arrays, dictionaries and sets
// each data structure holds a collection of data and have its own performance

// swift standard library

var people = ["Braian", "Stanley", "Ringo"]

print(people.count)
// O(1)

print(people[1])
// O(1)
// Linked List and Trees doesn't have constant time to access an item

people.append("Charles")
// O(1)
// Adding element at the end is constant time
// if you want to insert the element at particular location it takes O(n) time.
print(people)

people.insert("Andy", at: 0)
// O(n)

print(people)

var scores: [String: Int] = ["Eric": 9, "Mark": 12, "Wayne": 6]

scores["Andrew"] = 0
// inserting in dictionary is O(1)
// accessing an element is O(1)

print(scores)
// dictionaries are unordered