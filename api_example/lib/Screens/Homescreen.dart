import 'package:api_example/Const/export.dart';
import 'package:http/http.dart' as http;

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  bool isLoding = false;
  List user = [];

  @override
  void initState() {
    super.initState();
    fetchdata();
  }

  void fetchdata() async {
    final response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode == 200) {
      List dataList = json.decode(response.body);

      dataList.forEach((json) {
        user.add(ProductDetail.fromJson(json));
      });

      setState(() {
        isLoding = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoding == true) {
      return UserGridView(dataList: user);
    } else {
      return ShimmerWidget();
    }
  }
}
