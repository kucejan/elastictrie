#ifndef _HEADERS_P4_
#define _HEADERS_P4_

header ethernet_t {
    bit<48> dstAddr;
    bit<48> srcAddr;
    bit<16> etherType;
}

header ipv4_t {
    bit<4>  version;
    bit<4>  ihl;
    bit<8>  diffserv;
    bit<16> totalLen;
    bit<16> identification;
    bit<3>  flags;
    bit<13> fragOffset;
    bit<8>  ttl;
    bit<8>  protocol;
    bit<16> hdrChecksum;
    bit<32> srcAddr;
    bit<32> dstAddr;
}

struct headers {
    @name("ethernet")
    ethernet_t ethernet;
    @name("ipv4")
    ipv4_t ipv4;
}

#endif /* _HEADERS_P4_ */
