# JSONable

Using [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON) for your JSON needs in iOS/Mac?
Feeling a bit tedious creating a Dictionary with keys and values for each class variable?
Then simply subclass this JSONable class, and voila! You get a JSON object with all your variables and values.

* This was made after answering [this](http://stackoverflow.com/questions/34152713/swiftyjson-to-implement-json-string-to-swift-object/34154921#34154921) Stackoverflow question.

## Example
``` Swift
class User: JSONable {
  var name:String
  var age:Int

  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
}

let user = User(name: Naoto, age: 24)
print(user.json)
```

This will get you:
``` JSON
{
  "name": "Naoto",
  "age": 24
}
```
