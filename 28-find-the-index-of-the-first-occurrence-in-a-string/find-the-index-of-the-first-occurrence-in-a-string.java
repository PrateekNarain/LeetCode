class Solution {
    public int strStr(String haystack, String needle) {
        int output = haystack.indexOf(needle);
        if(output >= 0){
            return output;
        }
        else{
            return -1;
        }
    }
}