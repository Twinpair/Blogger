var sum = 2;
var oldTerm = 1;
var newTerm = 2;
var i = oldTerm + newTerm;

while (i < 4000000){
    if (i % 2 === 0){
        sum += i;
    }
    oldTerm = newTerm;
    newTerm = i;
    i = oldTerm + newTerm;
}

console.log(sum);