class Recipe {

  String title;
  String description;
  String image;
  int calories;
  int carbo;
  int protein;

  Recipe(this.title, this.description, this.image, this.calories, this.carbo, this.protein);

}

List<Recipe> getRecipes(){
  return <Recipe>[
    Recipe("Soto Sokaraja", "So irresistibly delicious", "assets/images/soto_sokaraja.png", 250, 35, 6),
    Recipe("Mendoan", "True Banyumasan classic with a meaty, chilli sauce", "assets/images/mendoan.png", 200, 45, 10),
    Recipe("Tahu Kupat", "Crispy Garlic Roasted Potatoes", "assets/images/tahu_kupat.png", 150, 30, 8),
    Recipe("Getuk Goreng", "White Onion, Fennel, and watercress Salad", "assets/images/gethuk_goreng.png", 190, 35, 12),
    Recipe("Nasi Goreng", "Bacon-Wrapped Filet Mignon", "assets/images/nasi_goreng.png", 250, 55, 20),
  ];
}