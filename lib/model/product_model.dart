import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  Product(
      {required this.name,
      required this.category,
      required this.imageUrl,
      required this.price,
      required this.isRecommended,
      required this.isPopular});

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];

  final List<Product> products = [
    Product(
        name: "Soft Drink 1",
        category: 'Soft Drink',
        imageUrl:
            'https://lh3.googleusercontent.com/proxy/wJfdT8Bk3FdVlPPBeelEoXhnv4rko1Nb_4JYAu2lQH2WQGf38864_IrAz9f4GgHDLs3SsLIW9VSTXarsZm31z_F7Of52P07vpmJy4stbNet-29vu_gl_Cmq8nO4ZBkdMUhk5xdugYJAaGQ',
        price: 30.0,
        isRecommended: true,
        isPopular: true),
    Product(
        name: "Soft Drink 2",
        category: 'Soft Drink',
        imageUrl:
            'https://www.bevindustry.com/ext/resources/2012/2012_April/BI0412_SpecialReport_DietMountainDew_Can_slide.jpg?t=1333552253&width=900',
        price: 40.0,
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Soft Drink 3",
        category: 'Soft Drink',
        imageUrl:
            'https://ik.imagekit.io/pimberly/595e406f0f15f30010780448/tr:w-1000,h-1000,cm-pad_resize/696d6cec/5d70c6b06cb2114d580001de.jpg?product_name=Coca-Cola-Soft-Drink-330ml-Can-(Pack-of-24)-402002.jpg',
        price: 50.0,
        isRecommended: false,
        isPopular: true),
    Product(
        name: "Soft Drink 4",
        category: 'Soft Drink',
        imageUrl:
            'https://pyramidswholesale.com/wp-content/uploads/2013/02/product_s_p_sprite_can.jpg',
        price: 55.0,
        isRecommended: true,
        isPopular: true),
    Product(
        name: "Mango Smoothie",
        category: 'Smoothies',
        imageUrl:
            'https://images.eatthismuch.com/site_media/img/36615_tabitharwheeler_c824607d-afee-4fc8-9b7e-9377e60cda30.jpg',
        price: 150.0,
        isRecommended: true,
        isPopular: true),
    Product(
        name: "Banana Smoothie",
        category: 'Smoothies',
        imageUrl:
            'https://www.thespruceeats.com/thmb/RTH5cMhDMvK61a4okKEUqneMtxU=/3909x2601/filters:fill(auto,1)/banana-smoothie-recipes-759606-hero-01-d2abaa79f3204030a0ec0a8940456acc.jpg',
        price: 150.0,
        isRecommended: false,
        isPopular: true),
    Product(
        name: "Chocolate Smoothie",
        category: 'Smoothies',
        imageUrl:
            'https://cravinghomecooked.com/wp-content/uploads/2020/04/chocolate-smoothie-1-6.jpg',
        price: 150.0,
        isRecommended: false,
        isPopular: true),
    Product(
        name: "Water",
        category: 'Water',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlgQxiVryTIlGOmP1rILaItGHQYbzfD7bfFBHtWFJ3RD-sUh99r8MMi_UE_IIEydkJ5lc&usqp=CAU',
        price: 0.0,
        isRecommended: false,
        isPopular: true),
  ];
}
