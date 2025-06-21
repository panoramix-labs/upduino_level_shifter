YOSYS = $(OSS_CAD_SUITE)/bin/yosys
NEXTPNR = $(OSS_CAD_SUITE)/bin/nextpnr-ice40
ICEPACK = $(OSS_CAD_SUITE)/bin/icepack
ICEPROG = $(OSS_CAD_SUITE)/bin/iceprog

RTL = top.sv

all: gateware.bin

clean:
	$(RM) *.json *.asc *.bin

flash: gateware.bin
	$(ICEPROG) gateware.bin

gateware.bin: $(RTL)
	$(YOSYS) -q -p "read_verilog -sv $(RTL); synth_ice40 -top top -json $*.json"
	$(NEXTPNR) -q --randomize-seed --up5k --package sg48 --pcf ice40.pcf --json $*.json --asc $*.asc
	$(ICEPACK) $*.asc $@

.SUFFIXES: .v .sv .asc .bin
