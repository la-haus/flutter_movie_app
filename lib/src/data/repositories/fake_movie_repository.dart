import 'package:flutter_movies_app/src/data/mappers/movie_mapper.dart';
import 'package:flutter_movies_app/src/domain/entities/movie.dart';
import 'package:flutter_movies_app/src/domain/repositories/movie_repository.dart';

class FakeMovieRepository implements MovieRepository {
  @override
  Future<List<Movie>> getTrending({int? page, String? language}) async {
    var apiResult = {
      'page': 1,
      'results': [
        {
          'genre_ids': [35, 18],
          'original_language': 'en',
          'poster_path': '/8j12tohv1NBZNmpU93f47sAKBbw.jpg',
          'vote_count': 4166,
          'id': 81356,
          'origin_country': ['GB'],
          'overview':
              'Inexperienced Otis channels his sex therapist mom when he teams up with rebellious Maeve to set up an underground sex therapy clinic at school.',
          'first_air_date': '2019-01-11',
          'vote_average': 8.3,
          'original_name': 'Sex Education',
          'name': 'Sex Education',
          'backdrop_path': '/7UKgB00W2zFeNQl42SJ3XkJXtql.jpg',
          'popularity': 884.895,
          'media_type': 'tv'
        },
        {
          'backdrop_path': '/iPlNb8gGfTLqDdOhJBSasH8fSTQ.jpg',
          'genre_ids': [27, 53],
          'original_language': 'en',
          'original_title': 'Candyman',
          'poster_path': '/dqoshZPLNsXlC1qtz5n34raUyrE.jpg',
          'video': false,
          'vote_average': 6.5,
          'vote_count': 154,
          'overview':
              'Anthony and his partner move into a loft in the now gentrified Cabrini-Green, and after a chance encounter with an old-timer exposes Anthony to the true story behind Candyman, he unknowingly opens a door to a complex past that unravels his own sanity and unleashes a terrifying wave of violence.',
          'release_date': '2021-08-25',
          'title': 'Candyman',
          'id': 565028,
          'adult': false,
          'popularity': 239.572,
          'media_type': 'movie'
        },
        {
          'original_title': 'Nightbooks',
          'poster_path': '/ysJte1iqN8pFQ470tumnViB1wHP.jpg',
          'video': false,
          'vote_average': 7.0,
          'overview':
              'Alex, a boy obsessed with scary stories, is trapped by a witch in her modern, magical New York City apartment. His original hair-raising tales are the only thing keeping him safe as he desperately tries to find a way out of this twisted place.',
          'release_date': '2021-09-15',
          'id': 739990,
          'adult': false,
          'backdrop_path': '/piz0BFUJ4Bro4BFzxxkNpsGCmOd.jpg',
          'vote_count': 32,
          'genre_ids': [14, 10751],
          'title': 'Nightbooks',
          'original_language': 'en',
          'popularity': 110.27,
          'media_type': 'movie'
        },
        {
          'backdrop_path': '/qw3J9cNeLioOLoR68WX7z79aCdK.jpg',
          'first_air_date': '2021-09-17',
          'genre_ids': [10759, 9648, 18],
          'id': 93405,
          'name': 'Squid Game',
          'origin_country': ['KR'],
          'original_language': 'ko',
          'original_name': '오징어 게임',
          'overview':
              'Hundreds of cash-strapped players accept a strange invitation to compete in children\'s games. Inside, a tempting prize awaits — with deadly high stakes.',
          'poster_path': '/uu4TgyyW259aOZHN0Ew4TEfjnUG.jpg',
          'vote_average': 7.2,
          'vote_count': 5,
          'popularity': 61.967,
          'media_type': 'tv'
        },
        {
          'video': false,
          'title': 'Cry Macho',
          'overview':
              'Mike Milo, a one-time rodeo star and washed-up horse breeder, takes a job from an ex-boss to bring the man\'s young son home from Mexico.',
          'release_date': '2021-09-16',
          'id': 749274,
          'adult': false,
          'backdrop_path': '/g6wufgtycJCP508tlC3crSYFCgC.jpg',
          'genre_ids': [37, 18],
          'vote_count': 15,
          'original_language': 'en',
          'original_title': 'Cry Macho',
          'poster_path': '/nMFWfwer3IYTALLEiNno4SaVMbE.jpg',
          'vote_average': 7.2,
          'popularity': 137.676,
          'media_type': 'movie'
        },
        {
          'backdrop_path': '/gF5nhiyhrDYj2dPfWod6c2zHW2u.jpg',
          'genre_ids': [80, 53],
          'id': 637534,
          'original_language': 'fr',
          'original_title': 'BAC Nord',
          'poster_path': '/r2NnRp4mi4G3e0x9zINQIcnGNd8.jpg',
          'video': false,
          'vote_average': 8.1,
          'overview':
              'A police brigade working in the dangerous northern neighborhoods of Marseille, where the level of crime is higher than anywhere else in France.',
          'release_date': '2021-08-18',
          'vote_count': 189,
          'title': 'The Stronghold',
          'adult': false,
          'popularity': 70.867,
          'media_type': 'movie'
        },
        {
          'backdrop_path': '/iTgM25ftE7YtFgZwUZupVp8A61S.jpg',
          'genre_ids': [9648, 53, 27],
          'original_language': 'en',
          'original_title': 'Old',
          'poster_path': '/cGLL4SY6jFjjUZkz2eFxgtCtGgK.jpg',
          'video': false,
          'vote_average': 6.4,
          'vote_count': 537,
          'overview':
              'A group of families on a tropical holiday discover that the secluded beach where they are staying is somehow causing them to age rapidly – reducing their entire lives into a single day.',
          'release_date': '2021-07-21',
          'id': 631843,
          'title': 'Old',
          'adult': false,
          'popularity': 600.719,
          'media_type': 'movie'
        },
        {
          'release_date': '2021-08-31',
          'adult': false,
          'backdrop_path': '/f4HdheJwLMaLgG466Cp4gJTmwQL.jpg',
          'genre_ids': [28, 53, 27],
          'vote_count': 33,
          'id': 523638,
          'original_title': 'Prisoners of the Ghostland',
          'poster_path': '/j5HRzcvN1QXZLvwfc3NLxX8XQJY.jpg',
          'title': 'Prisoners of the Ghostland',
          'video': false,
          'vote_average': 5.8,
          'original_language': 'en',
          'overview':
              'In the treacherous frontier city of Samurai Town, a ruthless bank robber is sprung from jail by wealthy warlord The Governor, whose adopted granddaughter Bernice has gone missing. The Governor offers the prisoner his freedom in exchange for retrieving the runaway. Strapped into a leather suit that will self-destruct within five days, the bandit sets off on a journey to find the young woman—and his own path to redemption.',
          'popularity': 119.434,
          'media_type': 'movie'
        },
        {
          'adult': false,
          'backdrop_path': '/h1coWIfm3mQPS5wLo3odWUzx97u.jpg',
          'genre_ids': [53],
          'id': 680531,
          'original_language': 'fr',
          'original_title': 'Le bal des folles',
          'poster_path': '/4dsInlpfp4QnaOyuVq8axUE0l4A.jpg',
          'title': 'The Mad Women\'s Ball',
          'vote_average': 7.4,
          'overview':
              'Eugenie has a unique gift: she hears and sees the dead. When her family discovers her secret, at the end of the 19th century, she is taken by her father and brother to the neurological clinic at La Pitié Salpêtrière with no possibility of escaping her fate. Her destiny becomes entwined with that of Geneviève, a nurse at the hospital.',
          'release_date': '2021-09-17',
          'vote_count': 8,
          'video': false,
          'popularity': 41.492,
          'media_type': 'movie'
        },
        {
          'adult': false,
          'backdrop_path': '/wC3YxnkF5MvwXXstQF22zLVatYp.jpg',
          'genre_ids': [53],
          'id': 750253,
          'original_language': 'en',
          'original_title': 'My Son',
          'overview':
              'When a man\'s only son goes missing, he travels to the town where his ex-wife lives in search of answers. To play a man whose life is clouded by mystery, McAvoy will not be given a script of dialogue.',
          'poster_path': '/8d4q6bf1PS6OX6F3syWnfBzFZg9.jpg',
          'release_date': '2021-11-03',
          'title': 'My Son',
          'video': false,
          'vote_average': 0.0,
          'vote_count': 0,
          'popularity': 21.045,
          'media_type': 'movie'
        },
        {
          'video': false,
          'vote_average': 6.7,
          'overview':
              'After she\'s irreversibly poisoned, a ruthless criminal operative has less than 24 hours to exact revenge on her enemies and in the process forms an unexpected bond with the daughter of one of her past victims.',
          'release_date': '2021-09-10',
          'vote_count': 301,
          'adult': false,
          'backdrop_path': '/byflnwPMumyvrCW9SfO5Miq3647.jpg',
          'title': 'Kate',
          'genre_ids': [28, 53],
          'id': 597891,
          'original_language': 'en',
          'original_title': 'Kate',
          'poster_path': '/uQWgSRXeYRWCvGIX9LDNBW6XBYD.jpg',
          'popularity': 1170.508,
          'media_type': 'movie'
        },
        {
          'genre_ids': [27, 53, 9648, 80],
          'original_language': 'en',
          'original_title': 'Malignant',
          'poster_path': '/dGv2BWjzwAz6LB8a8JeRIZL8hSz.jpg',
          'video': false,
          'id': 619778,
          'vote_count': 419,
          'overview':
              'Madison is paralyzed by shocking visions of grisly murders, and her torment worsens as she discovers that these waking dreams are in fact terrifying realities with a mysterious tie to her past.',
          'release_date': '2021-09-01',
          'vote_average': 7.3,
          'title': 'Malignant',
          'adult': false,
          'backdrop_path': '/xDnFlNrNUoSKPq4uptnhYmUZNpm.jpg',
          'popularity': 2149.376,
          'media_type': 'movie'
        },
        {
          'adult': false,
          'backdrop_path': '/s362u4IrocsGvIjx3B5zfZhq3bX.jpg',
          'genre_ids': [10402, 18],
          'id': 624899,
          'original_language': 'en',
          'original_title': 'Everybody\'s Talking About Jamie',
          'overview':
              'Jamie New is 16 and doesn’t quite fit in—instead of pursuing a \'real\' career he dreams of becoming a drag queen. Uncertain about his future, Jamie knows one thing for sure: he is going to be a sensation. Supported by his loving mom and his amazing friends, Jamie overcomes prejudice, beats the bullies and steps out of the darkness, into the spotlight.',
          'poster_path': '/ltrPq4UrMIV3NnjdnUZguCsWiOU.jpg',
          'release_date': '2021-09-10',
          'title': 'Everybody\'s Talking About Jamie',
          'video': false,
          'vote_average': 7.0,
          'vote_count': 10,
          'popularity': 20.339,
          'media_type': 'movie'
        },
        {
          'video': false,
          'vote_average': 7.2,
          'overview':
              'Through exclusive interviews and archival footage, this documentary traces an intimate portrait of seven-time Formula 1 champion Michael Schumacher.',
          'release_date': '2021-09-15',
          'adult': false,
          'backdrop_path': '/n0C4rIhCA9grXzq8NN1CNPDiZXL.jpg',
          'vote_count': 53,
          'genre_ids': [99],
          'title': 'Schumacher',
          'original_language': 'en',
          'original_title': 'Schumacher',
          'poster_path': '/ucNYfsbX1Z4tjMSr3waxsHMVjve.jpg',
          'id': 855823,
          'popularity': 74.259,
          'media_type': 'movie'
        },
        {
          'video': false,
          'vote_average': 7.8,
          'overview':
              'Natasha Romanoff, also known as Black Widow, confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises. Pursued by a force that will stop at nothing to bring her down, Natasha must deal with her history as a spy and the broken relationships left in her wake long before she became an Avenger.',
          'release_date': '2021-07-07',
          'adult': false,
          'backdrop_path': '/keIxh0wPr2Ymj0Btjh4gW7JJ89e.jpg',
          'vote_count': 5015,
          'genre_ids': [28, 12, 53, 878],
          'title': 'Black Widow',
          'original_language': 'en',
          'original_title': 'Black Widow',
          'poster_path': '/qAZ0pzat24kLdO3o8ejmbLxyOac.jpg',
          'id': 497698,
          'popularity': 1558.32,
          'media_type': 'movie'
        },
        {
          'video': false,
          'title': 'Dune',
          'overview':
              'Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet\'s exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity\'s greatest potential-only those who can conquer their fear will survive.',
          'release_date': '2021-09-15',
          'id': 438631,
          'adult': false,
          'backdrop_path': '/aknvFyJUQQoZFtmFnYzKi4vGv4J.jpg',
          'genre_ids': [28, 12, 18, 878],
          'vote_count': 238,
          'original_language': 'en',
          'original_title': 'Dune',
          'poster_path': '/cDbNAY0KM84cxXhmj8f0dLWza3t.jpg',
          'vote_average': 8.2,
          'popularity': 387.337,
          'media_type': 'movie'
        },
        {
          'release_date': '2021-08-19',
          'adult': false,
          'backdrop_path': '/8yhWlFcJ8zCqjfCvLy3lWFuawR1.jpg',
          'id': 579047,
          'genre_ids': [878, 53, 9648, 10749],
          'original_language': 'en',
          'original_title': 'Reminiscence',
          'poster_path': '/17siH6wJRQ2jZiqz9BWUhy1UtZ.jpg',
          'vote_count': 585,
          'video': false,
          'vote_average': 7.2,
          'title': 'Reminiscence',
          'overview':
              'Nicolas Bannister, a rugged and solitary veteran living in a near-future Miami flooded by rising seas, is an expert in a dangerous occupation: he offers clients the chance to relive any memory they desire. His life changes when he meets a mysterious young woman named Mae. What begins as a simple matter of lost and found becomes a passionate love affair. But when a different client\'s memories implicate Mae in a series of violent crimes, Bannister must delve through the dark world of the past to uncover the truth about the woman he fell for.',
          'popularity': 242.826,
          'media_type': 'movie'
        },
        {
          'vote_average': 8.3,
          'overview':
              'To carry out the biggest heist in history, a mysterious man called The Professor recruits a band of eight robbers who have a single characteristic: none of them has anything to lose. Five months of seclusion - memorizing every step, every detail, every probability - culminate in eleven days locked up in the National Coinage and Stamp Factory of Spain, surrounded by police forces and with dozens of hostages in their power, to find out whether their suicide wager will lead to everything or nothing.',
          'vote_count': 14375,
          'origin_country': ['ES'],
          'original_name': 'La Casa de Papel',
          'backdrop_path': '/gFZriCkpJYsApPZEF3jhxL4yLzG.jpg',
          'id': 71446,
          'genre_ids': [80, 18],
          'first_air_date': '2017-05-02',
          'original_language': 'es',
          'name': 'Money Heist',
          'poster_path': '/reEMJA1uzscCbkpeRJeTT2bjqUp.jpg',
          'popularity': 1252.355,
          'media_type': 'tv'
        },
        {
          'backdrop_path': '/9IKHTGgJEdos3XtaQOqZQYqTc9q.jpg',
          'first_air_date': '2019-11-01',
          'genre_ids': [18],
          'id': 90282,
          'name': 'The Morning Show',
          'poster_path': '/jKjbVTNKXrC2yFdy1xQxpPOiXjI.jpg',
          'vote_average': 8.0,
          'overview':
              'A behind-the-scenes look at the lives of the people who help America wake up in the morning, exploring the unique challenges faced by the men and women who carry out this daily televised ritual.',
          'vote_count': 261,
          'original_name': 'The Morning Show',
          'origin_country': ['US'],
          'original_language': 'en',
          'popularity': 119.728,
          'media_type': 'tv'
        },
        {
          'release_date': '2021-09-01',
          'id': 566525,
          'backdrop_path': '/uizrxdqIl1a4c9UIhSdPM3o6u0f.jpg',
          'genre_ids': [28, 12, 14],
          'vote_count': 850,
          'original_language': 'en',
          'original_title': 'Shang-Chi and the Legend of the Ten Rings',
          'poster_path': '/xeItgLK9qcafxbd8kYgv7XnMEog.jpg',
          'title': 'Shang-Chi and the Legend of the Ten Rings',
          'video': false,
          'vote_average': 7.9,
          'adult': false,
          'overview':
              'Shang-Chi must confront the past he thought he left behind when he is drawn into the web of the mysterious Ten Rings organization.',
          'popularity': 2251.405,
          'media_type': 'movie'
        }
      ],
      'total_pages': 1000,
      'total_results': 20000
    };

    List<dynamic> results = apiResult['results'] as List<dynamic>;

    return results.map((movie) => MovieMapper.fromJson(movie)).toList();
  }
}
