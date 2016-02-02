var largest = 1;
var number = 600851475143 ;
var lock;
var i = 2;
while(i != 1000000){
    i = 2;
    lock = false;
    while (i < 1000000 && lock === false){
        if (number % i === 0){
            number = number / i;
            if (largest < i){
                largest = i;
                lock = true;
            }
        }
        i++;
    }
}

console.log(largest);