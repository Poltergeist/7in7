--
-- Created by IntelliJ IDEA.
-- User: sp3c1
-- Date: 06/09/16
-- Time: 23:10
-- To change this template use File | Settings | File Templates.
--


-- EASY
function ends_in_3(num)
    return num % 10 == 3
end

print('threes')

print(ends_in_3(3))
print(ends_in_3(13))
print(ends_in_3(23))
print(ends_in_3(34))
print(ends_in_3(122))


function prime(num)
    local counter = math.floor(num / 2)
    while counter > 1 do
        if counter ~= num and num % counter == 0 then
            return false
        end
        counter = counter - 1
    end
    return true
end
print("PRIMES")
print(prime(5))
print(prime(4))
print(prime(3))
print(prime(2))
print(prime(120))
print(prime(13))

print('first primes with threes')

function printPrimesWithThrees()
    local counter = 1
    local shownPrimes = 0
    while shownPrimes < 3 do
        if prime(counter) and ends_in_3(counter) then
            print(counter)
            shownPrimes = shownPrimes + 1
        end
        counter = counter + 1
    end
end

printPrimesWithThrees()

-- MEDIUM

function for_loop(a, b, f)
    local counter = a
    while counter <= b do
        f(counter)
        counter = counter + 1
    end
end

for_loop(1,5,function(a) print('meah' .. a) end)

-- HARD

function add(a, b)
    return a + b
end

function reduce(max, init, f)
    local counter = 1
    while counter <= max do
        init = f(init, counter);
        counter = counter + 1;
    end
    return init
end

print(reduce(5,0,add))

function factorial(a, b)
    return a * b
end

print(reduce(5,1,factorial))