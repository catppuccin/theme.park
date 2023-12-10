.PHONY: all clean

flavours := latte frappe macchiato mocha

all: $(flavours)

$(flavours):
	whiskers template/style.css $@ > "flavors/$@.css"

clean:
	rm -fv flavors/*.css
