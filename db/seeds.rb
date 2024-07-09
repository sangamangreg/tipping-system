# frozen_string_literal: true

Rails.logger.info("Started with adding dump data")
User.create(
  id: 1,
  email: "sangam.angre@gmail.com",
  name: "Sangam Angre",
  site_link: "https://github.com/sangamangreg/tipping-platform",
  image_path: "/users/sangam.jpeg"
)

User.create(
  id: 2,
  email: "sangam.angre+2@gmail.com",
  name: "Scott Alexander",
  site_link: "https://github.com/sangamangreg/tipping-platform",
  image_path: "/users/sangam.jpeg"
)

Category.create(
  id: 1,
  title: "staff pick",
  status: 1,
  user_id: 1
)

Category.create(
  id: 2,
  title: "design",
  status: 1,
  user_id: 1
)

Category.create(
  id: 3,
  title: "3D",
  status: 1,
  user_id: 1
)

Product.create(
  title: "Unsong",
  content: "<p>Aaron Smith-Teller works in a kabbalistic sweatshop near San Francisco, where he and hundreds of other minimum-wage workers try to brute-force the Holy Names of God.<br><br>All around him, the forces of Good and Evil move their pieces into play for the final confrontation. An autistic archangel and his eight-year-old apprentice try to debug the laws of physics. A dark lord in Las Vegas claims to be the reincarnation of a heretical Talmudic rabbi. A magicless Mexican hedge wizard masters the terrifying art of placebomancy. A band of Silicon Valley billionaires charter the world's fastest ship to find God and tell Him exactly what He is doing wrong. The Messiah-King of the American West organizes a military coalition against the Devil.<br><br>Aaron doesn't care about any of this. He and his friends are engaged in something far more important – griping about magical intellectual property law. But when a chance discovery brings them to the attention of the mysterious United Nations Subcommittee On Names of God (UNSONG), they find themselves caught in a web of plots, crusades, and prophecies leading inexorably to the end of the world.</p>",
  category_id: 1,
  user_id: 1,
  price: 4.99,
  currency: "USD",
  image_path: "unsong.png",
  featured_image_path: "unsong.jpeg",
  logo_image_path: "unsong.jpeg",
  props: { length: "225,000 words", format: "EPUB, PDF" },
  status: 1
)

Product.create(
  title: "Unsong 2",
  content: '<p><strong>ABOUT THIS BOOK:</strong></p><blockquote><p>This is a book that teaches you how to find the best restaurants at home and when you travel.</p><p>More than ever, people plan their itineraries based on what they want to eat. The problem is, we’re in the age of too much information. Yelp and Google reviews are confusing and time consuming. How many times have you spent hours reading reviews, just find an “okay” meal?</p><p>Unfortunately, great restaurants get overlooked because the algorithm spits out the same restaurants over and over again. Whether its through reviews, top restaurant lists, or social media - were recommended restaurants all the time. But were never told exactly how to find them.</p><p><strong>This book is designed to teach you just that. How find the best meals of your life.</strong></p><p>It includes 10 chapters and cheat sheets, highlighting different ways to find amazing food. Regional food maps. Resources about immigrant populations and their cuisines. Lists of ingredients and dishes to search. Local language tips to help you find trusted reviews. Holy grail phrases that have the highest likelihood of striking gold.</p><p><br class="ProseMirror-trailingBreak"></p></blockquote><h4><strong>YOURE IN THE RIGHT PLACE IF:</strong></h4><ul><li><p>You’re the planner in your group, who likes doing research before meals or trips.</p></li><li><p>You build your vacation itinerary around food, and want to find the best restaurants.</p></li><li><p>You’re new to a city and want to explore different neighborhoods through food.</p></li><li><p>You’re a foodie parent and want to make date night count, at home or on vacation.<br><br class="ProseMirror-trailingBreak"></p></li></ul><p><strong>MY PROMISE TO YOU IS:</strong></p><ul><li><p>I will always respect the food and history of various cultures, including &amp; outside of mine.</p></li><li><p>I will only provide you information backed by extensive research and/or personal experience.</p></li><li><p>Not only will you find new &amp; exciting restaurants - but you’ll also feel more connected to your home &amp; the world around you.<br><br class="ProseMirror-trailingBreak"></p></li></ul><p><strong>TESTIMONIALS:</strong></p><blockquote><p>"Dreas ability to mix storytelling with culinary dishes is a work of art! Its a treat (hehe, puns) to be on the consuming side of someone who is so passionate about what they do, and just wants to share it with others. Youll come away with a deeper appreciation for food, and the adventures you too can experience if you let your emotions accompany you at the dinner table. <strong>5-stars all around!</strong>" - G.A.</p><p>"You are really bringing depth to this topic and I find both your personal stories<strong> </strong>and <strong>cheat sheets</strong> engaging and insightful! I love how you teach us to find great food experiences through your unique lens, emphasizing <strong>cultural respect</strong> and the <strong>joy of discovery</strong> and <strong>how it can make our travels and place we live in more fun</strong>."&nbsp; - S.S.</p></blockquote><blockquote><p>"The way you weave in your adventures, personality, and experiences throughout makes it feel like Im learning and exploring food right alongside you. Youve made it <strong>effortless to navigate, especially for travelers, by addressing and solving key pain points</strong>. Ill definitely be using these keywords on my next trip." - K.P.</p></blockquote><blockquote><p>"It’s highly informative, thorough, and your personality comes shining through making it an enjoyable read.<strong> I’m blown away by the scale of research (hello maps, immigrant communities, local language cheat sheets!</strong>🤯). Not to mention the nuanced considerations that you guide the reader through. <strong>It demonstrates how much you care about the reader having an exceptional experience. </strong>Just go ahead and take my $!" - R.B.</p></blockquote><blockquote><p>"Before, I would organize Yelp results via "most reviewed" &nbsp;but I definitely wasnt making the most of the other filters and phrases to further narrow down the choices. Its personable, well-written, and full of actionable tips. <strong>But for me, most importantly, it made me think. And possibly reevaluate how I do things.&nbsp; Your book makes me want to do that in terms of food, restaurants, and cultures. I read it twice over now and I think Ill still benefit from reading it again." </strong>- M.W.</p></blockquote><p><br><strong>ABOUT THE AUTHOR:</strong></p><blockquote><p>Im Drea, a Filipino American, occasionally hipster, joyfully awkward, foodie. My blog is <a target="_blank" rel="noopener noreferrer nofollow" href="https://tasteofmytears.com/">tasteofmytears.com</a> because good food makes me cry. Im super passionate about supporting small businesses, learning about new cultures, and connecting with people through food. I have a background in research and has been traveling for food for 14 years. I often get asked for food recommendations, and want to teach people how to find hidden gems of their own. I wrote this book to share my methodology that led me to the best meals of my life. Meals I still think about. After finding amazing spots, I love to share them with my friends. And after reading this book, your friends will be coming to you! =)</p></blockquote><p><br><strong>CHAPTERS:</strong></p><div class="react-renderer node-image"><div style="white-space: normal;"><figure><img src="https://public-files.gumroad.com/7wm5662110ecohqr3yyzjf4wik82" contenteditable="false"></figure></div></div><p><br><br class="ProseMirror-trailingBreak"></p><p><br><br class="ProseMirror-trailingBreak"></p><div class="react-renderer node-image"><div style="white-space: normal;"><figure><img src="https://public-files.gumroad.com/wt5belq43hpnjq3h0songqvahc2e" contenteditable="false"></figure></div></div>',
  category_id: 1,
  user_id: 2,
  price: 9.99,
  currency: "USD",
  image_path: "unsong.png",
  featured_image_path: "unsong.jpeg",
  logo_image_path: "unsong.jpeg",
  props: {
    info: "Three videos and a cheat sheet with easy to follow instructions showing you how to draw a face in only a few hours.",
    "What do I need?": "Pencils, paper, erasers",
    "Difficulty level": "Beginner to Intermediate"
  },
  status: 1
)

Product.create(
  title: "Unsong 3",
  content: "<p>Aaron Smith-Teller works in a kabbalistic sweatshop near San Francisco, where he and hundreds of other minimum-wage workers try to brute-force the Holy Names of God.<br><br>All around him, the forces of Good and Evil move their pieces into play for the final confrontation. An autistic archangel and his eight-year-old apprentice try to debug the laws of physics. A dark lord in Las Vegas claims to be the reincarnation of a heretical Talmudic rabbi. A magicless Mexican hedge wizard masters the terrifying art of placebomancy. A band of Silicon Valley billionaires charter the world's fastest ship to find God and tell Him exactly what He is doing wrong. The Messiah-King of the American West organizes a military coalition against the Devil.<br><br>Aaron doesn't care about any of this. He and his friends are engaged in something far more important – griping about magical intellectual property law. But when a chance discovery brings them to the attention of the mysterious United Nations Subcommittee On Names of God (UNSONG), they find themselves caught in a web of plots, crusades, and prophecies leading inexorably to the end of the world.</p>",
  category_id: 1,
  user_id: 1,
  price: 24.99,
  currency: "USD",
  image_path: "unsong.png",
  featured_image_path: "unsong.jpeg",
  logo_image_path: "unsong.jpeg",
  props: {
    info: "Three videos and a cheat sheet with easy to follow instructions showing you how to draw a face in only a few hours.",
    "What do I need?": "Pencils, paper, erasers",
    "Difficulty level": "Beginner to Intermediate"
  },
  status: 1
)

Review.create(
  content: "I have a 5 year daughter who loves playing she jumps over sofa all day it's very sturdy smooth as well as comfortable loved it, extra pair of cushions were also provided with it it was very easy to install and looks very classy",
  rating: 5,
  product_id: 1,
  user_id: nil
)

Review.create(
  content: nil,
  rating: 3,
  product_id: 1,
  user_id: nil
)

Review.create(
  content: nil,
  rating: 4,
  product_id: 1,
  user_id: nil
)

Review.create(
  content: nil,
  rating: 5,
  product_id: 1,
  user_id: nil
)

Review.create(
  content: "I have a 5 year daughter who loves playing she jumps over sofa all day it's very sturdy smooth as well as comfortable loved it, extra pair of cushions were also provided with it it was very easy to install and looks very classy",
  rating: 1,
  product_id: 2,
  user_id: nil
)

Review.create(
  content: nil,
  rating: 2,
  product_id: 2,
  user_id: nil
)

Review.create(
  content: nil,
  rating: 2,
  product_id: 2,
  user_id: nil
)

Review.create(
  content: nil,
  rating: 5,
  product_id: 2,
  user_id: nil
)

Review.create(
  content: nil,
  rating: 1,
  product_id: 3,
  user_id: nil
)

Review.create(
  content: nil,
  rating: 2,
  product_id: 3,
  user_id: nil
)

Review.create(
  content: nil,
  rating: 2,
  product_id: 3,
  user_id: nil
)

Review.create(
  content: nil,
  rating: 5,
  product_id: 3,
  user_id: nil
)

Review.create(
  content: nil,
  rating: 1,
  product_id: 4,
  user_id: nil
)

Review.create(
  content: nil,
  rating: 2,
  product_id: 4,
  user_id: nil
)

Review.create(
  content: nil,
  rating: 2,
  product_id: 4,
  user_id: nil
)

Review.create(
  content: nil,
  rating: 5,
  product_id: 4,
  user_id: nil
)

Rails.logger.info("Finished with adding dump data")
