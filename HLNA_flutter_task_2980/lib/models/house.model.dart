class House {
   late String imageUrl;
   late String title;
   late String location;
   late String distance;
   late String price;
   late String description;
   late int bedrooms;
   late int bathrooms;
   late String ownerName;
   late String ownerImage;
   late List<String> galleryImages;

  House({
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.distance,
    required this.bedrooms,
    required this.bathrooms,
    required this.price,
    required this.description,
    required this.ownerName,
    required this.ownerImage,
    required this.galleryImages,
  });

  House.empty();
}