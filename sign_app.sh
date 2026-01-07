. env.sh

export DKEL=/opt/st/stm32cubeide_2.0.0/plugins/com.st.stm32cube.ide.mcu.externaltools.cubeprogrammer.linux64_2.2.300.202508131133/tools/bin/ExternalLoader/MX66UW1G45G_STM32N6570-DK.stldr 


BIN=Application/STM32N6570-DK/STM32CubeIDE/Debug/STM32N6570-DK_GettingStarted_ObjectDetection.bin

SIG=Application/STM32N6570-DK/STM32CubeIDE/Debug/STM32N6570-DK_GettingStarted_ObjectDetection-Trusted.bin


if [ -r $SIG ] ; then
    rm -f $SIG
fi

STM32_SigningTool_CLI -align  -bin $BIN -nk -of 0x8000000 -t fsbl -o $SIG -hv 2.3 -dump $SIG

echo -----  `dirname $BIN`
ls -tl `dirname $BIN`

# flash...:

# STM32_Programmer_CLI -c port=SWD mode=HOTPLUG -el $DKEL -hardRst -w Application/STM32N6570-DK/STM32CubeIDE/Debug/STM32N6570-DK_GettingStarted_ObjectDetection-Trusted.bin 0x70100000

# Bootloader:
# STM32_Programmer_CLI -c port=SWD mode=HOTPLUG -el $DKEL -hardRst -w FSBL/build/disco-new_FSBL.elf


# STM32_Programmer_CLI -c port=SWD mode=HOTPLUG -el $DKEL -hardRst -w Appli/build/disco-new_Appli.elf
