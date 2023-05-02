// Arrays are denoted by [N]T, where N is the number of elements in the 
// array and T is the type of those elements (i.e., the array’s child type).

// For array literals, N may be replaced by _ to infer the size of the array

const print = @import("std").debug.print;

pub fn main() void {
    const a =[5]u8{ 'h' , 'e', 'l', 'l', 'o'};
    const array = [_]u8{'w','o','r','l','d'};  // Infer size

    print("Length of array {s} is {}\n", .{array, array.len});
    print("Address of array {s} is  {*}\n", .{a, &a});
    print("Value at index 2 of array {s} is {c}\n", .{a, a[2]});
}
