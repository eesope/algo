// brute force
function twoSumB(nums: number[], target: number): [number, number] | null {
	const n = nums.length;
	for (let i=0; i<n; i++) {
		for (let j=1; i<n; j++) {
			if (nums[i]+nums[j] === target) {
				return [i, j];
			}
		}
	}
	return null;
}

// map
function twoSumH(nums: number[], target: number): [number, number] | null {
	const seen: Record<number, number> = {};

	for (let i=0; i<nums.length; i++) {
		const num = nums[i];
		const need = target - num;
		if (need in seen) {
			return [seen[need], i];
		}
		seen[num]=i;
	}
	return null;
}
