.PHONY: clean

clean:
	find . "(" -name "*.pkg.tar.zst" -o -name "*.gz" -o -name "*.zip" ")" -print0 | xargs -0 rm -f
	find . -mindepth 2 -maxdepth 2 "(" -name src -o -name pkg ")" -print0 | xargs -0 rm -rf
	rm -rf difftance-bin/difftance difftance-bin/LICENSE difftance-git/difftance-git

PACKAGES = difftance-bin difftance-git hgrep-bin tateditor

.PHONY: $(PACKAGES)
$(PACKAGES):
	cd "$@" && makepkg
