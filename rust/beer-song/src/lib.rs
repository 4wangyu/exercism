pub fn verse(n: u32) -> String {
    if n == 0 {
        return "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n".to_string();
    } else if n == 1 {
        return "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n".to_string();
    } else if n == 2 {
        return "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n".to_string();
    } else {
        return format!("{n} bottles of beer on the wall, {n} bottles of beer.\nTake one down and pass it around, {m} bottles of beer on the wall.\n", n = n, m = n - 1);
    }
}

pub fn sing(start: u32, end: u32) -> String {
    let mut str = String::new();
    let mut stt = start;
    while stt > end {
        str.push_str(&verse(stt));
        str.push_str("\n");
        stt -= 1;
    }
    str.push_str(&verse(end));
    return str;
}
