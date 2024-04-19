import 'package:flutter/material.dart';

class ThirdSectionView extends StatelessWidget {
  const ThirdSectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> listProjects = [
      "All Project",
      "Android App",
      "iOS App",
      "CrossPlatform App",
      "Web App",
      "Back End App"
    ];
    var screenSize = MediaQuery.of(context).size;
    double horizontalPadding = screenSize.width * 0.1;

    return SingleChildScrollView(
      child: Column(
        children: [
          DropdownListProject(
            items: listProjects,
            onItemSelected: (selectedItem) {
              // Handle item selection
            },
            // Dropdown project code
          ),
          GridView.builder(
            // Now we do not need to use Expanded for GridView because its height is bounded by SizedBox.
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 4 / 3,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return const ProjectsCard(
                projectTitle: "Judul Project",
                // other properties if needed
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProjectsCard extends StatelessWidget {
  const ProjectsCard({
    Key? key,
    required this.projectTitle,
  }) : super(key: key);

  final String projectTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment
            .stretch, // Stretch the children to fit the card width
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              projectTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/images/mobile-app.jpeg",
              fit: BoxFit.fill, // Fit the image to the width of the SizedBox
            ),
          ),
        ],
      ),
    );
  }
}

class DropdownListProject extends StatefulWidget {
  const DropdownListProject(
      {super.key, required this.items, required this.onItemSelected});
  final List<String> items;
  final Function(String) onItemSelected;

  @override
  State<DropdownListProject> createState() => _DropdownListProjectState();
}

class _DropdownListProjectState extends State<DropdownListProject> {
  late String dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      onChanged: (String? newValue) {
        if (newValue != null) {
          setState(() {
            dropdownValue = newValue;
          });
          widget.onItemSelected(newValue); // Call the callback function here
        }
      },
      items: widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
