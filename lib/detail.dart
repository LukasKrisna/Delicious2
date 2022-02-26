import 'package:flutter/material.dart';
import 'package:recipe/constants.dart';
import 'package:recipe/shared.dart';
import 'package:recipe/data.dart';

class Detail extends StatelessWidget {

  final Recipe recipe;

  Detail({@required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  buildTextTitleVariation1(recipe.title),

                  buildTextSubTitleVariation1(recipe.description),

                ],
              ),
            ),

            SizedBox(
              height: 16,
            ),

            Container(
              height: 310,
              padding: EdgeInsets.only(left: 16),
              child: Stack(
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      buildTextTitleVariation2('Nutritions', false),

                      SizedBox(
                        height: 16,
                      ),

                      buildNutrition(recipe.calories, "Calories", "Kcal"),

                      SizedBox(
                        height: 16,
                      ),

                      buildNutrition(recipe.carbo, "Carbo", "g"),

                      SizedBox(
                        height: 16,
                      ),

                      buildNutrition(recipe.protein, "Protein", "g"),

                    ],
                  ),

                  Positioned(
                    right: -80,
                    child: Hero(
                      tag: recipe.image,
                      child: Container(
                        height: 310,
                        width: 310,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(recipe.image),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  buildTextTitleVariation2('Ingredients', false),

                  buildTextSubTitleVariation1("8 lembar tempe mendoan (2 bks)"),
                  buildTextSubTitleVariation1("Minyak untuk menggoreng"),
                  buildTextSubTitleVariation1("150 gram tepung terigu (10 sdm)"),
                  buildTextSubTitleVariation1("30 gram tepung beras (2 sdm)"),
                  buildTextSubTitleVariation1("2 batang daun bawang iris tipis"),
                  buildTextSubTitleVariation1("250 mL air"),
                  buildTextSubTitleVariation1("Garam dan penyedap"),
                  buildTextSubTitleVariation1("5 siung bawang putih"),
                  buildTextSubTitleVariation1("4 butir kemiri, sangrai"),
                  buildTextSubTitleVariation1("1 sdt ketumbar, sangrai"),
                  buildTextSubTitleVariation1("Seruas kunyit (2 cm)"),
                  buildTextSubTitleVariation1("8 buah cabe rawit merah (optional)"),
                  buildTextSubTitleVariation1("5 buah cabe rawit hijau (optional)"),
                  buildTextSubTitleVariation1("1/4 sdt bawang goreng, remukan"),

                  SizedBox(height: 16,),

                  buildTextTitleVariation2('Recipe preparation', false),

                  buildTextSubTitleVariation1("STEP 1"),
                  buildTextSubTitleVariation1("Siapkan tempe mendoan. Sangrai kemiri dan ketumbar lalu haluskan bersama bahan bumbu halus lainnya. Tambahkan sejumput garam saat mengulek supaya tidak licin."),

                  buildTextSubTitleVariation1("STEP 2"),
                  buildTextSubTitleVariation1("Campur tepung terigu dan tepung beras. Masukkan bumbu halus, garam, penyedap dan irisan daun bawang, aduk rata. Tambahkan air perlahan, aduk hingga rata. Jangan sampai ada yang menggumpal."),

                  buildTextSubTitleVariation1("STEP 3"),
                  buildTextSubTitleVariation1("Panaskan minyak. Celupkan tempe ke dalam bahan celupan lalu goreng sebentar dengan api besar. Cukup sekali balik saja. Angkat dan tiriskan. Sisihkan. *goreng setengah matang saja.. Karena ini tempe mendoan."),
                  
                  buildTextSubTitleVariation1("STEP 4"),
                  buildTextSubTitleVariation1("Buat sambal kecap. Iris cabe, beri bawang goreng yang sudah diremukkan. Tambahkan kecap."),
                  
                  buildTextSubTitleVariation1("STEP 5"),
                  buildTextSubTitleVariation1("Tempe mendoan siap disajikan dengan cocolan sambal kecap yang pedas gurih. Selamat menikmati."),

                ],
              ),
            ),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {}, 
        backgroundColor: kPrimaryColor,
        icon: Icon(
          Icons.play_circle_fill,
          color: Colors.white,
          size: 32,
        ),
        label: Text(
          "Watch Video",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )
      ),
    );
  }

  Widget buildNutrition(int value, String title, String subTitle){
    return Container(
      height: 60,
      width: 150,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [

          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [kBoxShadow],
            ),
            child: Center(
              child: Text(
                value.toString(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(
            width: 20,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }

}