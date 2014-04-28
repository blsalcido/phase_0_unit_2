# U2.W4: Homework Cheater!


# I worked on this challenge [by myself ].

# 2. Pseudocode

# Input: unedited essay
# Output: edited essay 
# Steps:
# 1. capitalize the significant words of the title
# 2. capitalize first word in title
# 3. use date in essay
# 4. punctuate thesis_statment
# 5. implement pronoun usage properly

# 3. Initial Solution

def essay_writer(title, topic, date, thesis_statment, pronoun)
 
  mod_title = [] 
  title.scan(/\w/)
  downcase_words = %w(and in the of a an)
  mod_title << title.capitalize.split.map{|w| downcase_words.include?(w) ? w : w.capitalize}.join(' ')
   # &&index > 0 
  mod_topic = []
  topic.scan(/\w/)
  mod_topic << topic.capitalize.split.map{|w| downcase_words.include?(w) ? w : w.capitalize}.join(' ')
  mod_topic.unshift("Topic:")
  template_info = [] << mod_title, mod_topic, thesis_statment

end



# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 

# I went down a rabbit-hole on this one. I got overly particular about what I wanted to do and ran into some decision-paralysis. I also had a hard time 
# understanding what was expected of me for the pronoun argument. It would have helped to pair on this and I can definitely make time for that tomorrow.
# I just need some fresh eyes here. It's fun kind of anticipating where this is headed, though. To be continued... 
#
#

