$(INSTALLED_RECOVERYIMAGE_TARGET): $(recovery_ramdisk) \
		$(recovery_kernel)
	@echo ----- Making recovery image ------
	
	cd out/target/product/CROSS_LTE; \
	mkdir ramdisk; \
	cd ramdisk; \
	cpio -idmv < ../ramdisk-recovery.cpio; \
	cat res/ui.xml | sed -e "s/Team Win Recovery Project/么么哒 TCL P728M  By 荷花2008/" > res/ui.xml.new; \
	mv res/ui.xml.new res/ui.xml; \
	cat res/ui.xml | sed -e "s/Roboto-Condensed-30/Roboto-Condensed-10/" > res/ui.xml.new; \
	mv res/ui.xml.new res/ui.xml; \
	cd ../../../../../
	
	perl 2.pl -recovery $(recovery_kernel) out/target/product/CROSS_LTE/ramdisk $@
	@echo ----- Made recovery image -------- $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)


$(INSTALLED_BOOTIMAGE_TARGET): $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	perl 2.pl -boot $(recovery_kernel) out/target/product/CROSS_LTE/root $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
