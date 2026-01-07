# crypto tests on the stm32n6

this is a cmake-based project configured via cubemx for the STM32N6570-DK board.


## env file

adjust to your cubeide version...

```
export PATH=$PATH:/opt/st/stm32cubeide_2.0.0/plugins/com.st.stm32cube.ide.mcu.externaltools.stlink-gdb-server.linux64_2.2.300.202509021040/tools/bin/
export PATH=$PATH:/opt/st/stm32cubeide_2.0.0/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.13.3.rel1.linux64_1.0.100.202509120712/tools/bin/

export PATH=$PATH:/opt/st/stm32cubeide_2.0.0/plugins/com.st.stm32cube.ide.mcu.externaltools.cubeprogrammer.linux64_2.2.300.202508131133/tools/bin/

# stedgeai:
# for version 1.1.3.4
export PATH=$PATH:/opt/st/STEdgeAI/3.0/Utilities/linux
# for version 1.1.1.4
export PATH=/opt/st/STEdgeAI/2.2/Utilities/linux:$PATH


export CUBEPROG=/opt/st/stm32cubeide_2.0.0/plugins/com.st.stm32cube.ide.mcu.externaltools.cubeprogrammer.linux64_2.2.300.202508131133/tools/bin/

export LOCALCP=/usr/local/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/

export DKEL=/opt/st/stm32cubeide_2.0.0/plugins/com.st.stm32cube.ide.mcu.externaltools.cubeprogrammer.linux64_2.2.300.202508131133/tools/bin/ExternalLoader/MX66UW1G45G_STM32N6570-DK.stldr 
```

## life debugging

boot1 jumper needs to be set to high.

1. build with ram linker settings
2. Start a GDB server connected to the STM32 target:
    ```bash
    ST-LINK_gdbserver -p 61234 -l 1 -d -s -cp <path-to-stm32cubeprogramer-bin-dir> -m 1 -g

    while 1 ; do ST-LINK_gdbserver  -p 61234 -l 1 -d -s -cp $CUBEPROG -m 1 -g ; done

    ```
3. In a separate terminal, launch a GDB session to load the firmware:
    ```bash
    $ arm-none-eabi-gdb Appli/build/disco-new_Appli.elf
    (gdb) target remote :61234
    (gdb) monitor reset
    (gdb) load
    (gdb) continue
    ```
