FROM alpine

LABEL \
        maintainer="bdkech@gmail.com"

RUN \
	# install packages
	apk --no-cache add \
		# needed by neovim :CheckHealth to fetch info
	curl \
		# needed to change uid and gid on running container
	shadow \
		# needed to install apk packages as neovim user on the container
	sudo \
		# needed to switch user
        su-exec \
		# needed for neovim python3 support
	python3 \
		# needed for pipsi
	py3-virtualenv \
		# text editor
        neovim \
        neovim-doc \
	fzf \
	bash \
		# needed by fzf because the default shell does not support fzf
	# install build packages
	&& apk --no-cache add --virtual build-dependencies \
	python3-dev \
	gcc \
	musl-dev \
	git

RUN git clone https://github.com/VundleVim/Vundle.vim.git /root/.config/nvim/bundle/Vundle.vim && \
    nvim +PluginInstall +qall

COPY nvim /root/.config/nvim
RUN nvim +PluginInstall +qall

