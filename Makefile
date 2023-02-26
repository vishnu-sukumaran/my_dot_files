export
HOME_DIR = $(PWD)/../

NVIM_CONFIG_DIR = $(HOME_DIR)/.config/nvim/


# copy to repo
#########################################################################################
copy_nvim_cfg_to_repo:
	cp $(NVIM_CONFIG_DIR)/init.lua nvim/config/
	cp -r $(NVIM_CONFIG_DIR)/lua nvim/config/
	cp $(NVIM_CONFIG_DIR)/README nvim/config/




# copy from repo
#########################################################################################
copy_nvim_cfg_from_repo:
	cp -r nvim/config/ $(NVIM_CONFIG_DIR)/
	cat $(NVIM_CONFIG_DIR)/README
