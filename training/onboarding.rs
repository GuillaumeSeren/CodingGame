use std::io;

struct Enemy {
    name: String,
    dist: i32,
}

macro_rules! parse_input {
    ($x:expr, $t:ident) => ($x.trim().parse::<$t>().unwrap())
}

fn debugScanInformation(enemys: &Vec<&Enemy>) {
    eprintln!("Debug Scan Data");
    let mut i: i16;
    i = 0;
    for e in enemys.iter() {
        eprintln!("- enemy_{}: {}", i, e.name);
        eprintln!("- dist_{} : {}", i, e.dist);
        i = i + 1;
    }
}

/**
 * CodinGame planet is being attacked by slimy insectoid aliens.
 * <---
 * Hint:To protect the planet, you can implement the pseudo-code provided in the statement, below the player.
 **/
fn main() {

    // game loop
    loop {
        // Vec (list) of enemys
        let mut enemys: Vec<&Enemy> = Vec::new();
        // Enemy 1
        let mut input_line = String::new();
        io::stdin().read_line(&mut input_line).unwrap();
        let enemy_1 = input_line.trim().to_string(); // name of enemy 1
        let mut input_line = String::new();
        io::stdin().read_line(&mut input_line).unwrap();
        let dist_1 = parse_input!(input_line, i32); // distance to enemy 1
        let enemy_a = Enemy { name:  enemy_1, dist: dist_1};
        enemys.push(&enemy_a);
        // Enemy 2
        let mut input_line = String::new();
        io::stdin().read_line(&mut input_line).unwrap();
        let enemy_2 = input_line.trim().to_string(); // name of enemy 2
        let mut input_line = String::new();
        io::stdin().read_line(&mut input_line).unwrap();
        let dist_2 = parse_input!(input_line, i32); // distance to enemy 2
        let enemy_b = Enemy { name:  enemy_2, dist: dist_2};
        enemys.push(&enemy_b);

        debugScanInformation(&enemys);
        // Sort the Vec on the property .dist
        enemys.sort_by_key(|a| a.dist);
        println!("{}", enemys[0].name);
    }
}
