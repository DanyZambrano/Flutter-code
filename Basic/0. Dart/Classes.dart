// ignore_for_file: unused_local_variable

class User {
  int id = 0;
  String name = '';

  /**************************
       override
  ***************************/
  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }

  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }
}

class Usuario {

  int id = 0;
  String name = '';

  /**************************
         Constructors 
  constructors build new objects.
  ***************************/
  Usuario(int id, String name) {
    this.id = id;
    this.name = name;
  }
}




class Comerciante {

  int id = 0;
  String name = '';

  /**************************
      Factory Constructors 
  A factory constructor provides more flexibility in how you create your objects.
  A generative constructor can only create a new instance of the class itself. 
  ***************************/
  //factory Comerciante.dan() {
  //  return Comerciante(id: 42, name: 'Ray');
  //}
}




void main() {
  final user = User();

  user.name = 'Dany';
  user.id = 67;

  print(user.toString());
  print(user.toJson());

  /**************************
         Cascade notation
  a cascade operator (..) that allows you to chain together 
  multiple assignments on the same object without having to repeat the object name. 
  ***************************/
  final user1 = User()
    ..name = 'Ray'
    ..id = 42;

  final usuario = Usuario(42, 'Ray');
  print(usuario);
}
