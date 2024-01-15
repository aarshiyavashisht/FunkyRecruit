CREATE DATABASE IF NOT EXISTS TechQuestions;

-- Use the database
USE TechQuestions;

-- Create a table for C++ questions
CREATE TABLE IF NOT EXISTS cpp_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL,
    difficulty ENUM('Easy', 'Medium', 'Hard') NOT NULL
);

INSERT INTO
    cpp_questions (question, answer, difficulty)
VALUES
    (
        'What is the syntax for declaring a variable in C++?',
        'int x;',
        'Easy'
    ),
    (
        'What is the purpose of the "cin" object in C++?',
        'To read input from the user.',
        'Easy'
    ),
    (
        'What is the size of the int data type?',
        ' 4 bytes, the integer data type is 4 bytes.',
        'Easy'
    ),
    (
        'Which among the following operators cannot be overloaded?',
        '?: operator cannot be overloaded because it is not syntactically possible',
        'Easy'
    ),
    (
        'What is std in C++?',
        'std is a standard namespace in C++',
        'Easy'
    ),
    (
        'How do you declare and initialize a constant in C++?',
        'You can declare and initialize a constant in C++ using the "const" keyword. For example: const int PI = 3.14;',
        'Easy'
    ),
    (
        'What is the purpose of the "cout" object in C++?',
        'The "cout" object in C++ is used to display output to the console. It is part of the standard output stream and is commonly used for printing information.',
        'Easy'
    ),
    (
        'What is the difference between pass by value and pass by reference in C++?',
        'In pass by value, a copy of the actual parameter is passed to the function, while in pass by reference, a reference to the actual parameter is passed. Pass by value doesn’t modify the original value, whereas pass by reference allows modification.',
        'Easy'
    ),
    (
        'How do you comment out multiple lines in C++?',
        'To comment out multiple lines in C++, you can use the /* / syntax. All the content between / and */ is treated as a comment.',
        'Easy'
    ),
    (
        'What is the purpose of the "break" statement in C++?',
        'The "break" statement in C++ is used to exit from a loop or switch statement prematurely. It is often used to terminate a loop based on a certain condition.',
        'Easy'
    ),
    (
        'Explain the concept of pointers in C++.',
        'Pointers in C++ are variables that store the memory address of another variable. ',
        'Easy'
    ),
    (
        'What is the role of the "new" and "delete" operators in C++?',
        'The "new" operator is used to dynamically allocate memory, and "delete" is used to deallocate memory.',
        'Easy'
    ),
    (
        'How do you use the "switch" statement in C++?',
        'The "switch" statement in C++ is used for multi-way branching based on the value of an expression. It provides a concise way to handle multiple cases with the same variable.',
        'Easy'
    ),
    (
        'What is the purpose of the "const" keyword in function declarations in C++?',
        'In C++, the const keyword is used in function declarations to indicate that the function does not modify the state of the object (class instance) on which it is called. When applied to member functions of a class, it plays a crucial role in ensuring that certain class member variables remain unaltered during the execution of the function.',
        'Easy'
    ),
    (
        'What is function overloading in C++?',
        'Function overloading in C++ allows multiple functions in the same scope with the same name but different parameter lists. It enables the use of the same function name for different behaviors based on the type or number of parameters.',
        'Easy'
    ),
    (
        'Explain the concept of inheritance in C++.',
        'Inheritance in C++ is a mechanism that allows a class (derived or child class) to inherit properties and behaviors from another class (base or parent class). It promotes code reuse and supports the creation of a hierarchy of classes.',
        'Easy'
    ),
    (
        'How do you handle exceptions in C++?',
        'In C++, exceptions are handled using try, catch, and throw blocks. Code that might throw an exception is placed in the try block, and if an exception occurs, it is caught and processed in the catch block. Exceptions can be explicitly thrown using the throw keyword.',
        'Easy'
    ),
    (
        'What is the purpose of the "auto" keyword in C++?',
        'The "auto" keyword in C++ is used for automatic type inference, allowing the compiler to automatically deduce the data type of a variable during compilation. It simplifies code by reducing the need for explicit type declarations.',
        'Easy'
    ),
    (
        'How do you define a structure in C++?',
        'Structures in C++ are used to group different data types.',
        'Easy'
    ),
    (
        'What is a reference variable in C++?',
        'A reference is an alias to an existing variable.',
        'Medium'
    ),
    (
        'Explain the concept of function overloading.',
        'Function overloading allows multiple functions with the same name but different parameters.',
        'Medium'
    ),
    (
        'What is the use of the "new" keyword in C++?',
        '"new" is used to dynamically allocate memory for an object or a variable.',
        'Medium'
    ),
    (
        'What is a virtual function?',
        'A virtual function is a member function in a base class that is declared using the "virtual" keyword.',
        'Medium'
    ),
    (
        'What is the difference between stack and heap memory?',
        'Stack memory is used for static memory allocation, while heap memory is used for dynamic memory allocation.',
        'Medium'
    ),
    (
        'How does a constructor differ from a regular member function in a C++ class?',
        'A constructor in C++ is a special member function that is automatically called when an object is created. It is used to initialize the objects data members and ensure the object is in a valid state. In contrast, a regular member function is called explicitly and performs operations on the object after it has been created.',
        'Medium'
    ),
    (
        'What is operator overloading, and how is it implemented in C++?',
        'Operator overloading in C++ allows defining multiple behaviors for an operator based on the types of its operands. It is implemented by defining a function for the desired operator with specific parameter types. This enables customizing the behavior of operators for user-defined types.',
        'Medium'
    ),
    (
        'What is the purpose of the "const" member function qualifier in C++ classes?',
        'In C++, the "const" member function qualifier indicates that the function does not modify the state of the object on which it is called. It promises not to modify any non-static member variables of the class. This allows calling the function on constant objects and within constant contexts.',
        'Medium'
    ),
    (
        'Discuss the concept of multiple inheritance in C++ and its potential challenges.',
        'Multiple inheritance in C++ allows a class to inherit from more than one class. Challenges include the diamond problem, where ambiguity arises when a class inherits from two classes that have a common ancestor. C++ provides virtual inheritance to address this by ensuring a single copy of the shared base class.',
        'Medium'
    ),
    (
        'How does the "this" pointer work in C++?',
        'The "this" pointer in C++ refers to the current object instance.',
        'Medium'
    ),
    (
        'What are templates in C++, and how do they facilitate generic programming?',
        'Templates in C++ allow for generic programming by creating functions or classes that can work with different data types. ',
        'Medium'
    ),
    (
        'Explain the concept of friend functions in C++ classes.',
        'Friend functions in C++ can access private and protected members of a class.',
        'Medium'
    ),
    (
        'What is the purpose of the "typeid" operator in C++?',
        'The "typeid" operator is used for type identification in C++. ',
        'Medium'
    ),
    (
        'Discuss the role of the copy constructor in C++ and provide an example of its usage.',
        'In C++, the copy constructor is a special constructor that initializes a new object by copying the content of an existing object. It is invoked when an object is passed by value, returned by value, or explicitly called to create a new object based on an existing one. The syntax for a copy constructor is similar to a regular constructor, and it typically takes a const reference to the same class type as a parameter.',
        'Medium'
    ),
    (
        'How do you implement polymorphism in C++ using virtual functions?',
        'Polymorphism in C++ involves the ability of objects to take multiple forms.',
        'Medium'
    ),
    (
        'What is the purpose of the "explicit" keyword in C++?',
        'Explicit keyword is used with constructors to prevent implicit type conversions. When applied to a constructor, it specifies that the constructor cannot be used for implicit conversions.',
        'Medium'
    ),
    (
        'Discuss the differences between a shallow copy and a deep copy in C++.',
        'In C++, a shallow copy and a deep copy refer to different ways of copying objects. A shallow copy creates a new object but does not duplicate the dynamically allocated memory pointed to by the original object. Both the original and the copy share the same memory. On the other hand, a deep copy creates a new object and duplicates the dynamically allocated memory, ensuring that the original and the copy have independent memory. Shallow copies are faster but may lead to unintended side effects, while deep copies provide isolation but are potentially slower and consume more memory.',
        'Medium'
    ),
    (
        'How do you implement a constant member function in a C++ class?',
        'In C++, you implement a constant member function in a class by using the const keyword in the function declaration. This indicates that the member function does not modify the state of the object on which it is called',
        'Medium'
    ),
    (
        'What is the purpose of the "mutable" keyword in C++?',
        'The "mutable" keyword in C++ is used to modify data members within a const member function. ',
        'Medium'
    ),
    (
        'How does the C++ standard template library (STL) contribute to efficient programming?',
        'The C++ Standard Template Library (STL) contributes to efficient programming by providing a collection of generic and highly optimized template classes and functions that implement common data structures and algorithms',
        'Medium'
    ),
    (
        'Explain the concept of smart pointers in C++ and their advantages over raw pointers.',
        'Smart pointers in C++ are objects that manage the memory of a pointer automatically.',
        'Medium'
    ),
    (
        'What is the purpose of the volatile keyword in C++?',
        'The volatile keyword is used to indicate that a variable may be changed by multiple threads or external factors and should not be optimized by the compiler.',
        'Hard'
    ),
    (
        'Explain the concept of virtual inheritance in C++.',
        'Virtual inheritance is used to address the diamond problem in C++ where a class inherits from two classes that have a common base class. It ensures that the common base class is only included once in the inheritance hierarchy.',
        'Hard'
    ),
    (
        'What are smart pointers in C++? Provide examples.',
        'Smart pointers are objects that manage the memory of dynamically allocated objects. Examples include std::shared_ptr, std::unique_ptr, and std::weak_ptr.',
        'Hard'
    ),
    (
        'Explain the Rule of Three in C++.',
        'The Rule of Three states that if a C++ class needs to define any one of the destructor, copy constructor, or copy assignment operator, it should define all three.',
        'Hard'
    ),
    (
        'What is the difference between overloading and overriding in C++?',
        'Overloading refers to defining multiple functions with the same name but different parameters. Overriding occurs when a derived class provides a specific implementation for a method that is already defined in its base class.',
        'Hard'
    ),
    (
        'Discuss the purpose and usage of the noexcept specifier in C++.',
        'The noexcept specifier is used to indicate that a function does not throw exceptions. ',
        'Hard'
    ),
    (
        'Explain the concept of move semantics in C++.',
        'Move semantics in C++ involve efficiently transferring resources from one object to another, eliminating unnecessary copying.',
        'Hard'
    ),
    (
        'What is the role of the C++ Standard Library algorithms and how do they contribute to efficient coding?',
        'The C++ Standard Library algorithms play a crucial role in facilitating efficient coding by providing a collection of generic algorithms that operate on containers such as vectors, lists, and arrays. These algorithms abstract common operations, promoting code reusability and readability.',
        'Hard'
    ),
      (
        'Explain the differences between the "override" and "final" keywords in C++.',
        'Both "override" and "final" keywords are used in the context of inheritance. ',
        'Hard'
    ),
    (
        'Discuss the role of the CRTP (Curiously Recurring Template Pattern) in C++.',
        'The CRTP is a C++ template pattern where a class template inherits from a class template specialization of itself. ',
        'Hard'
    ),
    (
        'Explain the differences between the "override" and "final" keywords in C++.',
        'Both "override" and "final" keywords are used in the context of inheritance. ',
        'Hard'
    ),
      (
        'Explain the differences between the "override" and "final" keywords in C++.',
        'Both "override" and "final" keywords are used in the context of inheritance.',
        'Hard'
    ),
    (
        'What is the purpose of the "constexpr" keyword in C++?',
        'The "constexpr" keyword in C++ is used to indicate that a function or object can be evaluated at compile-time. It allows computations to be performed at compile-time, providing opportunities for optimization and enhancing performance. Functions declared as "constexpr" can be used in contexts that require constant expressions.',
        'Hard'
    )
     ;
     CREATE TABLE IF NOT EXISTS oops_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL,
    difficulty ENUM('Easy', 'Medium', 'Hard') NOT NULL
);

INSERT INTO
    oops_questions (question, answer, difficulty)
VALUES
    (
        'What is a class?',
        'A class can be understood as a template or a blueprint, which contains some values, known as member data or member, and some set of rules, known as behaviors or functions.',
        'Easy'
    ),
    (
        'What are some advantages of using OOPs?',
        'OOPs is very helpful in solving very complex level of problems.,Highly complex programs can be created, handled, and maintained easily using object-oriented programming.,OOPs, promote code reuse, thereby reducing redundancy.,OOPs also helps to hide the unnecessary details with the help of Data Abstraction.',
        'Easy'
    ),
    (
        'What is meant by Structured Programming?',
        'Structured Programming refers to the method of programming which consists of a completely structured control flow. Here structure refers to a block, which contains a set of rules, and has a definitive control flow, such as (if/then/else), (while and for), block structures, and subroutines.',
        'Easy'
    ),
    (
        'What is the purpose of the "this" keyword in programming paradigms like java and c++ used for?',
        'The "this" keyword refers to the current instance of the class and is used to differentiate instance variables from local variables when they have the same name.',
        'Easy'
    ),
    (
        'Explain the concept of exception handling?.',
        'Exception handling in Java is the process of handling runtime errors and abnormal conditions to prevent the program from terminating abruptly.',
        'Easy'
    ),
    (
        'What is object-oriented programming (OOP)?',
        'Object-oriented programming is a programming paradigm that uses objects – instances of classes – to design and organize code. It promotes concepts like encapsulation, inheritance, and polymorphism.',
        'Easy'
    ),
    (
        'What is the difference between encapsulation and abstraction in OOP?',
        'Encapsulation is the bundling of data and methods that operate on the data within a single unit or class. Abstraction involves simplifying complex systems by modeling classes based on their essential properties and behaviors.',
        'Easy'
    ),
    (
        'Explain the term "polymorphism" in the context of OOP.',
        'Polymorphism allows objects of different types to be treated as objects of a common type. It enables methods to work with objects of multiple classes through a common interface.',
        'Easy'
    ),
    (
        'How do constructors and destructors contribute to object lifecycle in OOP?',
        'Constructors initialize objects when they are created, and destructors clean up resources when an object is no longer needed. They play a crucial role in managing the lifecycle of objects in OOP.',
        'Easy'
    ),
    (
        'What is the role of interfaces in Java and other OOP languages?',
        'Interfaces in OOP define a contract for classes, ensuring that implementing classes adhere to a specific set of methods and behaviors. They provide a way to achieve abstraction and multiple inheritance.',
        'Easy'
    ),
    (
        'What is the importance of the "super" keyword in OOP?',
        'The "super" keyword is used to refer to the superclass or parent class in OOP languages.  It allows access to its methods and attributes, facilitating code    organization and reusability.',
        'Easy'
    ),
    (
        'Discuss the advantages of using composition over inheritance in OOP design.',
        'Composition involves creating objects by combining simpler objects, providing a flexible alternative to inheritance. It promotes code reuse and avoids some of the issues associated with deep class hierarchies.',
        'Easy'
    ),
    (
        'How does the concept of method overloading enhance OOP code?',
        'Method overloading allows multiple methods in a class to share the same name but have different parameters. It enhances code readability and provides flexibility in handling different types of input.',
        'Easy'
    ),
    (
        'What is the purpose of the "final" keyword in OOP languages like Java?',
        'The "final" keyword is used to restrict the further modification of classes, methods, or variables. In OOP, marking a class as final prevents it from being subclassed, ensuring immutability.',
        'Easy'
    ),
    (
        'Explain the concept of association in object-oriented modeling.',
        'Association represents a relationship between two or more classes, where objects of one class are connected with objects of another class. It can be one-to-one, one-to-many, or many-to-many.',
        'Easy'
    ),
    (
        'How does the concept of inheritance contribute to code reuse in OOP?',
        'Inheritance allows a class to inherit properties and behaviors from another class. This promotes code reuse as the subclass can reuse and extend features of the superclass, reducing redundancy.',
        'Easy'
    ),
    (
        'Discuss the role of access modifiers (public, private, protected) in OOP.',
        'Access modifiers control the visibility and accessibility of classes, methods, and variables in OOP. Public, private, and protected determine how these elements can be accessed from outside the class.',
        'Easy'
    ),
    (
        'What is the purpose of the "abstract" keyword in OOP languages?',
        'The "abstract" keyword is used to declare abstract classes and methods in OOP. Abstract classes cannot be instantiated, and abstract methods must be implemented by subclasses, promoting code structure.',
        'Easy'
    ),
    (
        'How does the concept of aggregation differ from composition in OOP?',
        'Aggregation and composition are types of associations in OOP. Aggregation represents a "has-a" relationship where objects have an independent existence, while composition represents a stronger "part-of" relationship where objects are dependent.',
        'Easy'
    ),
    (
        'What is the role of the "instanceof" operator in OOP languages?',
        'The "instanceof" operator is used to test if an object is an instance of a particular class or interface. It helps in checking the type of an object during runtime in OOP.',
        'Easy'
    ),
    (
        'What are some other programming paradigms other than OOPs?',
        ' Imperative Programming Paradigm,Declarative Programming Paradigm',
        'Medium'
    ),
    (
        'What are the main features of OOPs?',
        'Inheritance,Encapsulation,Polymorphism,Data Abstraction',
        'Medium'
    ),
    (
        'What are some major Object Oriented Programming languages?',
        'Java,C++,Javascript,Python,PHP',
        'Medium'
    ),
    (
        'What is the need for OOPs',
        'OOPs helps users to understand the software easily, although they don’t know the actual implementation.',
        'Medium'
    ),
    (
        'What is an object?',
        'An object refers to the instance of the class, which contains the instance of the members and behaviors defined in the class template.',
        'Medium'
    ),
    (
        'What is the role of constructors in OOPs?',
        'Constructors in OOPs are special methods used for initializing objects. They ensure that object creation is accompanied by necessary setup procedures.',
        'Medium'
    ),
    (
        'Explain the concept of method overriding in OOP.',
        'Method overriding allows a subclass to provide a specific implementation for a method that is already defined in its superclass. It supports polymorphism and dynamic method dispatch.',
        'Medium'
    ),
    (
        'How does encapsulation enhance data security in OOP?',
        'Encapsulation in OOP involves bundling data and methods within a class. It restricts direct access to data, promoting data security and preventing unauthorized modifications.',
        'Medium'
    ),
    (
        'What is the purpose of the "this" pointer in C++ OOP?',
        'The "this" pointer in C++ OOP refers to the current instance of the class. It is used to differentiate between instance variables and local variables with the same name.',
        'Medium'
    ),
    (
        'Discuss the concept of multiple inheritance in OOP.',
        'Multiple inheritance in OOP allows a class to inherit properties and behaviors from more than one class. It can lead to the diamond problem and complexities in code organization.',
        'Medium'
    ),
    (
        'What is the role of the destructor in OOP languages?',
        'The destructor in OOP is responsible for cleaning up resources when an object is no longer in use. It is called automatically when an object goes out of scope or is explicitly deleted.',
        'Medium'
    ),
    (
        'How does polymorphism contribute to code flexibility in OOP?',
        'Polymorphism in OOP allows objects of different types to be treated as objects of a common type. It enhances code flexibility by enabling the use of a single interface for multiple classes.',
        'Medium'
    ),
    (
        'Explain the concept of static and dynamic binding in OOP.',
        'Static binding occurs at compile time, where the method called is determined by the compiler. Dynamic binding occurs at runtime, allowing the method to be resolved during program execution.',
        'Medium'
    ),
    (
        'What is the purpose of the "friend" keyword in C++ OOP?',
        'The "friend" keyword in C++ OOP allows a function or class to access private and protected members of another class. It promotes flexibility in designing classes and functions.',
        'Medium'
    ),
    (
        'Discuss the role of access specifiers in C++ OOP.',
        'Access specifiers (public, private, protected) in C++ OOP control the visibility of class members. They define how these members can be accessed from within the class or from outside.',
        'Medium'
    ),
    (
        'How does abstraction contribute to code organization in OOP?',
        'Abstraction in OOP involves simplifying complex systems by modeling classes based on their essential properties and behaviors. It helps in organizing code and managing system complexity.',
        'Medium'
    ),
    (
        'What is the difference between shallow copy and deep copy in OOP?',
        'Shallow copy duplicates the object and references within it, while deep copy creates a new object and recursively copies all objects referenced by the original object. It influences how changes affect the copied object.',
        'Medium'
    ),
    (
        'Explain the concept of operator overloading in OOP languages.',
        'Operator overloading in OOP allows defining multiple behaviors for operators based on the context of their use. It enhances the expressiveness and flexibility of classes and objects.',
        'Medium'
    ),
    (
        'How does the concept of composition differ from inheritance in OOP?',
        'Composition involves creating objects by combining simpler objects, while inheritance allows a class to inherit properties and behaviors from another class.',
        'Medium'
    ),
    (
        'Discuss the advantages and disadvantages of using OOP in software development.',
        'Object-Oriented Programming (OOP) offers advantages such as modularity, reusability, encapsulation, abstraction, and support for inheritance and polymorphism. This promotes a more organized and maintainable code structure, enhancing collaboration and code reuse. However, OOP introduces complexities, a learning curve for beginners, potential performance overhead, and the need for careful design to avoid issues like tight coupling. The increased level of abstraction can sometimes make the code harder to understand, and the system may require more planning and design effort. The suitability of OOP depends on factors like project size, team expertise, and specific application requirements.',
        'Medium'
    ),
    (
        'What is the role of the "virtual" keyword in C++ OOP?',
        'The "virtual" keyword in C++ OOP is used to declare virtual functions in a base class. It enables dynamic dispatch, allowing the appropriate function to be called based on the actual object type during runtime.',
        'Medium'
    ),
    (
        'What is encapsulation?',
        'Encapsulation is the bundling of data and the methods that operate on that data, restricting direct access to some of the object''s components.',
        'Hard'
    ),
    (
        'Explain inheritance in OOP.',
        'Inheritance is a mechanism where a new class inherits properties and behaviors from an existing class, promoting code reuse and extensibility.',
        'Hard'
    ),
    (
        'What is polymorphism?',
        'Polymorphism allows objects of different types to be treated as objects of a common type, enabling code flexibility and extensibility.',
        'Hard'
    ),
    (
        'Define abstraction in OOP.',
        'Abstraction is the process of simplifying complex systems by modeling classes based on the essential properties and behaviors they share.',
        'Hard'
    ),
    (
        'What is the difference between composition and inheritance?',
        'Composition involves creating relationships between objects, while inheritance involves creating new classes based on existing ones.',
        'Hard'
    ),
    (
        'Explain the concept of access control in OOP and the role of access specifiers.',
        'Access control in OOP involves specifying the visibility and accessibility of class members. Access specifiers (public, private, protected) define how these members can be accessed.',
        'Hard'
    ),
    (
        'Discuss the concept of abstract classes in OOP and when to use them.',
        'Abstract classes in OOP cannot be instantiated and may contain abstract methods. They provide a blueprint for other classes.',
        'Hard'
    ),
    (
        'What is the purpose of the "sealed" keyword in C# regarding OOP?',
        'The "sealed" keyword in C# is used to prevent further derivation of a class. ',
        'Hard'
    ),
    (
        'Explain the concept of method hiding in OOP and when it is useful.',
        'Method hiding in OOP occurs when a derived class defines a static method with the same name as a static method in the base class. ',
        'Hard'
    ),
    (
        'How does the concept of covariance and contravariance apply to OOP in languages like C#?',
        'Covariance and contravariance allow flexibility in working with types.',
        'Hard'
    ),
    (
        'What is the role of the "super" keyword in Java OOP?',
        'In Java OOP, the "super" keyword is used to refer to the superclass. ',
        'Hard'
    ),
    (
        'Discuss the concept of multiple dispatch in OOP languages.',
        'Multiple dispatch is an extension of polymorphism where the method called is based on the types of multiple arguments.',
        'Hard'
    ),
    (
        'What are virtual functions in C++ OOP, and how do they support polymorphism?',
        'Virtual functions in C++ OOP are functions declared in a base class and overridden by derived classes.
        ',
        'Hard'
    ),
    (
        'Explain the concept of OOP design patterns and provide examples.',
        'OOP design patterns are reusable solutions to common problems in software design.',
        'Hard'
    ),
    (
        'What is the role of the "interface" in OOP languages like Java and C#?',
        'Interfaces in OOP define a contract for classes, ensuring that implementing classes adhere to a specific set of methods and behaviors. ',
        'Hard'
    ),
    (
        'How does the concept of the Observer pattern apply to OOP?',
        'The Observer pattern is a behavioral design pattern where an object, known as the subject, maintains a list of dependents, known as observers, that are notified of state changes. ',
        'Hard'
    ),
    (
        'Explain the concept of SOLID principles in OOP and their significance.',
        'SOLID principles are a set of design principles that promote maintainability, flexibility, and readability in OOP. ',
        'Hard'
    ),
    (
        'Discuss the role of the "this" pointer in C++ OOP, especially in operator overloading.',
        'The "this" pointer in C++ OOP refers to the current instance of the class',
        'Hard'
    ),
    (
        'What is the role of the "new" keyword in Java OOP, and how does it relate to object creation?',
        'The "new" keyword in Java OOP is used to create an instance of a class.',
        'Hard'
    ),
    (
        'Explain the concept of OOP encapsulation in the context of C# properties.',
        'Encapsulation in C# involves restricting access to certain properties or methods.',
        'Hard'
    );
    
    CREATE TABLE IF NOT EXISTS Dsa_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL,
    difficulty ENUM('Easy', 'Medium', 'Hard') NOT NULL
);
 
INSERT INTO
    Dsa_questions (question, answer, difficulty)
VALUES
    (
        'What is the time complexity of binary search?',
        'The time complexity of binary search is O(log n).',
        'Easy'
    ),
    (
        'Explain the concept of a linked list',
        'A linked list is a data structure that consists of nodes, where each node points to the next node in the sequence.',
        'Easy'
    ),
    (
        'How does a hash table work?',
        'A hash table is a data structure that maps keys to values using a hash function.',
        'Medium'
    ),
    (
        'Implement a stack using an array.',
        'To implement a stack using an array, maintain a pointer to the top of the stack and perform push and pop operations accordingly.',
        'Medium'
    ),
    (
        'What is the purpose of the "this" keyword in JavaScript?',
        'The "this" keyword in JavaScript refers to the current object or context where it is used.',
        'Medium'
    ),
    (
        'Write a function to check if a binary tree is balanced.',
        'To check if a binary tree is balanced, calculate the height of the left and right subtrees and ensure the difference is at most 1.',
        'Hard'
    ),
    (
        'Discuss the differences between breadth-first search and depth-first search.',
        'Breadth-first search explores nodes level by level, while depth-first search explores as far as possible before backtracking.',
        'Hard'
    ),
    (
        'What is a binary search tree?',
        'A binary search tree is a data structure where each node has at most two children, and the left child is less than the parent, while the right child is greater.',
        'Hard'
    ),
    (
        'How does a stack work?',
        'A stack is a data structure that follows the Last In, First Out (LIFO) principle, where the last element added is the first one to be removed.',
        'Hard'
    ),
    (
        'What is dynamic programming?',
        'Dynamic programming is a method for solving complex problems by breaking them down into simpler overlapping subproblems and solving each subproblem only once.',
        'Medium'
    ),
    (
        'Explain the concept of a priority queue.',
        'A priority queue is a data structure that stores elements with associated priorities and allows the element with the highest priority to be dequeued first.',
        'Medium'
    ),
    (
        'What is the purpose of the "this" keyword in JavaScript?',
        'The "this" keyword in JavaScript refers to the object it belongs to. In a function, "this" represents the object that called the function.',
        'Medium'
    ),
    (
        'How does garbage collection work in Java?',
        'Garbage collection in Java involves automatically identifying and freeing up memory occupied by objects that are no longer reachable by the program.',
        'Easy'
    ),
    (
        'What is the difference between synchronous and asynchronous programming?',
        'Synchronous programming executes code sequentially, while asynchronous programming allows tasks to be executed concurrently, improving performance.',
        'Easy'
    ),
    (
        'What is the time complexity of binary search?',
        'The time complexity of binary search is O(log n).',
        'Easy'
    ),
    (
        'Explain the concept of a linked list.',
        'A linked list is a data structure that consists of nodes, where each node points to the next node in the sequence.',
        'Easy'
    ),
    (
        'How does a hash table work?',
        'A hash table is a data structure that maps keys to values using a hash function.',
        'Easy'
    ),
    (
        'Implement a stack using an array.',
        'To implement a stack using an array, maintain a pointer to the top of the stack and perform push and pop operations accordingly.',
        'Easy'
    ),
    (
        'What is the purpose of the "this" keyword in JavaScript?',
        'The "this" keyword in JavaScript refers to the current object or context where it is used.',
        'Easy'
    ),
    (
        'How does garbage collection work in Java?',
        'Garbage collection in Java involves automatically identifying and freeing up memory occupied by objects that are no longer reachable by the program.',
        'Easy'
    ),
    (
        'What is the difference between synchronous and asynchronous programming?',
        'Synchronous programming executes code sequentially, while asynchronous programming allows tasks to be executed concurrently, improving performance.',
        'Easy'
    ),
    (
        'What is the size of the int data type in most programming languages?',
        'The size of the int data type varies among programming languages, but it is commonly 4 bytes.',
        'Easy'
    ),
    (
        'What is the purpose of a try-catch block in exception handling?',
        'A try-catch block in exception handling is used to catch and handle exceptions that may occur within the try block, preventing program termination.',
        'Easy'
    ),
    (
        'Explain the concept of a queue in data structures.',
        'A queue is a linear data structure that follows the First In, First Out (FIFO) principle, where the first element added is the first one to be removed.',
        'Easy'
    ),
    (
        'How does the concept of pointers work in C programming?',
        'Pointers in C programming store the memory address of a variable. They are used for dynamic memory allocation and manipulation.',
        'Easy'
    ),
    (
        'Explain the purpose of the "break" statement in a loop.',
        'The "break" statement in a loop is used to exit the loop prematurely, immediately terminating the loop and proceeding to the next statement after the loop.',
        'Easy'
    ),
    (
        'What is the role of an else statement in conditional statements?',
        'An else statement in conditional statements provides an alternative code block to be executed if the associated if condition evaluates to false.',
        'Easy'
    ),
    (
        'What is the time complexity of quicksort algorithm?',
        'The time complexity of quicksort is O(n log n) on average, but O(n^2) in the worst case.',
        'Medium'
    ),
    (
        'Explain the concept of a doubly linked list.',
        'A doubly linked list is a data structure in which each node contains a data element and two pointers, one pointing to the next node and another pointing to the previous node.',
        'Medium'
    ),
    (
        'How does a trie data structure work?',
        'A trie is a tree-like data structure that is used to store a dynamic set of strings. It is particularly efficient for searching and inserting strings.',
        'Medium'
    ),
    (
        'Implement a queue using stacks.',
        'To implement a queue using stacks, use two stacks to simulate enqueue and dequeue operations.',
        'Medium'
    ),
    (
        'What is the significance of Big O notation in algorithm analysis?',
        'Big O notation is used to describe the upper bound on the growth rate of an algorithm, providing an indication of its efficiency and scalability.',
        'Medium'
    ),
    (
        'Explain the concept of graph traversal.',
        'Graph traversal involves visiting all the vertices of a graph in a systematic way. Depth-first search (DFS) and breadth-first search (BFS) are common traversal algorithms.',
        'Medium'
    ),
    (
        'Discuss the benefits of using a hash table for data storage.',
        'Hash tables provide fast data retrieval and insertion, with average time complexities of O(1) for search, insert, and delete operations under ideal conditions.',
        'Medium'
    ),
    (
        'What is the difference between an array and a linked list?',
        'An array is a contiguous block of memory, while a linked list is a collection of nodes where each node points to the next one, allowing for dynamic memory allocation.',
        'Medium'
    ),
    (
        'How does dynamic programming differ from greedy algorithms?',
        'Dynamic programming and greedy algorithms are both optimization techniques, but dynamic programming involves solving subproblems and storing their solutions, while greedy algorithms make locally optimal choices at each stage.',
        'Medium'
    ),
    (
        'What is the purpose of a hash function in hash tables?',
        'A hash function converts a key into an index in the hash table, allowing for efficient retrieval and storage of data based on the key.',
        'Medium'
    ),
    (
        'Explain the concept of binary heap.',
        'A binary heap is a complete binary tree where the value of each node is less than or equal to the values of its children, ensuring the minimum value is at the root.',
        'Medium'
    ),
    (
        'Discuss the advantages of using a priority queue in algorithms.',
        'A priority queue is useful for efficiently maintaining the minimum or maximum element in a collection. It is essential for tasks like Dijkstras algorithm and Huffman coding.',
        'Medium'
    ),
    (
        'How does the concept of hashing contribute to data retrieval?',
        'Hashing allows for efficient data retrieval by mapping keys to indices in a data structure, reducing the search space and improving access times.',
        'Medium'
    ),
    (
        'Explain the concept of memoization in dynamic programming.',
        'Memoization involves caching the results of expensive function calls and returning the cached result when the same inputs occur again, reducing redundant computations.',
        'Medium'
    ),
    (
        'What is the role of a header node in a linked list?',
        'A header node in a linked list is a special node that contains metadata about the list, such as the length or pointers to the first and last nodes.',
        'Medium'
    ),
    (
        'What is the time complexity of Floyd-Warshall algorithm for all pairs shortest paths?',
        'The time complexity of Floyd-Warshall algorithm is O(V^3), where V is the number of vertices in the graph.',
        'Hard'
    ),
    (
        'Explain the concept of red-black trees in data structures.',
        'Red-black trees are a type of self-balancing binary search tree where each node has a color (red or black) and follows certain rules to maintain balance during insertions and deletions.',
        'Hard'
    ),
    (
        'How does the A* algorithm work in pathfinding?',
        'The A* algorithm is an informed search algorithm that uses a heuristic to efficiently find the path with the lowest cost from a start node to a goal node in a graph.',
        'Hard'
    ),
    (
        'Discuss the concept of B-trees and their applications in databases.',
        'B-trees are self-balancing search trees with multiple children per node, designed for efficient disk access. They are commonly used in databases and file systems.',
        'Hard'
    ),
    (
        'What are the principles behind the CAP theorem in distributed systems?',
        'The CAP theorem states that in a distributed system, it is impossible to simultaneously provide Consistency, Availability, and Partition tolerance. A system can achieve at most two out of three.',
        'Hard'
    ),
    (
        'Explain the concept of Dijkstra\'s algorithm for single-source shortest paths.',
        'Dijkstra\'s algorithm is a greedy algorithm that finds the shortest path from a source node to all other nodes in a weighted graph, ensuring optimality by maintaining a priority queue.',
        'Hard'
    ),
    (
        'How does the concept of trie optimize searching for words in a dictionary?',
        'Tries are tree-like data structures that store a dynamic set of strings. They are particularly efficient for searching and retrieving words in a dictionary or autocomplete suggestions.',
        'Hard'
    ),
    (
        'Discuss the advantages and challenges of implementing a distributed hash table (DHT).',
        'A DHT is a decentralized distributed system that provides a lookup service. Advantages include scalability, fault tolerance, and load balancing, while challenges include consistency and churn management.',
        'Hard'
    ),
    (
        'What is the role of a Bloom filter in data structures?',
        'A Bloom filter is a space-efficient probabilistic data structure that tests whether a given element is a member of a set. It may return false positives but never false negatives.',
        'Hard'
    ),
    (
        'Explain the concept of parallel computing and its relevance in algorithm design.',
        'Parallel computing involves performing multiple computations simultaneously. It is relevant in algorithm design for improving efficiency and solving large-scale problems by dividing them into smaller tasks.',
        'Hard'
    ),
    (
        'How does the Bellman-Ford algorithm work for single-source shortest paths?',
        'The Bellman-Ford algorithm is a dynamic programming algorithm that finds the shortest path from a source node to all other nodes in a weighted graph, even in the presence of negative weights.',
        'Hard'
    ),
    (
        'Discuss the concept of network flow and its applications in algorithms.',
        'Network flow involves modeling the flow of commodities through a network. Applications include finding maximum flow in a network, such as in transportation or communication systems.',
        'Hard'
    ),
    (
        'What is the significance of the Knapsack problem in dynamic programming?',
        'The Knapsack problem is a classic optimization problem where the goal is to select a subset of items with maximum value, subject to the constraint of not exceeding a given capacity.',
        'Hard'
    ),
    (
        'Explain the concept of Rabin-Karp algorithm for pattern searching in strings.',
        'The Rabin-Karp algorithm uses hashing to efficiently find occurrences of a pattern in a text. It compares hash values of the pattern and substrings, providing a probabilistic solution.',
        'Hard'
    ),
    (
        'Discuss the concept of parallel sorting algorithms.',
        'Parallel sorting algorithms perform sorting tasks concurrently on multiple processors, aiming to achieve faster results for large datasets by dividing the workload.',
        'Hard'
    ),
    (
        'How does the concept of skip lists optimize search operations in data structures?',
        'Skip lists are a probabilistic data structure that allows for fast search, insertion, and deletion of elements in a sorted sequence. They use multiple layers of linked lists with skip pointers.',
        'Hard'
    );
CREATE TABLE IF NOT EXISTS javascript_questions  (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL,
    difficulty ENUM('Easy', 'Medium', 'Hard') NOT NULL
);

INSERT INTO
    javascript_questions (question, answer, difficulty)
VALUES
    (
        'What is JavaScript?',
        'JavaScript is a high-level, interpreted programming language that conforms to the ECMAScript specification.',
        'Easy'
    ),
    (
        'What are the data types in JavaScript?',
        'JavaScript has six primitive data types: string, number, boolean, null, undefined, and symbol.',
        'Easy'
    ),
    (
        'Explain the concept of closures in JavaScript.',
        'Closures allow functions to retain access to variables from their outer (enclosing) scope even after the outer function has finished execution.',
        'Easy'
    ),
    (
        'What is the DOM in JavaScript?',
        'The DOM (Document Object Model) is a programming interface for web documents. It represents the structure of a document as a tree of objects.',
        'Easy'
    ),
    (
        'How do you declare variables in JavaScript?',
        'You can declare variables using the var, let, or const keyword. For example, var x = 10; declares a variable named x with a value of 10.',
        'Easy'
    ),
    (
        'Explain event delegation in JavaScript.',
        'Event delegation is a technique where a single event listener is attached to a common ancestor, and it can manage events for multiple elements by using event bubbling.',
        'Easy'
    ),
    (
        'What is the purpose of the this keyword in JavaScript?',
        'this refers to the current object and is used to access its properties and methods. The value of this depends on how a function is called.',
        'Easy'
    ),
    (
        'What is the difference between == and === in JavaScript?',
        '== checks for equality after type coercion, while === checks for equality without type coercion (strict equality).',
        'Easy'
    ),
    (
        'Explain the concept of hoisting in JavaScript.',
        'Hoisting is a JavaScript behavior where variable and function declarations are moved to the top of their containing scope during the compilation phase.',
        'Easy'
    ),
    (
        'What is the purpose of the JSON.stringify() method?',
        'JSON.stringify() is used to convert a JavaScript object to a JSON string. It can also include a replacer function or an array to filter the properties to include in the JSON string.',
        'Easy'
    ),
    (
        'How do you handle errors in JavaScript?',
        'You can use a try...catch statement to handle errors in JavaScript. Code that might cause an exception is placed in the try block, and the catch block handles the exception.',
        'Easy'
    ),
    (
        'Explain the difference between null and undefined in JavaScript.',
        'null is an assignment value that represents no value or no object, while undefined is a variable that has been declared but not assigned a value.',
        'Easy'
    ),
    (
        'What is hoisting in JavaScript?',
        'Hoisting is a JavaScript mechanism where variable and function declarations are moved to the top of their containing scope during the compile phase.',
        'Easy'
    ),
    (
        'What is the purpose of the map function in JavaScript?',
        'The map function is used to iterate over an array and transform each element using a provided function, creating a new array of the transformed elements.',
        'Easy'
    ),
    (
        'What is the most common method to select elements in the DOM?',
        'The most common method is using querySelector() and querySelectorAll() methods. querySelector() selects the first matching element, while querySelectorAll() returns a collection of all matching elements.',
        'Easy'
    ),
    (
        'How do you change the text content of an element?',
        'You can change the text content of an element using the textContent property. For example, element.textContent = "New text";',
        'Easy'
    ),
    (
        'How do you add a new element to the DOM?',
        'You can create a new element using document.createElement(), set its properties, and then append it to an existing element using appendChild() or insertBefore().',
        'Easy'
    ),
    (
        'How do you remove an element from the DOM?',
        'You can remove an element using the remove() method on the element you want to remove.',
        'Easy'
    ),
    (
        'How do you change the CSS styles of an element?',
        'You can modify the CSS styles of an element using the style property. For example, element.style.backgroundColor = "red";',
        'Easy'
    ),
    (
        'How do you get the value of an input element?',
        'You can get the value of an input element using the value property. For example, var inputValue = document.getElementById("myInput").value;',
        'Easy'
    ),
    (
        'What is the purpose of the "use strict" directive in JavaScript?',
        '"use strict" is used to enable a strict mode in JavaScript, which helps catch common coding errors and prevents the use of certain error-prone features.',
        'Medium'
    ),
    (
        'Explain the event delegation in JavaScript.',
        'Event delegation is a technique of handling events at a higher level in the DOM tree, allowing you to manage events efficiently, especially for dynamically added elements.',
        'Medium'
    ),
    (
        'What is closure in JavaScript?',
        'A closure is a function bundled together with references to its surrounding state, allowing it to access variables from its outer (enclosing) function even after that function has finished execution.',
        'Medium'
    ),
    (
        'What is the purpose of JSON in web development?',
        'JSON (JavaScript Object Notation) is commonly used in web development to transmit data between a server and a web application. It is a lightweight and human-readable format.',
        'Medium'
    ),
    (
        'Differentiate between JSON and XML in data interchange.',
        'JSON and XML are both data interchange formats, but JSON is more lightweight, easier to read, and quicker to parse. Unlike XML, JSON does not use end tags.',
        'Medium'
    ),
    (
        'Explain JSONP (JSON with Padding) and its use in cross-origin requests.',
        'JSONP is a technique for making cross-origin requests by exploiting the ability to include external scripts in HTML. It is often used when dealing with cross-origin data.',
        'Medium'
    ),
    (
        'What are the security risks associated with JSON parsing in JavaScript?',
        'Security risks in JSON parsing include the potential for JSON injection attacks. Its important to validate and sanitize JSON data to prevent security vulnerabilities.',
        'Medium'
    ),
    (
        'Discuss the concept of JSON Streaming and its advantages.',
        'JSON Streaming involves sending JSON data in parts rather than as a whole. This is particularly useful when dealing with large datasets as it allows for incremental processing.',
        'Medium'
    ),
    (
        'How does JSON Schema aid in the validation of JSON documents?',
        'JSON Schema provides a way to describe the structure and constraints of JSON data. It is used for validation to ensure that JSON documents adhere to a specified schema.',
        'Medium'
    ),
    (
        'Explain the role of reviver function in JSON parsing with JSON.parse().',
        'The reviver function in JSON.parse() allows for the transformation of the parsed object. It is invoked for each key-value pair and provides an opportunity to modify the result.',
        'Medium'
    ),
    (
        'What is JSON-LD (JSON for Linking Data) and its significance?',
        'JSON-LD is a lightweight Linked Data format based on JSON. It allows for the expression of structured linked data and is commonly used for SEO and semantic web applications.',
        'Medium'
    ),
    (
        'Discuss the challenges and best practices in handling dates in JSON.',
        'Handling dates in JSON can be challenging due to formatting and timezone issues. Best practices involve using standardized formats like ISO 8601 and considering timezone information.',
        'Medium'
    ),
    (
        'How can you mitigate security risks when using JSON Web Tokens (JWT)?',
        'To mitigate security risks with JWT, use strong algorithms, validate tokens on the server, and include appropriate expiration times. Additionally, be cautious about sensitive data in tokens.',
        'Medium'
    ),
    (
        'What is the purpose of JSON Lines (JSONL) and its use cases?',
        'JSON Lines is a format for representing JSON data as newline-delimited JSON. It is commonly used for streaming large datasets and log files in a more human-readable format.',
        'Medium'
    ),
    (
        'Explain the concept of JSON Web Encryption (JWE) and its applications.',
        'JSON Web Encryption is a standard for encrypting data in JSON objects. It is often used to secure the transmission of sensitive information between parties in web applications.',
        'Medium'
    ),
    (
        'How does JSONPath differ from XPath, and what are its main use cases?',
        'JSONPath is a query language for JSON that allows you to navigate and query JSON data. It is similar to XPath but tailored for JSON structures, and it is commonly used in data extraction.',
        'Medium'
    ),
    (
        'Discuss the considerations for handling large nested JSON structures efficiently.',
        'Handling large nested JSON structures efficiently involves techniques such as lazy loading, partial loading, and optimizing data access patterns.',
        'Medium'
    ),
    (
        'What are the advantages and disadvantages of using JSON as a configuration format?',
        'Using JSON as a configuration format offers readability and ease of use. However, it may have limitations, such as lack of comments and complexity handling. ',
        'Medium'
    ),
    (
        'Explain the concept of JSON Merge Patch and its role in updating JSON documents.',
        'JSON Merge Patch is a method for updating a JSON document by specifying the differences (changes) between the new and original documents. ',
        'Medium'
    ),
    (
        'Explain the event delegation in JavaScript.',
        'Event delegation is a technique where a single event listener is attached to a common ancestor, and it can manage events for multiple descendants.',
        'Hard'
    ),
    (
        'What is the difference between let, const, and var?',
        'let and const are block-scoped, while var is function-scoped. const cannot be reassigned after declaration, but let and var can.',
        'Hard'
    ),
    (
        'How does prototypal inheritance work in JavaScript?',
        'Objects in JavaScript inherit properties and methods from a prototype. Each object has an internal [[Prototype]] property pointing to its prototype object.',
        'Hard'
    ),
    (
        'Explain the concept of promises in JavaScript.',
        'Promises are objects representing the eventual completion or failure of an asynchronous operation. They help handle asynchronous code in a more readable and maintainable way.',
        'Hard'
    ),
    (
        'What is the difference between null and undefined?',
        'null is an assignment value that represents the intentional absence of any object value, while undefined is a primitive value used when a variable has not been assigned a value.',
        'Hard'
    ),
    (
        'What is the purpose of the bind method in JavaScript?',
        'The bind method creates a new function with a specified this value and initial arguments, allowing the creation of partially applied functions.',
        'Hard'
    ),
    (
        'How does the event loop work in JavaScript?',
        'The event loop is a mechanism that allows asynchronous JavaScript code to execute in a non-blocking way. It continuously checks the message queue for tasks to execute.',
        'Hard'
    ),
    (
        'What is the purpose of the apply and call methods in JavaScript?',
        'Both apply and call are used to invoke a function with a specified this value and arguments. The only difference is the way arguments are passed (array for apply, individual values for call).',
        'Hard'
    ),
    (
        'What is the purpose of the typeof operator in JavaScript?',
        'The typeof operator is used to determine the data type of a variable or expression. It returns a string representing the data type (e.g., "number", "string", "object").',
        'Hard'
    ),
    (
        'How does the map function work in JavaScript?',
        'The map function creates a new array by applying a provided function to each element of the original array. It does not modify the original array.',
        'Hard'
    ),
    (
        'Explain the concept of CORS (Cross-Origin Resource Sharing).',
        'CORS is a security feature implemented by web browsers to restrict web pages from making requests to a different domain than the one that served the web page. It prevents potential security vulnerabilities.',
        'Hard'
    ),
    (
        'How does the "async/await" syntax improve error handling in JavaScript asynchronous code?',
        'The "async/await" syntax in JavaScript provides a more readable and synchronous-looking way to handle asynchronous code, making error handling more straightforward. By using the "async" keyword before a function declaration',
        'Hard'
    ),
    (
        'What are JavaScript Promises and how do they differ from traditional callback patterns?',
        'JavaScript Promises are objects that represent the eventual completion or failure of an asynchronous operation. They provide a cleaner alternative to traditional callback patterns, addressing callback hell problem by allowing a more structured and readable way to handle asynchronous tasks.\n\nWith Promises, you can chain multiple asynchronous operations, making the code more linear and avoiding deeply nested callbacks. Promises have two possible states: "resolved" (fulfilled) or "rejected" (failed).\n\nExample:\njavascript\nconst fetchData = () => {\n  return new Promise((resolve, reject) => {\n    // Asynchronous operation, e.g., fetching data\n    if (/* operation successful */) {\n      resolve(data);\n    } else {\n      reject(error);\n    }\n  });\n};\n\nfetchData()\n  .then((result) => {\n    // Handle the successful result\n  })\n  .catch((error) => {\n    // Handle the error\n  });\n',
        'Hard'
    ),
    (
        'Discuss the differences between shallow and deep copying of objects in JavaScript.',
        'In JavaScript, shallow copying creates a new object and copies the properties of the original object at the top level. However, it does not create copies of nested objects; instead, it retains references to them. Shallow copying can be done using methods like Object.assign or the spread operator.\n\nOn the other hand, deep copying involves creating a completely independent copy of the original object, including all nested objects. It ensures that changes to the copied object do not affect the original. Libraries like lodash or custom recursive functions can be used for deep copying.',
        'Hard'
    ),
    (
        'Explain the role of the "this" keyword in arrow functions and how it differs from regular functions.',
        'Arrow functions behave differently when it comes to the this keyword. Unlike regular functions, arrow functions do not have their own this context. Instead, they inherit the this value from the enclosing scope, which is determined by the lexical scope (where the arrow function is defined).',
        'Hard'
    ),
    (
        'How does hoisting impact variable and function declarations in JavaScript?',
        'Hoisting in JavaScript refers to the behavior where variable and function declarations are moved to the top of their containing scope during the compilation phase. This allows them to be used before they are formally declared in the code. For variables declared with var, hoisting involves moving both the declaration and initialization to the top, but only the declaration is hoisted for variables declared with let and const. For functions, both the function name and its implementation are hoisted, so a function can be called before it appears in the code. ',
        'Hard'
    ),
    (
        'Compare and contrast "let" and "const" in terms of block-scoping and reassignment in JavaScript.',
        'In JavaScript, let is used to declare variables that can be reassigned, and it is block-scoped. On the other hand, const is used for variables that should not be reassigned; it is also block-scoped, but if the variable holds an object or array, their properties or elements can still be modified.',
        'Hard'
    ),
    (
        'What is the event bubbling and capturing in the context of JavaScript event propagation?',
        'Event bubbling and capturing are two phases of event propagation in JavaScript.
        Bubbling: Events start from the target element and propagate up the DOM hierarchy. It begins with the innermost child element and goes up to the outermost ancestor.
        Capturing: Events start from the outermost ancestor and propagate down to the target element. It occurs before the bubbling phase.
        Both phases provide opportunities to capture or handle events at different points in the DOM hierarchy.',
        'Hard'
    ),
    (
        'Discuss the use cases for the "apply," "call," and "bind" methods in JavaScript.',
        'In JavaScript, the "apply," "call," and "bind" methods are employed for manipulating the execution context (the value of "this") of functions. 

        apply(): Invokes a function with a specified "this" value and an array or array-like object of arguments. Useful when the number of arguments is dynamic or unknown.

            call(): Invokes a function with a specified "this" value and individual arguments. Similar to apply but accepts arguments as a list.

            bind(): Creates a new function with a specified "this" value and, optionally, initial arguments. Unlike apply and call, bind doesnt invoke the function immediately; instead, it creates a new function with the bound context and parameters',
        'Hard'
    ),
    (
        'Explain the concept of lexical scope in JavaScript and how it influences variable resolution.',
        'Lexical scope in JavaScript refers to the scope determined by the physical placement of variables and blocks in the code. Variables are resolved based on their location in the source code, allowing inner functions to access variables from their outer scopes. This behavior is defined during the lexical (compile) time and remains static during runtime.',
        'Hard'
    );
    CREATE TABLE IF NOT EXISTS sql_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL,
    difficulty ENUM('Easy', 'Medium', 'Hard') NOT NULL
);

INSERT INTO
    sql_questions (question, answer, difficulty)
VALUES
    (
        'What is a JOIN?',
        'A JOIN is used to combine rows from two or more tables based on a related column between them.',
        'Easy'
    ),
    (
        'How to remove duplicate rows in a table?',
        'You can use the DISTINCT keyword or GROUP BY clause to remove duplicate rows.',
        'Easy'
    ),
    (
        'What is the purpose of the WHERE clause?',
        'The WHERE clause is used to filter records based on a specified condition.',
        'Easy'
    ),
    (
        'Explain the difference between INNER JOIN and LEFT JOIN.',
        'INNER JOIN returns only matching rows, while LEFT JOIN returns all rows from the left table and matching rows from the right table.',
        'Easy'
    ),
    (
        'What is the purpose of the ORDER BY clause?',
        'The ORDER BY clause is used to sort the result set of a query based on one or more columns in ascending or descending order.',
        'Easy'
    ),
    (
        'How do you retrieve all columns from a table?',
        'You can use the wildcard (*) character in the SELECT statement to retrieve all columns from a table.',
        'Easy'
    ),
    (
        'Explain the role of the DISTINCT keyword.',
        'The DISTINCT keyword is used to retrieve unique values from a specified column in the result set.',
        'Easy'
    ),
    (
        'What is the LIMIT clause used for?',
        'The LIMIT clause is used to restrict the number of rows returned by a query, allowing you to retrieve a specified number of records.',
        'Easy'
    ),
    (
        'How to delete all records from a table?',
        'You can use the DELETE statement without a WHERE clause to delete all records from a table.',
        'Easy'
    ),
    (
        'What is the difference between SQL and NoSQL databases?',
        'SQL databases are relational and use structured query language, while NoSQL databases are non-relational and provide flexible schema design.',
        'Easy'
    ),
    (
        'Explain the purpose of the GROUP BY clause.',
        'The GROUP BY clause is used to group rows based on specified columns and apply aggregate functions to each group.',
        'Easy'
    ),
    (
        'How can you add a new column to an existing table?',
        'You can use the ALTER TABLE statement with the ADD COLUMN clause to add a new column to an existing table.',
        'Easy'
    ),
    (
        'What is the difference between DELETE and TRUNCATE statements?',
        'DELETE removes specific records based on a condition, while TRUNCATE removes all records from a table without any condition.',
        'Easy'
    ),
    (
        'Explain the concept of a SQL view.',
        'A SQL view is a virtual table based on the result of a SELECT query, and it does not store the data itself.',
        'Easy'
    ),
    (
        'How do you perform a case-insensitive search in SQL?',
        'You can use the UPPER() or LOWER() functions in combination with the = operator to perform a case-insensitive search.',
        'Easy'
    ),
    (
        'What is the purpose of the BETWEEN operator?',
        'The BETWEEN operator is used to filter the result set based on a range of values for a specified column.',
        'Easy'
    ),
    (
        'How can you update multiple columns in a table?',
        'You can use the UPDATE statement with the SET clause to update multiple columns in a table simultaneously.',
        'Easy'
    ),
    (
        'Explain the concept of database normalization.',
        'Database normalization is the process of organizing data to minimize redundancy and dependency by dividing tables into smaller related tables.',
        'Easy'
    ),
    (
        'What is the use of the IS NULL operator?',
        'The IS NULL operator is used to filter the result set and retrieve rows where a specified column has a NULL value.',
        'Easy'
    ),
    (
        'What is a subquery?',
        'A subquery is a query nested inside another query and is used to return data that will be used in the main query.',
        'Medium'
    ),
    (
        'How to add a new record to a table?',
        'You can use the INSERT INTO statement to add a new record to a table.',
        'Medium'
    ),
    (
        'What is normalization?',
        'Normalization is the process of organizing data in a database to reduce redundancy and dependency.',
        'Medium'
    ),
    (
        'Explain the ACID properties in a database.',
        'ACID stands for Atomicity, Consistency, Isolation, and Durability, and it ensures the reliability of database transactions.',
        'Medium'
    ),
    (
        'What is a stored procedure?',
        'A stored procedure is a set of SQL statements that can be saved and executed later with a single command.',
        'Medium'
    ),
    (
        'Explain the concept of a SQL transaction.',
        'A transaction is a sequence of one or more SQL statements executed as a single unit, ensuring data consistency and integrity.',
        'Medium'
    ),
    (
        'How do you use the INNER JOIN clause with multiple tables?',
        'You can use the INNER JOIN clause with multiple tables by specifying the join conditions for each pair of tables.',
        'Medium'
    ),
    (
        'What is the purpose of the EXISTS operator?',
        'The EXISTS operator is used to check the existence of rows returned by a subquery and returns true if the subquery returns any rows.',
        'Medium'
    ),
    (
        'Explain the use of the SQL UNION operator.',
        'The UNION operator is used to combine the result sets of two or more SELECT statements and remove duplicate rows.',
        'Medium'
    ),
    (
        'How can you handle NULL values in SQL?',
        'You can use the IS NULL or IS NOT NULL operators to filter rows based on NULL values, and the COALESCE() function to replace NULL with a specified value.',
        'Medium'
    ),
    (
        'What is a SQL trigger and how is it used?',
        'A SQL trigger is a set of instructions that automatically execute in response to certain events on a particular table or view, ensuring data consistency.',
        'Medium'
    ),
    (
        'Explain the purpose of the SQL CASE statement.',
        'The CASE statement is used to perform conditional logic in SQL queries, allowing you to return different values based on specified conditions.',
        'Medium'
    ),
    (
        'How do you use the GROUP_CONCAT() function in SQL?',
        'The GROUP_CONCAT() function is used to concatenate values from multiple rows into a single string, grouped by a specified column.',
        'Medium'
    ),
    (
        'What is a SQL index, and how does it improve performance?',
        'A SQL index is a data structure that improves the speed of data retrieval operations on a database table by providing a quick lookup of rows.',
        'Medium'
    ),
    (
        'Explain the purpose of the HAVING clause in SQL.',
        'The HAVING clause is used in combination with the GROUP BY clause to filter the results based on a specified condition.',
        'Medium'
    ),
    (
        'How can you prevent SQL injection in PHP?',
        'To prevent SQL injection, use prepared statements and parameterized queries instead of directly embedding user input into SQL statements.',
        'Medium'
    ),
    (
        'What is the difference between a SQL view and a table?',
        'A SQL view is a virtual table based on the result of a SELECT query, while a table is a physical storage structure that stores data.',
        'Medium'
    ),
    (
        'Explain the concept of database normalization.',
        'Database normalization is the process of organizing data to reduce redundancy and improve data integrity.',
        'Medium'
    ),
    (
        'How can you calculate the average value of a column in SQL?',
        'You can use the AVG() aggregate function to calculate the average value of a column in SQL.',
        'Medium'
    ),
    (
        'What is the purpose of the SQL OUTER JOIN?',
        'The SQL OUTER JOIN retrieves rows from one or more tables even if there is no match between the columns specified in the join condition.',
        'Medium'
    ),
    (
        'How to update data in a table?',
        'You can use the UPDATE statement to modify existing data in a table based on a specified condition.',
        'Hard'
    ),
    (
        'Explain the difference between UNION and UNION ALL.',
        'UNION combines the result sets of two or more SELECT statements, while UNION ALL does the same but includes duplicate rows.',
        'Hard'
    ),
    (
        'What is a primary key?',
        'A primary key is a unique identifier for a record in a table and ensures data integrity.',
        'Hard'
    ),
    (
        'What is normalization?',
        'Normalization is the process of organizing data to reduce redundancy and improve data integrity.',
        'Hard'
    ),
    (
        'Explain the difference between INNER JOIN and LEFT JOIN.',
        'INNER JOIN returns only matching rows, while LEFT JOIN returns all rows from the left table and the matching rows from the right table.',
        'Hard'
    ),
    (
        'What is the purpose of the HAVING clause in SQL?',
        'The HAVING clause is used in combination with the GROUP BY clause to filter the results based on a specified condition.',
        'Hard'
    ),
    (
        'What is a subquery in SQL?',
        'A subquery is a query nested inside another query, and it is used to retrieve data that will be used by the main query.',
        'Hard'
    ),
    (
        'Explain the ACID properties in the context of database transactions.',
        'ACID stands for Atomicity, Consistency, Isolation, and Durability. These properties ensure the reliability of database transactions.',
        'Hard'
    ),
    (
        'What is a stored procedure?',
        'A stored procedure is a precompiled collection of one or more SQL statements that can be executed as a single unit.',
        'Hard'
    ),
    (
        'How can you prevent SQL injection in PHP?',
        'To prevent SQL injection, use prepared statements and parameterized queries instead of directly embedding user input into SQL statements.',
        'Hard'
    ),
    (
        'What is a foreign key in a database?',
        'A foreign key is a column or a set of columns in a table that refers to the primary key of another table, establishing a link between the two tables.',
        'Hard'
    ),
    (
        'Explain the difference between CHAR and VARCHAR data types.',
        'CHAR is a fixed-length string, while VARCHAR is a variable-length string. CHAR pads spaces to the right, while VARCHAR does not.',
        'Hard'
    ),
    (
        'What is the purpose of the GROUP BY clause?',
        'The GROUP BY clause is used to group rows that have the same values in specified columns into summary rows, like "total" or "average".',
        'Hard'
    ),
    (
        'How does indexing improve database performance?',
        'Indexing improves database performance by allowing the database engine to quickly locate and retrieve the rows that match a specified condition.',
        'Hard'
    ),
    (
        'What is the difference between a primary key and a unique key?',
        'Both primary key and unique key enforce uniqueness, but a table can have only one primary key, while it can have multiple unique keys.',
        'Hard'
    ),
    (
        'Explain the use of the SQL CASE statement.',
        'The CASE statement is used to perform conditional logic in SQL queries, allowing you to return different values based on specified conditions.',
        'Hard'
    ),
    (
        'What is a self-join in SQL?',
        'A self-join is a regular join, but the table is joined with itself. It is used to combine rows with related rows in the same table.',
        'Hard'
    ),
    (
        'Explain the CAP theorem in the context of distributed databases.',
        'The CAP theorem states that a distributed database can have at most two out of the three properties: Consistency, Availability, and Partition Tolerance.',
        'Hard'
    ),
    (
        'What is the purpose of the SQL MERGE statement?',
        'The SQL MERGE statement is used to perform an "upsert" operation, which either updates existing records or inserts new records based on a specified condition.',
        'Hard'
    ),
    (
        'Explain the concept of window functions in SQL.',
        'Window functions perform a calculation across a set of table rows related to the current row, allowing advanced analytics and reporting in SQL queries.',
        'Hard'
    ),
    (
        'How do you implement row-level security in SQL databases?',
        'Row-level security is implemented using security policies and functions that restrict access to specific rows based on defined criteria, enhancing data security.',
        'Hard'
    ),
    (
        'What is a materialized view in SQL, and how is it different from a regular view?',
        'A materialized view is a physical copy of the result set of a query that is stored for quick access, while a regular view is a virtual table based on a SELECT statement.',
        'Hard'
    );
    
