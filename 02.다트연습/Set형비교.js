const dupArr = [1, 2, 3, 1, 2];

const set = new Set(dupArr);

const uniqueArr = [...set];

document.writeln(Array.isArray(uniqueArr));
document.writeln(uniqueArr);