    // Based on the Speech closeup module by Mazoliin
    enum TextSpeed {
      Instant,
      VeryFast,
      Fast,
      Normal,
      Slow,
      VerySlow
    };
     
    import function Speak(this Character*, String toSay, int loop = 0, TextSpeed = Normal, int timeout = 0, bool append = false, bool hidePortrait=false, bool bgspeech=false);
    import function SpeakBackground(this Character*, String say, int loop = 0, int timeout=40, bool hidePortrait=false);
    import function EndSpeak();