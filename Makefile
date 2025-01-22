VERSION = 1.0.0

.PHONY: update
update:
	git pull origin main
	
.PHONY: sync
sync:
	git pull upstream main
	git push origin main
