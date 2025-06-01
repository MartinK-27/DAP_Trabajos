class Users {
  String email;
  String contrasena;
  String nombre;
  String direccion;

  Users({
    required this.email,
    required this.contrasena,
    required this.nombre,
    required this.direccion,
  });
}
List<Users> listUsers = [
    Users(
      email: 'martinkin2021@gmail.com',
      contrasena: 'NuevaContraseña2021',
      nombre: 'Tincho',
      direccion: 'Nazca 1830',
    ),
    Users(
      email: 'martinkin2020@gmail.com',
      contrasena: 'Pandemia2020',
      nombre: 'Marto',
      direccion: 'Jonte 1234',
    ),
    Users(
      email: '48522161@est.ort.edu.ar',
      contrasena: 'MecatronicaDap123',
      nombre: 'Martin',
      direccion: 'Yatay 123',
    ),
    Users(
      email: '23903423@est.ort.edu.ar',
      contrasena: 'Marcelito22',
      nombre: 'Marcelo',
      direccion: 'Rio de Janerio 321',
    ),
    Users(
      email: 'fofo_god@gmail.com',
      contrasena: 'Minecraft123',
      nombre: 'Fefe',
      direccion: 'Angel gallardo 2000',
    ),
    Users(email: 'a', contrasena: 'a', nombre: 'FastUser', direccion: '123')
  ];