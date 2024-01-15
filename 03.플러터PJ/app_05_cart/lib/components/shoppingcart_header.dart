import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_05_cart/constants.dart';

class ShoppingCartHeader extends StatefulWidget {
  const ShoppingCartHeader({Key? key}) : super(key: key);

  @override
  State<ShoppingCartHeader> createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  int selectedId = 0;

  // 이미지 리스트
  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

  // 상품명 리스트
  List<String> selectedTit = [
    "Living bicycle",
    "Honda motorcycle",
    "Tesla Model3",
    "Cessna 150",
  ];
  // 상품가격 리스트
  Map<String, List> selectedPrice = {
    "Living bicycle": [699, 26],
    "Honda motorcycle": [1700, 35],
    "Tesla Model3": [7800, 98],
    "Cessna 150": [12400, 75],
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeaderPic(),
        _buildHeaderSelector(),
        // 하단 디테일 정보
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDetailNameAndPrice(),
              _buildDetailRatingAndReviewCount(),
              _buildDetailColorOptions(),
              _buildDetailButton(context),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildHeaderPic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 5 / 3,
        child: Image.asset(
          selectedPic[selectedId],
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildHeaderSelector() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildHeaderSelectorButton(0, Icons.directions_bike),
          _buildHeaderSelectorButton(1, Icons.motorcycle),
          _buildHeaderSelectorButton(2, CupertinoIcons.car_detailed),
          _buildHeaderSelectorButton(3, CupertinoIcons.airplane),
        ],
      ),
    );
  }

  // 1. 다른 화면에서도 재사용하면 공통 컴포넌트 위젯으로 관리하는 것이 좋다.
  Widget _buildHeaderSelectorButton(int id, IconData mIcon) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: id == selectedId ? kAccentColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        icon: Icon(mIcon, color: Colors.black),
        onPressed: () {
          setState(() {
            selectedId = id;
          });
        },
      ),
    );
  }

//////////////////////////////////////////
  ///
  ///
  Widget _buildDetailNameAndPrice() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        // 1. spaceBetween 이 적용되면 양 끝으로 벌어진다.
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            selectedTit[selectedId],
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "\$${selectedPrice[selectedTit[selectedId]]?[0]}",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  List makeStar(int num) {
    List<Widget> star = [];
    for (int i = 0; i < num; i++) {
      star.add(Icon(Icons.star, color: Colors.pink));
    }
    return star;
  }

  Widget _buildDetailRatingAndReviewCount() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          // ss.reduce((v) => v),
          Icon(Icons.star, color: Colors.pink),
          Icon(Icons.star, color: Colors.pink),
          Icon(Icons.star, color: Colors.pink),
          Icon(Icons.star, color: Colors.pink),
          Icon(Icons.star, color: Colors.pink),
          // 2. Spacer()로 Icon위젯과 Text위젯을 양끝으로 벌릴 수 있다. spaceBetween과 동일
          Spacer(),
          Text("review "),
          Text("(${selectedPrice[selectedTit[selectedId]]?[1]})",
              style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }

  Widget _buildDetailColorOptions() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Color Options"),
          SizedBox(height: 10),
          Row(
            children: [
              // 3. 동일한 색상 아이콘을 재사용하기 위해 함수로 관리
              _buildDetailIcon(Colors.black),
              _buildDetailIcon(Colors.green),
              _buildDetailIcon(Colors.orange),
              _buildDetailIcon(Colors.grey),
              _buildDetailIcon(Colors.white),
            ],
          ),
        ],
      ),
    );
  }

  // 4. 다른 화면에서도 재사용하면 공통 컴포넌트 위젯으로 관리하는 것이 좋다.
  Widget _buildDetailIcon(Color mColor) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      // 5. Stack의 첫 번째 Container 위젯위에 Positioned 위젯이 올라가는 형태
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            left: 5,
            top: 5,
            child: ClipOval(
              child: Container(
                color: mColor,
                width: 40,
                height: 40,
              ),
            ),
          )
        ],
      ),
    );
  }

  // 6. 다른 화면에서도 재사용하려면 함수가 아닌 공통 컴포넌트 위젯으로 관리하는 것이 좋다.
  Widget _buildDetailButton(BuildContext context) {
    return Align(
      child: TextButton(
        onPressed: () {
          showCupertinoDialog(
            // 1. 추가
            context: context,
            builder: (context) => CupertinoAlertDialog(
              title: Text("장바구니에 담으시겠습니까?"),
              actions: [
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "확인",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          );
        },
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          minimumSize: Size(300, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          "Add to Cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
} /////////// _ShoppingCartHeaderState 클래스 //////////
