###
```
git clone https://github.com/denyocrworld/exercise1001
cd exercise1001
dart pub get
code .
```

### Isi Form dulu, WAJIB!!!
[WAJIB DI ISI]
Buka 
```
lib/user.dart
```

Silahkan isi fullName, email dan whatsapp!

### Edit config.json
ubah:
```
 "module_directory_name": "module",
```
menjadi
```
 "module_directory_name": "presentation",
```

### Buatlah module berikut di config.json
```
login
employee/employee_dashboard
employee/employee_order
employee/employee_profile
hr/hr_dashboard
hr/hr_order
hr/hr_profile
```

### Atur halaman awal ke LoginView
Buka lib/main.dart, atur:
```
home: LoginView(),
```

### Di LoginView, buatlah Form Login.
Gunakan snippet:
```
form_email
form_password
button_icon
    text: Login
    icon: Icons.login
```

### Buka LoginController, tambahkan variabel berikut:
```
String email = "";
String password = "";
```

### Masih di LoginController, tambahkan method:
```
Future doLogin() async {
   if(email == "andre" && password == "123456") {
      Get.to(EmployeeDashboardView());
      return;
   }
   else if(email == "melisa" && password == "123456") {
      Get.to(HRDashboardView());
      return;
   }
   else {
       print("Gagal login, wrong username or password!");
   }   
}
```

### Buka LoginView, di tombol login, tambahkan ini:
onPressed: () => controller.doLogin(),

### Masih di LoginView, tambahkan kode ini di textfield email dan password

textfield email
```
onChanged: (value) {
    controller.email = value;
},
```

textfield password
```
onChanged: (value) {
    controller.email = value;
},
```


### Hot Restart Aplikasi Flutter
<h3>[Test Case 1]</h3>
Coba masukkan username andre dengan password 123456
Apakah kamu masuk ke dalam EmployeeDashboardView?

<h3>[Test Case 2]</h3>  
Coba masukkan username melisa dengan password 123456
Apakah kamu masuk ke dalam HRDashboardView?

### Submit Score
Untuk mendapatkan score dari tugas ini,
Jalankan perintah ini:

flutter test

