use std::fmt;

#[derive(Debug, PartialEq)]
pub struct Clock(i32);

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{:02}:{:02}", self.0 / 60 % 24, self.0 % 60)
    }
}

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        Clock::new_clean(hours * 60 + minutes)
    }

    fn new_clean(mins: i32) -> Self {
        Clock((mins % 1440 + 1440) % 1440)
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        Clock::new_clean(self.0 + minutes)
    }
}
