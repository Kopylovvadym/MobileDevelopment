class Cat {
	String name;
	int age;
	int _mothersAge = 5;
	void display() {
        	print("Name: $name Age: $age");
        	print("Private variable: $_mothersAge");
    }

}

class Person {
	String name1;
	int age2;

	void display1() {
        	print("Name: $name1 Age: $age2");
    }

    Person(String n, int a){
	name1 = n;
	age2 = a;
}

}

main() {
	Cat barsik = Cat(); 
	Fruit apple = Fruit(type:"seedy", current_amount:1500, color:"green", );
	Person john = Person("John", 25);
	barsik.name = "Barsik";
	barsik.age = 1;
	barsik.display();
	john.display1();
	apple.harvest = 300;
	print(apple.harvest);

	var map = {
	1: "Cat",
	2: "Dog",
	3: "Fox"
	};

	Map<int, String> map2 = {
	1: "Cat",
	2: "Dog",
	3: "Fox"
	};

	print(map[1]);
	print(map2[1]);
	map2[1] = "Bear";
	print(map2[1]);

	print("After deleting a key:");
	map.remove(1);
    print(map.containsKey(1));    
    print(map.containsValue("Cat"));

    print("Singleton:");
    var s1 = Singleton();
    var s2 = Singleton();
    print(identical(s1, s2)); 
    print(s1 == s2); 
	}

class Fruit {
	String type;
	int was_collected;
	int current_amount;
	String color;

	int get harvest {
		return was_collected;
	}

	void set harvest(int was_sold){
	was_collected = current_amount + was_sold;
	}

	Fruit({this.type, this.current_amount, this.color, });
}

class Singleton {
  static final Singleton _singleton = Singleton._internal();

  factory Singleton() {
    return _singleton;
  }

  Singleton._internal();
}
