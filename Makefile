dotfiles=$(wildcard *.dot)
pngfiles=$(subst .dot,.png,$(dotfiles))
default: $(pngfiles)
%.png: %.dot
	dot -Tpng -o $@ $<
