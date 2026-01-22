public class Solution {
    public int MaxArea(int[] height) {
        int total = 0;
        int i =0, j = height.Length - 1;
        while(i<j){
            int curr = 0;
            int high = Math.Min(height[i], height[j]);
            int width = j-i;
            curr = high * width;
            total = Math.Max(curr, total);
            if(height[i] < height[j]) i++;
            else j--;
        }
        return total;
    }
}