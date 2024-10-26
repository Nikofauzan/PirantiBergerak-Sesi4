import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({super.key});

  @override
  Widget build(BuildContext context) {
    const avatarUrl = 
        'https://media.istockphoto.com/id/1443562748/id/foto/kucing-jahe-lucu.jpg?s=612x612&w=0&k=20&c=g--RaRzUgk83osyJGx88ZtoChTk3VzP8n86EQHvc7Ko=';
    const postImageUrl = 
        'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwyMDg0MDZ8MHwxfGFsbHwxfHx8fHx8fHwxNjA4NzU3MzA0&ixlib=rb-1.2.1&q=80&w=400';
    const caption = 'ngga tau sih.';

    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white, // Warna latar belakang
        borderRadius: BorderRadius.circular(8.0), // Menambahkan sudut membulat
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header dengan avatar dan username
          ListTile(
            contentPadding: const EdgeInsets.all(8.0),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(avatarUrl),
            ),
            title: const Text(
              'Okins',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('2 hours ago'),
            trailing: IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {
                // Tindakan untuk menu lebih
              },
            ),
          ),
          // Gambar postingan
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              postImageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
            ),
          ),
          const SizedBox(height: 8.0),
          // Menampilkan caption dengan judul di sebelahnya
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Text(
                  'Okins', // Judul di sini
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8.0), // Spasi antara judul dan caption
                Expanded(
                  child: Text(
                    caption,
                    style: const TextStyle(fontSize: 14.0),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          // Tombol interaksi dengan ikon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.favorite), // Ikon like
                      onPressed: () {
                        // Logika untuk like
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.comment), // Ikon comment
                      onPressed: () {
                        // Logika untuk comment
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.share), // Ikon share
                      onPressed: () {
                        // Logika untuk share
                      },
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.bookmark_border), // Ikon favorit
                  onPressed: () {
                    // Logika untuk favorit
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
