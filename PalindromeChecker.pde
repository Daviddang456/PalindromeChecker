public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(isPalindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean isPalindrome(String sWord){
  int counter = 0;
  sWord = noCapitals(sWord);
  sWord = noSpaces(sWord);
  sWord = onlyLetters(sWord);

  if(sWord.length() % 2 == 0){
    for(int i = 0; i < sWord.length() / 2; i++){
      if(sWord.substring(i, i + 1).equals(sWord.substring(sWord.length() - 1 - i,sWord.length() - i))){
        counter+=1;
      }
    }
  }
  
  if(sWord.length() % 2 == 1){
    for(int i = 0; i < (sWord.length() + 1) / 2; i++){
      if(sWord.substring(i, i + 1).equals(sWord.substring(sWord.length() - 1 - i,sWord.length() - i))){
        counter+=1;
      }
    }
  }
  
  if((sWord.length() % 2 == 0 && counter == sWord.length() / 2) || (sWord.length() % 2 == 1 && counter == (sWord.length() + 1) / 2)){
    return true;
  }else{
    return false;
  }
}

public String onlyLetters(String sString){
  String maker = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)) == true){
      maker = maker + sString.substring(i, i + 1);
    }
  }
  return maker;
}


public String reverse(String sWord){
  String maker = "";
  if(sWord.length() <= 1){
    maker = sWord;
    return maker;
  }else{
    for(int i = sWord.length() - 1; i >= 0; i--){
      maker = maker + sWord.substring(i, 1 + i);
    }
    return maker;
  }
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String maker = "";
  int i;
  for(i = 0; i < sWord.length(); i++){
    if(!sWord.substring(i, i + 1).equals(" ")){
       maker = maker + sWord.substring(i, i + 1);
    }
  }
  return maker;
}
