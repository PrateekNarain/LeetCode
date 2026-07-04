public class Solution {
    public bool IsPalindrome(int x) {
        if(x<0) return false;
        int y = 0;
        int copy = x;
        while (x>0){
            y = y*10 + x%10;
            x /= 10; 
        }
        if(y==copy) return true;
        else return false;
    }
}