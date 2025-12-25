void main (){

    // L  i  s  t

    List<int> numbers = [2,5,6,8,10];
    print('Original list of numbers : $numbers');
    print('After ');
    numbers.add(1);
    print('Add some number in it : $numbers');
    numbers.remove(2);
    print('Remove some number in it : $numbers');
    numbers.insert(2, 10);
    print('Insert some number in a spacific index of it : $numbers');

    // S  e  t

    Set<int> numbers2 ={2,3,65,34,32,77,};
    print('Only unique numbers : $numbers2');

    // M  a  p

    Map<int,String> greeting ={
        1:"Hi",
        2:"Hello",
        3:"Hey",
    };
    print(greeting);

    // list.map() to transform data
        print('------------------------- List.map() To Transform Data -------------------------');
    List<int> square = numbers.map((n)=>n*n).toList();
    print(' $square');

    //  list.where() for filtering
        print('------------------------- List.where() For Filtering -------------------------');

    List<int> filtering = square.where((n)=> n > 50).toList();
    print(filtering);

    // list.reduce() for sum
    print('------------------------- List.reduce() For Sum -------------------------');
    int sum = filtering.reduce((a,b)=> a + b);
    print(sum);

    // T  a  s  k
    List<Map<String,dynamic>> students =[
      {
        'Name':"Ali",
        'Roll no':15,
        'Marks': 55
      },
      {
        'Name':"James",
        'Roll no':19,
        'Marks': 45
      },
      {
        'Name':"Ahamad",
        'Roll no':21,
        'Marks': 65
      },
      {
        'Name':"Hanan",
        'Roll no':18,
        'Marks': 80
      },
      {
        'Name':"Faizan",
        'Roll no':5,
        'Marks': 95
      },
    ];
 
 // Sorting by marks descending
 print('------------------------- Sorting Marks  -------------------------');
 students.sort((a,b)=> b['Marks'].compareTo(a['Marks']));
 students.forEach((element) => print('${element['Name']} : ${element['Marks']}'),);
 

 // Filtering students with marks > 75
 print('------------------------- Filtered students with marks > 75 -------------------------');
 List<Map<String,dynamic>> topStudents = students.where((element) => element['Marks'] > 75,).toList();
  topStudents.forEach((element) => print('${element['Name']} : ${element['Marks']}'),);

  // Search student by name
  print('------------------------- Searching Student By Name -------------------------');
 String search = "Ali";

 Map<String,dynamic> finding = students.firstWhere((element) => element['Name'] == search,);
 if(finding.isNotEmpty){
  print('Name : ${ finding['Name']}\nRoll no : ${finding['Marks']}');
 }
 else{
  print('Not found try again');
 }

// Printed formatted output
print('------------------------- All Students -------------------------');
for(var all in students){
  print('Name : ${all['Name']}\nRoll no : ${all['Roll no']}\nMarks : ${all['Marks']}\n');
}
}