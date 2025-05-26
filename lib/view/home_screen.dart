import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_model/service_view_model.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ServiceViewModel>(context);
    if (viewModel.isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    final services = viewModel.services;

    if (services.isEmpty) {
      return Center(child: Text("No services found"));
    }

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: services.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        final service = services[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (_) => DetailScreen(title: service.title, serviceTitle: '',),
            ));
          },
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.music_note), // Or load custom icon from `service.icon`
                Text(service.title),
                Text(service.description),
              ],
            ),
          ),
        );
      },
    );
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'News',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Trackbox"),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: "Projects"),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.pink, Colors.deepPurple],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search 'Punjabi Lyrics'",
                            prefixIcon: Icon(Icons.search),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(child: Icon(Icons.person)),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text("Claim your", style: TextStyle(fontSize: 18)),
                  Text("Free Demo", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  Text("for custom Music Production", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Book Now"),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Hire hand-picked Pros for popular music services",
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
              ),
            ),
            // Service Cards
            Expanded(
              child: viewModel.isLoading
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: viewModel.services.length,
                      itemBuilder: (context, index) {
                        final service = viewModel.services[index];
                        return Card(
                          child: ListTile(
                            leading: Image.asset(service.iconPath, height: 32, width: 32),
                            title: Text(service.title),
                            subtitle: Text(service.description),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => DetailScreen(serviceTitle: service.title, title: '',),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
            )
          ],
        ),
      ),
    );
  }
}
