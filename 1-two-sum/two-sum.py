class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        numHash = {}
        
        for i in range(len(nums)):
            diff = target - nums[i]
            if diff in numHash:
                return [numHash[diff], i]
            numHash[nums[i]] = i
        return []