import'package:flutter/material.dart';
class product{
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  product({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.review,
    required this.seller,
    required this.quantity,
    required this.category,
    required this.rate
  });
}


final List<product> all=[

  product(title: "wireless earphones ", 
    description: " Powerful Bass: soundcore P25i true wireless earbuds have oversized 10mm drivers that deliver powerful sound with boosted bass so you can lose yourself in your favorite songs.\n""Personalized Listening Experience: Use the soundcore app to customize the controls and choose from 22 EQ presets or use white noise for improving focus \n"
    "Long Playtime, Fast Charging: Get 10 hours of battery life on a single charge with a case that extends it to 30 hours. If P25i true wireless earbuds are low on power, a quick 10-minute charge will give you 2 hours of playtime.\n"
     "AI-Enhanced Clear Calls: 2 built-in mics and an AI algorithm work together to pick up your voice so that you never have to shout over the phone \n"
    "With 'Find My Earbuds', a lost earbud can emit noise to help you locate it.", 
    image: "images/wireless.png",
    price: 120, colors: [
      Colors.black,
      Colors.blue,
      Colors.orange
    ], 
    review: "(320 reviews)", seller: "Boat", 
    quantity: 1, 
    category: "electronics", 
    rate: 4.8
    ),
    product(title: "woman sweter", description: "Sleeve Type: Long Sleeve; Round Neck; Black Front Buttoned; Self Sweater Cardigan; Regular Fit for daily use, Color: Solid color (many color variations), Neck type: Collared-Neck \n"
    "Women Sweater Features: Regular Fit, Collared Neck, button down front, button closure, long sleeve cardigan. This lightweight cardigan with a fitted design, classic solid color and knit for a unique style, you'll feel confident and comfy in this solid color cardigan. This cardigan are popular with modern women of all ages for daily fashion look.\n"
    "Easy fashionable match makes this knit cardigans suitable for all kinds of occasions - Pair with jeans, skirts, shorts, leggings, pants, and boots, heels, sneakers, no matter daily wearing, home, school, work, office, party, BBQ, weekend, hang out, vacation, holiday, Christmas, New Year, etc.", 
    image: "images/sweet.png", 
    price: 120, 
    colors: [
      Colors.brown,
      Colors.deepPurple,
      Colors.pink
    ], 
    review: "(100 reviews)" ,
    seller: "GodFrey",
     quantity: 1, 
     category: "cold clothes", 
     rate: 3.5
     ),
     product(
      title: "smart watch", 
      description: "Charging Specs - The watch needs to be charged for 3 hours to reach 100%. The charger should be a 3.7V to 5V adapter or any laptop output. For a bare minimum of 20% charge the watch needs to be charged for about 30-40 mins \n"
      "【Connect TWS On The Go】- This smartwatch has an internal storage memory of about 128MB to store your songs and listen to local music on your bluetooth headset \n"
      "There is no volume control, however when connected to bt calling you can control the volume of the call. 【AI Voice Assistance】- Command your watch and let the magic happen. This special technology is in the Fire-Boltt Visionary Smartwatch \n"
      "Supported Applications - Notifcations from all social media channels (Instagram, Whatsapp, Facebook), Call Notifications, Health Tracking (SpO2, Heart Rate, Sleep), Sports Tracking & many more", 
      image: "images/miband.jpg", price: 350, 
      colors: [
        Colors.black,
        Colors.amber,
        Colors.purple
      ], review: "(800 reviews)", 
      seller: "Noise", 
      quantity: 1, 
      category: "electronics", 
      rate: 4.1
      ),
      
      product(title: "men jacket",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/jacket.png",
        price: 500, 
        colors: [
          Colors.blueAccent,
          Colors.orange,
          Colors.green
        ], 
        review: "(20reviews)",
         seller: "Ted Baker",
          quantity: 1, 
          category: "elecronics",
           rate: 5.0)

];
final List<product> shoes = [


    product(title: "Air Jordan ", 
    description: " Air Jordan 4 Retro."
"Big Kids' Shoes"
"*SUPPORT, STABILITY AND HERITAGE LOOK.*The Air Jordan 4 Retro delivers lightweight cushioning with a sculpted midsole designed to provide stability. Its throwback details pays tribute to the 1989 original."
"Leather and synthetic upper delivers durability and support."
"Visible Air-Sole unit in the heel for impact cushioning." ,
    image: "images/sportsshoes.png",
    price: 120, colors: [
      Colors.black,
      Colors.blue,
      Colors.orange
    ], 
    review: "(320 reviews)", seller: "Jordan", 
    quantity: 1, 
    category: "shoes", 
    rate: 4.3
    ),
    product(title: "white sneaker", description: "Lightweight & Breathable : Exclusive design and durable materials every step feels light and breezy. Breathable, free-moving fabrics which adjust according to your foot and creates an astoundingly easy-going experience."
    "Non Slip & Shockproof : Great engineering strikes a balance in style, made in the potent design and latest fashion trends. Made for long-term wear, with extra emphasis on providing cushion to the feet, removing heel strain.",
    image: "images/whitesneaker.png", 
    price: 120, 
    colors: [
      Colors.brown,
      Colors.deepPurple,
      Colors.pink
    ], 
    review: "(100 reviews)" ,
    seller: "Converse",
     quantity: 1, 
     category: "shoes", 
     rate: 4.7
     ),
     product(
      title: "women shoes", 
      description: " Elevate your style with Yoho's Classic Sneakers for Women. Step out in style and comfort with these fashionable kicks."
      "Stylish PU synthetic and TPU upper."
      "Anti-skid dual-colour sole for stability.",
      image: "images/womenshoes.png", price: 350, 
      colors: [
        Colors.black,
        Colors.amber,
        Colors.purple
      ], review: "(800 reviews)", 
      seller: "Reebok", 
      quantity: 1, 
      category: "shoes", 
      rate: 4.2
      ),
           product(title: "Vans OldSkool",
       description: "Style Name:-Sneaker"
       "Brand Color:-Black-Matte Silver"
       "Care Instructions:-Wipe with a clean dry cloth",
       image: "images/vansoldskool.png",
        price: 500, 
        colors: [
          Colors.blueAccent,
          Colors.grey,
          Colors.yellow
        ], 
        review: "(20reviews)",
         seller: "Vans OldSkool",
          quantity: 1, 
          category: "shoes",
           rate: 4.8),
           product(title: "New Balance 990",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/NewBalance990.png",
        price: 500, 
        colors: [
          Colors.green,
          Colors.pink,
          Colors.red
        ], 
        review: "(20reviews)",
         seller: "New Balance",
          quantity: 1, 
          category: "shoes",
           rate: 4.4),
           product(title: "Jordan",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/AirJordan.png",
        price: 500, 
        colors: [
          Colors.deepOrangeAccent,
          Colors.green,
          Colors.black
        ], 
        review: "(20reviews)",
         seller: "Jordan",
          quantity: 1, 
          category: "shoes",
           rate: 5.0)

];
final List<product> beauty=[
product(title: "Face Care",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/facecare.png",
        price: 500, 
        colors: [
          Colors.blueAccent,
          Colors.orange,
          Colors.green
        ], 
        review: "(20reviews)",
         seller: "adidas",
          quantity: 1, 
          category: "beauty",
           rate: 5.0),
           product(title: "perfume",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/perfume.png",
        price: 500, 
        colors: [
          Colors.purple,
          Colors.pink,
          Colors.red
        ], 
        review: "(20reviews)",
         seller: "envy",
          quantity: 1, 
          category: "beauty",
           rate: 5.0),


];
final List<product> womenfashion=[
            product(title: "Kurti",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/tokyo.png",
        price: 500, 
        colors: [
          Colors.grey,
          Colors.red,
          Colors.black
        ], 
        review: "(20reviews)",
         seller: "adidas",
          quantity: 1, 
          category: "fashion",
           rate: 5.0),
            product(title: "pants",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/berlin.png",
        price: 500, 
        colors: [
          Colors.deepPurpleAccent,
          Colors.lightBlue,
          Colors.purpleAccent
        ], 
        review: "(20reviews)",
         seller: "adidas",
          quantity: 1, 
          category: "fashion",
           rate: 5.0),
           product(title: "Tshirt",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/denver.png",
        price: 500, 
        colors: [
          Colors.yellow,
          Colors.orange,
          Colors.green
        ], 
        review: "(20reviews)",
         seller: "adidas",
          quantity: 1, 
          category: "fashion",
           rate: 5.0),
            product(title: "Lehenga",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/oslo.png",
        price: 500, 
        colors: [
          Colors.blueAccent,
          Colors.black,
          Colors.green
        ], 
        review: "(20reviews)",
         seller: "adidas",
          quantity: 1, 
          category: "fashion",
           rate: 5.0),
           
           

];
final List<product> jewelry=[
    product(title: "Ring",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/naruto.png",
        price: 500, 
        colors: [
          Colors.blueAccent,
          Colors.orange,
          Colors.green
        ], 
        review: "(20reviews)",
         seller: "adidas",
          quantity: 1, 
          category: "jewellry",
           rate: 5.0),
             product(title: "Necklace",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/sasuke.png",
        price: 500, 
        colors: [
          Colors.black,
          Colors.blue,
          Colors.yellowAccent
        ], 
        review: "(20reviews)",
         seller: "adidas",
          quantity: 1, 
          category: "jewellry",
           rate: 5.0),
             product(title: "bracelet",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/hashirama.png",
        price: 500, 
        colors: [
          Colors.blueAccent,
          Colors.orange,
          Colors.purple
        ], 
        review: "(20reviews)",
         seller: "adidas",
          quantity: 1, 
          category: "jewellry",
           rate: 5.0),
             product(title: "Earring",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/minato.png",
        price: 500, 
        colors: [
          Colors.red,
          Colors.lightGreenAccent,
          Colors.green
        ], 
        review: "(20reviews)",
         seller: "adidas",
          quantity: 1, 
          category: "jewellry",
           rate: 5.0),
];

final List<product> menfashion=[
   product(title: "Titan Watch",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/itachi.png",
        price: 500, 
        colors: [
          Colors.black,
          Colors.blueGrey,
          Colors.grey
        ], 
        review: "(20reviews)",
         seller: "adidas",
          quantity: 1, 
          category: "men-fashion",
           rate: 5.0),
            product(title: "T-shirt",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/kisame.png",
        price: 500, 
        colors: [
          Colors.lightBlue,
          Colors.orange,
          Colors.pink
        ], 
        review: "(20reviews)",
         seller: "adidas",
          quantity: 1, 
          category: "men-fashion",
           rate: 5.0),
            product(title: "Pants",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/sasori.png",
        price: 500, 
        colors: [
          Colors.black,
          Colors.grey,
          Colors.blueGrey
        ], 
        review: "(20reviews)",
         seller: "adidas",
          quantity: 1, 
          category: "men-fashion",
           rate: 5.0),
            product(title: "Shirt",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/deidara.png",
        price: 500, 
        colors: [
          Colors.black,
          Colors.greenAccent,
          Colors.blue
        ], 
        review: "(20reviews)",
         seller: "adidas",
          quantity: 1, 
          category: "men-fashion",
           rate: 5.0),
            product(title: "Jacket",
       description: "UPF 50+ fabric technology: The fabric of the jacket is treated with a special sunscreen that blocks 98% of harmful UV rays. This helps to protect your skin from sunburn, and skin tanning. \n"
       "Cool rush: The jacket is made from a lightweight, breathable fabric that helps to keep you cool and comfortable. This is especially helpful when you are active or in hot weather. \n"
       "Anti-tan: The jacket also has an anti-tan feature that helps to prevent your skin from tanning. This is helpful if you are trying to avoid getting a tan, or if you have sensitive skin that is prone to tanning.", 
       image: "images/hidan.png",
        price: 500, 
        colors: [
          Colors.black,
          Colors.blue,
          Colors.red
        ], 
        review: "(20reviews)",
         seller: "adidas",
          quantity: 1, 
          category: "men-fashion",
           rate: 5.0),
];

