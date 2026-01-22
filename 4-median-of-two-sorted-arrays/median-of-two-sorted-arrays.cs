public class Solution {
    public double FindMedianSortedArrays(int[] nums1, int[] nums2) {
        if(nums1.Length> nums2.Length){
            return FindMedianSortedArrays(nums2, nums1);
        }
        int m = nums1.Length;
        int n = nums2.Length;
        int l =0, r = m;
        while(l<=r){
            int Px = l +(r-l)/2;
            int Py = (m+n+1)/2 - Px;

            int x1 = (Px == 0)? int.MinValue: nums1[Px-1];
            int x2 = (Py == 0)? int.MinValue: nums2[Py-1];

            int x3 = (Px == m)? int.MaxValue: nums1[Px];
            int x4 = (Py == n)? int.MaxValue: nums2[Py];

            if(x1<=x4 && x2 <= x3){
                if((m+n)%2 == 1){
                    return Math.Max(x1, x2);
                }
                else{
                    return (Math.Max(x1,x2)+Math.Min(x3,x4))/2.0;
                }
            }
            else{
                if(x1>x4){
                    r = Px-1;
                }
                else{
                    l = Px+1;
                }
            }
        }
        return -1;
    }
}