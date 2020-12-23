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

    Human(String n , int a, String g, {int base = 1}){
	name1 = n;
	age1 = a;
	gender = g;
	print("Constructor on: base param = $base");
}

}

    Function outer(){
    	var out = 1;
    	void inner(){
    		out++;
    		print(out);
    	}
    	return inner;
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

    int sugar1;
    sugar1 ??= 5;
    print("Sugar func used: $sugar1");

    int ShowSum(int a, int b) => a + b;
    print(ShowSum(2, 3));

    Function fn = outer();
    fn();

    assert(sugar1 == 5);
    print("assert ok");

    var list = [2, 4, 6];
    list[1] = 5;        
    int d = list[2];    
    print(d);
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

	Fruit({this.state, this.left, this.kind});
}

class Singleton {
  static final Singleton _singleton = Singleton._internal();

  factory Singleton() {
    return _singleton;
  }

  Singleton._internal();
}
