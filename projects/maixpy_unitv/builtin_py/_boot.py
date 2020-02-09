import os, sys, time

sys.path.append('')
sys.path.append('.')

# chdir to "/sd" or "/flash"
devices = os.listdir("/")
if "sd" in devices:
    os.chdir("/sd")
    sys.path.append('/sd')
else:
    os.chdir("/flash")
sys.path.append('/flash')

print("[MaixPy] init end") # for IDE
for i in range(200):
    time.sleep_ms(1) # wait for key interrupt(for maixpy ide)

# check IDE mode
ide_mode_conf = "/flash/ide_mode.conf"
ide = True
try:
    f = open(ide_mode_conf)
    f.close()
except Exception:
    ide = False

if ide:
    os.remove(ide_mode_conf)
    from machine import UART
    repl = UART.repl_uart()
    repl.init(1500000, 8, None, 1, read_buf_len=2048, ide=True, from_ide=False)
    sys.exit()    

import gc, uos, sys
import machine
from board import board_info
from fpioa_manager import fm
from pye_mp import pye
from Maix import FPIOA, GPIO

banner = '''
 __  __              _____  __   __  _____   __     __
|  \/  |     /\     |_   _| \ \ / / |  __ \  \ \   / /
| \  / |    /  \      | |    \ V /  | |__) |  \ \_/ /
| |\/| |   / /\ \     | |     > <   |  ___/    \   /
| |  | |  / ____ \   _| |_   / . \  | |         | |
|_|  |_| /_/    \_\ |_____| /_/ \_\ |_|         |_|

Unit-V by M5Stack : https://m5stack.com/
Unit-V Wiki       : https://docs.m5stack.com
Co-op by Sipeed   : https://www.sipeed.com
'''

dirList = os.listdir()

if "boot.py" in dirList:
    print(banner)
    with open("boot.py") as f:
        exec(f.read())
    sys.exit()
else:
    if "boot.py" in os.listdir("/flash"):
        print(banner)
        with open("/flash/boot.py") as f:
            exec(f.read())
        sys.exit()

# detect boot.py
boot_py = '''
from machine import UART
from board import board_info
from fpioa_manager import fm
from Maix import GPIO
from modules import ws2812

fm.register(board_info.BUTTON_A, fm.fpioa.GPIO1)
but_a=GPIO(GPIO.GPIO1, GPIO.IN, GPIO.PULL_UP) #PULL_UP is required here!

fm.register(board_info.BUTTON_B, fm.fpioa.GPIO2)
but_b = GPIO(GPIO.GPIO2, GPIO.IN, GPIO.PULL_UP) #PULL_UP is required here!

led_ws2812 = ws2812(board_info.LED_WS2812, 1)

fm.register(board_info.CONNEXT_A, fm.fpioa.UART1_TX, force=True)
fm.register(board_info.CONNEXT_B, fm.fpioa.UART1_RX, force=True)
uart1 = UART(UART.UART1, 115200, 8, 0, 0, timeout=1000, read_buf_len=4096)
'''

f = open("/flash/boot.py", "wb")
f.write(boot_py)
f.close()

print(banner)
with open("/flash/boot.py") as f:
    exec(f.read())

