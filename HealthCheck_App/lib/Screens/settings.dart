import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  void showAboutDialogBox() {
    showAboutDialog(
        context: context,
        applicationName: 'Health Check',
        applicationVersion: '0.0.1',
        applicationLegalese: "Developed on Kritika Parmar and all other Contributors",
        // routeSettings: RouteSettings(),
        useRootNavigator: false,
        children: [
          SizedBox(
            height: 10.0,
          ),
          Text(
              "THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, "
              "INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. "
              "IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR "
              "CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; "
              "LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, "
              "STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED "
              "OF THE POSSIBILITY OF SUCH DAMAGE.")
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 1,
            ),
            Text(
              'Settings',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:30.0, bottom:20.0, left:50.0, right:50.0),
            child: GestureDetector(
              onTap: showAboutDialogBox,
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage('assets/images/license.jpg'), fit: BoxFit.fill),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFFE019A),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: Offset(2, 2))
                  ],
                ),
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(top:20.0, bottom:20.0, left:50.0, right:50.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage('assets/images/about.jpg'), fit: BoxFit.fill),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFFE019A),
                        blurRadius: 4,
                        spreadRadius: 0,
                        offset: Offset(2, 2))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}