func rightTriangle(num:Int){
  for i in 1...num{
    for j in 1...i{
      print("\(j)", terminator: " ")
    }
    print()
  }
}
func seqRightTriangle(num:Int){
  var k=1
  for i in 1...num{
    for j in 1...i{
      print("\(k)", terminator: " ")
      k=k+1
    }
    print()
  }
}
func pascalTriangle(num:Int){
  var no=1
  var temp=1
  var k=1
  for i in 0...num{
    temp=1
    no=i
    k=1
    for j in 0...i{
      print("\(temp)",terminator:" ")
      temp=temp*no
      temp=temp/k
      no=no-1
      k=k+1
    }
    print()
  }
}
print("Enter Choice between 1 to 3")
var c=Int(readLine(strippingNewline: true)!)

switch c{
  case 1:
    print("--Right Triangle--")
    print("Enter number of rows::")
    var n=Int(readLine() ?? "0") ?? 0
    rightTriangle(num:n)
    break
  case 2:
    print("--Sequential Right Triangle--")
    print("Enter number of row::")
    var n=Int(readLine() ?? "0") ?? 0
    seqRightTriangle(num:n)
    break
  case 3:
    print("--Pascal Triangle--")
    print("Enter number of row::")
    var n=Int(readLine() ?? "0") ?? 0
    pascalTriangle(num:n)
    break
  default:
    print("Select from 1-3 only")
    break
}