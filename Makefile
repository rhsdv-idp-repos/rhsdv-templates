VERSION = 1.0.0
WORKING_BRANCH = main

# update the local development environment (VSCodium/DevSpaces)
.PHONY: update-local
update-local:
	git pull origin main

# sync the "origin" (GitLab) branch with the "upstream" branch (GitHub)
.PHONY: sync-dev
sync-dev:
	git pull upstream main
	git push origin main

# sync the "upstream" branch (GitHub) with the "origin" branch (GitLab), 
# i.e. make sure changes made in GitLab/DevSpaces are reflected in GitHub.
.PHONY: sync-upstream
sync-upstream:
	git push upstream main