class Category {
  final String id;
  final String title;
  final String description;
  final String image;

  const Category({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
  });
}

class Places {
  final String id;
  final String name;
  final String category;
  final String description;
  final String image;
  final String author;
  final int price;
  final double latitude;
  final double longitude;
  final String videoID;

  const Places({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.image,
    required this.author,
    required this.price,
    required this.latitude,
    required this.longitude,
    required this.videoID,
  });
}

const CATEGORIES_DUMMY_DATA = const [
  Category(
    id: 'P1',
    title: 'Pantai',
    description: '',
    image: 'http://pluspng.com/img-png/the-beach-png-black-and-white--952.png',
  ),
  Category(
    id: 'P2',
    title: 'Gunung',
    description: '',
    image:
        'https://images.vexels.com/media/users/3/137476/isolated/preview/d89adf16dc6fce8b9abe54aec3af2546-four-peak-mountain-icon-by-vexels.png',
  ),
  Category(
    id: 'P3',
    title: 'Budaya',
    description: '',
    image: 'https://upload.wikimedia.org/wikipedia/commons/f/f8/Drama-icon.png',
  ),
  Category(
    id: 'P4',
    title: 'Kuliner',
    description: '',
    image:
        'https://cdn3.iconfinder.com/data/icons/vacation-line-1/48/culinary_restaurant_food_vacatipn_traveling-512.png',
  ),
  Category(
    id: 'P5',
    title: 'Religi',
    description: '',
    image:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Religion_icon.svg/1138px-Religion_icon.svg.png',
  ),
  Category(
    id: 'P6',
    title: 'Edukasi',
    description: '',
    image:
        'https://upload.wikimedia.org/wikipedia/commons/e/e8/Education%2C_Studying%2C_University%2C_Alumni_-_icon.png',
  ),
];

const PLACES_DUMMY_DATA = const [
  Places(
    id: 'A1',
    name: 'Candi Borobudur',
    description:
        'Candi Borobudur merupakan sebuah candi Buddha yang terletak di Magelang, Jawa Tengah. Candi ini merupakan salah satu keajaiban dunia dan juga kebanggaan Indonesia. Candi Borobudur dibangun pada masa pemerintahan Wangsa Syailendra pada abad ke-8 M. Candi ini terdiri dari sembilan tingkat dan 2,672 panel relief yang menggambarkan cerita dari ajaran Buddha.',
    author: 'Emilia',
    category: 'P3',
    image:
        "https://awsimages.detik.net.id/community/media/visual/2022/06/15/candi-borobudur-1_169.jpeg?w=1200",
    price: 25000,
    latitude: -7.6078747,
    longitude: 110.2037515,
    videoID: 'ddANUC8nkyY',
  ),
  Places(
      id: 'A2',
      name: 'Candi Prambanan',
      description:
          'Candi Prambanan merupakan kompleks candi Hindu terbesar di Indonesia. Candi ini terletak di Klaten, Jawa Tengah dan dibangun pada abad ke-9. Candi Prambanan terdiri dari tiga candi utama yaitu Candi Shiva, Candi Brahma, dan Candi Wisnu. Selain itu, kompleks ini juga memiliki candi-candi kecil yang mengelilingi candi utama.',
      author: 'Rico',
      category: 'P3',
      image:
          "https://akcdn.detik.net.id/visual/2020/10/21/candi-prambanan_169.jpeg?w=650&q=90",
      price: 30000,
      latitude: -7.7520203,
      longitude: 110.4917792,
      videoID: 'MhifUwbQj6o'),
  Places(
      id: 'A3',
      name: 'Gunung Merbabu',
      description:
          'Gunung Merbabu merupakan gunung yang terletak di kawasan Taman Nasional Merbabu,Jawa Tengah. Gunung ini memiliki ketinggian 3.145 meter di atas permukaan laut dan memiliki pemandangan yang indah. Gunung Merbabu bisa didaki dari dua jalur yaitu jalur Selo dan jalur Cunthel. Selain itu, di sekitar Gunung Merbabu juga terdapat beberapa tempat wisata seperti air terjun, danau, dan kebun teh.',
      author: 'Dinda',
      category: 'P2',
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/MtmerbabuA45d.jpg/800px-MtmerbabuA45d.jpg",
      price: 50000,
      latitude: -7.466667,
      longitude: 110.433333,
      videoID: 'Ls0Rwx7fYp8'),
  Places(
      id: 'A4',
      name: 'Pantai Kuta',
      description:
          'Pantai Kuta merupakan salah satu pantai yang terletak di Pulau Bali. Pantai ini terkenal dengan pasir putihnya yang indah dan ombaknya yang cocok untuk berselancar. Selain itu, di sekitar Pantai Kuta juga terdapat banyak tempat wisata seperti toko-toko souvenir, restoran, dan klub malam.',
      author: 'Anggun',
      category: 'P1',
      image:
          "https://i0.wp.com/www.sewamobilbali1st.com/wp-content/uploads/2015/08/Pantai-Kuta-Obyek-Wisata-Terkenal-di-Bali-Feature.jpg",
      price: 20000,
      latitude: -8.7185,
      longitude: 115.1703,
      videoID: 'qjP4QdZK7tc'),
  Places(
      id: 'A5',
      name: 'Museum Nasional',
      description:
          'Museum Nasional atau Museum Gajah merupakan museum arkeologi dan etnologi yang terletak di Jakarta Pusat. Museum ini memiliki koleksi yang cukup lengkap dan terdiri dari berbagai macam benda-benda bersejarah dari seluruh Indonesia seperti naskah kuno, patung, perhiasan, dan senjata.',
      author: 'Rico',
      category: 'P6',
      image:
          "https://upload.wikimedia.org/wikipedia/commons/4/45/Museum_Nasional_Indonesia.jpg",
      price: 10000,
      latitude: -6.1751,
      longitude: 106.8272,
      videoID: 'DcsKmapxgW0'),
  Places(
      id: 'A6',
      name: 'Masjid Istiqlal',
      description:
          'Masjid Istiqlal merupakan masjid nasional Indonesia yang terletak di Jakarta Pusat. Masjid ini dibangun pada tahun 1978 dan merupakan salah satu masjid terbesar di dunia. Masjid Istiqlal memiliki arsitektur yang sangat indah dan memiliki beberapa ruangan seperti ruang sholat, ruang serbaguna, dan ruang pertemuan.',
      author: 'John',
      category: 'P5',
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Grand_Istiqlal_Mosque.jpg/800px-Grand_Istiqlal_Mosque.jpg",
      price: 0,
      latitude: -6.1714806,
      longitude: 106.8311148,
      videoID: 'CRhdwXAaLww'),
];
