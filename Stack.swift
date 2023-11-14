// Stack is also known as LIFO(last in first out) data structure

// 1. Navigation Stack is helpful to push and pop view controllers
// 2. Memory allocation of local variables

public struct Stack<Element> {

    private var storage: [Element] = []

    public init() {  }

    public mutating func push(_ element: Element) {
        storage.append(element)
    }

    @discardableResult
    public mutating func pop() -> Element? {
        return storage.popLast()
    }

    public func peek() -> Element? {
        return storage.last
    }

    public var isEmpty: Bool {
        return peek() == nil
    }

}

extension Stack:CustomStringConvertible {

    public var description: String {
        let topDivider = "----top----\n"
        let bottomDivider = "\n-----------"

        let stackElements = storage
            .map{ "\($0)" }
            .reversed()
            .joined(separator: "\n")
        return topDivider + stackElements + bottomDivider
    }

}

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)

print(stack)

if let poppedElement = stack.pop() {
    assert(4 == poppedElement)
    // if assertion fails the code will crash
    print("Popped: \(poppedElement)")
}

print(stack.peek() ?? 0)

print(stack.isEmpty)

// here push and pop has O(1) time complexity

// There are three types of properties :
// 1. Stored Properties
// 2. Lazy Properties
// 3. Computed Properties

// Stopped at Less is More 52 Page