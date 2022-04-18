struct Settings
{
  import static void set_skip_speech(bool enable);
  import static bool get_skip_speech();
  
  import static void set_skippy_frames(bool enable);
  import static bool get_skippy_frames();
  
	import static int getMusicVolume();
	import static void setMusicVolume(int volume);
	
	import static int getSoundVolume();
	import static void setSoundVolume(int volume);
	
  import static void set_disable_parallax(bool enable);
  import static bool get_disable_parallax();
	import static void save();
	import static void load();
};