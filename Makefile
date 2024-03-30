.PHONY: test repl build deps assets assets_watch

test:
	ros run -e '(progn (ql:quickload :cl-braces.ice) (asdf:test-system :cl-braces.ice))' -q

server:
	APP_ENV=development ros exec clackup --server :hunchentoot --port 8080 lib/web/clackup.lisp

repl:
	ros run -e '(ql:quickload :cl-braces.ice)'

build:
	ros run -e '(asdf:make :cl-braces.ice)'

deps:
	ros run -e '(ql:quickload :cl-braces.ice)' -q

assets:
	cd public/assets && yarn install && npx tailwindcss -i ./input.css -o ./app.css

assets_watch:
	cd public/assets && yarn install && npx tailwindcss -i ./input.css -o ./app.css --watch
