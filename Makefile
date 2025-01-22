VERSION = 1.0.0

.PHONY: sync
sync:
	git pull upstream main
	git push origin main
