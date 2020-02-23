pub fn square(s: u32) -> u64 {
    let two: u64 = 2;
    if s > 0 && s < 65 {
        return two.pow(s - 1);
    } else {
        panic!("Square must be between 1 and 64");
    }
}

pub fn total() -> u64 {
    square(64) - 1 + square(64)
}
