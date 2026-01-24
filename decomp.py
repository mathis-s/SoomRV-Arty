

def decomp(amount, coins):
    s = 0

    for c in reversed(coins):
        if c > amount: break
        if c == amount: s += 1
        if c < amount:
            s += decomp(amount - c, coins)

    return s


print(decomp(5, [1, 2, 5]))
