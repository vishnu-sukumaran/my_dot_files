export
HOME_DIR = $(PWD)/../

NVIM_CONFIG_DIR = $(HOME_DIR)/.config/nvim/
KITTY_CONFIG_DIR = $(HOME_DIR)/.config/kitty/
VIM_CONFIG_DIR = $(HOME_DIR)/
BASH_CONFIG_DIR = $(HOME_DIR)/


# copy to repo
#########################################################################################
copy_all_cfg_to_repo: copy_nvim_cfg_to_repo copy_kitty_cfg_to_repo copy_vim_cfg_to_repo copy_bash_cfg_to_repo

copy_nvim_cfg_to_repo:
	cp $(NVIM_CONFIG_DIR)/init.lua nvim/config/
	cp -r $(NVIM_CONFIG_DIR)/lua nvim/config/
	cp $(NVIM_CONFIG_DIR)/README nvim/config/

copy_kitty_cfg_to_repo:
	cp $(KITTY_CONFIG_DIR)/* kitty/config/

copy_vim_cfg_to_repo:
	cp $(VIM_CONFIG_DIR)/.vimrc vim/config/
	cp $(VIM_CONFIG_DIR)/cscope_maps.vim vim/config/

copy_bash_cfg_to_repo:
	cp $(BASH_CONFIG_DIR)/.bashrc bash/config/



# copy from repo
#########################################################################################
copy_all_cfg_from_repo: copy_nvim_cfg_from_repo copy_kitty_cfg_from_repo copy_vim_cfg_from_repo copy_bash_cfg_from_repo

copy_nvim_cfg_from_repo:
	mkdir -p $(NVIM_CONFIG_DIR)
	cp -r nvim/config/* $(NVIM_CONFIG_DIR)/
	cat $(NVIM_CONFIG_DIR)/README

copy_kitty_cfg_from_repo:
	mkdir -p $(KITTY_CONFIG_DIR)
	cp -r kitty/config/* $(KITTY_CONFIG_DIR)/
	cat $(KITTY_CONFIG_DIR)/README

copy_vim_cfg_from_repo:
	cp vim/config/.vimrc $(VIM_CONFIG_DIR)/

copy_bash_cfg_from_repo:
	cp bash/config/.bashrc $(BASH_CONFIG_DIR)/
