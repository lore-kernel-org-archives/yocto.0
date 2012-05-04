Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01003E00596
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 13:51:33 -0700 (PDT)
Received: by wibhm4 with SMTP id hm4so1274310wib.11
	for <yocto@yoctoproject.org>; Fri, 04 May 2012 13:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=8hoPVEJJ9meLhE5hnDBRH2KJrsRQ9dPWUhWllWIlv6s=;
	b=rL9lTid8Ruuq2Cv+Bt9ErOlhDKkRquTK/j9RRwEwwyud8E0NZ2laHeauhO7eOuVpvA
	Qrk1BVWxDMCDxENfEAhoXrFOGV2t0IAFiLu/mYGbHgtImCXjNck1ZKs30r/HaWPmetYv
	9nCV977PJStETrElNE+WpxDNdMNwiP+W4oGTlZUeYHPQHCRCTQzwiy/bs/kXXUunYprT
	fvlBh8+hmQivk9wyIJ4wWHgmQqszeGisVPf/I7vHfsoEgP97Lp2+BpQAWjtIIpaxMV3h
	KZ0o7SeyjmiSWzlQqJiN/wiMdt9Xm77Cu9nY6vHr+mR45itY7oh4Jmx+U1t4K+9Go08b
	l0Eg==
Received: by 10.180.105.198 with SMTP id go6mr16043009wib.19.1336164691947;
	Fri, 04 May 2012 13:51:31 -0700 (PDT)
Received: from [192.168.1.34] (5.Red-83-49-41.dynamicIP.rima-tde.net.
	[83.49.41.5])
	by mx.google.com with ESMTPS id l5sm250494wia.11.2012.05.04.13.51.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 04 May 2012 13:51:31 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 4 May 2012 22:51:28 +0200
Message-Id: <76C95B0B-2509-47DC-9450-6DAF5DBDAC44@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
Subject: Problem compiling u-boot-2011.12 for overo-fire-chestnu43 custom machine configuration
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
X-List-Received-Date: Fri, 04 May 2012 20:51:34 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1B76B006-9834-4293-BE6E-8593AE6CE245"

--Apple-Mail=_1B76B006-9834-4293-BE6E-8593AE6CE245
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
      I've created a new machine configuration called =
overo-fire-chestnut43. I've included the overo.inc and =
overo-fire-chestnut43.conf files below. When I try to build u-boot, it =
fails with the following errors:

ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/temp/log.do_compile.13502 for further information)

<snip>

| make[1]: Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'
| cat /dev/null  >.depend
| /bin/sh: 1: Syntax error: Bad fd number

<snip>

| make[2]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'
| arm-poky-linux-gnueabi-objdump: 'board/overo/libovero.o': No such file
| arm-poky-linux-gnueabi-objdump: 'arch/arm/cpu/armv7/libarmv7.o': No =
such file
| arm-poky-linux-gnueabi-objdump: =
'arch/arm/cpu/armv7/omap-common/libomap-common.o': No such file
| arm-poky-linux-gnueabi-objdump: 'arch/arm/cpu/armv7/omap3/libomap3.o': =
No such file
| arm-poky-linux-gnueabi-objdump: 'arch/arm/lib/libarm.o': No such file
| arm-poky-linux-gnueabi-objdump: 'common/libcommon.o': No such file
| arm-poky-linux-gnueabi-objdump: 'disk/libdisk.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/i2c/libi2c.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/misc/libmisc.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/mmc/libmmc.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/mtd/nand/libnand.o': No such =
file
| arm-poky-linux-gnueabi-objdump: 'drivers/net/libnet.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/pcmcia/libpcmcia.o': No such =
file
| arm-poky-linux-gnueabi-objdump: 'drivers/power/libpower.o': No such =
file
| arm-poky-linux-gnueabi-objdump: 'drivers/rtc/librtc.o': No such file
| arm-poky-linux-gnueabi-objdump: 'drivers/serial/libserial.o': No such =
file
| arm-poky-linux-gnueabi-objdump: 'fs/ext2/libext2fs.o': No such file
| arm-poky-linux-gnueabi-objdump: 'fs/fat/libfat.o': No such file
| arm-poky-linux-gnueabi-objdump: 'fs/jffs2/libjffs2.o': No such file
| arm-poky-linux-gnueabi-objdump: 'lib/libfdt/libfdt.o': No such file
| arm-poky-linux-gnueabi-objdump: 'lib/libgeneric.o': No such file
| arm-poky-linux-gnueabi-objdump: 'lib/zlib/libz.o': No such file
| arm-poky-linux-gnueabi-objdump: 'net/libnet.o': No such file
| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/libarmv7.o: No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/omap-common/libomap-common.o: No such file or =
directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/omap3/libomap3.o: No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find arch/arm/lib/libarm.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find common/libcommon.o: No such =
file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find disk/libdisk.o: No such =
file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/i2c/libi2c.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/misc/libmisc.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/mmc/libmmc.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/mtd/nand/libnand.o: =
No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/net/libnet.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/pcmcia/libpcmcia.o: =
No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/power/libpower.o: =
No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/rtc/librtc.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/serial/libserial.o: =
No such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find fs/ext2/libext2fs.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find fs/fat/libfat.o: No such =
file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find fs/jffs2/libjffs2.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find lib/libfdt/libfdt.o: No =
such file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find lib/libgeneric.o: No such =
file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find lib/zlib/libz.o: No such =
file or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find net/libnet.o: No such file =
or directory
| arm-poky-linux-gnueabi-ld.bfd: cannot find board/overo/libovero.o: No =
such file or directory
| make: *** [u-boot] Error 1

<snip>

| make[1]: *** =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/u-boot-spl] Error 127
| make[1]: Leaving directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl'
| make: *** [spl/u-boot-spl.bin] Error 2
| ERROR: oe_runmake failed
NOTE: package u-boot-2011.12-r2: task do_compile: Failed
ERROR: Task 7 =
(/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 858 tasks of which 851 didn't need to be =
rerun and 1 failed.

Summary: 1 task failed:
  /tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_compile


Best regards,

Elvis Dowson


file: overo.inc

require conf/machine/include/omap3.inc

# Increase this everytime you change something in the kernel
MACHINE_KERNEL_PR =3D "r1"

KERNEL_IMAGETYPE =3D "uImage"

UBOOT_ENTRYPOINT =3D "0x80008000"
UBOOT_LOADADDRESS =3D "0x80008000"

file: overo-fire-chestnut43.conf

#@TYPE: Machine
#@NAME: Overo Fire Chestnut43 machine
#@DESCRIPTION: Machine configuration for the Gumstix Overo Fire TI =
OMAP3530 COM module with the Chestnut43 LCD expansion board.

require conf/machine/include/overo.inc

# u-boot
EXTRA_IMAGEDEPENDS +=3D "u-boot"
PREFERRED_PROVIDER_virtual/bootloader =3D "u-boot"
UBOOT_ARCH =3D "arm"
UBOOT_MACHINE =3D "omap3_overo_config"
PREFERRED_VERSION_pn-u-boot =3D "2011.12"

# x-load
EXTRA_IMAGEDEPENDS +=3D "x-load"
XLOAD_MACHINE =3D "overo_config"

# kernel provider
PREFERRED_PROVIDER_virtual/kernel =3D "linux-omap"

# xserver provider
PREFERRED_PROVIDER_virtual/xserver =3D "xserver-xorg"
XSERVER =3D "xserver-xorg \
           xf86-input-evdev \
           xf86-input-mouse \
           xf86-video-omapfb \
           xf86-input-keyboard \
           xf86-input-tslib"

GUI_MACHINE_CLASS =3D "smallscreen"

IMAGE_FSTYPES +=3D "ubi tar.bz2"

# do ubiattach /dev/ubi_ctrl -m 4
# =46rom dmesg:
# UBI: smallest flash I/O unit:    2048
# UBI: logical eraseblock size:    129024 bytes=

--Apple-Mail=_1B76B006-9834-4293-BE6E-8593AE6CE245
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; I've created a new machine configuration =
called overo-fire-chestnut43. I've included the overo.inc and =
overo-fire-chestnut43.conf files below. When I try to build u-boot, it =
fails with the following errors:</div><div><br></div><div><span =
class=3D"Apple-style-span" style=3D"font-family: Monaco; font-size: =
small; ">ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/u=
-boot-2011.12-r2/temp/log.do_compile.13502 for further =
information)</span></div><div><span class=3D"Apple-style-span" =
style=3D"font-family: Monaco; font-size: small; =
"><br></span></div><div><span class=3D"Apple-style-span" =
style=3D"font-family: Monaco; font-size: small; =
">&lt;snip&gt;</span></div><div><span class=3D"Apple-style-span" =
style=3D"font-family: Monaco; font-size: small; =
"><br></span></div><div><span class=3D"Apple-style-span" =
style=3D"font-family: Monaco; font-size: small; "><div =
style=3D"font-family: Helvetica; font-size: medium; "><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: =
Entering directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/tools'</font></div><div style=3D"font-family: =
Helvetica; font-size: medium; "><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| cat /dev/null =
&nbsp;&gt;.depend</font></div><div style=3D"font-family: Helvetica; =
font-size: medium; "><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| /bin/sh: 1: Syntax error: Bad fd number</font></div><div =
style=3D"font-family: Helvetica; font-size: medium; "><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div style=3D"font-family: Helvetica; =
font-size: medium; "><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&lt;snip&gt;</font></div><div style=3D"font-family: =
Helvetica; font-size: medium; "><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div></span><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[2]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/fs/fat'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'board/overo/libovero.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'arch/arm/cpu/armv7/libarmv7.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: =
'arch/arm/cpu/armv7/omap-common/libomap-common.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'arch/arm/cpu/armv7/omap3/libomap3.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'arch/arm/lib/libarm.o': No =
such file</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'common/libcommon.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'disk/libdisk.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'drivers/i2c/libi2c.o': No =
such file</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'drivers/misc/libmisc.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'drivers/mmc/libmmc.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'drivers/mtd/nand/libnand.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'drivers/net/libnet.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'drivers/pcmcia/libpcmcia.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'drivers/power/libpower.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'drivers/rtc/librtc.o': No =
such file</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'drivers/serial/libserial.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'fs/ext2/libext2fs.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'fs/fat/libfat.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'fs/jffs2/libjffs2.o': No =
such file</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-objdump: =
'lib/libfdt/libfdt.o': No such file</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-objdump: 'lib/libgeneric.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'lib/zlib/libz.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-objdump: 'net/libnet.o': No such =
file</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/libarmv7.o: No such file or =
directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/omap-common/libomap-common.o: No such file or =
directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/cpu/armv7/omap3/libomap3.o: No such file or =
directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
arch/arm/lib/libarm.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find common/libcommon.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
disk/libdisk.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/i2c/libi2c.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
drivers/misc/libmisc.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/mmc/libmmc.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
drivers/mtd/nand/libnand.o: No such file or =
directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
drivers/net/libnet.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/pcmcia/libpcmcia.o: =
No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/power/libpower.o: No =
such file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
drivers/rtc/librtc.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find drivers/serial/libserial.o: =
No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find fs/ext2/libext2fs.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
fs/fat/libfat.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find fs/jffs2/libjffs2.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
lib/libfdt/libfdt.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find lib/libgeneric.o: No such =
file or directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
lib/zlib/libz.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| =
arm-poky-linux-gnueabi-ld.bfd: cannot find net/libnet.o: No such file or =
directory</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| arm-poky-linux-gnueabi-ld.bfd: cannot find =
board/overo/libovero.o: No such file or directory</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make: *** =
[u-boot] Error 1</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&lt;snip&gt;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"><div =
style=3D"font-family: Helvetica; font-size: medium; "><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: *** =
[/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl/u-boot-spl] Error 127</font></div><div =
style=3D"font-family: Helvetica; font-size: medium; "><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| make[1]: Leaving =
directory =
`/tool/yocto/poky/build/tmp/work/overo_fire_chestnut43-poky-linux-gnueabi/=
u-boot-2011.12-r2/git/spl'</font></div><div style=3D"font-family: =
Helvetica; font-size: medium; "><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">| make: *** [spl/u-boot-spl.bin] Error =
2</font></div><div style=3D"font-family: Helvetica; font-size: medium; =
"><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">| ERROR: =
oe_runmake failed</font></div><div style=3D"font-family: Helvetica; =
font-size: medium; "><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">NOTE: package u-boot-2011.12-r2: task do_compile: =
Failed</font></div><div style=3D"font-family: Helvetica; font-size: =
medium; "><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">ERROR: Task 7 =
(/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_compile) failed with exit code '1'</font></div><div =
style=3D"font-family: Helvetica; font-size: medium; "><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">NOTE: Tasks =
Summary: Attempted 858 tasks of which 851 didn't need to be rerun and 1 =
failed.</font></div><div style=3D"font-family: Helvetica; font-size: =
medium; "><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div style=3D"font-family: Helvetica; =
font-size: medium; "><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Summary: 1 task failed:</font></div><div style=3D"font-family: =
Helvetica; font-size: medium; "><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; =
/tool/yocto/meta-gumstix/recipes-bsp/u-boot/u-boot_2011.12.bb, =
do_compile</font></div></font></div><span class=3D"Apple-style-span" =
style=3D"font-family: Monaco; font-size: small; "><div =
style=3D"font-family: Helvetica; font-size: medium; "><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div></span></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div><div><br></div><div>file: =
overo.inc</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">require =
conf/machine/include/omap3.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"># Increase this everytime you change =
something in the kernel</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">MACHINE_KERNEL_PR =3D =
"r1"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">KERNEL_IMAGETYPE =3D =
"uImage"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">UBOOT_ENTRYPOINT =3D =
"0x80008000"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">UBOOT_LOADADDRESS =3D =
"0x80008000"</font></div></div><div><br></div><div>file: =
overo-fire-chestnut43.conf</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">#@TYPE: =
Machine</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">#@NAME: Overo Fire Chestnut43 machine</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">#@DESCRIPTION: =
Machine configuration for the Gumstix Overo Fire TI OMAP3530 COM module =
with the Chestnut43 LCD expansion board.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">require =
conf/machine/include/overo.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"># u-boot</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">EXTRA_IMAGEDEPENDS =
+=3D "u-boot"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PREFERRED_PROVIDER_virtual/bootloader =3D =
"u-boot"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">UBOOT_ARCH =3D "arm"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">UBOOT_MACHINE =3D =
"omap3_overo_config"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PREFERRED_VERSION_pn-u-boot =3D =
"2011.12"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># =
x-load</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">EXTRA_IMAGEDEPENDS +=3D "x-load"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">XLOAD_MACHINE =3D =
"overo_config"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># kernel =
provider</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">PREFERRED_PROVIDER_virtual/kernel =3D =
"linux-omap"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># xserver =
provider</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">PREFERRED_PROVIDER_virtual/xserver =3D =
"xserver-xorg"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">XSERVER =3D "xserver-xorg =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;xf86-input-evdev =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;xf86-input-mouse =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;xf86-video-omapfb =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;xf86-input-keyboard =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;xf86-input-tslib"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">GUI_MACHINE_CLASS =
=3D "smallscreen"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">IMAGE_FSTYPES +=3D =
"ubi tar.bz2"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># do ubiattach =
/dev/ubi_ctrl -m 4</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"># =46rom dmesg:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># UBI: smallest =
flash I/O unit: &nbsp; &nbsp;2048</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2"># UBI: logical =
eraseblock size: &nbsp; &nbsp;129024 =
bytes</font></div></div></body></html>=

--Apple-Mail=_1B76B006-9834-4293-BE6E-8593AE6CE245--
