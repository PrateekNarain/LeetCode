/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode() {}
 *     TreeNode(int val) { this.val = val; }
 *     TreeNode(int val, TreeNode left, TreeNode right) {
 *         this.val = val;
 *         this.left = left;
 *         this.right = right;
 *     }
 * }
 */
class Solution {

    public int findpos(int[] in, int start, int end, int element){
        for(int i=start; i<=end; i++){
            if(in[i] == element) return i;
        }
        return -1;
    }
    public TreeNode creation(int[] pre, int[] in, int start, int end, int index){
        if(start>end) return null;

        TreeNode temp = new TreeNode(pre[index]);
        int pos = findpos(in, start, end, pre[index]);
        temp.left = creation(pre, in, start, pos - 1, index+1);
        temp.right = creation(pre, in, pos+1, end, index + (pos-start)+1);
        return temp;
    }
    public TreeNode buildTree(int[] preorder, int[] inorder) {
        return creation(preorder, inorder, 0, preorder.length-1, 0);
    }
}