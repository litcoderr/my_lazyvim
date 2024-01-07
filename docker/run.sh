docker run -it --rm \
	-v "$(pwd)":/$(basename "$(pwd)") \
	tch-rs-nvim
