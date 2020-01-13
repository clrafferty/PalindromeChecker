public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
String otherword = reverse(onlyLettersAndStuff((word)));
word=onlyLettersAndStuff((word));
otherword=otherword.toLowerCase();
word=word.toLowerCase();
return (word.equals(otherword));
}
public String reverse(String str)
{
    String sNew = new String();
for(int i = str.length()-1 ; i>=0 ; i--)
    sNew+=str.charAt(i);
return sNew;
}
public String onlyLettersAndStuff(String sString){
  String fixed = "";
  for (int i = 0 ; i < sString.length() ; i++)
    if (Character.isLetter(sString.charAt(i)))
      fixed += sString.substring(i,i+1);
  return fixed;
}
public String noSpaces(String sWord){
  String words = "";
  for(int i  = 0 ; i <sWord.length(); i++)
    if(sWord.charAt(i)!=' ')
      words+=sWord.substring(i,i+1); 
  return words;
}


