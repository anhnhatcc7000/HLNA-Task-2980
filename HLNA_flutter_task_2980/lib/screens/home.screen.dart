import 'package:flutter/material.dart';
import 'package:flutter_task_2980/models/house.model.dart';
import 'package:flutter_task_2980/widget/home.screen/best_house_list.dart';
import 'package:flutter_task_2980/widget/home.screen/category_tab.dart';
import 'package:flutter_task_2980/widget/home.screen/near_house_list.dart';
import 'package:flutter_task_2980/widget/menu/menu.dart';
import '../widget/home.screen/header.dart';
import '../widget/home.screen/search.menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      endDrawer: const CustomDrawer(),
      body: Padding(
        padding: EdgeInsets.only(top: statusBarHeight),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Header(),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SearchMenu(),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: CategoryTabs(),
                      ),
                      HouseList(houses: nearHouse),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: BestHouseList(houses: bestHouse),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<House> nearHouse = [
  House(
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/c0b5/b84e/e1d4028e9f2ad18d455cc20f8f30bcce?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JzIUQzFFvR08qwpKGbXfD2-UcOnbMcU30kPGUDDI2NB-oMOPBYmRp6vVWn9VvYfW6PKNkIYh9Z9YxnT9aBUkw3MFvu-nbjG7lwbxL0PcplbogsCUjV1VUQ-qed4KvhRLrD~9KPFCiL0wYGryYkRXYsNYnet6VDyr9tw5mdxtlbz6TP-tydqzi1B09kVHuY~bGUiHZZ1Y5GvpPAMevDHRYOShsq5K2aDS0bkQ1Uz~cIwfnUpxW4V5O2fScWfc2h2lQazOcBK-MRb-StEhISeq1-kJZDI4KjJD4Om-l8EPpCmNk0kg~MYKjuguaVENKdKHg5CWGcy9Ehwgwhy3RwN81g__',
      title: 'Dreamsville House',
      location: 'Jl Sultan Iskandar Muda',
      distance: '1.8 km',
      price: "Rp. 2.500.000.000 / Year",
      bedrooms: 6,
      bathrooms: 4,
      description:
          'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...',
      ownerName: "Garry Allen",
      galleryImages: [
        "https://s3-alpha-sig.figma.com/img/0682/1532/d5809aa9ac94ac1f23aa7f090ac62c4b?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YSP88LBdwqX1sfJYo9z1lUy~lhJ~ex6Gi0753EJJXAFOMB-2sqoWS4V4Y~XaOurHldnWeev1yt40sReSUHJbcjSSAcM4yWl6ejKFz9MoO7IU9vSWCiPIXZCROXlvgVNCT~9MHwoFeJYgAmIK75~VMX6riO9s8xfeKwIpV9I~iqHZYyDp6SANRjm4T33aKOqP6x~~6sG8mg~TlknAfSCBzyG52OWJQbwt3hW6tB45sy5H18D1MA08Fo1~8aYLTP8MYhN7SINiKiL1IfO6cMNvCc-LsJ55vPg~Z38ApUzA0TMWSc0Hor2mImN-4X3wxPyVuy8ZpJPJQedzRDeA1ncW9A__",
        "https://s3-alpha-sig.figma.com/img/b63e/f9e2/335b2715fb1ccc3611772d4967a699b3?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YgY3HGUr62a8KWqKKQA53IURzA9AS79kQPf4sclZIfCAH~ebvdGANlnePyeYfW2rFbdvorlno20A2VR1AH-LntBGqFJfgdDBnpy5ppWvaz8kEB-pxP0XjZDfUycpA23Hw2XHjMzmk9qoZZ8br46Hw~D8k1riiD2AYz89SWCbk0tW2xCNLw3PvOOi9xnITpLXXLcTX9X17Cw0-ywZIiOQeJLw7qgoo~IYD8CHcm0pWwrbRtCi9VvqzLBimg-gk-06Dh9lRM9jU-gpGecj8jBPy3oQ3TRnk8KBJLk~qceInAvlH~BYrxhtM9c6x1kRDE5jnPSbhaURGJ1EFHmsqqhIig__",
        "https://s3-alpha-sig.figma.com/img/51ba/ef7e/36b38a5a5033616306a80c632fd1cc57?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RCMIs-VoJxMD4cm0GuL-7VipPlkkfMOc9Sc66JA~vgoCM89Etid-jH~36oyTOND1SFSODCaSpNLks8mu0iG54rlZ-7ffpHybzIe7k0Mnyo3wKXvod04iXxdNOxPq4HsgORuckhADcCqL1-jWwuzVchGO6fI-ho20Vi3y1lpRd9sMVRYfWI3yLGFQlr8pakWLu-K~0vgGaMnRmlN4B~TWxSGreY5-IKPiTCrHW~t0eT05ep5y3Qxgqb-Ad2N-PTe7AO7Yljq~K4I2kBNL3MCYPxHqpEYqUjptUcCOOEPkIgXvvRcOqQpLsUTKd5VpnZTHX5n2OsMmdPl8x3fqAI2mCA__",
        "https://s3-alpha-sig.figma.com/img/5040/914e/838ea2fcef1e5d03a06fbba226a82c4a?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SgcvnT5ehD5Y9qLZiW73hRLgktsO5UHIuyWn-eU6Wmorv-TNvM0DBAYcvmTbBA-d7NGgA0ny3-htuS-n5tUsBh-FE81Jvv1rsr60VWBlj1WnBiMcpBtVf~HEVRqnWX48AO1RA00lPZonD4ll1HoerYEQGdzwCWRU~~3j8uCQE3uJKX5hl-r1hNTuoC7VVTdvUh1rztK52IvNB6zsJNrM5FOd4JI8qUsr4fQhLvrNQpbN7cyAlFW5PtVmwf4Y~Zfk4xa87UmTCGSbj9Xu10PaK7P7K~8Dpfy3wjyP3noQDcwvyVmOdO370pencnQXatKRnPrZKB5aWXHTSPCtIykZ6Q__"
      ],
      ownerImage:
          "https://s3-alpha-sig.figma.com/img/ebd1/f255/26652d4ef5745a41a8c6cceaaa96ffac?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MEkuTEjDiJIkIf7NN17fL2dVhrc5ukBzJdUua5KsybfcyA3AI6izalZ~yV6cLpcDkOI77fASQ5me2fKQjnrMpmBbPINznu-Gr2CjGjmCXwCGSSJNZjl4XRIDCHzIsi0mtkpjBU0G8YWS1QSpfMmKx54FO9rVcSebgpaN3l0EWWN9ufQ6awxyWCEGNryuI9EI6UMmvbJQBIEeK-Ya2yLPmq5XOq5Z7QEw0HxTVv29m7tvufMwAIa49zUYGbECFYspZ~rcGOYrEIoSj5pyqeI6OH9CWrYDaWQiyTyGIH6ZWI0T8uSg1TmrKmR417BJi0-LauQU~zx4AKMKtpQ3shJbpQ__"),
  House(
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/fc2a/22eb/77b12515a6310130b669ed3062ff9bd9?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UnZyt-enOGILMJJAcHek0pWMKYsUk1N-31SIZr5~TZO7MaGLTtyfWdlZig9eOgzv1Xgsv2UYVztUrcBQQXPNcmeF03BxcnNoEDauLY~dxw6FPbZ8dAiJyM9nHbETgxyq88rTeLa3ia9VdwXA8QwGCtNZY2Zcm7ayZK7Ug~~EmInSHD6doqS85k3vmoQW~M-QJaSPsoTEi3cTCeqLt3zPFfweagMT3YHOSeqgRClSIQnAz5cCj4rUtl6ATpUwSsvDWFkSLVPrT0Nimt9mntiAw8fXtXF~R8aAwqKNuf8b3z2uvrIR-FbKD5UeG22aRsXLTI92VuldCPG0jk3ynA1aTg__',
      title: 'Ascot House',
      location: 'Jl Cilandak Tengah',
      distance: '2.0 km',
      price: "Rp. 2.500.000.000 / Year",
      bedrooms: 1,
      bathrooms: 1,
      galleryImages: [
        "https://s3-alpha-sig.figma.com/img/0682/1532/d5809aa9ac94ac1f23aa7f090ac62c4b?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YSP88LBdwqX1sfJYo9z1lUy~lhJ~ex6Gi0753EJJXAFOMB-2sqoWS4V4Y~XaOurHldnWeev1yt40sReSUHJbcjSSAcM4yWl6ejKFz9MoO7IU9vSWCiPIXZCROXlvgVNCT~9MHwoFeJYgAmIK75~VMX6riO9s8xfeKwIpV9I~iqHZYyDp6SANRjm4T33aKOqP6x~~6sG8mg~TlknAfSCBzyG52OWJQbwt3hW6tB45sy5H18D1MA08Fo1~8aYLTP8MYhN7SINiKiL1IfO6cMNvCc-LsJ55vPg~Z38ApUzA0TMWSc0Hor2mImN-4X3wxPyVuy8ZpJPJQedzRDeA1ncW9A__",
        "https://s3-alpha-sig.figma.com/img/b63e/f9e2/335b2715fb1ccc3611772d4967a699b3?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YgY3HGUr62a8KWqKKQA53IURzA9AS79kQPf4sclZIfCAH~ebvdGANlnePyeYfW2rFbdvorlno20A2VR1AH-LntBGqFJfgdDBnpy5ppWvaz8kEB-pxP0XjZDfUycpA23Hw2XHjMzmk9qoZZ8br46Hw~D8k1riiD2AYz89SWCbk0tW2xCNLw3PvOOi9xnITpLXXLcTX9X17Cw0-ywZIiOQeJLw7qgoo~IYD8CHcm0pWwrbRtCi9VvqzLBimg-gk-06Dh9lRM9jU-gpGecj8jBPy3oQ3TRnk8KBJLk~qceInAvlH~BYrxhtM9c6x1kRDE5jnPSbhaURGJ1EFHmsqqhIig__",
        "https://s3-alpha-sig.figma.com/img/51ba/ef7e/36b38a5a5033616306a80c632fd1cc57?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RCMIs-VoJxMD4cm0GuL-7VipPlkkfMOc9Sc66JA~vgoCM89Etid-jH~36oyTOND1SFSODCaSpNLks8mu0iG54rlZ-7ffpHybzIe7k0Mnyo3wKXvod04iXxdNOxPq4HsgORuckhADcCqL1-jWwuzVchGO6fI-ho20Vi3y1lpRd9sMVRYfWI3yLGFQlr8pakWLu-K~0vgGaMnRmlN4B~TWxSGreY5-IKPiTCrHW~t0eT05ep5y3Qxgqb-Ad2N-PTe7AO7Yljq~K4I2kBNL3MCYPxHqpEYqUjptUcCOOEPkIgXvvRcOqQpLsUTKd5VpnZTHX5n2OsMmdPl8x3fqAI2mCA__",
        "https://s3-alpha-sig.figma.com/img/5040/914e/838ea2fcef1e5d03a06fbba226a82c4a?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SgcvnT5ehD5Y9qLZiW73hRLgktsO5UHIuyWn-eU6Wmorv-TNvM0DBAYcvmTbBA-d7NGgA0ny3-htuS-n5tUsBh-FE81Jvv1rsr60VWBlj1WnBiMcpBtVf~HEVRqnWX48AO1RA00lPZonD4ll1HoerYEQGdzwCWRU~~3j8uCQE3uJKX5hl-r1hNTuoC7VVTdvUh1rztK52IvNB6zsJNrM5FOd4JI8qUsr4fQhLvrNQpbN7cyAlFW5PtVmwf4Y~Zfk4xa87UmTCGSbj9Xu10PaK7P7K~8Dpfy3wjyP3noQDcwvyVmOdO370pencnQXatKRnPrZKB5aWXHTSPCtIykZ6Q__"
      ],
      description:
          'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...',
      ownerName: "Garry Allen",
      ownerImage:
          "https://s3-alpha-sig.figma.com/img/ebd1/f255/26652d4ef5745a41a8c6cceaaa96ffac?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MEkuTEjDiJIkIf7NN17fL2dVhrc5ukBzJdUua5KsybfcyA3AI6izalZ~yV6cLpcDkOI77fASQ5me2fKQjnrMpmBbPINznu-Gr2CjGjmCXwCGSSJNZjl4XRIDCHzIsi0mtkpjBU0G8YWS1QSpfMmKx54FO9rVcSebgpaN3l0EWWN9ufQ6awxyWCEGNryuI9EI6UMmvbJQBIEeK-Ya2yLPmq5XOq5Z7QEw0HxTVv29m7tvufMwAIa49zUYGbECFYspZ~rcGOYrEIoSj5pyqeI6OH9CWrYDaWQiyTyGIH6ZWI0T8uSg1TmrKmR417BJi0-LauQU~zx4AKMKtpQ3shJbpQ__"),
];

List<House> bestHouse = [
  House(
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/3739/b85c/79b000c10d47f525e33f0be4722db6d3?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=d26tulPR7KYs5OCK54sea80k5lllIo0VBpIsAonuffbBTfwP4z2RSIRq3d5hjjNSnm54cq4epIZcJE8XcsC4kEtRM03fa7fPcwNaGJEsWMIysX7bdHuif5Ui59zvMHVMiKhBdy-GRzcS3vNExxhi7TA9W8RBDCYxtLXbmaXdWakef99bi0W2xz0iW1ehdJzUMjj8Z32nuv1jxKd1WuAxt2CDlkZyqePJJhXRngbKxMvRfTM1ePHq5m4pbjN1i1JpEr3zbINaivFtZBaOgYiP72ceqstazjFZRr1MbONhAL6ZtrXwicpnaz3OELkSqd12DQHwbn1v0bbLBy7bUpQb9Q__',
      title: 'Orchad House',
      price: 'Rp. 2.500.000.000 / Year',
      bedrooms: 6,
      bathrooms: 4,
      location: 'Jl Cilandak Tengah',
      distance: '2.0 km',
      galleryImages: [
        "https://s3-alpha-sig.figma.com/img/0682/1532/d5809aa9ac94ac1f23aa7f090ac62c4b?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YSP88LBdwqX1sfJYo9z1lUy~lhJ~ex6Gi0753EJJXAFOMB-2sqoWS4V4Y~XaOurHldnWeev1yt40sReSUHJbcjSSAcM4yWl6ejKFz9MoO7IU9vSWCiPIXZCROXlvgVNCT~9MHwoFeJYgAmIK75~VMX6riO9s8xfeKwIpV9I~iqHZYyDp6SANRjm4T33aKOqP6x~~6sG8mg~TlknAfSCBzyG52OWJQbwt3hW6tB45sy5H18D1MA08Fo1~8aYLTP8MYhN7SINiKiL1IfO6cMNvCc-LsJ55vPg~Z38ApUzA0TMWSc0Hor2mImN-4X3wxPyVuy8ZpJPJQedzRDeA1ncW9A__",
        "https://s3-alpha-sig.figma.com/img/b63e/f9e2/335b2715fb1ccc3611772d4967a699b3?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YgY3HGUr62a8KWqKKQA53IURzA9AS79kQPf4sclZIfCAH~ebvdGANlnePyeYfW2rFbdvorlno20A2VR1AH-LntBGqFJfgdDBnpy5ppWvaz8kEB-pxP0XjZDfUycpA23Hw2XHjMzmk9qoZZ8br46Hw~D8k1riiD2AYz89SWCbk0tW2xCNLw3PvOOi9xnITpLXXLcTX9X17Cw0-ywZIiOQeJLw7qgoo~IYD8CHcm0pWwrbRtCi9VvqzLBimg-gk-06Dh9lRM9jU-gpGecj8jBPy3oQ3TRnk8KBJLk~qceInAvlH~BYrxhtM9c6x1kRDE5jnPSbhaURGJ1EFHmsqqhIig__",
        "https://s3-alpha-sig.figma.com/img/51ba/ef7e/36b38a5a5033616306a80c632fd1cc57?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RCMIs-VoJxMD4cm0GuL-7VipPlkkfMOc9Sc66JA~vgoCM89Etid-jH~36oyTOND1SFSODCaSpNLks8mu0iG54rlZ-7ffpHybzIe7k0Mnyo3wKXvod04iXxdNOxPq4HsgORuckhADcCqL1-jWwuzVchGO6fI-ho20Vi3y1lpRd9sMVRYfWI3yLGFQlr8pakWLu-K~0vgGaMnRmlN4B~TWxSGreY5-IKPiTCrHW~t0eT05ep5y3Qxgqb-Ad2N-PTe7AO7Yljq~K4I2kBNL3MCYPxHqpEYqUjptUcCOOEPkIgXvvRcOqQpLsUTKd5VpnZTHX5n2OsMmdPl8x3fqAI2mCA__",
        "https://s3-alpha-sig.figma.com/img/5040/914e/838ea2fcef1e5d03a06fbba226a82c4a?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SgcvnT5ehD5Y9qLZiW73hRLgktsO5UHIuyWn-eU6Wmorv-TNvM0DBAYcvmTbBA-d7NGgA0ny3-htuS-n5tUsBh-FE81Jvv1rsr60VWBlj1WnBiMcpBtVf~HEVRqnWX48AO1RA00lPZonD4ll1HoerYEQGdzwCWRU~~3j8uCQE3uJKX5hl-r1hNTuoC7VVTdvUh1rztK52IvNB6zsJNrM5FOd4JI8qUsr4fQhLvrNQpbN7cyAlFW5PtVmwf4Y~Zfk4xa87UmTCGSbj9Xu10PaK7P7K~8Dpfy3wjyP3noQDcwvyVmOdO370pencnQXatKRnPrZKB5aWXHTSPCtIykZ6Q__"
      ],
      description:
          'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...',
      ownerName: "Garry Allen",
      ownerImage:
          "https://s3-alpha-sig.figma.com/img/ebd1/f255/26652d4ef5745a41a8c6cceaaa96ffac?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MEkuTEjDiJIkIf7NN17fL2dVhrc5ukBzJdUua5KsybfcyA3AI6izalZ~yV6cLpcDkOI77fASQ5me2fKQjnrMpmBbPINznu-Gr2CjGjmCXwCGSSJNZjl4XRIDCHzIsi0mtkpjBU0G8YWS1QSpfMmKx54FO9rVcSebgpaN3l0EWWN9ufQ6awxyWCEGNryuI9EI6UMmvbJQBIEeK-Ya2yLPmq5XOq5Z7QEw0HxTVv29m7tvufMwAIa49zUYGbECFYspZ~rcGOYrEIoSj5pyqeI6OH9CWrYDaWQiyTyGIH6ZWI0T8uSg1TmrKmR417BJi0-LauQU~zx4AKMKtpQ3shJbpQ__"),
  House(
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/15c6/6ec2/f6bffc6b811c2d8b71352fb76df17b3a?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=I8C7-P1llWr1Nj7JDTX0zbwSKHNKHJLZsTiVxs1VJ-LIUZl6uXd6TxUqiQNx-83wM5LEicOaGvmApGTEvJD9qTTK93ORLSO1oizjOazChUejrj24-vZKOZWlnHz4lPQ8DGkE6CJ2a52odDQg7AlTjLNeDqrvijEREq1NSSZAe3IUSoGlYr-cOdIdvgWvoM-dnikZ8cQskLIMa6kdWm6Hwi6vLZWqZSae2UY2D5vBoZ4mm5yby27IIav9QOmM4jfdWy3ZKvSoGTijneVrIYGSTcLyWMe6FPU9XHTgwH~frqr4QAdgOEFVEm60uAFtSQlRq-4S0Sd5dLzFMShw9ecZAg__',
      title: 'The Hollies House',
      price: 'Rp. 2.000.000.000 / Year',
      bedrooms: 5,
      bathrooms: 2,
      galleryImages: [
        "https://s3-alpha-sig.figma.com/img/0682/1532/d5809aa9ac94ac1f23aa7f090ac62c4b?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YSP88LBdwqX1sfJYo9z1lUy~lhJ~ex6Gi0753EJJXAFOMB-2sqoWS4V4Y~XaOurHldnWeev1yt40sReSUHJbcjSSAcM4yWl6ejKFz9MoO7IU9vSWCiPIXZCROXlvgVNCT~9MHwoFeJYgAmIK75~VMX6riO9s8xfeKwIpV9I~iqHZYyDp6SANRjm4T33aKOqP6x~~6sG8mg~TlknAfSCBzyG52OWJQbwt3hW6tB45sy5H18D1MA08Fo1~8aYLTP8MYhN7SINiKiL1IfO6cMNvCc-LsJ55vPg~Z38ApUzA0TMWSc0Hor2mImN-4X3wxPyVuy8ZpJPJQedzRDeA1ncW9A__",
        "https://s3-alpha-sig.figma.com/img/b63e/f9e2/335b2715fb1ccc3611772d4967a699b3?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YgY3HGUr62a8KWqKKQA53IURzA9AS79kQPf4sclZIfCAH~ebvdGANlnePyeYfW2rFbdvorlno20A2VR1AH-LntBGqFJfgdDBnpy5ppWvaz8kEB-pxP0XjZDfUycpA23Hw2XHjMzmk9qoZZ8br46Hw~D8k1riiD2AYz89SWCbk0tW2xCNLw3PvOOi9xnITpLXXLcTX9X17Cw0-ywZIiOQeJLw7qgoo~IYD8CHcm0pWwrbRtCi9VvqzLBimg-gk-06Dh9lRM9jU-gpGecj8jBPy3oQ3TRnk8KBJLk~qceInAvlH~BYrxhtM9c6x1kRDE5jnPSbhaURGJ1EFHmsqqhIig__",
        "https://s3-alpha-sig.figma.com/img/51ba/ef7e/36b38a5a5033616306a80c632fd1cc57?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RCMIs-VoJxMD4cm0GuL-7VipPlkkfMOc9Sc66JA~vgoCM89Etid-jH~36oyTOND1SFSODCaSpNLks8mu0iG54rlZ-7ffpHybzIe7k0Mnyo3wKXvod04iXxdNOxPq4HsgORuckhADcCqL1-jWwuzVchGO6fI-ho20Vi3y1lpRd9sMVRYfWI3yLGFQlr8pakWLu-K~0vgGaMnRmlN4B~TWxSGreY5-IKPiTCrHW~t0eT05ep5y3Qxgqb-Ad2N-PTe7AO7Yljq~K4I2kBNL3MCYPxHqpEYqUjptUcCOOEPkIgXvvRcOqQpLsUTKd5VpnZTHX5n2OsMmdPl8x3fqAI2mCA__",
        "https://s3-alpha-sig.figma.com/img/5040/914e/838ea2fcef1e5d03a06fbba226a82c4a?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SgcvnT5ehD5Y9qLZiW73hRLgktsO5UHIuyWn-eU6Wmorv-TNvM0DBAYcvmTbBA-d7NGgA0ny3-htuS-n5tUsBh-FE81Jvv1rsr60VWBlj1WnBiMcpBtVf~HEVRqnWX48AO1RA00lPZonD4ll1HoerYEQGdzwCWRU~~3j8uCQE3uJKX5hl-r1hNTuoC7VVTdvUh1rztK52IvNB6zsJNrM5FOd4JI8qUsr4fQhLvrNQpbN7cyAlFW5PtVmwf4Y~Zfk4xa87UmTCGSbj9Xu10PaK7P7K~8Dpfy3wjyP3noQDcwvyVmOdO370pencnQXatKRnPrZKB5aWXHTSPCtIykZ6Q__"
      ],
      location: 'Jl Cilandak Tengah',
      distance: '2.0 km',
      description:
          'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...',
      ownerName: "Garry Allen",
      ownerImage:
          "https://s3-alpha-sig.figma.com/img/ebd1/f255/26652d4ef5745a41a8c6cceaaa96ffac?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MEkuTEjDiJIkIf7NN17fL2dVhrc5ukBzJdUua5KsybfcyA3AI6izalZ~yV6cLpcDkOI77fASQ5me2fKQjnrMpmBbPINznu-Gr2CjGjmCXwCGSSJNZjl4XRIDCHzIsi0mtkpjBU0G8YWS1QSpfMmKx54FO9rVcSebgpaN3l0EWWN9ufQ6awxyWCEGNryuI9EI6UMmvbJQBIEeK-Ya2yLPmq5XOq5Z7QEw0HxTVv29m7tvufMwAIa49zUYGbECFYspZ~rcGOYrEIoSj5pyqeI6OH9CWrYDaWQiyTyGIH6ZWI0T8uSg1TmrKmR417BJi0-LauQU~zx4AKMKtpQ3shJbpQ__"),
];
