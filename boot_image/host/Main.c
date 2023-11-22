#include "../fastlz/fastlz.h"
#include <stdio.h>
#include <stdint.h>

uint8_t buf[1<<28];
uint8_t out[1<<28];

int main (int argc, char** argv)
{
    if (argc < 3) return -1;
    FILE* f = fopen(argv[1], "rb");
    size_t s = fread(buf, 1, sizeof(buf), f);
    fclose(f);
    s = fastlz_compress_level(2, buf, s, out);
    if (s == 0) return -1;

    f = fopen(argv[2], "wb");
    if (s != fwrite(out, 1, s, f)) return -1;

    fclose(f);
    return 0;
}
