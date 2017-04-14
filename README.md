# Object Oriented Practice

Create three related ruby class models only using Ruby. **No ActiveRecord or SQL**
You can either use your own (get approval from an instructor) or use one of the ideas below. 

For examples we'll be using the Song, Artist and Genre models.

Ideas to use:
  
  - Doctor, Patient, Appointment
  - Character, Show, Actor
  - City, Country, Landmark
  - Teacher, Student, Cohort (don't use Class because it's reserved in Ruby)
 
## Steps to follow

1. Each class should keep track of all instances created by it
2. Each instance of a class should be able to reference instances associated by the other two classes
  * The instance can either keep track of multiple associated instances or one
  * Ex. an instance of Artist can have many Song instances, but an instance of Song might only have one Artist associated
    	* artist.songs, song.artist
3. One class should be responsible for creating an instance of another class and associating each instance
  * Ex. In the real word an Artist should be responsible for creating a song so there should be a method in the Artist class for our artist Jay-Z to create his new track Lucifer
  * Something like jayz.create_song("Lucifer")
  * Now calling jayz.songs should return an array of song instances including the Lucifer song instance 
