import UIKit

var greeting = "Hello, playground"

var firstString:String = "Hello"

var pageNonOptional:String!

var pageOptional:String?

var firstInt:Int = 10
var secondInt = 0


var firstDouble:Double = 1.5

var firstFloat:Float = 2.5



//MARK: -- Arrays
var nameArray:[String?] = ["Ali","Veli",nil,"Ayşe","Fatma","Hayriye","Hayriye","Hayriye","Hayriye","Hayriye","Hayriye","Hayriye",nil,"Ali","Ali","Ali","Ali","Ali","Mert","Ayça","Mahir","Defne"]
var array = [""]
var arr = [String]()
var ozArray:[String]
var hasArray:Array<String>

 

nameArray.enumerated().forEach({ index,name in
    print("for each index:\(index) name: \(name)")
})
    


for x in 0..<nameArray.count {
    print("her bir eleman indeksi :")
   
}

for item in nameArray {
    
}

for (sayac,eleman) in nameArray.enumerated() {
    print(sayac)
    print(eleman)
}

let contains = nameArray.filter({ $0 == "Mehmet"})

if contains.count == 0 {
    print("Array içinde Mehmet yoktur.")
}

let test = nameArray.contains(where: {$0 == "Mehmet"})

print("---------------\(test)")


let filteredArray = nameArray.filter({ name in
    name == "Ali"
})

let filteredArray1 = nameArray.filter({ $0 == "Ali" })
print(filteredArray1)

let unwrappedArray = nameArray.compactMap({ $0 })

print(unwrappedArray)

let sortedArray = unwrappedArray.sorted(by: { $0 < $1 })

print(sortedArray)

nameArray.map({ name in
    
    let newItem = name?.count
})



//nameArray.remove(at: 1)
//nameArray.removeAll()
//nameArray.removeFirst()
//nameArray.removeLast()
//nameArray.reverse()
//
//nameArray.removeAll(where: {$0 == "Ali"})


//MARK: -- Unwrap

// Bu yöntemi kullanma.!!!!!!!!!
if pageOptional != nil {
    pageNonOptional = pageOptional
    print(pageNonOptional)
}

if let pageOptional = pageOptional {
    
    
    pageNonOptional = pageOptional
}else {
    print("PageOptional nildir.")
}


let value = pageOptional
print(value)

//guard let tempValue = pageOptional else { return }

//print(tempValue)


let number = "2"

let numeric = Int(number)
print(numeric)

//MARK: -- Conditions

if firstInt == secondInt || firstInt != 5 {
    print("eşittir")
}else if firstInt == 1 {
    
}else {
    print("eşit değil")
}


switch firstInt {
case 0:
    print("0")
case 1:
    print("1")
case 2:
    print("2")
default:
    print("Sonuç bulanamadı.")
}




//MARK -- Dictionaries

var busraDictionary:[String:String] = ["ad":"Büşra",
                                        "soyad":"Erim",
                                        "yas":"22"]

var denizDictionary:[String:String] = ["ad":"Deniz",
                                        "soyad":"Atmaca",
                                        "yas":"23"]

var damlaDictionary:[String:String] = ["ad":"Damla",
                                        "soyad":"Erişmiş",
                                        "yas":"24"]


var dictionaryArray:[[String:String]] = [denizDictionary,damlaDictionary,busraDictionary]




var anyDictionary:[String:Any] = ["name":"Ali","age":21,"length":1.86,"birthday":2000]


var iosClassArray:[[String:Any]] = [["name":"Büşra","age":21,"length":1.86,"birthday":2000,"isPass":false],
                                    ["name":"Deniz","age":21,"length":1.86,"birthday":2000,"isPass":false],
                                    ["name":"Damla","age":21,"length":1.86,"birthday":2000,"isPass":false],
                                    ["name":"Oğuzhan","age":21,"length":1.86,"birthday":2000,"isPass":false],
                                    ["name":"Sabri","age":21,"length":1.86,"birthday":2008,"isPass":false],
                                    ["name":"Barış","age":21,"length":1.86,"birthday":2007,"isPass":false],
                                    ["name":"Orhan","age":21,"length":1.86,"birthday":2008,"isPass":false],
                                    ["name":"Burak","age":21,"length":1.86,"birthday":2000,"isPass":false],
                                    ["name":"Aydın","age":21,"length":1.86,"birthday":2000,"isPass":false],
                                    ["name":"Oğuz","age":21,"length":1.86,"birthday":2009,"isPass":false]]


let age = anyDictionary["age"]


//MARK: Type Casting
if let age = age as? Int {
    print("Sonuç-------\(age + 20)")
}

if let name = anyDictionary["name"] as? Int {
    print(name * name)
}




dictionaryArray.enumerated().map({ index,dictionary in
    
    guard let name = dictionary["ad"] else { return }
      
    name.uppercased()
    
})

print(dictionaryArray)

damlaDictionary["yas"] = "22"
denizDictionary["ad"] = "Damla"


damlaDictionary["uni"] = "Ankara Uni"

print("-----\(damlaDictionary)")

damlaDictionary["uni"] = "Ankara Universitesi"

print("-----\(damlaDictionary)")

damlaDictionary.removeValue(forKey: "uni")

print("-----\(damlaDictionary)")

damlaDictionary["yas"] = nil

print("-----\(damlaDictionary)")



//MARK: -- Sets
var array2Set = Set(unwrappedArray)
print(array2Set)

print(array2Set.count)



var setToArray = Array(array2Set)
print(setToArray)

var set1:Set<Int> = [1,2,3,4]
var set2:Set<Int> = [3,4,5,6]

print(set1.union(set2))

print(set1.intersection(set2))
print(set1.subtracting(set2))



//MARK: --- Functions

func sortDictionaryById(){
    print("sortDictionaryById")
}
sortDictionaryById()


func sortDictionary(_ value:Int = 15){
    
    var result = 2
    result += value
    
    print("------Result: \(result)")
}
sortDictionary(30)


func sortDictionaryWithReturn()->String{
     
    let name = busraDictionary["ad"]!
    
    return name
}

let returnValue = sortDictionaryWithReturn()
print(returnValue)

func sortWithUserName(data:[[String:String]])->[[String:String]]{
    
    let sorted = data.sorted(by: { name1, name2 in
        let name1Value = name1["ad"] ?? ""
        let name2Value = name2["ad"] ?? ""
        
        return name1Value < name2Value
    })
    
    
    let sortedArray = data.sorted(by: { $0["ad"]! < $1["ad"]! })
    
    return sorted
}

print("------SortedArray : \(sortWithUserName(data: dictionaryArray))")

//let uppercased = sortDictionaryWithParamsWithReturn(data: "Bilge Adam Kadıköy Şubesi, iOS-2 Eğitimi")


//sortDictionaryWithParamsWithReturn(data: "Bilge Adam Kadıköy Şubesi, iOS-2 Eğitimi")
//print(uppercased)

func sortArrayWithVariadic(params:Int...) {
    
    params.map { (number) in
        print(number)
    }
}
 

sortArrayWithVariadic(params: 1,2,3,4,5,6,7,8)


func sampleInoutParam(param:inout String) {
    print(param)
    param = "Bilge Adam"
    print(param)
}

var string = "Bilge"
sampleInoutParam(param: &string)



func filterClassArray(){
    
    var filteredArray = iosClassArray.filter({ item in
        
        //guard let item = item["birthday"] as? Int else { return false}
        
        if let item = item["birthday"] as? Int {
            return item < 2006
        }
        
        return false
    })
    
    for index in 0..<filteredArray.count {
        filteredArray[index]["isPass"] = true
    }
    
    filteredArray.enumerated().forEach({ index,_ in
        filteredArray[index]["isPass"] = true
    })
    
    print("Filtered Array \(filteredArray)-----")
    
    sortClassArray(filteredArray: filteredArray)
    //sortClassArray(filteredArray: filteredArray)
}


filterClassArray()

func sortClassArray(filteredArray:[[String:Any]]){
    
    let sortedArray = filteredArray.sorted(by: { firstItem, lastItem in
        guard let firstItem = firstItem["name"] as? String, let lastItem = lastItem["name"] as? String else { return false }
        
        return firstItem < lastItem
    })
    
    print(sortedArray)
}

//MARK: -- Tuples

var tupleSample:(String,Int,Bool)
var tupleSampleParams:(name:String,age:Int,isSuccess:Bool)
var tupleSampleDefault = (name:"Bilge Adam", age:20, isSuccess:true)


print(tupleSampleDefault.age)
tupleSampleDefault.age = 30
print(tupleSampleDefault.age)
print(tupleSampleDefault)

tupleSampleParams = (name:"", age:20, isSuccess:true)
print(tupleSampleParams)

tupleSample = ("Tuple",3,true)
tupleSample.0


var funcTuple:(integerVal:Int, stringVal:String)

func calcAve(value:Int)->(integerVal:Int, stringVal:String) {
    
    let result = value * value
    let stringResult = String(result)
    
    return (integerVal:result, stringVal:"string:\(stringResult)")
    
}

funcTuple = calcAve(value: 89)
funcTuple.integerVal


var tuple = calcAve(value: 70)
var tuple1 = calcAve(value: 70)
tuple.integerVal = 1000
print(tuple.integerVal)


//MARK: -- Enum

enum Car {
    case audi
    case volvo
    case ford
    case toyota
    
    var isAudi:Bool {
        switch self {
        case .audi:
            return true
        default:
            return false
        }
    }
    
    func getStatus() -> String{
        switch self {
        case .audi:
            return "audi"
        case .volvo:
            return "volvo"
        case .ford:
            return "ford"
        case .toyota:
            return "toyota"
        }
    }
}

enum Car1:String {
    case audi = "Alman otomobilidir."
    case volvo = "İsveçli otomobilidir."
    case ford =  "Amerikan otomobilidir."
    case toyota = "Japon otomobilidir."
}

enum Car2 {
    case audi(model:String)
    case volvo(model:String)
    case ford
    case toyota(model:String)
}


let enumSample = Car1.toyota
let carSample:Car2 = .audi(model: "A6")

switch carSample {

case .audi(let model):
    if model == "A6" {
        print("oooo iyi araba seçmişsin. Tebrikler")
    }
    
case .volvo(let model):
    print("oooo iyi araba seçmişsin. Tebrikler")
case .ford:
    print("oooo iyi araba seçmişsin. Tebrikler")
case .toyota(let model):
    print("oooo iyi araba seçmişsin. Tebrikler")
}

func getStatusWithCase(car:Car1) {
    switch car {
    case .audi:
        print(enumSample.rawValue)
    case .volvo:
        print(enumSample.rawValue)
    case .ford:
        print(enumSample.rawValue)
    case .toyota:
        print(enumSample.rawValue)
    }

}

getStatusWithCase(car: .ford)


let carStatus:Car = .toyota
let carType = carStatus.isAudi
print("----isAudi: \(carType)")
let result = carStatus.getStatus()
print(result)



enum BMI:String {
    case thin = "Zayıfsın"
    case normal = "Dipçik gibisin"
    case fat = "Yavaşla"
    case obese = "Keşbiş olsun"
}

var vkis:[[String:Any]?] = [ ["name":"Büşra", "weight":60, "length":1.70,"age":21],
                            ["name":"Deniz", "weight":60, "length":1.80,"age":50],
                            nil,nil,
                            ["name":"Damla", "weight":60, "length":1.50,"age":75],
                            ["name":"Oğuzhan", "weight":70, "length":1.80,"age":42],
                            ["name":"Sabri", "weight":90, "length":1.60,"age":34],
                            ["name":"Barış", "weight":75, "length":1.89,"age":61]]


typealias TupleNickname = (name:String, age:Int,vki:Double, status:BMI)
 

func calcBMI(){
    
    var resultArray = [TupleNickname]()
     
    let unwrappedArray = vkis.compactMap({ $0 })
    
    unwrappedArray.enumerated().forEach({ sayac, eleman in
        
        guard let weight = eleman["weight"] as? Int else { return }
        guard let length = eleman["length"] as? Double else { return }
        guard let name = eleman["name"] as? String else { return }
        guard let age = eleman["age"] as? Int else { return }
 
        let vki = Double(weight) / (length * length)
        
        switch vki {
        case 0..<18.5:
            resultArray.append((name:name, age:age, vki:vki, status:.thin))
            
        case 18.5..<25:
            resultArray.append((name:name, age:age, vki:vki, status:.normal))
        case 25..<30:
            resultArray.append((name:name, age:age, vki:vki, status:.fat))
        default:
            resultArray.append((name:name, age:age, vki:vki, status:.obese))
        }
        
    })
    
    showBMIMessage(userArray: resultArray)
    
}

calcBMI()


func showBMIMessage(userArray:[TupleNickname]) {
    
    userArray.forEach({ user in
        
        print("Sayın: \(user.name), vki indeksiniz: \(user.vki), rapor sonuçlarınız: \(user.status.rawValue)")
        
    })
    
    showAverageBy(status: .thin, data: userArray)
}

func showAverageBy(status:BMI, data:[TupleNickname]){
    
    let filtered = data.filter ({ $0.status == status })
    
    if !filtered.isEmpty {
        
        var sum:Int = 0
        
        filtered.forEach({
            sum = sum + $0.age
        })
        
        var result = sum / filtered.count
        print("\(status) olanların yaş ortalaması: \(result). Uzman mesajları: \(status.rawValue) ")
        
    }else {
        print("Bu kategoride kimse bulunamadı.")
    }
     
}

let numbersArray = [6]

func setPrime(){
    
    numbersArray.forEach({ number in
        
        var isPrime = true
        
        if number < 2 {
            isPrime = false
        }
        
        for i in 2..<number {
            if number % i == 0 {
                isPrime = false
            }
        }
        
        if isPrime {
            print("\(number) Asal sayıdır")
        }else {
            print("\(number) Asal değildir")
        }
    })
}

setPrime()


