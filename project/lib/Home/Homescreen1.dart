import 'package:flutter/material.dart';
import 'package:project/Theme/style.dart'; // Make sure this imports your AppStyles

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.primaryBackgroundColor, // Background color
      appBar: AppBar(
        backgroundColor: AppStyles.primaryBackgroundColor,
        title: Image.asset("assets/splash/trading_buddy_logo.png"),
        elevation: 0, // No shadow
        actions: [
          IconButton(
            icon: ImageIcon(AssetImage("assets/Icons/messages-2.png"),
                color: AppStyles.iconColor),
            onPressed: () {
              // Notification icon functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppStyles.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildUserBalanceCard(), // User balance section
              const SizedBox(height: 20),
              _buildReferSection(), // Refer friends section
              const SizedBox(height: 20),
              _buildRiskCalculator(), // Risk calculator section
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppStyles2.bottomNavBackgroundColor,
        selectedItemColor: AppStyles2.bottomNavSelectedItemColor,
        unselectedItemColor: AppStyles2.bottomNavUnselectedItemColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Sessions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Trade Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            label: 'Tap to Trade',
          ),
        ],
      ),
    );
  }

  Widget _buildUserBalanceCard() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppStyles.cardBackgroundColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: AppStyles.iconColor, // Placeholder icon color
              child: Icon(Icons.person, color: AppStyles.textColorPrimary),
            ),
            title: Text('Roger Mark', style: AppStyles.bodyText1),
            subtitle: Text('Mark.rog@gmail.com', style: AppStyles.bodyText2),
            trailing: Icon(Icons.refresh, color: AppStyles.iconColor),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  '\$4,820',
                  style: AppStyles.heading1
                      .copyWith(color: AppStyles.primaryColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              // Connect Trading Account functionality
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  AppStyles.cardBackgroundColor, // Button background
              side: BorderSide(
                  color: AppStyles.primaryColor), // Button border color
            ),
            child: Text('Connect Trading Account', style: AppStyles.buttonText),
          ),
        ],
      ),
    );
  }

  Widget _buildReferSection() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppStyles.primaryColor, AppStyles.bottomNavBackgroundColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Refer 3 Friends, Get a free Membership',
            style: AppStyles.bodyText1.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              _buildReferralBubble(1, isActive: true),
              const SizedBox(width: 10.0),
              _buildReferralBubble(2),
              const SizedBox(width: 10.0),
              _buildReferralBubble(3),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 60,
                  width: 230,
                  decoration: BoxDecoration(
                      color: AppStyles.searchBarColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('akashx.com/rogermark', style: AppStyles.bodyText1),
                      IconButton(
                        icon: ImageIcon(AssetImage("assets/Icons/copy.png"),
                            color: AppStyles.iconColor),
                        onPressed: () {
                          // Notification icon functionality
                        },
                      ),
                    ],
                  )),
              ElevatedButton(
                onPressed: () {
                  // Share link functionality
                },
                style: AppStyles.elevatedButtonStyle,
                child: Text('Share', style: AppStyles.buttonText),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildReferralBubble(int number, {bool isActive = false}) {
    return CircleAvatar(
      radius: 20.0,
      backgroundColor:
          isActive ? AppStyles2.secondaryColor : AppStyles2.inactiveBubbleColor,
      child: Text(
        number.toString(),
        style: AppStyles.bodyText1.copyWith(color: AppStyles.textColorPrimary),
      ),
    );
  }

  Widget _buildRiskCalculator() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppStyles.cardBackgroundColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Calculate your risk',
            style: AppStyles.heading2.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Use the slider below to calculate what you could have made if you took every signal last week',
            style: AppStyles.bodyText2,
          ),
          const SizedBox(height: 20.0),
          // Slider and calculated amount
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  '\$140', // Placeholder calculated value
                  style: AppStyles.heading1
                      .copyWith(color: AppStyles.primaryColor),
                ),
              ),
              Slider(
                value: 140.0,
                min: 0,
                max: 500,
                divisions: 100,
                activeColor: AppStyles.primaryColor,
                inactiveColor: AppStyles.textColorSecondary,
                onChanged: (double value) {
                  // Slider value changed logic
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
