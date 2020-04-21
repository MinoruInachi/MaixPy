# Generated by Kconfiglib (https://github.com/ulfalizer/Kconfiglib)

#
# Toolchain configuration
#
CONFIG_TOOLCHAIN_PATH="/opt/kendryte-toolchain/bin"
CONFIG_TOOLCHAIN_PREFIX="riscv64-unknown-elf-"
# end of Toolchain configuration

#
# Components configuration
#

#
# Board config
#
# CONFIG_BOARD_MAIX is not set
CONFIG_BOARD_M5STICK=y
CONFIG_LCD_DEFAULT_WIDTH=240
CONFIG_LCD_DEFAULT_HEIGHT=135
CONFIG_LCD_DEFAULT_FREQ=40000000
CONFIG_SENSOR_FREQ=12000000
# end of Board config

CONFIG_COMPONENT_DRIVERS_ENABLE=y

#
# Drivers configuration
#

#
# SD card
#
CONFIG_SPI_SD_CARD_FORCE_HIGH_SPEED=y
# end of SD card

#
# HTPA thermal sensor
#
# CONFIG_HTPA_ENABLE is not set
# end of HTPA thermal sensor
# end of Drivers configuration

CONFIG_COMPONENT_KENDRYTE_SDK_ENABLE=y

#
# Kendryte SDK configurations
#
CONFIG_SDK_LOG_LEVEL=5
CONFIG_FREERTOS_ENABLE=y

#
# FreeRTOS configurations
#
CONFIG_STATIC_TASK_CLEAN_UP_ENABLE=y
# CONFIG_FREERTOS_MALLOC_CUSTOM is not set
CONFIG_FREEROTS_MINIMUM_STACK_SIZE=2048
# end of FreeRTOS configurations

CONFIG_MIC_ARRAY_ENABLE=n
# end of Kendryte SDK configurations

CONFIG_COMPONENT_MICROPYTHON_ENABLE=y

#
# Micropython configurations
#
CONFIG_MAIXPY_GC_HEAP_SIZE=0x80000

#
# Modules configurations
#
CONFIG_MAIXPY_IDE_SUPPORT=y
CONFIG_MAIXPY_THREAD_ENABLE=y
CONFIG_MAIXPY_NES_ENABLE=y
CONFIG_MAIXPY_VIDEO_ENABLE=y
# CONFIG_MAIXPY_TOUCH_SCREEN_ENABLE is not set
# CONFIG_MAIXPY_OMV_MINIMUM is not set
CONFIG_MAIXPY_OMV_CONV_YUV_FAST=y
CONFIG_MAIXPY_OMV_DOUBLE_BUFF=y
CONFIG_MAIXPY_MIC_ARRAY_ENABLE=n
# CONFIG_MAIXPY_LVGL_ENABLE is not set
# CONFIG_MAIXPY_LODEPNG_ENABLE is not set
# CONFIG_MAIXPY_HTPA_ENABLE is not set
CONFIG_MICROPYTHON_ULAB_ENALBE=y
CONFIG_MICROPYTHON_KMODEL_V4_SUPPORT=y
# end of Modules configurations

#
# Debug configurations
#
# CONFIG_MAIXPY_K210_UARTHS_DEBUG is not set
# end of Debug configurations

CONFIG_BUILTIN_PY_DIR="${PROJECT_PATH}/builtin_py"
# end of Micropython configurations

#
# Others
#
# CONFIG_COMPONENT_LIB_SIPEED_KPU_SRC_ENABLE is not set
# end of Others

CONFIG_COMPONENT_SPIFFS_ENABLE=y

#
# SPIFFS Configuration
#

#
# SPIFFS Cache Configuration
#
CONFIG_SPIFFS_CACHE=y
CONFIG_SPIFFS_CACHE_WR=y
# CONFIG_SPIFFS_CACHE_STATS is not set
# end of SPIFFS Cache Configuration

CONFIG_SPIFFS_SIZE=0x300000
CONFIG_SPIFFS_START_ADDR=0xD00000
CONFIG_SPIFFS_EREASE_SIZE=0x1000
CONFIG_SPIFFS_LOGICAL_BLOCK_SIZE=0x20000
CONFIG_SPIFFS_LOGICAL_PAGE_SIZE=0x1000
CONFIG_SPIFFS_OBJ_NAME_LEN=128
CONFIG_SPIFFS_USE_MAGIC=y
CONFIG_SPIFFS_USE_MAGIC_LENGTH=y
CONFIG_SPIFFS_META_LENGTH=0

#
# Debug Configuration
#
# CONFIG_SPIFFS_DBG is not set
# CONFIG_SPIFFS_API_DBG is not set
# CONFIG_SPIFFS_GC_DBG is not set
# CONFIG_SPIFFS_CACHE_DBG is not set
# CONFIG_SPIFFS_CHECK_DBG is not set
# end of Debug Configuration
# end of SPIFFS Configuration

CONFIG_COMPONENT_UTILS_ENABLE=y
# end of Components configuration

#
# Others
#
# CONFIG_LIB_NNCASE_SOURCE_CODE_ENABLE is not set
# end of Others
