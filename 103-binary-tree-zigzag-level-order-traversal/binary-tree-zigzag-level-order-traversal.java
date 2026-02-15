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
    public List<List<Integer>> zigzagLevelOrder(TreeNode root) {
        List<List<Integer>> list = new ArrayList<>();
        if(root == null) return list;
        Queue<TreeNode> q = new LinkedList<>();
        int level = 0;
        q.add(root);
        while(!q.isEmpty()){
            list.add(new ArrayList<>());
            int len = q.size();
            for(int i= 0; i<len; i++){
                TreeNode temp = q.poll();
                if(temp == null) continue;
                if(level%2 == 0) {list.get(level).add(temp.val);}
                else {list.get(level).add(0,temp.val);}

                if(temp.left != null) q.add(temp.left);
                if(temp.right != null) q.add(temp.right);
            }
            level++;
        }
        return list;
    }
}