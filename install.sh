echo 'Copying vim config files to home...'

# TODO: Use paths from env vars
export INSTALL_ROOT_DIR="~"
export INSTALL_VIMRC_PATH="$INSTALL_ROOT_DIR"/.vimrc
export INSTALL_IDEAVIMRC_PATH="$INSTALL_ROOT_DIR"/.ideavimrc
export INSTALL_NVIM_PATH="$INSTALL_ROOT_DIR"/.config/nvim/init.vim


# .vimrc
echo "Copying .vimrc to path \"$INSTALL_VIMRC_PATH\""
if cp .vimrc "$INSTALL_VIMRC_PATH" ; then
  echo '=> Install successful'
else
  echo '=> Install failed!'
fi

# .ideavimrc
echo "Copying .ideavimrc to path \"$INSTALL_IDEAVIMRC_PATH\""
if cp .ideavimrc "$INSTALL_IDEAVIMRC_PATH" ; then
  echo '=> Install successful'
else
  echo '=> Install failed!'
fi

# nvim/init.vim
echo "Copying .config/nvim/init.vim to path \"$INSTALL_NVIM_PATH\""
if cp .config/nvim/init.vim "$INSTALL_NVIM_PATH" ; then
  echo '=> Install successful'
else
  echo '=> Install failed!'
fi

