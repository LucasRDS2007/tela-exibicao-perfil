import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: NossaAppBar(),
        drawer: Drawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 96,
                width: 96,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green.shade50,
                ),
                child: Icon(Icons.person, size: 32, color: Color(0xff146C43)),
              ),
              SizedBox(height: 12),
              Text(
                'Lucas Ramos dos Santos',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                'Desenvolvedor Flutter',
                style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 92,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.article, size: 24, color: Color(0xff146C43)),
                        Text(
                          'Posts',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '3',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    width: 92,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.group, size: 24, color: Color(0xff146C43)),
                        Text(
                          'Seguidores',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '160',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  Container(
                    width: 92,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.person_add,
                          size: 24,
                          color: Color(0xff146C43),
                        ),
                        Text(
                          'Seguindo',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '174',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NossaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NossaAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.arrow_back, color: Colors.white, size: 24),
      title: const Text(
        'Perfil',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        Icon(Icons.menu, color: Colors.white, size: 24),
        Padding(padding: EdgeInsets.only(right: 16)),
      ],
      backgroundColor: Color(0xff146C43),
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
    );
  }
}
