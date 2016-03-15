> topic:keep main

+ ~emohello
- Hello, I'm Al, short for Allison. I'm going to help you manage your addiction. You can contact me any time (24/7) when you feel triggered
^ by your addiction and want to use. I am and will always be 100% confidential and our conversation is encrypted
^ at 256-bit encrpytion so you're safe telling me how you actually feel. First, What should I call you? {topic=name}


< topic

> topic:keep name
+ my name is *1
- Nice to meet you <cap1>! I want to learn a bit about you so I can tailor my experince for you. This will take  2 - 3
^ minutes and you'll only need to get started. Would you like to begin?

+ yes
- Great. Are you and addict?

+ Yes
- Thanks for being honest. Honesty is at the crux of this type of treatment.{topic=addictionTest}

+ alone
- I understand, What how many times per week do you use? {topic=addictionAlone}

+ [in] [a] group
- I understand <pcap1>. How'd you meet these friends?{topic=addictionGroups}

< topic

> topic:keep addictionTest

+ *
- Have you used drugs other than those required for medicinal reasons?

+ (yes|no)
- Can you get through the week without using drugs?

+ (yes|no)
- Can you get through the week without using drugs?


< topic


> topic:keep Alone

+ *
- You are in solo

+ yes
- Okay, How many times do you use per week?

+ no
- I understand, how did you meet your existing group that you use with?{topic=main}

< topic

> topic:keep alone


< topic

> topic:keep addictionGroups
+ *
- You are in groups

< topic
