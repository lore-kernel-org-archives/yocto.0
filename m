Return-Path: <elvis.dowson@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61DACE00283
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 10:28:04 -0700 (PDT)
Received: by eekd41 with SMTP id d41so1828123eek.35
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 10:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:cc:to:mime-version
	:x-mailer; bh=Pzw4RgBPn8tSdgaimh1q3vk8jIh4Me5sGV7G+TJIJp8=;
	b=CkvhjNXhju3GVEHO6+nWTT4507tFJy0TBztXfgcLz/p1+H0qGzUSvq4qC08Xr62+fH
	QqPzxClEKMhmfpJwioWAuLsy1SMheS+W3xti5YRRQiUOWVE7zDCzJO5g69OAvvgG02tp
	AZC7zu61cnkZ8KXuzpdp9FxeZ+JKIncDzCS2tazh77FtF81p0bcSy/GOWGArzgFCS5oO
	2qu0lkRAhdjaVUFmb5E0rnq20/KwC3DQ7Xs81tAFOXPe0HOWbFXRlFdL3Fa+xAwYqVwi
	mksz8FEpdILyURLikXc7rxtls7SfmwoZS0E/85t76uSzDIDpsbNgoNGXMnBpDml+uYUQ
	TaFw==
Received: by 10.14.175.130 with SMTP id z2mr18509734eel.0.1343755683033;
	Tue, 31 Jul 2012 10:28:03 -0700 (PDT)
Received: from ?IPv6:2002:5ecd:6ca2::b14e:98a0:51eb:2631?
	([2002:5ecd:6ca2:0:b14e:98a0:51eb:2631])
	by mx.google.com with ESMTPS id o47sm2049700eem.0.2012.07.31.10.27.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 31 Jul 2012 10:28:02 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Tue, 31 Jul 2012 21:27:54 +0400
Message-Id: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Tue, 31 Jul 2012 17:28:04 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_45E05F71-BFA3-4F66-BEF8-C8FC2AC71E0F"

--Apple-Mail=_45E05F71-BFA3-4F66-BEF8-C8FC2AC71E0F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
       I am unable to get a serial console login prompt using yocto =
generate rootfilesystem (core-image-minimal), for a PowerPC 440 target.=20=


I saw on another thread that even for the pandaboard, a similar =
situation exists:

> On 2012-07-30 13:11, Gary Thomas wrote:
>> On 2012-07-30 12:49, Jim Abernathy wrote:
>>> On 07/30/2012 01:16 PM, Gary Thomas wrote:

>>> I got core-image-minimal built without errors, Thanks, now I need to =
ask some questions about booting that image.  I'm assuming that I can =
follow the instructions on pandaboard.org
>>> for creating the SD card format and just copy the deploy/image/ =
u-boot, MLO, uImage, and rootfs to the right places and boot the sdcard =
in the pandaboard. Anyway, that's what I
>>> tried.  I'm connected to the panadboard via serial port and the =
U-Boot works and the uImage seems to be found, but I don't get a login =
console on the serial port:
>>>=20
>>> U-Boot SPL 2011.12-dirty (Jul 30 2012 - 13:44:03)
>>> Texas Instruments OMAP4430 ES2.1
>>> OMAP SD/MMC: 0
>>> reading u-boot.img
>>> reading u-boot.img
>>>=20
>>>=20
>>> U-Boot 2011.12-dirty (Jul 30 2012 - 13:44:03)
>>>=20
>>> CPU  : OMAP4430 ES2.1
>>> Board: OMAP4 Panda
>>> I2C:   ready
>>> DRAM:  1 GiB
>>> MMC:   OMAP SD/MMC: 0
>>> Using default environment
>>>=20
>>> In:    serial
>>> Out:   serial
>>> Err:   serial
>>> Hit any key to stop autoboot:  0
>>> reading boot.scr
>>>=20
>>> ** Unable to read "boot.scr" from mmc 0:1 **
>>> reading uImage
>>>=20
>>> 4176404 bytes read
>>> Booting from mmc0 ...
>>> ## Booting kernel from Legacy Image at 82000000 ...
>>>    Image Name:   Linux-3.1.0
>>>    Image Type:   ARM Linux Kernel Image (uncompressed)
>>>    Data Size:    4176340 Bytes =3D 4 MiB
>>>    Load Address: 80008000
>>>    Entry Point:  80008000
>>>    Verifying Checksum ... OK
>>>    Loading Kernel Image ... OK
>>> OK
>>>=20
>>> Starting kernel ...
>>>=20
>>> Uncompressing Linux... done, booting the kernel.
>>=20
>> Start with the obvious - check the bootparams in U-Boot.  Break into
>> the boot process and run the 'printenv' command.  What's the value of
>> the "console" variable?
>>=20
>> n.b. I've not tried this exact setup on the PandaBoard.  I may have =
time
>> later today to do so.
>>=20
>=20
> I've just verified that this does fail when using yocto:master I'm =
pretty
> sure that the problem is related to the use of GCC 4.7.1 - I've had =
similar
> problems with ARM kernels & GCC 4.7.1 in the past.



Can someone confirm?

Any suggestions on how to get past this issue? Is serial console login =
prompt broken on yocto for targets other than Intel? Does it work on ARM =
or PowerPC at the moment, with the latest yocto updates as of today?

My /etc/inittab looks like this:

S:2345:respawn:/sbin/getty 9600 ttyS0

Here is the output of my kernel boot screen:

zImage starting: loaded at 0x00800000 (sp: 0x00d71fb0)                   =
                        =20
Allocating 0x4cea6c bytes for kernel ...                                 =
                        =20
gunzipping (0x00000000 <- 0x0080f000:0x009ddcf9)...done 0x3b15c0 bytes
Attached initrd image at 0x009de000-0x00d7088a
initrd head: 0x1f8b0808

Linux/PowerPC load: console=3DttyS0 ip=3Doff root=3D/dev/ram rw=1F
Finalizing device tree... flat tree at 0xd7e0e0
[    0.000000] Using Xilinx Virtex440 machine description
[    0.000000] Linux version 3.3.0-14.2-build1+ (elvis@eos) (gcc version =
4.7.2 20120706 (prerelease) (GCC) ) #37 PREEMPT Tue Jul 31 21:12:34 GST =
2012
[    0.000000] Found initrd at 0xc09de000:0xc0d7088a
[    0.000000] Zone PFN ranges:
[    0.000000]   DMA      0x00000000 -> 0x00010000
[    0.000000]   Normal   empty
[    0.000000] Movable zone start PFN for each node
[    0.000000] Early memory PFN ranges
[    0.000000]     0: 0x00000000 -> 0x00010000
[    0.000000] MMU: Allocated 1088 bytes of context maps for 255 =
contexts
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  =
Total pages: 65024
[    0.000000] Kernel command line: console=3DttyS0 ip=3Doff =
root=3D/dev/ram rw=1F
[    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
[    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072 =
bytes)
[    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 =
bytes)
[    0.000000] Memory: 251200k/262144k available (3596k kernel code, =
10944k reserved, 188k data, 1138k bss, 148k init)
[    0.000000] Kernel virtual memory layout:
[    0.000000]   * 0xfffdf000..0xfffff000  : fixmap
[    0.000000]   * 0xfde00000..0xfe000000  : consistent mem
[    0.000000]   * 0xfde00000..0xfde00000  : early ioremap
[    0.000000]   * 0xd1000000..0xfde00000  : vmalloc & ioremap
[    0.000000] NR_IRQS:512
[    0.000000] clocksource: timebase mult[2800000] shift[24] registered
[    0.000000] Console: colour dummy device 80x25
[    0.000455] pid_max: default: 32768 minimum: 301
[    0.000815] Mount-cache hash table entries: 512
[    0.008275] NET: Registered protocol family 16
[    0.014106] PCI: Probing PCI hardware
[    0.041141] bio: create slab <bio-0> at 0
[    0.042516] gpiochip_add: registered GPIOs 248 to 255 on device: =
/plb@0/gpio@81460000
[    0.043034] gpiochip_add: registered GPIOs 240 to 247 on device: =
/plb@0/gpio@81440000
[    0.043625] gpiochip_add: registered GPIOs 235 to 239 on device: =
/plb@0/gpio@81420000
[    0.044150] gpiochip_add: registered GPIOs 230 to 234 on device: =
/plb@0/gpio@81400000
[    0.045659] vgaarb: loaded
[    0.049556] Switching to clocksource timebase
[    0.088781] NET: Registered protocol family 2
[    0.089206] IP route cache hash table entries: 2048 (order: 1, 8192 =
bytes)
[    0.090770] TCP established hash table entries: 8192 (order: 4, 65536 =
bytes)
[    0.091141] TCP bind hash table entries: 8192 (order: 3, 32768 bytes)
[    0.091343] TCP: Hash tables configured (established 8192 bind 8192)
[    0.091361] TCP reno registered
[    0.091381] UDP hash table entries: 256 (order: 0, 4096 bytes)
[    0.091425] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
[    0.092019] NET: Registered protocol family 1
[    0.092849] RPC: Registered named UNIX socket transport module.
[    0.092879] RPC: Registered udp transport module.
[    0.092892] RPC: Registered tcp transport module.
[    0.092906] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.093223] Trying to unpack rootfs image as initramfs...
[    0.095276] rootfs image is not initramfs (no cpio magic); looks like =
an initrd
[    0.128489] Freeing initrd memory: 3660k freed
[    0.145577] ROMFS MTD (C) 2007 Red Hat, Inc.
[    0.146291] msgmni has been set to 499
[    0.147734] io scheduler noop registered
[    0.147760] io scheduler deadline registered
[    0.147911] io scheduler cfq registered (default)
[    0.180521] Console: switching to colour frame buffer device 80x30
[    0.444482] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.450055] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) is =
a 16550
[    4.334314] console [ttyS0] enabled
[    4.395802] brd: module loaded
[    4.441798] loop: module loaded
[    4.478911] xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12
[    4.555785] xsysace 83600000.sysace: No CF in slot
[    4.614718] Xilinx SystemACE device driver, major=3D254
[    4.675508] xilinx_emaclite 81000000.ethernet: Device Tree Probing
[    4.749052] xilinx_emaclite 81000000.ethernet: error registering MDIO =
bus
[    4.830133] xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:b7:78:00
[    4.923700] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17
[    5.038540] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'
[    5.107812] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd1036000, irq=3D22
[    5.207016] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'
[    5.276713] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped =
to 0xd1038000, irq=3D23
[    5.377147] mousedev: PS/2 mouse device common for all mice
[    5.444373] i2c /dev entries driver
[    5.485910] Device Tree Probing 'i2c'
[    5.530167] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, irq=3D18
[    5.607687] TCP cubic registered
[    5.645541] NET: Registered protocol family 17
[    6.441625] atkbd serio0: keyboard reset failed on xilinxps2/serio at =
81480000
[    6.925869] RAMDISK: gzip image found at block 0
[    7.449824] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0
[    7.834586] VFS: Mounted root (ext2 filesystem) readonly on device =
1:0.
[    7.914175] Freeing unused kernel memory: 148k freed


Best regards,

Elvis Dowson=

--Apple-Mail=_45E05F71-BFA3-4F66-BEF8-C8FC2AC71E0F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; &nbsp;I am unable to get a serial console =
login prompt using yocto generate rootfilesystem (core-image-minimal), =
for a PowerPC 440 target.&nbsp;</div><div><br></div><div>I saw on =
another thread that even for the pandaboard, a similar situation =
exists:</div><div><br></div><div><blockquote type=3D"cite">On 2012-07-30 =
13:11, Gary Thomas wrote:<br></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite">On 2012-07-30 12:49, Jim =
Abernathy wrote:<br></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">On =
07/30/2012 01:16 PM, Gary Thomas =
wrote:</blockquote></blockquote></blockquote></div><div><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">I got =
core-image-minimal built without errors, Thanks, now I need to ask some =
questions about booting that image. &nbsp;I'm assuming that I can follow =
the instructions on&nbsp;<a =
href=3D"http://pandaboard.org/">pandaboard.org</a><br></blockquote></block=
quote></blockquote><blockquote type=3D"cite"><blockquote =
type=3D"cite"><blockquote type=3D"cite">for creating the SD card format =
and just copy the deploy/image/ u-boot, MLO, uImage, and rootfs to the =
right places and boot the sdcard in the pandaboard. Anyway, that's what =
I<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">tried. =
&nbsp;I'm connected to the panadboard via serial port and the U-Boot =
works and the uImage seems to be found, but I don't get a login console =
on the serial =
port:<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite"><br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">U-Boot =
SPL 2011.12-dirty (Jul 30 2012 - =
13:44:03)<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">Texas =
Instruments OMAP4430 =
ES2.1<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">OMAP =
SD/MMC: 0<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">reading =
u-boot.img<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">reading =
u-boot.img<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite"><br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite"><br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">U-Boot =
2011.12-dirty (Jul 30 2012 - =
13:44:03)<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite"><br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">CPU =
&nbsp;: OMAP4430 =
ES2.1<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">Board: =
OMAP4 Panda<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">I2C: =
&nbsp;&nbsp;ready<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">DRAM: =
&nbsp;1 GiB<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">MMC: =
&nbsp;&nbsp;OMAP SD/MMC: =
0<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">Using =
default =
environment<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite"><br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">In: =
&nbsp;&nbsp;&nbsp;serial<br></blockquote></blockquote></blockquote><blockq=
uote type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite">Out: =
&nbsp;&nbsp;serial<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">Err: =
&nbsp;&nbsp;serial<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">Hit =
any key to stop autoboot: =
&nbsp;0<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">reading =
boot.scr<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite"><br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">** =
Unable to read "boot.scr" from mmc 0:1 =
**<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">reading =
uImage<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite"><br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">4176404 =
bytes read<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">Booting =
from mmc0 ...<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">## =
Booting kernel from Legacy Image at 82000000 =
...<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite">&nbsp;&nbsp;&nbsp;Image Name: =
&nbsp;&nbsp;Linux-3.1.0<br></blockquote></blockquote></blockquote><blockqu=
ote type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite">&nbsp;&nbsp;&nbsp;Image Type: &nbsp;&nbsp;ARM Linux Kernel =
Image =
(uncompressed)<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite">&nbsp;&nbsp;&nbsp;Data Size: &nbsp;&nbsp;&nbsp;4176340 =
Bytes =3D 4 MiB<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite">&nbsp;&nbsp;&nbsp;Load Address: =
80008000<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite">&nbsp;&nbsp;&nbsp;Entry Point: =
&nbsp;80008000<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite">&nbsp;&nbsp;&nbsp;Verifying Checksum ... =
OK<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite">&nbsp;&nbsp;&nbsp;Loading Kernel Image ... =
OK<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite">OK<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite"><br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote type=3D"cite">Starting=
 kernel ...<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite"><br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite"><blockquote =
type=3D"cite">Uncompressing Linux... done, booting the =
kernel.<br></blockquote></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote =
type=3D"cite"><br></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite">Start with the obvious - check =
the bootparams in U-Boot. &nbsp;Break =
into<br></blockquote></blockquote><blockquote type=3D"cite"><blockquote =
type=3D"cite">the boot process and run the 'printenv' command. =
&nbsp;What's the value of<br></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite">the "console" =
variable?<br></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote =
type=3D"cite"><br></blockquote></blockquote><blockquote =
type=3D"cite"><blockquote type=3D"cite">n.b. I've not tried this exact =
setup on the PandaBoard. &nbsp;I may have =
time<br></blockquote></blockquote><blockquote type=3D"cite"><blockquote =
type=3D"cite">later today to do =
so.<br></blockquote></blockquote><blockquote type=3D"cite"><blockquote =
type=3D"cite"><br></blockquote></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">I've just =
verified that this does fail when using yocto:master I'm =
pretty<br></blockquote><blockquote type=3D"cite">sure that the problem =
is related to the use of GCC 4.7.1 - I've had =
similar<br></blockquote><blockquote type=3D"cite">problems with ARM =
kernels &amp; GCC 4.7.1 in the =
past.<br></blockquote></div><div><br></div><div><br></div><div>Can =
someone confirm?</div><div><br></div><div>Any suggestions on how to get =
past this issue? Is serial console login prompt broken on yocto for =
targets other than Intel? Does it work on ARM or PowerPC at the moment, =
with the latest yocto updates as of today?</div><div><br></div><div>My =
/etc/inittab looks like this:</div><div><br></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">S:2345:respawn:/sbin/getty 9600 =
ttyS0</font></div><div><br></div><div>Here is the output of my kernel =
boot screen:</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">zImage starting: =
loaded at 0x00800000 (sp: 0x00d71fb0) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Allocating =
0x4cea6c bytes for kernel ... &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">gunzipping (0x00000000 &lt;- =
0x0080f000:0x009ddcf9)...done 0x3b15c0 bytes</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Attached initrd =
image at 0x009de000-0x00d7088a</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">initrd head: =
0x1f8b0808</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linux/PowerPC =
load: console=3DttyS0 ip=3Doff root=3D/dev/ram =
rw=1F</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Finalizing device tree... flat tree at =
0xd7e0e0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;0.000000] Using Xilinx Virtex440 machine =
description</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.000000] Linux version =
3.3.0-14.2-build1+ (elvis@eos) (gcc version 4.7.2 20120706 (prerelease) =
(GCC) ) #37 PREEMPT Tue Jul 31 21:12:34 GST 2012</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.000000] Found initrd at =
0xc09de000:0xc0d7088a</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.000000] Zone PFN =
ranges:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.000000] &nbsp; DMA &nbsp; &nbsp; =
&nbsp;0x00000000 -&gt; 0x00010000</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.000000] &nbsp; Normal &nbsp; empty</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.000000] Movable zone start PFN for each =
node</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.000000] Early memory PFN =
ranges</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.000000] &nbsp; &nbsp; 0: 0x00000000 -&gt; =
0x00010000</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.000000] MMU: Allocated 1088 =
bytes of context maps for 255 contexts</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.000000] Built 1 zonelists in Zone order, mobility grouping on. =
&nbsp;Total pages: 65024</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.000000] Kernel command =
line: console=3DttyS0 ip=3Doff root=3D/dev/ram =
rw=1F</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.000000] PID hash table entries: 1024 (order: =
0, 4096 bytes)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.000000] Dentry cache hash =
table entries: 32768 (order: 5, 131072 bytes)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 =
bytes)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.000000] Memory: 251200k/262144k available =
(3596k kernel code, 10944k reserved, 188k data, 1138k bss, 148k =
init)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.000000] Kernel virtual memory =
layout:</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.000000] &nbsp; * 0xfffdf000..0xfffff000 =
&nbsp;: fixmap</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.000000] &nbsp; * =
0xfde00000..0xfe000000 &nbsp;: consistent mem</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.000000] &nbsp; * 0xfde00000..0xfde00000 &nbsp;: early =
ioremap</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.000000] &nbsp; * 0xd1000000..0xfde00000 =
&nbsp;: vmalloc &amp; ioremap</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.000000] NR_IRQS:512</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.000000] clocksource: timebase mult[2800000] shift[24] =
registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.000000] Console: colour =
dummy device 80x25</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.000455] pid_max: default: =
32768 minimum: 301</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.000815] Mount-cache hash =
table entries: 512</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.008275] NET: Registered =
protocol family 16</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.014106] PCI: Probing PCI =
hardware</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;0.041141] bio: create slab &lt;bio-0&gt; at =
0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.042516] gpiochip_add: registered GPIOs 248 =
to 255 on device: /plb@0/gpio@81460000</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.043034] gpiochip_add: registered GPIOs 240 to 247 on device: =
/plb@0/gpio@81440000</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.043625] gpiochip_add: =
registered GPIOs 235 to 239 on device: =
/plb@0/gpio@81420000</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.044150] gpiochip_add: =
registered GPIOs 230 to 234 on device: =
/plb@0/gpio@81400000</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.045659] vgaarb: =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.049556] Switching to clocksource =
timebase</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;0.088781] NET: Registered protocol family =
2</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.089206] IP route cache hash table entries: =
2048 (order: 1, 8192 bytes)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.090770] TCP established hash table entries: 8192 (order: 4, =
65536 bytes)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.091141] TCP bind hash table =
entries: 8192 (order: 3, 32768 bytes)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.091343] TCP: Hash tables configured (established 8192 bind =
8192)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.091361] TCP reno =
registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.091381] UDP hash table =
entries: 256 (order: 0, 4096 bytes)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.091425] UDP-Lite hash table entries: 256 (order: 0, 4096 =
bytes)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.092019] NET: Registered protocol family =
1</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.092849] RPC: Registered named UNIX socket =
transport module.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.092879] RPC: Registered udp =
transport module.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.092892] RPC: Registered tcp =
transport module.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.092906] RPC: Registered tcp =
NFSv4.1 backchannel transport module.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.093223] Trying to unpack rootfs image as =
initramfs...</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.095276] rootfs image is not =
initramfs (no cpio magic); looks like an initrd</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.128489] Freeing initrd memory: 3660k =
freed</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.145577] ROMFS MTD (C) 2007 Red Hat, =
Inc.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.146291] msgmni has been set to =
499</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.147734] io scheduler noop =
registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.147760] io scheduler =
deadline registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.147911] io scheduler cfq =
registered (default)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.180521] Console: switching =
to colour frame buffer device 80x30</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.444482] Serial: 8250/16550 driver, 4 ports, IRQ sharing =
disabled</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;0.450055] 83e00000.serial: ttyS0 at MMIO =
0x83e01003 (irq =3D 20) is a 16550</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;4.334314] console [ttyS0] enabled</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;4.395802] brd: module loaded</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;4.441798] loop: module loaded</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;4.478911] xsysace 83600000.sysace: Xilinx SystemACE revision =
1.0.12</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;4.555785] xsysace 83600000.sysace: No CF in =
slot</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;4.614718] Xilinx SystemACE device driver, =
major=3D254</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;4.675508] xilinx_emaclite =
81000000.ethernet: Device Tree Probing</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;4.749052] xilinx_emaclite 81000000.ethernet: error registering =
MDIO bus</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;4.830133] xilinx_emaclite 81000000.ethernet: =
MAC address is now 00:0a:35:b7:78:00</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;4.923700] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;5.038540] xilinx_ps2 81480000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;5.107812] xilinx_ps2 81480000.ps2: Xilinx PS2 =
at 0x81480000 mapped to 0xd1036000, irq=3D22</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;5.207016] xilinx_ps2 81481000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;5.276713] xilinx_ps2 81481000.ps2: Xilinx PS2 =
at 0x81481000 mapped to 0xd1038000, irq=3D23</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;5.377147] mousedev: PS/2 mouse device common for all =
mice</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;5.444373] i2c /dev entries =
driver</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;5.485910] Device Tree Probing =
'i2c'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;5.530167] xilinx-iic #0 at 0x81600000 mapped =
to 0xD10C0000, irq=3D18</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;5.607687] TCP cubic =
registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;5.645541] NET: Registered =
protocol family 17</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;6.441625] atkbd serio0: =
keyboard reset failed on xilinxps2/serio at =
81480000</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;6.925869] RAMDISK: gzip image found at block =
0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;7.449824] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;7.834586] VFS: Mounted root (ext2 filesystem) readonly on device =
1:0.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;7.914175] Freeing unused kernel memory: 148k =
freed</font></div><div><br></div></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_45E05F71-BFA3-4F66-BEF8-C8FC2AC71E0F--
