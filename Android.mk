ifneq ($(filter doubleshot,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif
