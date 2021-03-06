#ifndef C64_VIC_H
#define C64_VIC_H

enum VIC {
    XS0     = 0xd000,
    YS0     = 0xd001,
    XS1     = 0xd002,
    YS1     = 0xd003,
    XS2     = 0xd004,
    YS2     = 0xd005,
    XS3     = 0xd006,
    YS3     = 0xd007,
    XS4     = 0xd008,
    YS4     = 0xd009,
    XS5     = 0xd00a,
    YS5     = 0xd00b,
    XS6     = 0xd00c,
    YS6     = 0xd00d,
    XS7     = 0xd00e,
    YS7     = 0xd00f,
    MSB_XS  = 0xd010,
    CONTROLV    = 0xd011, // vertical control (and much other stuff),
    LINE    = 0xd012, // raster line,
    XLP     = 0xd013, // light pen coordinates,
    YLP     = 0xd014,
    SACTIVE = 0xd015, // sprites: active,
    CONTROLH    = 0xd016, // horizontal control (and much other stuff),
    SDY     = 0xd017, // sprites: double height,
    RAM     = 0xd018, // RAM pointer,
    IRQ     = 0xd019,
    IRQMASK = 0xd01a,
    SBACK   = 0xd01b, // sprites: background mode,
    SMC     = 0xd01c, // sprites: multi color mode,
    SDX     = 0xd01d, // sprites: double width,
    SS_COLLIDED = 0xd01e, // sprite-sprite collision detect,
    SD_COLLIDED = 0xd01f, // sprite-data collision detect,
    // color registers,
    CBORDER = 0xd020, // border color,
    CBG     = 0xd021, // general background color,
    CBG0    = 0xd021,
    CBG1    = 0xd022, // background color 1 (for EBC and MC text mode),
    CBG2    = 0xd023,// background color 2 (for EBC and MC text mode),
    CBG3    = 0xd024,// background color 3 (for EBC mode),
    SC01    = 0xd025,// sprite color for MC-bitpattern %01,
    SC11    = 0xd026,// sprite color for MC-bitpattern %11,
    CS0     = 0xd027,// sprite colors,
    CS1     = 0xd028,
    CS2     = 0xd029,
    CS3     = 0xd02a,
    CS4     = 0xd02b,
    CS5     = 0xd02c,
    CS6     = 0xd02d,
    CS7     = 0xd02e
}

#endif
