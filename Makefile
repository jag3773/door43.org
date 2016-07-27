stat:
	git branch
	git status -s

build:
	bundle exec jekyll build

install:
	bundle install

serve:
	bundle exec jekyll serve

commit:
	git diff >/tmp/git-diff.out 2>&1
	git commit -a
	git pull --no-edit
	git push

publish:
	git branch
	echo "Hit Ctrl-C if you are not on `develop`"
	sleep 3
	git merge master
	git checkout master
	git merge development
	git push origin master
	echo "Check https://master.door43.org/ in a moment"
