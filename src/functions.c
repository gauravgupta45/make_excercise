int getHighbits(int decimalNumber)
{
    int highBits = 0;
    while(decimalNumber != 0)
    {
        if(decimalNumber & 1)
            highBits++;

        decimalNumber = decimalNumber >> 1;
    }

    return highBits;
}

int getLowbits(int decimalNumber)
{
    int lowBits = 0;
    while(decimalNumber != 0)
    {
        if(!(decimalNumber & 1))
            lowBits++;

        decimalNumber = decimalNumber >> 1;
    }

    return lowBits;
}
