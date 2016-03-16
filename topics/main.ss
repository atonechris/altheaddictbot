> topic:keep main

+ ~emohello
- Hello, I'm Al. I'm going to help you manage your addiction. You can contact me any time (24/7) when you feel triggered
^ by your addiction and want to use. I am and will always be 100% confidential and our conversation is encrypted
^ at 256-bit encrpytion so you're safe telling me how you actually feel. First, What should I call you? {topic=name}


< topic

> topic:keep name
+ my name is *1
- Nice to meet you <cap1>! I want to learn a bit about you and your addiction. This will take  2 - 3
^ minutes and you'll only need to get started. Do you consider yourself an addict?

+ yes
- Okay, what're your drug(s) of choice?{topic=drugTypes}

+ no
- Thanks for being honest. Honesty is at the crux of this type of treatment.

< topic

> topic:keep addictionTest

+  * (weed, marijuana, pot, dope, hashish, hash) *
-  How much do you use? {topic=weed}

+ * (opiates, heroine, perscriptions) *
- How often do you use? {topic=opiates}

+  * (alcohol, liquor, beer) *
-  How much do you drink per day? {topic=alcohol}

+  * (cocaine, crack) *
- Can you get through the week without using drugs?

+  * (cocaine, cracks ) *
- Can you get through the week without using drugs?



+ (yes|no)
- Can you get through the week without using drugs?

< topic

> topic:keep drugTypes

+ * I use *
- How much do you typically use per month?





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
