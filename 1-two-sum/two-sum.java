class Solution {
    public int[] twoSum(int[] nums, int target) {
        HashMap<Integer,Integer> map = new HashMap<>();
        int[] ans = new int[2];
        for (int i=0; i<nums.length; i++){
            int x = nums[i];
            int check = target-x;
            if(map.containsKey(check)){
                ans[1] = i;
                ans[0] = map.get(check);
                return ans;
            }
            else{
                map.put(x, i);
            }
        }
        return ans;
    }
}