import 'dart:collection';

class Dog {
	String name;
	int age;
	int _cost = 500;
	void display() {
        	print("Name: $name Age: $age");
        	print("Private variable: $_cost");
    }

}

class Human {
	String name1;
	int age1;
	String gender;

	void display1() {
        	print("Name: $name1 Age: $age1 Gender: $gender");
    }

    Human(String n, int a, String g){
	name1 = n;
	age1 = a;
	gender = g;
}

}

main() {
	Dog doggy = Dog(); 
	Fruit frutty = Fruit(state:"fresh", left:23, kind:"mandarin", );
	Human ivan = Human("Ivan", 19, "Male");
	doggy.name = "Dogych";
	doggy.age = 4;
	doggy.display();
	ivan.display1();
	frutty.purchase = 300;
	print(frutty.purchase);

	var map = {
	1: "Dog",
	2: "Bear",
	3: "Raccoon"
	};

	Map<int, String> map2 = {
	1: "Dog",
	2: "Bear",
	3: "Raccoon"
	};

	print(map[1]);
	print(map2[1]);
	map2[1] = "Lemur";
	print(map2[1]);

	print("After deleting a key:");
	map.remove(1);
    print(map.containsKey(1));    
    print(map.containsValue("Dog"));

    print("Singleton:");
    var s1 = Singleton();
    var s2 = Singleton();
    print(identical(s1, s2)); 
    print(s1 == s2); 
	}

class Fruit {
	String state;
	int was_bought;
	int left;
	String kind;

	int get purchase {
		return was_bought;
	}

	void set purchase(int eaten){
	was_bought = left + eaten;
	}

	Fruit({this.state, this.left, this.kind, });
}

class Singleton {
  static final Singleton _singleton = Singleton._internal();

  factory Singleton() {
    return _singleton;
  }

  Singleton._internal();
}
