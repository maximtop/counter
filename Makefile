start:
	bin/rails server

model:
	bin/rails generate model ${MODEL}

migrate:
	bin/rails db:migrate