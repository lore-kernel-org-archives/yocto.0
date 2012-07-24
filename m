Return-Path: <Yi.Zhao@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BA70E004A1
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 02:59:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q6O9xhYs028885
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 24 Jul 2012 02:59:43 -0700 (PDT)
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 24 Jul 2012 02:59:43 -0700
Message-ID: <500E720B.3060801@windriver.com>
Date: Tue, 24 Jul 2012 17:59:39 +0800
From: Yi Zhao <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <CANwz6nwKcy7-TeR3W8MnAQxer-yhO3wzWUjm3nsfhuwNLGSHHg@mail.gmail.com>
	<500B680C.5000908@windriver.com> <500B743B.7060206@intel.com>
	<CADkTA4P=BBm+dceGkdPMH=h4Sbn03kacW5kFRxtSuMhOmiqT8Q@mail.gmail.com>
In-Reply-To: <CADkTA4P=BBm+dceGkdPMH=h4Sbn03kacW5kFRxtSuMhOmiqT8Q@mail.gmail.com>
X-Originating-IP: [128.224.162.218]
Cc: yocto@yoctoproject.org, Edward Vidal <vidal.develone@gmail.com>,
	Saul Wold <saul.wold@intel.com>
Subject: Re: beagleboard not booting yacto1.2.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 24 Jul 2012 09:59:47 -0000
X-Groupsio-MsgNum: 8119
Content-Type: multipart/mixed; boundary="------------040005030800060200060401"

--------------040005030800060200060401
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

For 1.2.1 and 1.3 M2, we only tested on beagleboard C4 since our xM 
didn't arrive at that time. The test results are good and no such errors 
on C4. Our beagleboard xM (revision C1) had arrived a few days ago, so I 
tested it today with 1.3 M2 RC1 (git info: 
eb0cb7e8234f5d2e5623406e9660be91cf52f65e) and also found the similar issues.

My u-boot commands (These commands work good on C4):
# setenv bootcmd 'mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm 
0x80300000'
# setenv bootargs 'console=tty0 console=ttyO2,115200n8 
root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro'
# boot

The system can bootup and login. But the rootfs was mounted as a 
read-only file system. Therefore many services can not startup include X.
###########
root@beagleboard:~# mount
rootfs on / type rootfs (rw)
/dev/root on / type ext3 
(ro,relatime,errors=continue,user_xattr,acl,barrier=0,data=ordered)
devtmpfs on /dev type devtmpfs 
(rw,relatime,size=248232k,nr_inodes=62058,mode=755)
proc on /proc type proc (rw,relatime)
tmpfs on /mnt/.psplash type tmpfs (rw,relatime,size=40k)
sysfs on /sys type sysfs (rw,relatime)
devpts on /dev/pts type devpts (rw,relatime,gid=5,mode=620)
tmpfs on /var/volatile type tmpfs (rw,relatime)
tmpfs on /media/ram type tmpfs (rw,relatime)
root@beagleboard:~#
root@beagleboard:~# touch a
touch: cannot touch `a': Read-only file system
root@beagleboard:~#
root@beagleboard:~# uname -a
Linux beagleboard 3.0.32-yocto-standard #1 Wed Jul 11 14:11:07 PDT 2012 
armv7l GNU/Linux
###########

When I modified the u-boot command line: "setenv bootargs 'console=tty0 
console=ttyO2,115200n8 root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro'" 
to "setenv bootargs 'console=tty0 console=ttyO2,115200n8 
root=/dev/mmcblk0p2 rootwait rootfstype=ext3 rw'" and booted again, then 
the kernel crashed:
##########
VFS: Cannot open root device "mmcblk0p2" or unknown-block(179,2)
Please append a correct "root=" boot option; here are the available 
partitions:
b300 3813376 mmcblk0 driver: mmcblk
b301 72261 mmcblk0p1 00000000-0000-0000-0000-000000000000
b302 3735112 mmcblk0p2 00000000-0000-0000-0000-000000000000
VFS: Unable to mount root fs on unknown-block(179,2)
User configuration error - no valid root filesystem found
Kernel panic - not syncing: Invalid configuration from end user prevents 
continuing
[<c0063d00>] (unwind_backtrace+0x0/0xec) from [<c044baa0>] 
(dump_stack+0x20/0x24)
[<c044baa0>] (dump_stack+0x20/0x24) from [<c044bcb0>] (panic+0x64/0x184)
[<c044bcb0>] (panic+0x64/0x184) from [<c0008eb4>] 
(mount_block_root+0x1e4/0x230)
[<c0008eb4>] (mount_block_root+0x1e4/0x230) from [<c00090e0>] 
(mount_root+0xf8/0x11c)
##########

I attached the 2 detail boot logs.



On 2012年07月22日 11:46, Bruce Ashfield wrote:
> On Sat, Jul 21, 2012 at 11:32 PM, Saul Wold <saul.wold@intel.com> wrote:
>> On 07/21/2012 07:40 PM, Bruce Ashfield wrote:
>>> On 12-07-21 11:58 AM, Edward Vidal wrote:
>>>> hello,
>>>>
>>>> verifing that this is ver poky-1.2.1
>>>> The post by Elizabeth Flanagan Wed Jul 18 14:20:41 PDT 2012
>>>> Yocto 1.2.1 Released
>>>> Flanagan, Elizabeth elizabeth.flanagan at intel.com <http://intel.com>
>>>> Commit Information:
>>>> Tree/Branch: denzil
>>>> Commit id: 73cdebf60df225ee10f2eb215935be3b61e1b831
>>>> git clone -b denzil git://git.yoctoproject.org/poky.git
>>>> <http://git.yoctoproject.org/poky.git>
>>>> cd poky
>>>> git log
>>>> commit 73cdebf60df225ee10f2eb215935be3b61e1b831
>>>> I tried the default kernel 3.0 this would get a kernel panic could not
>>>> mount the mmc
>>>>
>>>> Modified the file meta-yocto/conf/machine/beagleboard.conf
>>>>
>>>> PREFERRED_VERSION_linux-yocto ?= "3.0%" -->
>>>> PREFERRED_VERSION_linux-yocto ?= "3.4%"
>>>> In this version there is no
>>>> /home/vidal/poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
>>>> as
>>>> in version poky-1.2.0
>>>> so the kernel was Image Name: Linux-3.2.9-yocto-standard
>>>> git status
>>>> # On branch denzil
>>>> # Changes not staged for commit:
>>>> # (use "git add <file>..." to update what will be committed)
>>>> # (use "git checkout -- <file>..." to discard changes in working
>>>> directory)
>>>> #
>>>> # modified: meta-yocto/conf/machine/beagleboard.conf
>>>> #
>>>> # Untracked files:
>>>> # (use "git add <file>..." to include in what will be committed)
>>>> #
>>>> # build/
>>>> no changes added to commit (use "git add" and/or "git commit -a")
>>>>
>>>> -rw-r--r--. 1 vidal users 57409536 Jul 20 16:29
>>>> core-image-sato-beagleboard-20120720200156.rootfs.jffs2
>>>> -rw-r--r--. 1 vidal users 42607308 Jul 20 16:28
>>>> core-image-sato-beagleboard-20120720200156.rootfs.tar.bz2
>>>> -rw-r--r--. 1 vidal users 57409536 Jul 21 08:06
>>>> core-image-sato-beagleboard-20120721135125.rootfs.jffs2
>>>> -rw-r--r--. 1 vidal users 42612264 Jul 21 08:05
>>>> core-image-sato-beagleboard-20120721135125.rootfs.tar.bz2
>>>> lrwxrwxrwx. 1 vidal users 55 Jul 21 08:06
>>>> core-image-sato-beagleboard.jffs2 ->
>>>> core-image-sato-beagleboard-20120721135125.rootfs.jffs2
>>>> lrwxrwxrwx. 1 vidal users 57 Jul 21 08:05
>>>> core-image-sato-beagleboard.tar.bz2 ->
>>>> core-image-sato-beagleboard-20120721135125.rootfs.tar.bz2
>>>> -rw-r--r--. 1 vidal users 205521920 Jul 20 18:50
>>>> core-image-sato-qemuarm-20120720223121.rootfs.ext3
>>>> -rw-r--r--. 1 vidal users 37671422 Jul 20 18:50
>>>> core-image-sato-qemuarm-20120720223121.rootfs.tar.bz2
>>>> lrwxrwxrwx. 1 vidal users 50 Jul 20 18:50 core-image-sato-qemuarm.ext3
>>>> -> core-image-sato-qemuarm-20120720223121.rootfs.ext3
>>>> lrwxrwxrwx. 1 vidal users 53 Jul 20 18:50
>>>> core-image-sato-qemuarm.tar.bz2 ->
>>>> core-image-sato-qemuarm-20120720223121.rootfs.tar.bz2
>>>> lrwxrwxrwx. 1 vidal users 70 Jul 20 16:04 MLO-beagleboard ->
>>>> MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
>>>> -rwxr-xr-x. 1 vidal users 22388 Jul 20 16:04
>>>> MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
>>>> -rw-r--r--. 1 vidal users 33114370 Jul 20 18:26
>>>> modules-3.2.18-yocto-standard-r1-qemuarm.tgz
>>>> -rw-r--r--. 1 vidal users 35180410 Jul 20 16:04
>>>> modules-3.2.9-yocto-standard-r1-beagleboard.tgz
>>>> -rw-r--r--. 1 vidal users 294 Jul 21 07:54
>>>> README_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt
>>>> lrwxrwxrwx. 1 vidal users 81 Jul 21 07:54 u-boot-beagleboard.bin ->
>>>>
>>>> u-boot-beagleboard-v2011.06+git12+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
>>>>
>>>> -rwxr-xr-x. 1 vidal users 316348 Jul 21 07:54
>>>>
>>>> u-boot-beagleboard-v2011.06+git12+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
>>>>
>>>> -rw-r--r--. 1 vidal users 3375864 Jul 20 16:04
>>>>
>>>> uImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+90e3138c5a2a390dd6ddf2ed84fe5a9756d43397-r1-beagleboard-20120720200156.bin
>>>>
>>>> lrwxrwxrwx. 1 vidal users 136 Jul 20 16:04 uImage-beagleboard.bin ->
>>>>
>>>> uImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+90e3138c5a2a390dd6ddf2ed84fe5a9756d43397-r1-beagleboard-20120720200156.bin
>>>>
>>>> -rwxr-xr-x. 1 vidal users 22388 Jul 20 16:04
>>>>
>>>> x-load-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0.bin.ift
>>>>
>>>> lrwxrwxrwx. 1 vidal users 81 Jul 20 16:04 x-load-beagleboard.bin.ift ->
>>>>
>>>> x-load-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0.bin.ift
>>>>
>>>> -rw-r--r--. 1 vidal users 3034248 Jul 20 18:26
>>>>
>>>> zImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+259cff0813417d16baaaaf44b00a9f75103ebfcb-r1-qemuarm-20120720223121.bin
>>>>
>>>> lrwxrwxrwx. 1 vidal users 132 Jul 20 18:26 zImage-qemuarm.bin ->
>>>>
>>>> zImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+259cff0813417d16baaaaf44b00a9f75103ebfcb-r1-qemuarm-20120720223121.bin
>>>>
>>>> cp
>>>> MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
>>>> /run/media/vidal/boot/MLO
>>>> cp
>>>>
>>>> u-boot-beagleboard-v2011.06+git12+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
>>>>
>>>> /run/media/vidal/boot/u-boot.bin
>>>> cp
>>>>
>>>> uImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+90e3138c5a2a390dd6ddf2ed84fe5a9756d43397-r1-beagleboard-20120720200156.bin
>>>>
>>>> /run/media/vidal/boot/uImage
>>>> cp /home/vidal/uEnv.txt /run/media/vidal/boot/
>>>> ls /run/media/vidal/boot/
>>>> MLO u-boot.bin uEnv.txt uImage
>>>>
>>>> cd /run/media/vidal/rootfs/
>>>> tar jxf
>>>>
>>>> /home/vidal/poky/build/tmp/deploy/images/core-image-sato-beagleboard-20120721135125.rootfs.tar.bz2
>>>>
>>>>
>>>> cd ~/
>>>> umount /run/media/vidal/boot
>>>> umount /run/media/vidal/rootfs
>>>> sync
>>>>
>>>> Texas Instruments X-Loader 1.5.0 (Jul 19 2012 - 17:05:29)
>>>> Beagle xM
>>>> Reading boot sector
>>>> Loading u-boot.bin from mmc
>>>>
>>>>
>>>> U-Boot 2011.06 (Jul 19 2012 - 21:25:33)
>>>>
>>>> OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
>>>> OMAP3 Beagle board + LPDDR/NAND
>>>> I2C: ready
>>>> DRAM: 512 MiB
>>>> NAND: 0 MiB
>>>> MMC: OMAP SD/MMC: 0
>>>> *** Warning - readenv() failed, using default environment
>>>>
>>>> In: serial
>>>> Out: serial
>>>> Err: serial
>>>> Beagle unknown 0x02
>>>> No EEPROM on expansion board
>>>> Die ID #158000029ff800000160a7450b02602d
>>>> Hit any key to stop autoboot: 10 9 8 7 6 5 4 3 2 1 0
>>>> SD/MMC found on device 0
>>>> reading uEnv.txt
>>>>
>>>> 130 bytes read
>>>> Importing environment from mmc ...
>>>> reading uImage
>>>>
>>>> 3375856 bytes read
>>>> Booting from mmc ...
>>>> ## Booting kernel from Legacy Image at 82000000 ...
>>>> Image Name: Linux-3.2.9-yocto-standard
>>>> Image Type: ARM Linux Kernel Image (uncompressed)
>>>> Data Size: 3375792 Bytes = 3.2 MiB
>>>> Load Address: 80008000
>>>> Entry Point: 80008000
>>>> Verifying Checksum ... OK
>>>> Loading Kernel Image ... OK
>>>> OK
>>>>
>>>> Starting kernel ...
>>>>
>>>> Uncompressing Linux... done, booting the kernel.
>>>> This ver finds the mmc but does not
>>>> get to login screen on serial port or display
>>>> nothing displayed on beagleboard monitor expection sato display.
>>>> smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1 but
>>>> no IP assigned.
>>>>
>>>> The lines below just keep repeating.
>>>>
>>>> Mouse] on usb-ehci-omap.0-2.5/input0
>>>> usb 1-2.5: USB disconnect, device number 65
>>>> usb 1-2.5: new low-speed USB device number 66 using ehci-omap
>>>> input: PixArt USB Optical Mouse as
>>>> /devices/platform/usbhs-omap.0/ehci-omap.0/us
>>>> b1/1-2/1-2.5/1-2.5:1.0/input/input63
>>>> generic-usb 0003:093A:2510.0040: input: USB HID v1.11 Mouse [PixArt USB
>>>> Optical
>>>> Mouse] on usb-ehci-omap.0-2.5/input0
>>>> usb 1-2.5: USB disconnect, device number 66
>>>> usb 1-2.5: new low-speed USB device number 67 using ehci-omap
>>>> input: PixArt USB Optical Mouse as
>>>> /devices/platform/usbhs-omap.0/ehci-omap.0/us
>>>> b1/1-2/1-2.5/1-2.5:1.0/input/input64
>>>> generic-usb 0003:093A:2510.0041: input: USB HID v1.11 Mouse [PixArt USB
>>>> Optical
>>>> Mouse] on usb-ehci-omap.0-2.5/input0
>>>> usb 1-2.5: USB disconnect, device number 67
>>>> usb 1-2.5: new low-speed USB device number 68 using ehci-omap
>>>> input: PixArt USB Optical Mouse as
>>>> /devices/platform/usbhs-omap.0/ehci-omap.0/us
>>>> b1/1-2/1-2.5/1-2.5:1.0/input/input65
>>>> generic-usb 0003:093A:2510.0042: input: USB HID v1.11 Mouse [PixArt USB
>>>> Optical
>>>> Mouse] on usb-ehci-omap.0-2.5/input0
>>>>
>>>> Is there any other information that I can provide?
>>>
>>> This should be enough .. What we still need is a comment from the QA
>>> folks that are reporting green builds and boots for the beagleboard.
>>>
>> Bruce, I am not sure that the beagle board has officially be updated in
>> meta-yocto, meaning we have not tested this configuration yet.
> Right, I'm bumping it to 3.4 at the moment, but Edward also reported
> the 3.0 kernel
> as not working on his board, on our release branches. So I'm looking to confirm
> that first.
>
>>
>>> Saul: Do you know who the contact for that is ? I've lost track of who
>>> it should be ..
>>>
>> This would most likely be Yi Zhao (yi.zhao@windriver.com)
> Thanks!
>
> Bruce
>
>> Sau!
>>
>>
>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>
>>>> Any help will be appreciated
>>>> Regards
>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>


--------------040005030800060200060401
Content-Type: text/x-log; name="beagleboardxm-boot-ro.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="beagleboardxm-boot-ro.log"

U-Boot 2011.06 (Jul 12 2012 - 06:20:05)

OMAP36XX/37XX-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
OMAP3 Beagle board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0
*** Warning - readenv() failed, using default environment

In:    serial
Out:   serial
Err:   serial
Beagle unknown 0x02
No EEPROM on expansion board
Die ID #11c400229ff80000016830100e014012
Hit any key to stop autoboot:  0 
OMAP3 beagleboard.org # 
OMAP3 beagleboard.org # setenv bootcmd 'mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm 0x80300000' 
OMAP3 beagleboard.org # setenv bootargs 'console=tty0 console=ttyO2,115200n8 root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro' 
OMAP3 beagleboard.org # boot
reading uImage

3042628 bytes read
## Booting kernel from Legacy Image at 80300000 ...
   Image Name:   Linux-3.0.32-yocto-standard
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    3042564 Bytes = 2.9 MiB
   Load Address: 80008000
   Entry Point:  80008000
   Verifying Checksum ... OK
   Loading Kernel Image ... OK
OK

Starting kernel ...

Uncompressing Linux... done, booting the kernel.
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 3.0.32-yocto-standard (pokybuild@autobuilder06) (gcc version 4.7.2 20120615 (prerelease) (GCC) ) #1 Wed Jul 11 14:11:07 PDT 2012
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
CPU: VIPT nonaliasing data cache, VIPT aliasing instruction cache
Machine: OMAP3 Beagle Board
Reserving 14680064 bytes SDRAM for VRAM
Memory policy: ECC disabled, Data cache writeback
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
SRAM: Mapped pa 0x40200000 to va 0xfe400000 size: 0x10000
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz
Reprogramming SDRC clock to 332000000 Hz
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 126464
Kernel command line: console=tty0 console=ttyO2,115200n8 root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro
PID hash table entries: 2048 (order: 1, 8192 bytes)
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
allocated 2097152 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
Memory: 498MB = 498MB total
Memory: 496464k/496464k available, 27824k reserved, 0K highmem
Virtual kernel memory layout:
    vector  : 0xffff0000 - 0xffff1000   (   4 kB)
    fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
    DMA     : 0xffc00000 - 0xffe00000   (   2 MB)
    vmalloc : 0xe0800000 - 0xf8000000   ( 376 MB)
    lowmem  : 0xc0000000 - 0xe0000000   ( 512 MB)
    modules : 0xbf000000 - 0xc0000000   (  16 MB)
      .init : 0xc0008000 - 0xc0058000   ( 320 kB)
      .text : 0xc0058000 - 0xc061ab0c   (5899 kB)
      .data : 0xc061c000 - 0xc0679438   ( 374 kB)
       .bss : 0xc067945c - 0xc06bd044   ( 271 kB)
SLUB: Genslabs=13, HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
NR_IRQS:410
IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 interrupts
Total of 96 interrupts on 1 active controller
omap_hwmod: gpt12_fck: missing clockdomain for gpt12_fck.
OMAP clockevent source: GPTIMER12 at 32768 Hz
sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms
Console: colour dummy device 80x30
console [tty0] enabled
Calibrating delay loop... 509.42 BogoMIPS (lpj=1990656)
pid_max: default: 32768 minimum: 301
Security Framework initialized
Mount-cache hash table entries: 512
Initializing cgroup subsys debug
Initializing cgroup subsys cpuacct
Initializing cgroup subsys memory
Initializing cgroup subsys devices
Initializing cgroup subsys freezer
Initializing cgroup subsys blkio
CPU: Testing write buffer coherency: ok
ftrace: allocating 18007 entries in 53 pages
devtmpfs: initialized
omap_hwmod: _populate_mpu_rt_base found no _mpu_rt_va for l4_core
omap_hwmod: _populate_mpu_rt_base found no _mpu_rt_va for l4_per
omap_hwmod: _populate_mpu_rt_base found no _mpu_rt_va for l4_wkup
omap_hwmod: i2c1: softreset failed (waited 10000 usec)
omap_hwmod: i2c2: softreset failed (waited 10000 usec)
omap_hwmod: i2c3: softreset failed (waited 10000 usec)
print_constraints: dummy: 
NET: Registered protocol family 16
GPMC revision 5.0
omap_device: omap_gpio.0: new worst case activate latency 0: 30517
OMAP GPIO hardware version 2.5
OMAP GPIO hardware version 2.5
OMAP GPIO hardware version 2.5
OMAP GPIO hardware version 2.5
OMAP GPIO hardware version 2.5
OMAP GPIO hardware version 2.5
omap_mux_init: Add partition: #1: core, flags: 0
OMAP3 Beagle Rev: unknown 2
omap_device: omap_uart.0: new worst case activate latency 0: 30517
omap_device: omap_uart.2: new worst case deactivate latency 0: 30517
Found NAND on CS0
Registering NAND on CS0
Unable to get DVI reset GPIO
OMAP DMA hardware revision 5.0
bio: create slab <bio-0> at 0
SCSI subsystem initialized
omap_device: omap2_mcspi.1: new worst case activate latency 0: 30517
omap_device: omap2_mcspi.2: new worst case deactivate latency 0: 30517
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
omap_i2c omap_i2c.1: bus 1 rev4.0 at 2600 kHz
twl4030: PIH (irq 7) chaining IRQs 368..375
twl4030: power (irq 373) chaining IRQs 376..383
twl4030: gpio (irq 368) chaining IRQs 384..401
print_constraints: VUSB1V5: 1500 mV normal standby
print_constraints: VUSB1V8: 1800 mV normal standby
print_constraints: VUSB3V1: 3100 mV normal standby
twl4030_usb twl4030_usb: Initialized TWL4030 USB module
print_constraints: VMMC1: 1850 <--> 3150 mV at 3000 mV normal standby
print_constraints: VDAC: 1800 mV normal standby
print_constraints: VDVI: 1800 mV normal standby
print_constraints: VSIM: 1800 <--> 3000 mV at 1800 mV normal standby
omap_i2c omap_i2c.3: bus 3 rev4.0 at 100 kHz
Advanced Linux Sound Architecture Driver Version 1.0.24.
cfg80211: Calling CRDA to update world regulatory domain
Switching to clocksource 32k_counter
Switched to NOHz mode on CPU #0
musb-hdrc: version 6.0, musb-dma, otg (peripheral+host)
omap_device: omap_i2c.1: new worst case activate latency 0: 30517
omap_device: omap_i2c.1: new worst case deactivate latency 0: 30517
musb-hdrc musb-hdrc: USB OTG mode controller at fa0ab000 using DMA, IRQ 92
NET: Registered protocol family 2
IP route cache hash table entries: 4096 (order: 2, 16384 bytes)
TCP established hash table entries: 16384 (order: 5, 131072 bytes)
TCP bind hash table entries: 16384 (order: 4, 65536 bytes)
TCP: Hash tables configured (established 16384 bind 16384)
TCP reno registered
UDP hash table entries: 256 (order: 0, 4096 bytes)
UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
NET: Registered protocol family 1
RPC: Registered named UNIX socket transport module.
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
VFS: Disk quotas dquot_6.5.2
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
msgmni has been set to 969
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
OMAP DSS rev 2.0
Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq = 72) is a OMAP UART0
omap_uart.1: ttyO1 at MMIO 0x4806c000 (irq = 73) is a OMAP UART1
omap_uart.2: ttyO2 at MMIO 0x49020000 (irq = 74) is a OMAP UART2
console [ttyO2] enabled
omap_uart.3: ttyO3 at MMIO 0x49042000 (irq = 80) is a OMAP UART3
brd: module loaded
omap2-nand driver initializing
No NAND device found.
No NAND device found.
usbcore: registered new interface driver kaweth
pegasus: v0.6.14 (2006/09/27), Pegasus/Pegasus II USB Ethernet driver
usbcore: registered new interface driver pegasus
usbcore: registered new interface driver asix
usbcore: registered new interface driver cdc_ether
usbcore: registered new interface driver dm9601
usbcore: registered new interface driver smsc75xx
usbcore: registered new interface driver smsc95xx
usbcore: registered new interface driver net1080
usbcore: registered new interface driver cdc_subset
usbcore: registered new interface driver zaurus
usbcore: registered new interface driver MOSCHIP usb-ethernet driver
usbcore: registered new interface driver int51x1
cdc_ncm: 04-Aug-2011
usbcore: registered new interface driver cdc_ncm
console [netcon0] enabled
netconsole: network logging started
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
_regulator_get: ehci-omap.0 supply hsusb0 not found, using dummy regulator
_regulator_get: ehci-omap.0 supply hsusb1 not found, using dummy regulator
ehci-omap ehci-omap.0: OMAP-EHCI Host Controller
ehci-omap ehci-omap.0: new USB bus registered, assigned bus number 1
ehci-omap ehci-omap.0: irq 77, io mem 0x48064800
ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 3 ports detected
Initializing USB Mass Storage driver...
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
mousedev: PS/2 mouse device common for all mice
twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0
omap_device: omap_wdt.-1: new worst case activate latency 0: 30517
OMAP Watchdog Timer Rev 0x31: initial timeout 60 sec
cpuidle: using governor ladder
cpuidle: using governor menu
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
OMAP3 Beagle/Devkit8000 SoC init
asoc: twl4030-hifi <-> omap-mcbsp-dai.1 mapping ok
ALSA device list:
  #0: omap3beagle
TCP cubic registered
NET: Registered protocol family 17
Registering the dns_resolver key type
VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3
ThumbEE CPU extension supported.
sr_init: No PMIC hook to init smartreflex
smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initialized
smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initialized
SmartReflex Class3 initialized
clock: disabling unused clocks to save power
registered taskstats version 1
Console: switching to colour frame buffer device 80x30
omapdss DPI: Could not find exact pixel clock. Requested 23500 kHz, got 24000 kHz
regulator_init_complete: VDAC: incomplete constraints, leaving on
twl_rtc twl_rtc: setting system clock to 2012-07-12 13:45:35 UTC (1342100735)
Waiting for root device /dev/mmcblk0p2...
mmc0: new SDHC card at address 1234
mmcblk0: mmc0:1234 SA04G 3.63 GiB (ro)
 mmcblk0: p1 p2
EXT3-fs: barriers not enabled
kjournald starting.  Commit interval 5 seconds
EXT3-fs (mmcblk0p2): mounted filesystem with ordered data mode
VFS: Mounted root (ext3 filesystem) readonly on device 179:2.
devtmpfs: mounted
Freeing init memory: 320K
INIT: version 2.88 booting
Starting udev
udev[59]: starting version 164
omap_device: omap_i2c.1: new worst case deactivate latency 0: 91552
Starting Bootlog daemon: bootlogd.
mount: you must specify the filesystem type
/etc/rcS.d/S37populate-volatile.sh: line 40: /etc/volatile.cache.build: Read-only file system
/etc/rcS.d/S37populate-volatile.sh: line 40: /etc/volatile.cache.build: Read-only file system
/etc/rcS.d/S37populate-volatile.sh: line 40: /etc/volatile.cache.build: Read-only file system
/etc/rcS.d/S37populate-volatile.sh: line 40: /etc/volatile.cache.build: Read-only file system
/etc/rcS.d/S37populate-volatile.sh: line 40: /etc/volatile.cache.build: Read-only file system
/etc/rcS.d/S37populate-volatile.sh: line 40: /etc/volatile.cache.build: Read-only file system
/etc/rcS.d/S37populate-volatile.sh: line 25: /etc/volatile.cache.build: Read-only file system
/etc/rcS.d/S37populate-volatile.sh: line 25: /etc/volatile.cache.build: Read-only file system
/etc/rcS.d/S37populate-volatile.sh: line 52: /etc/volatile.cache.build: Read-only file system
/etc/rcS.d/S37populate-volatile.sh: line 25: /etc/volatile.cache.build: Read-only file system
ln: failed to create symbolic link `/etc/resolv.conf': Read-only file system
/etc/rcS.d/S37populate-volatile.sh: line 25: /etc/volatile.cache.build: Read-only file system
/etc/rcS.d/S37populate-volatile.sh: line 40: /etc/volatile.cache.build: Read-only file system
/etc/rcS.d/S37populate-volatile.sh: line 40: /etc/volatile.cache.build: Read-only file system
/etc/rcS.d/S37populate-volatile.sh: line 40: /etc/volatile.cache.build: Read-only file system
ALSA: Restoring mixer settings...
Configuring network interfaces... Found hardware: "omap3beagle" "" "" "" ""
Hardware is initialized using a generic method
ifconfig: SIOCGIFFLAGS: No such device
ifconfig: SIOCGIFFLAGS: No such device
Starting portmap daemon...
net.ipv4.conf.default.rp_filter = 1
net.ipv4.conf.all.rp_filter = 1
rm: cannot remove `/tmp': Read-only file system
ln: failed to create symbolic link `/tmp/tmp': Read-only file system
Running postinst /etc/rpm-postinsts/100...
rm: cannot remove `/etc/rpm-postinsts/100': Read-only file system
Running postinst /etc/rpm-postinsts/101...
/usr/sbin/update-modules: line 102: /etc/modules.conf.660: Read-only file system
ERROR: postinst /etc/rpm-postinsts/101 failed.
Running postinst /etc/rpm-postinsts/102...
gtk-update-icon-cache: Failed to open file /usr/share/icons/Sato/.icon-theme.cache : Read-only file system
/etc/rpm-postinsts/102: line 8: /etc/gtk-2.0/gtkrc: Read-only file system
ERROR: postinst /etc/rpm-postinsts/102 failed.
Running postinst /etc/rpm-postinsts/103...

(gconftool-2:673): GConf-WARNING **: None of the resolved addresses are writable; saving configuration settings will not be possible
Error setting value: Unable to store a value at key '/desktop/poky/interface/theme', as the configuration server has no writable databases. There are some common causes of this problem:
 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is miscon
figured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and didn't properly notify the server on reboot that file locks should be dropped. 
If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remo
ve ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and ORBit still has its default configuration that prevents remote CORBA connection
s - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd encountered. There can only be one gconfd per home directory, and it must own 
a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf

(gconftool-2:674): GConf-WARNING **: None of the resolved addresses are writable; saving configuration settings will not be possible
Error setting value: Unable to store a value at key '/desktop/poky/interface/icon_theme', as the configuration server has no writable databases. There are some common causes of this pro
blem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is m
isconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and didn't properly notify the server on reboot that file locks should be drop
ped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all copies of gconfd, and logging back in may help. If you have stale locks,
 remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and ORBit still has its default configuration that prevents remote CORBA conne
ctions - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd encountered. There can only be one gconfd per home directory, and it must
 own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf

(gconftool-2:675): GConf-WARNING **: None of the resolved addresses are writable; saving configuration settings will not be possible
Error setting value: Unable to store a value at key '/desktop/poky/interface/touchscreen', as the configuration server has no writable databases. There are some common causes of this pr
oblem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is 
misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and didn't properly notify the server on reboot that file locks should be dro
pped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all copies of gconfd, and logging back in may help. If you have stale locks
, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and ORBit still has its default configuration that prevents remote CORBA conn
ections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd encountered. There can only be one gconfd per home directory, and it mus
t own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf

(gconftool-2:676): GConf-WARNING **: None of the resolved addresses are writable; saving configuration settings will not be possible
Error setting value: Unable to store a value at key '/desktop/poky/interface/font_name', as the configuration server has no writable databases. There are some common causes of this prob
lem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is mi
sconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and didn't properly notify the server on reboot that file locks should be dropp
ed. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, 
remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and ORBit still has its default configuration that prevents remote CORBA connec
tions - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd encountered. There can only be one gconfd per home directory, and it must 
own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
ERROR: postinst /etc/rpm-postinsts/103 failed.
Running postinst /etc/rpm-postinsts/104...
Failed to create file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache.RRLZGW': Read-only file system
gtk-update-icon-cache: Failed to open file /usr/share/icons/Sato/.icon-theme.cache : Read-only file system
gtk-update-icon-cache: Failed to open file /usr/share/icons/hicolor/.icon-theme.cache : Read-only file system
gtk-update-icon-cache: Failed to open file /usr/share/icons/xcursor-transparent/.icon-theme.cache : Read-only file system
ERROR: postinst /etc/rpm-postinsts/104 failed.
Running postinst /etc/rpm-postinsts/105...
Failed to create file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache.C2FSGW': Read-only file system
gtk-update-icon-cache: Failed to open file /usr/share/icons/hicolor/.icon-theme.cache : Read-only file system
ERROR: postinst /etc/rpm-postinsts/105 failed.
Running postinst /etc/rpm-postinsts/106...
Failed to create file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache.J8KBHW': Read-only file system
gtk-update-icon-cache: Failed to open file /usr/share/icons/hicolor/.icon-theme.cache : Read-only file system
ERROR: postinst /etc/rpm-postinsts/106 failed.
Running postinst /etc/rpm-postinsts/107...
Failed to create file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache.H838GW': Read-only file system
gtk-update-icon-cache: Failed to open file /usr/share/icons/hicolor/.icon-theme.cache : Read-only file system
ERROR: postinst /etc/rpm-postinsts/107 failed.
Running postinst /etc/rpm-postinsts/108...
Failed to create file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache.K865GW': Read-only file system
gtk-update-icon-cache: Failed to open file /usr/share/icons/hicolor/.icon-theme.cache : Read-only file system
ERROR: postinst /etc/rpm-postinsts/108 failed.
Running postinst /etc/rpm-postinsts/109...
/etc/rpm-postinsts/109: line 12: /etc/pango/pango.modules: Read-only file system
ERROR: postinst /etc/rpm-postinsts/109 failed.
Running postinst /etc/rpm-postinsts/110...
adduser: /etc/passwd: Read-only file system
 Adding system startup for /etc/init.d/distcc.
ln: failed to create symbolic link `/etc/rc2.d/S20distcc': Read-only file system
ln: failed to create symbolic link `/etc/rc3.d/S20distcc': Read-only file system
ln: failed to create symbolic link `/etc/rc4.d/S20distcc': Read-only file system
ln: failed to create symbolic link `/etc/rc5.d/S20distcc': Read-only file system
ln: failed to create symbolic link `/etc/rc0.d/K20distcc': Read-only file system
ln: failed to create symbolic link `/etc/rc1.d/K20distcc': Read-only file system
ln: failed to create symbolic link `/etc/rc6.d/K20distcc': Read-only file system
rm: cannot remove `/etc/rpm-postinsts/110': Read-only file system
Running postinst /etc/rpm-postinsts/111...
/etc/rpm-postinsts/111: line 12: /etc/pango/pango.modules: Read-only file system
ERROR: postinst /etc/rpm-postinsts/111 failed.
Running postinst /etc/rpm-postinsts/112...
Failed to create file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache.JMIWGW': Read-only file system
gtk-update-icon-cache: Failed to open file /usr/share/icons/Sato/.icon-theme.cache : Read-only file system
gtk-update-icon-cache: Failed to open file /usr/share/icons/hicolor/.icon-theme.cache : Read-only file system
gtk-update-icon-cache: Failed to open file /usr/share/icons/xcursor-transparent/.icon-theme.cache : Read-only file system
ERROR: postinst /etc/rpm-postinsts/112 failed.
Running postinst /etc/rpm-postinsts/113...
warning: Schema 'org.gnome.crypto.cache' has path '/desktop/gnome/crypto/cache/'.  Paths starting with '/apps/', '/desktop/' or '/system/' are deprecated.
warning: Schema 'org.gnome.crypto.pgp' has path '/desktop/gnome/crypto/pgp/'.  Paths starting with '/apps/', '/desktop/' or '/system/' are deprecated.
Failed to create file '/usr/share/glib-2.0/schemas/gschemas.compiled.6T0AHW': Read-only file system
/sbin/ldconfig: Can't create temporary cache file /etc/ld.so.cache~: Read-only file system
ERROR: postinst /etc/rpm-postinsts/113 failed.
Running postinst /etc/rpm-postinsts/114...
/etc/rpm-postinsts/114: line 8: /etc/gtk-2.0/gtk.immodules: Read-only file system
ERROR: postinst /etc/rpm-postinsts/114 failed.
Running postinst /etc/rpm-postinsts/115...

(gconftool-2:783): GConf-WARNING **: None of the resolved addresses are writable; saving configuration settings will not be possible
WARNING: failed to install schema `/schemas/desktop/poky/interface/theme', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/theme', as the configuration serve
r has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow we 
mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and didn'
t properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all cop
ies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and ORBit
 still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd encu
ntered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/desktop/poky/interface/gtk-color-palette', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/gtk-color-palette', as
 the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or was
n't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client m
achine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logg
ing out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mac
hines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details
 on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.g
conf
WARNING: failed to install schema `/schemas/desktop/poky/interface/font_name', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/font_name', as the configurati
on server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) som
ehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed a
nd didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing
 all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, a
nd ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gco
nfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/desktop/poky/interface/gtk_key_theme', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/gtk_key_theme', as the con
figuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't foun
d 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine c
rashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/desktop/poky/interface/toolbar_style', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/toolbar_style', as the con
figuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't foun
d 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine c
rashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out,
 killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at
 once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on prol
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/desktop/poky/interface/toolbar_icon_size', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/toolbar_icon_size', as
 the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or was
n't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client m
achine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logg
ing out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mac
hines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details
 on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.g
conf
WARNING: failed to install schema `/schemas/desktop/poky/interface/can_change_accels', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/can_change_accels', as
 the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or was
n't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client m
achine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logg
ing out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mac
hines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details
 on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.g
conf
WARNING: failed to install schema `/schemas/desktop/poky/interface/cursor_blink', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/cursor_blink', as the confi
guration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 
2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cra
shed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, i
lling all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at on
ce, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problem
s gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/desktop/poky/interface/cursor_blink_time', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/cursor_blink_time', as
 the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or was
n't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client m
achine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logg
ing out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mac
hines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details
 on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.g
conf
WARNING: failed to install schema `/schemas/desktop/poky/interface/icon_theme', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/icon_theme', as the configura
tion server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) o
mehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed 
and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killin
g all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, 
and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gc
onfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/desktop/poky/interface/file_chooser_backend', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/file_chooser_backen
d', as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases 
or wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS cl
ient machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched)
, logging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from t
wo machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for d
etails on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such a
s ~/.gconf
WARNING: failed to install schema `/schemas/desktop/poky/interface/menus_have_icons', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/menus_have_icons', as t
he configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn'
t found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client mac
hine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggin
g out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machi
nes at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details o
n problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gco
nf
WARNING: failed to install schema `/schemas/desktop/poky/interface/touchscreen', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/touchscreen', as the configu
ration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2)
 somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crash
ed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, kil
ling all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at onc
e, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems
 gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/desktop/poky/interface/gtk-im-preedit-style', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/gtk-im-preedit-styl
e', as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases 
or wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS cl
ient machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched)
, logging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from t
wo machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for d
etails on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such a
s ~/.gconf
WARNING: failed to install schema `/schemas/desktop/poky/interface/gtk-im-status-style', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/gtk-im-status-style'
, as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or
 wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clie
nt machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), 
logging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two
 machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for det
ails on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as 
~/.gconf
WARNING: failed to install schema `/schemas/desktop/poky/interface/gtk-scrolled-window-placement', locale `C': Unable to store a value at key '/schemas/desktop/poky/interface/gtk-scroll
ed-window-placement', as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't cona
in any databases or wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory 
or 4) your NFS client machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the sec
ond was launched), logging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to
 use GConf from two machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the us
er.* syslog for details on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage
 locations such as ~/.gconf
WARNING: failed to install schema `/schemas/desktop/gnome/sound/theme_name', locale `C': Unable to store a value at key '/schemas/desktop/gnome/sound/theme_name', as the configuration s
erver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow
 we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and d
idn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing al 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/desktop/gnome/sound/event_sounds', locale `C': Unable to store a value at key '/schemas/desktop/gnome/sound/event_sounds', as the configurati
on server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) som
ehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed a
nd didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing
 all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, a
nd ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gco
nfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
rm: cannot remove `/etc/rpm-postinsts/115': Read-only file system
Running postinst /etc/rpm-postinsts/116...
Failed to create file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache.L8K8GW': Read-only file system
gtk-update-icon-cache: Failed to open file /usr/share/icons/Sato/.icon-theme.cache : Read-only file system
gtk-update-icon-cache: Failed to open file /usr/share/icons/hicolor/.icon-theme.cache : Read-only file system
gtk-update-icon-cache: Failed to open file /usr/share/icons/xcursor-transparent/.icon-theme.cache : Read-only file system

(gconftool-2:791): GConf-WARNING **: None of the resolved addresses are writable; saving configuration settings will not be possible
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/destination', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/destination', as the con
figuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't foun
d 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine c
rashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out,
 killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at
 once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on prob
lems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `de': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details 
on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gc
onf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `lt': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details 
on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gc
onf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `th': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client mc
hine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggin
g out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machi
nes at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details o
n problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gco
nf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `zh_CN': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', 
as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or w
asn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client
 machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), lo
gging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two m
achines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for detai
ls on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/
.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `sl': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details 
on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gc
onf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `ja': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details 
on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gc
onf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as t
he configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn'
t found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client mac
hine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggig
 out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machin
es at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on
 problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gcon
f
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `el': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details 
on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gc
onf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `cs': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client mc
hine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggin
g out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machi
nes at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details o
n problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gco
nf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `ru': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for detailso
n problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gco
nf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `id': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details 
on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gc
onf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `es': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details 
on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gc
onf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `et': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details 
on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gc
onf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `eu': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details 
on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gc
onf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `sv': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details 
on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gc
onf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `fr': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details 
on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gc
onf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `pa': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client mc
hine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggin
g out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machi
nes at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details o
n problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gco
nf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `hu': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for detailso
n problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gco
nf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `it': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details 
on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gc
onf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `da': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details 
on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gc
onf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_type', locale `uk': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_type', as 
the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn
't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client ma
chine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggi
ng out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mach
ines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details 
on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.go
nf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `de': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `lt': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `th': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `zh_CN': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_forma
t', as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases 
or wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS cl
ient machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched)
, logging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from t
wo machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for d
etails on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such a
s ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `sl': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `ja': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',a
s the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wa
sn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client 
machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), log
ging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two ma
chines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for detail
s on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.
gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `el': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `cs': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `ru': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as /
.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `id': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `es': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `et': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `eu': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `sv': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `fr': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `pa': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `hu': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `it': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `da': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from twom
achines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for detai
ls on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/
.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_format', locale `uk': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_format',
 as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or 
wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS clien
t machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), l
ogging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two 
machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for deta
ils on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~
/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_single', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_single', 
as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or w
asn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client
 machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), lo
gging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two m
achines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for detai
ls on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/
.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/subfolder_custom_format', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/subfolder_cu
stom_format', as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any 
databases or wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) o
ur NFS client machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was 
launched), logging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GCo
nf from two machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* sys
log for details on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locatio
ns such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/importer/warn_delete_unsupported', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/importer/warn_delete_
unsupported', as the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any 
databases or wasn't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) y
our NFS client machine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was
 launched), logging out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GC
onf from two machines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* sy
slog for details on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locati
ons such as ~/.gconf

(gconftool-2:793): GConf-WARNING **: None of the resolved addresses are writable; saving configuration settings will not be possible
WARNING: failed to install schema `/schemas/apps/gthumb/ext/resize_images/width', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/resize_images/width', as the confi
guration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 
2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cra
shed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, k
illing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at o
nce, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on proble
ms gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/resize_images/height', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/resize_images/height', as the con
figuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't foun
d 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine c
rashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out,
 killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at
 once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on prob
lems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/resize_images/unit', locale `de': Unable to store a value at key '/schemas/apps/gthumb/ext/resize_images/unit', as the config
uration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2
) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cras
hed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, ki
lling all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at on
ce, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problem
s gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf

WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `lt': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd n
countered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `lv': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `pl': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing allc
opies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and ORB
it still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd en
countered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `el': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `id': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `cs': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `az': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `gl': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `pt': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `es': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `et': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `eu': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `vi': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `ro': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `ru': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `en_CA': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration
 server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) someh
ow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and
 didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing a
ll copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and
 ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconf
d encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `gu': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `tr': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `da': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `ko': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `mk': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `de': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd n
countered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `fa': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `xh': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `en_GB': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration
 server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) someh
ow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and
 didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing a
ll copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and
 ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconf
d encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `zh_HK': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration
 server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) someh
ow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and
 didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing a
ll copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and
 ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconf
d encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `pt_BR': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration
 server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) someh
ow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and
 didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing a
ll copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and
 ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconf
d encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `it': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `fi': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd n
countered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `th': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/check_size', locale `bg': Unable to store a value at key '/schemas/apps/gthumb/viewer/check_size', as the configuration se
rver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow 
we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and di
dn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all 
copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and OR
Bit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd e
ncountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `he': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `ja': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `zh_CN': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the o
nfiguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't fou
nd 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine 
crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out
, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines a
t once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on pro
blems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `ca@valencia': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as
 the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or was
n't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client m
achine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logg
ing out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mac
hines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details
 on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.g
conf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `sk': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `sl': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `sr@Latn': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the
 configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't 
found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machi
ne crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging 
out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machine
s at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on 
problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `C': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the confi
guration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 
2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cra
shed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, k
illing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at o
nce, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on proble
ms gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `fr': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `sr': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probe
ms gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `dz': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `nb': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out,k
illing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at o
nce, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on proble
ms gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `hr': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `ca': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `ne': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `hu': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `pa': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `uk': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probe
ms gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `sv': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the coni
guration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 
2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cra
shed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, k
illing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at o
nce, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on proble
ms gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `nl': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `zh_TW': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the c
onfiguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't fo
und 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine
 crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging ou
t, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines 
at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on pr
oblems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `lt': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `lv': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `pl': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines ato
nce, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on proble
ms gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `el': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `id': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `cs': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probe
ms gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `az': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `gl': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `pt': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `es': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `et': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `eu': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `vi': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `ro': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `ru': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the coni
guration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 
2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cra
shed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, k
illing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at o
nce, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on proble
ms gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `en_CA': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the c
onfiguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't fo
und 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine
 crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging ou
t, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines 
at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on pr
oblems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `gu': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out,k
illing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at o
nce, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on proble
ms gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `tr': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `da': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `it': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `mk': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `de': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `fa': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `xh': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the coni
guration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 
2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cra
shed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, k
illing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at o
nce, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on proble
ms gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `en_GB': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the c
onfiguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't fo
und 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine
 crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging ou
t, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines 
at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on pr
oblems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `zh_HK': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the c
onfiguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't fo
und 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine
 crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging ou
t, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines 
at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on pr
oblems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `pt_BR': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the c
onfiguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't fo
und 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine
 crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging ou
t, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines 
at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on pr
oblems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `bg': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `fi': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/viewer/black_background', locale `th': Unable to store a value at key '/schemas/apps/gthumb/viewer/black_background', as the conf
iguration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found
 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine cr
ashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, 
killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at 
once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on probl
ems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ui/toolbar_style', locale `he': Unable to store a value at key '/schemas/apps/gthumb/ui/toolbar_style', as the configuration serv
er has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow we
 mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and didn
't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all co
pies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and ORBi
t still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd enc
ountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ui/toolbar_style', locale `ja': Unable to store a value at key '/schemas/apps/gthumb/ui/toolbar_style', as the configuration serv
er has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow we
 mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and didn
't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all co
pies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and ORBi
t still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd eno
untered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ui/toolbar_style', locale `zh_CN': Unable to store a value at key '/schemas/apps/gthumb/ui/toolbar_style', as the configuration s
erver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow
 we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and d
idn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all
 copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and O
RBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd 
encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ui/toolbar_style', locale `ca@valencia': Unable to store a value at key '/schemas/apps/gthumb/ui/toolbar_style', as the configura
tion server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) s
omehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed
 and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killi
ng all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once,
 and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems g
confd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ui/toolbar_style', locale `sk': Unable to store a value at key '/schemas/apps/gthumb/ui/toolbar_style', as the configuration serv
er has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow we
 mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and didn
't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all co
pies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and ORBi
t still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd enc
ountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ui/toolbar_style', locale `sl': Unable to store a value at key '/schemas/apps/gthumb/ui/toolbar_style', as the configuration serv
er has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow we
 mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and didn
't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all co
pies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and ORBi
t still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd eno
untered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ui/toolbar_style', locale `sr@Latn': Unable to store a value at key '/schemas/apps/gthumb/ui/toolbar_style', as the configuration
 server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) someh
ow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and
 didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing a
ll copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and
 ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconf
d encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ui/toolbar_style', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ui/toolbar_style', as the configuration serve
r has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow we 
mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and didn'
t properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all cop
ies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and ORBit
 still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd enco
untered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf

WARNING: failed to install schema `/schemas/apps/gthumb/dialogs/add_to_catalog/view', locale `C': Unable to store a value at key '/schemas/apps/gthumb/dialogs/add_to_catalog/view', as t
he configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn'
t found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client mac
hine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggin
g out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machi
nes at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details o
n problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gco
nf

(gconftool-2:817): GConf-WARNING **: None of the resolved addresses are writable; saving configuration settings will not be possible
WARNING: failed to install schema `/schemas/apps/gthumb/ext/crop/grid_type', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/crop/grid_type', as the configuration s
erver has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow
 we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and d
idn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all
 copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and O
RBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd 
encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/crop/aspect_ratio', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/crop/aspect_ratio', as the configura
tion server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) s
omehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed
 and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killi
ng all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once,
 and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems g
confd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/crop/aspect_ratio_invert', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/crop/aspect_ratio_invert', as
 the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or was
n't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client m
achine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logg
ing out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mac
hines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details
 on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.g
conf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/crop/aspect_ratio_width', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/crop/aspect_ratio_width', as t
he configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn'
t found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client mac
hine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), loggin
g out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machi
nes at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details o
n problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gco
nf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/crop/aspect_ratio_height', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/crop/aspect_ratio_height', as
 the configuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or was
n't found 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client m
achine crashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logg
ing out, killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two mac
hines at once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details
 on problems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.g
conf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/crop/bind_dimensions', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/crop/bind_dimensions', as the con
figuration server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't foun
d 2) somehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine c
rashed and didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out,
 killing all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at
 once, and ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on prob
lems gconfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/crop/bind_factor', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/crop/bind_factor', as the configurati
on server has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) som
ehow we mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed a
nd didn't properly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing
 all copies of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, a
nd ORBit still has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gco
nfd encountered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf

(gconftool-2:819): GConf-WARNING **: None of the resolved addresses are writable; saving configuration settings will not be possible
WARNING: failed to install schema `/schemas/apps/gthumb/ext/resize/unit', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/resize/unit', as the configuration server 
has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow we ms
takenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and didn't p
roperly notify the server on reboot that file locks should be dropped. If you have two gconfd processes (or had two at the time the second was launched), logging out, killing all copies
 of gconfd, and logging back in may help. If you have stale locks, remove ~/.gconf*/*lock. Perhaps the problem is that you attempted to use GConf from two machines at once, and ORBit st
ill has its default configuration that prevents remote CORBA connections - put "ORBIIOPIPv4=1" in /etc/orbitrc. As always, check the user.* syslog for details on problems gconfd encount
ered. There can only be one gconfd per home directory, and it must own a lockfile in ~/.gconfd and also lockfiles in individual storage locations such as ~/.gconf
WARNING: failed to install schema `/schemas/apps/gthumb/ext/resize/width', locale `C': Unable to store a value at key '/schemas/apps/gthumb/ext/resize/width', as the configuration serve
r has no writable databases. There are some common causes of this problem: 1) your configuration path file /etc/gconf/2/path doesn't contain any databases or wasn't found 2) somehow we 
mistakenly created two gconfd processes 3) your operating system is misconfigured so NFS file locking doesn't work in your home directory or 4) your NFS client machine crashed and didn'
t properly notify the server on reboot that file locks should be dropped. If you have two gcuart_close: bad serial port count; tty->count is 1, port->count is 2
INIT: Entering runlevel: 5
Failed to open "/etc/machine-id": No such file or directory
Starting Connection Manager
Starting OpenBSD Secure Shell server: sshd
  generating ssh RSA key...
open /etc/ssh/ssh_host_rsa_key failed: Read-only file system.
Saving the key failed: /etc/ssh/ssh_host_rsa_key.
Starting Xserver
Starting advanced power management daemon: 
apmd.
apmd[851]: apmd 3.2.1 interfacing with apm driver 1.13 and APM BIOS 1.2
Starting syslogd/klogd: done
 *[fail]ing Avahi mDNS/DNS-SD Daemon: avahi-daemon
Starting Telephony daemon
Starting tcf-agent: OK
Stopping Bootlog daemon: bootlogd.

Yocto (Built by Poky 7.0) 1.2+snapshot-20120712 beagleboard ttyO2

beagleboard login: 
                   Fatal server error:
                                      Could not create lock file in /tmp/.tX0-lock


                                                                                  Please consult the The X.Org Foundation support 
                                                                                                                                         at http://wiki.x.org
                                                                                                                                                              for help. 

                                                                                                                                                                        xinit: giving up
                                                                                                                                                                                        x
init: unable to connect to X server: Connection refused
                                                       xinit: server error

Yocto (Built by Poky 7.0) 1.2+snapshot-20120712 beagleboard ttyO2

beagleboard login: root
root@beagleboard:~# 
root@beagleboard:~# mount
rootfs on / type rootfs (rw)
/dev/root on / type ext3 (ro,relatime,errors=continue,user_xattr,acl,barrier=0,data=ordered)
devtmpfs on /dev type devtmpfs (rw,relatime,size=248232k,nr_inodes=62058,mode=755)
proc on /proc type proc (rw,relatime)
tmpfs on /mnt/.psplash type tmpfs (rw,relatime,size=40k)
sysfs on /sys type sysfs (rw,relatime)
devpts on /dev/pts type devpts (rw,relatime,gid=5,mode=620)
tmpfs on /var/volatile type tmpfs (rw,relatime)
tmpfs on /media/ram type tmpfs (rw,relatime)
root@beagleboard:~# 
root@beagleboard:~# touch a
touch: cannot touch `a': Read-only file system
root@beagleboard:~# 
root@beagleboard:~# uname -a
Linux beagleboard 3.0.32-yocto-standard #1 Wed Jul 11 14:11:07 PDT 2012 armv7l GNU/Linux


root@beagleboard:~# 
root@beagleboard:~# 



--------------040005030800060200060401
Content-Type: text/x-log; name="beagleboardxm-boot-rw.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="beagleboardxm-boot-rw.log"

Texas Instruments X-Loader 1.5.0 (Jul 11 2012 - 21:47:19)
Beagle xM
Reading boot sector
Loading u-boot.bin from mmc


U-Boot 2011.06 (Jul 12 2012 - 06:20:05)

OMAP36XX/37XX-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
OMAP3 Beagle board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0
*** Warning - readenv() failed, using default environment

In:    serial
Out:   serial
Err:   serial
Beagle unknown 0x02
No EEPROM on expansion board
Die ID #11c400229ff80000016830100e014012
Hit any key to stop autoboot:  0 
OMAP3 beagleboard.org # 
OMAP3 beagleboard.org # 
OMAP3 beagleboard.org # 
OMAP3 beagleboard.org # setenv bootcmd 'mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm 0x80300000' 
OMAP3 beagleboard.org # setenv bootargs 'console=tty0 console=ttyO2,115200n8 root=/dev/mmcblk0p2 rootwait rootfstype=ext3 rw' 
OMAP3 beagleboard.org # boot
reading uImage

3042628 bytes read
## Booting kernel from Legacy Image at 80300000 ...
   Image Name:   Linux-3.0.32-yocto-standard
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    3042564 Bytes = 2.9 MiB
   Load Address: 80008000
   Entry Point:  80008000
   Verifying Checksum ... OK
   Loading Kernel Image ... OK
OK

Starting kernel ...

Uncompressing Linux... done, booting the kernel.
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 3.0.32-yocto-standard (pokybuild@autobuilder06) (gcc version 4.7.2 20120615 (prerelease) (GCC) ) #1 Wed Jul 11 14:11:07 PDT 2012
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
CPU: VIPT nonaliasing data cache, VIPT aliasing instruction cache
Machine: OMAP3 Beagle Board
Reserving 14680064 bytes SDRAM for VRAM
Memory policy: ECC disabled, Data cache writeback
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
SRAM: Mapped pa 0x40200000 to va 0xfe400000 size: 0x10000
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz
Reprogramming SDRC clock to 332000000 Hz
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 126464
Kernel command line: console=tty0 console=ttyO2,115200n8 root=/dev/mmcblk0p2 rootwait rootfstype=ext3 rw
PID hash table entries: 2048 (order: 1, 8192 bytes)
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
allocated 2097152 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
Memory: 498MB = 498MB total
Memory: 496464k/496464k available, 27824k reserved, 0K highmem
Virtual kernel memory layout:
    vector  : 0xffff0000 - 0xffff1000   (   4 kB)
    fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
    DMA     : 0xffc00000 - 0xffe00000   (   2 MB)
    vmalloc : 0xe0800000 - 0xf8000000   ( 376 MB)
    lowmem  : 0xc0000000 - 0xe0000000   ( 512 MB)
    modules : 0xbf000000 - 0xc0000000   (  16 MB)
      .init : 0xc0008000 - 0xc0058000   ( 320 kB)
      .text : 0xc0058000 - 0xc061ab0c   (5899 kB)
      .data : 0xc061c000 - 0xc0679438   ( 374 kB)
       .bss : 0xc067945c - 0xc06bd044   ( 271 kB)
SLUB: Genslabs=13, HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
NR_IRQS:410
IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 interrupts
Total of 96 interrupts on 1 active controller
omap_hwmod: gpt12_fck: missing clockdomain for gpt12_fck.
OMAP clockevent source: GPTIMER12 at 32768 Hz
sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms
Console: colour dummy device 80x30
console [tty0] enabled
Calibrating delay loop... 509.42 BogoMIPS (lpj=1990656)
pid_max: default: 32768 minimum: 301
Security Framework initialized
Mount-cache hash table entries: 512
Initializing cgroup subsys debug
Initializing cgroup subsys cpuacct
Initializing cgroup subsys memory
Initializing cgroup subsys devices
Initializing cgroup subsys freezer
Initializing cgroup subsys blkio
CPU: Testing write buffer coherency: ok
ftrace: allocating 18007 entries in 53 pages
devtmpfs: initialized
omap_hwmod: _populate_mpu_rt_base found no _mpu_rt_va for l4_core
omap_hwmod: _populate_mpu_rt_base found no _mpu_rt_va for l4_per
omap_hwmod: _populate_mpu_rt_base found no _mpu_rt_va for l4_wkup
omap_hwmod: i2c1: softreset failed (waited 10000 usec)
omap_hwmod: i2c2: softreset failed (waited 10000 usec)
omap_hwmod: i2c3: softreset failed (waited 10000 usec)
print_constraints: dummy: 
NET: Registered protocol family 16
GPMC revision 5.0
omap_device: omap_gpio.0: new worst case activate latency 0: 30517
OMAP GPIO hardware version 2.5
OMAP GPIO hardware version 2.5
OMAP GPIO hardware version 2.5
OMAP GPIO hardware version 2.5
OMAP GPIO hardware version 2.5
OMAP GPIO hardware version 2.5
omap_mux_init: Add partition: #1: core, flags: 0
OMAP3 Beagle Rev: unknown 2
omap_device: omap_uart.0: new worst case activate latency 0: 30517
Found NAND on CS0
Registering NAND on CS0
Unable to get DVI reset GPIO
OMAP DMA hardware revision 5.0
bio: create slab <bio-0> at 0
SCSI subsystem initialized
omap_device: omap2_mcspi.1: new worst case activate latency 0: 30517
omap_device: omap2_mcspi.1: new worst case deactivate latency 0: 30517
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
omap_device: omap_i2c.1: new worst case activate latency 0: 30517
omap_i2c omap_i2c.1: bus 1 rev4.0 at 2600 kHz
twl4030: PIH (irq 7) chaining IRQs 368..375
twl4030: power (irq 373) chaining IRQs 376..383
twl4030: gpio (irq 368) chaining IRQs 384..401
print_constraints: VUSB1V5: 1500 mV normal standby
print_constraints: VUSB1V8: 1800 mV normal standby
print_constraints: VUSB3V1: 3100 mV normal standby
twl4030_usb twl4030_usb: Initialized TWL4030 USB module
print_constraints: VMMC1: 1850 <--> 3150 mV at 3000 mV normal standby
print_constraints: VDAC: 1800 mV normal standby
print_constraints: VDVI: 1800 mV normal standby
print_constraints: VSIM: 1800 <--> 3000 mV at 1800 mV normal standby
omap_device: omap_i2c.1: new worst case deactivate latency 0: 30517
omap_i2c omap_i2c.3: bus 3 rev4.0 at 100 kHz
Advanced Linux Sound Architecture Driver Version 1.0.24.
cfg80211: Calling CRDA to update world regulatory domain
Switching to clocksource 32k_counter
Switched to NOHz mode on CPU #0
musb-hdrc: version 6.0, musb-dma, otg (peripheral+host)
omap_device: musb-omap2430.-1: new worst case activate latency 0: 30517
musb-hdrc musb-hdrc: USB OTG mode controller at fa0ab000 using DMA, IRQ 92
NET: Registered protocol family 2
IP route cache hash table entries: 4096 (order: 2, 16384 bytes)
TCP established hash table entries: 16384 (order: 5, 131072 bytes)
TCP bind hash table entries: 16384 (order: 4, 65536 bytes)
TCP: Hash tables configured (established 16384 bind 16384)
TCP reno registered
UDP hash table entries: 256 (order: 0, 4096 bytes)
UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
NET: Registered protocol family 1
RPC: Registered named UNIX socket transport module.
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
VFS: Disk quotas dquot_6.5.2
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
msgmni has been set to 969
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
OMAP DSS rev 2.0
Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq = 72) is a OMAP UART0
omap_uart.1: ttyO1 at MMIO 0x4806c000 (irq = 73) is a OMAP UART1
omap_uart.2: ttyO2 at MMIO 0x49020000 (irq = 74) is a OMAP UART2
console [ttyO2] enabled
omap_uart.3: ttyO3 at MMIO 0x49042000 (irq = 80) is a OMAP UART3
brd: module loaded
omap2-nand driver initializing
No NAND device found.
No NAND device found.
usbcore: registered new interface driver kaweth
pegasus: v0.6.14 (2006/09/27), Pegasus/Pegasus II USB Ethernet driver
usbcore: registered new interface driver pegasus
usbcore: registered new interface driver asix
usbcore: registered new interface driver cdc_ether
usbcore: registered new interface driver dm9601
usbcore: registered new interface driver smsc75xx
usbcore: registered new interface driver smsc95xx
usbcore: registered new interface driver net1080
usbcore: registered new interface driver cdc_subset
usbcore: registered new interface driver zaurus
usbcore: registered new interface driver MOSCHIP usb-ethernet driver
usbcore: registered new interface driver int51x1
cdc_ncm: 04-Aug-2011
usbcore: registered new interface driver cdc_ncm
console [netcon0] enabled
netconsole: network logging started
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
_regulator_get: ehci-omap.0 supply hsusb0 not found, using dummy regulator
_regulator_get: ehci-omap.0 supply hsusb1 not found, using dummy regulator
ehci-omap ehci-omap.0: OMAP-EHCI Host Controller
ehci-omap ehci-omap.0: new USB bus registered, assigned bus number 1
ehci-omap ehci-omap.0: irq 77, io mem 0x48064800
ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 3 ports detected
Initializing USB Mass Storage driver...
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
mousedev: PS/2 mouse device common for all mice
twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0
OMAP Watchdog Timer Rev 0x31: initial timeout 60 sec
cpuidle: using governor ladder
cpuidle: using governor menu
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
OMAP3 Beagle/Devkit8000 SoC init
asoc: twl4030-hifi <-> omap-mcbsp-dai.1 mapping ok
ALSA device list:
  #0: omap3beagle
TCP cubic registered
NET: Registered protocol family 17
Registering the dns_resolver key type
VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3
ThumbEE CPU extension supported.
sr_init: No PMIC hook to init smartreflex
smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initialized
smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initialized
SmartReflex Class3 initialized
clock: disabling unused clocks to save power
registered taskstats version 1
Console: switching to colour frame buffer device 80x30
omapdss DPI: Could not find exact pixel clock. Requested 23500 kHz, got 24000 kHz
regulator_init_complete: VDAC: incomplete constraints, leaving on
twl_rtc twl_rtc: setting system clock to 2012-07-12 14:02:48 UTC (1342101768)
Waiting for root device /dev/mmcblk0p2...
mmc0: new SDHC card at address 1234
mmcblk0: mmc0:1234 SA04G 3.63 GiB (ro)
 mmcblk0: p1 p2
VFS: Cannot open root device "mmcblk0p2" or unknown-block(179,2)
Please append a correct "root=" boot option; here are the available partitions:
b300         3813376 mmcblk0  driver: mmcblk
  b301           72261 mmcblk0p1 00000000-0000-0000-0000-000000000000
  b302         3735112 mmcblk0p2 00000000-0000-0000-0000-000000000000
VFS: Unable to mount root fs on unknown-block(179,2)
User configuration error - no valid root filesystem found
Kernel panic - not syncing: Invalid configuration from end user prevents continuing
[<c0063d00>] (unwind_backtrace+0x0/0xec) from [<c044baa0>] (dump_stack+0x20/0x24)
[<c044baa0>] (dump_stack+0x20/0x24) from [<c044bcb0>] (panic+0x64/0x184)
[<c044bcb0>] (panic+0x64/0x184) from [<c0008eb4>] (mount_block_root+0x1e4/0x230)
[<c0008eb4>] (mount_block_root+0x1e4/0x230) from [<c00090e0>] (mount_root+0xf8/0x11c)


--------------040005030800060200060401--
