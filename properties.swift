//import Cocoa

//Swift 属性

struct Number
{
    var digits: Int
    let pi = 3.1415
}

var n = Number(digits : 12345)
n.digits = 67;

print(n.digits);
print(n.pi);

//延迟存储属性
//import Cocoa

class sample{
    lazy var no = number();
}

class number{
    var name = "Damon";
}

var firstsample = sample();
print(firstsample.no.name);

//计算属性

//import Cocoa

class sample1{
    var no1 = 0.0,no2 = 0.0;
    var length = 300.0, breadth = 150.0;

    var middle:(Double, Double){
        get{
            return (length/2,breadth/2);
        }
        set(arg){
            no1 = arg.0 - length;
            no2 = arg.1 - breadth;
        }
    }
}

var result = sample1();
print(result.middle);
result.middle = (0.0,10.0);

print(result.no1);
print(result.no2);

//import Cocoa

class film {
    var head = ""
    var duration = 0.0
    var metaInfo: [String:String] {
        return [
            "head": self.head,
            "duration":"\(self.duration)"
        ]
    }
}

var movie = film()
movie.head = "Swift 属性"
movie.duration = 3.09

print(movie.metaInfo["head"]!)
print(movie.metaInfo["duration"]!)

//import Cocoa

class Samplepgm {
    var counter: Int = 0{
        willSet(newTotal){
            print("计数器: \(newTotal)")
        }
        didSet{
            if counter > oldValue {
                print("新增数 \(counter - oldValue)")
            }
        }
    }
}
let NewCounter = Samplepgm()
NewCounter.counter = 100
NewCounter.counter = 800

//import Cocoa

struct StudMarks {
   static let markCount = 97
   static var totalCount = 0
   var InternalMarks: Int = 0 {
      didSet {
         if InternalMarks > StudMarks.markCount {
            InternalMarks = StudMarks.markCount
         }
         if InternalMarks > StudMarks.totalCount {
            StudMarks.totalCount = InternalMarks
         }
      }
   }
}

var stud1Mark1 = StudMarks()
var stud1Mark2 = StudMarks()

stud1Mark1.InternalMarks = 98
print(stud1Mark1.InternalMarks) 

stud1Mark2.InternalMarks = 87
print(stud1Mark2.InternalMarks)




