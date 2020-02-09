fn is_prime(n: u32) -> bool {
    let mut i = 3;
    while i * i <= n {
        if n % i == 0 {
            return false;
        }
        i += 1;
    }
    return true;
}

pub fn nth(n: u32) -> u32 {
    if n == 0 {
        return 2;
    } else {
        let mut cnt = 0;
        let mut candidate = 1;
        while cnt < n {
            candidate += 2;
            if is_prime(candidate) {
                cnt += 1;
            }
        }
        return candidate;
    }
}
