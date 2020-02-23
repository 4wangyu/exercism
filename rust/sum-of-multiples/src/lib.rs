pub fn sum_of_multiples(limit: u32, factors: &[u32]) -> u32 {
    let mut sum = 0;
    for i in 0..limit {
        if is_multiple(i, factors) {
            sum += i;
        }
    }
    sum
}

fn is_multiple(num: u32, factors: &[u32]) -> bool {
    for i in 0..factors.len() {
        if factors[i] != 0 && num % factors[i] == 0 {
            return true;
        }
    }
    return false;
}
