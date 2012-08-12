Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3AE4E01388
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 13:02:27 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so6274802pbb.35
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 13:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=V++Bra5o4FAlL4kn8/GrFyZ3ujwjZPj3+bGq1jHQVYE=;
	b=X4HerbcNK9NqK+MZMPJsvU6/iCXBmoPIv+LFEulzJpafNDEh5fYsSYUaV0Yi2rKyds
	ZBdb2jMQiO3I6xHgi3d/oeAaNR/WqIkM1ERLp8/MP2D6iWqgDsO7OVrKTqZqEcNd0KdB
	kjT0t8QJSU5qfQ05d5W/UmqpIUCTB+3l6oDTC3wcwrlnxZksjUvxS1Fe1vOpWQoM1eja
	gDs090OQy5EP//svh/tMET0GxxJZNclqLErUhHBNkh6B1fh5hCEIG+03uzoqyxnXe2h2
	A7bB9mFH6kBiAyeGs1iGYQfnKFVtHidqgScVJOHIYx982NhhkKALlBYscPiA5Vh9PLMz
	lhJg==
Received: by 10.68.227.201 with SMTP id sc9mr14109400pbc.163.1344801747170;
	Sun, 12 Aug 2012 13:02:27 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id sj5sm3837040pbc.30.2012.08.12.13.02.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 12 Aug 2012 13:02:26 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1soVRDxAQ86HPpPMEB9WL142HCWkOHVqXhGQSN9b4290UQ@mail.gmail.com>
Date: Mon, 13 Aug 2012 00:02:21 +0400
Message-Id: <EF97732B-ED65-436C-BC5F-DCB334E077A8@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
	<AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
	<E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
	<D5CC2FFB-E56B-41B1-BC70-9DFC41F54988@gmail.com>
	<CAMKF1soVRDxAQ86HPpPMEB9WL142HCWkOHVqXhGQSN9b4290UQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Sun, 12 Aug 2012 20:02:27 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E2FF1F9F-59CF-49D9-A438-A6E98B6EA752"

--Apple-Mail=_E2FF1F9F-59CF-49D9-A438-A6E98B6EA752
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Khem,
                   I've made tangential progress!!=20

I found out that Denx had a bunch of pre-built rootfilesystems, =
generated from yocto/denzil branch.=20

I took the core-image-core-generic-powerpc-4xx-softfloat.tar.gz from the =
following location:

ftp://ftp.denx.de/pub/eldk/5.2.1/targets/powerpc-4xx-softfloat=20

I used the linux-xilinx-3.3.0 kernel that I built earlier (since the =
linux sources are independent) with gcc-4.5.1, and use the pre-build =
root filesystem, and guess what, I get the bash prompt!!

zImage starting: loaded at 0x00800000 (sp: 0x016defa0)                   =
                                         =20
Allocating 0x54cf4c bytes for kernel ...                                 =
                                         =20
gunzipping (0x00000000 <- 0x0080f000:0x00a1aedf)...done 0x42f600 bytes   =
                                         =20
Attached initrd image at 0x00a1b000-0x016ddb0f                           =
                                         =20
initrd head: 0x1f8b0808                                                  =
                                         =20
                                                                         =
                                         =20
Linux/PowerPC load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw =
rootwait init=3D/bin/sh                            =20
Finalizing device tree... flat tree at 0x16eb0e0                         =
                                         =20
 PM: Adding info for No Bus:ttyv9                                        =
                                         =20
[    0.572492] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled  =
                                         =20
[    0.577880] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) is =
a 16550                                    =20
[    0.773419] console [ttyS0] enabled                                   =
                                         =20
[    0.818736] brd: module loaded                                        =
                                         =20
[    0.865394] loop: module loaded                                       =
                                         =20
[    0.902715] xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12 =
                                         =20
[    0.979410] xsysace 83600000.sysace: No CF in slot                    =
                                         =20
[    1.038416] Xilinx SystemACE device driver, major=3D254               =
                                           =20
[    1.099449] xilinx_emaclite 81000000.ethernet: Device Tree Probing    =
                                         =20
[    1.172953] xilinx_emaclite 81000000.ethernet: error registering MDIO =
bus                                      =20
[    1.254057] xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:b7:78:00                            =20
[    1.347806] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17      =20
[    1.462670] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'        =
                                         =20
[    1.531949] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd1036000, irq=3D22                     =20
[    1.631395] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'        =
                                         =20
[    1.701014] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped =
to 0xd1038000, irq=3D23                     =20
[    1.801542] mousedev: PS/2 mouse device common for all mice           =
                                         =20
[    1.869031] i2c /dev entries driver                                   =
                                         =20
[    1.910602] Device Tree Probing 'i2c'                                 =
                                         =20
[    1.954862] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, irq=3D18 =
                                          =20
[    2.032541] TCP cubic registered                                      =
                                         =20
[    2.070347] NET: Registered protocol family 17                        =
                                         =20
[    2.867055] atkbd serio0: keyboard reset failed on xilinxps2/serio at =
81480000                                 =20
[    3.351351] RAMDISK: gzip image found at block 0                      =
                                         =20
[    3.875264] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0          =20
[    6.223416] EXT2-fs (ram0): warning: mounting unchecked fs, running =
e2fsck is recommended                      =20
[    6.320721] VFS: Mounted root (ext2 filesystem) on device 1:0.        =
                                         =20
[    6.391510] Freeing unused kernel memory: 160k freed                  =
                                         =20
/bin/sh: can't access tty; job control turned off                        =
                                         =20
/ #=20

The following link gives some useful information about ELDK 5.2.1: =
http://www.denx.de/wiki/ELDK-5/WebHome=20

Looking at the denx git repository for the eldk-5.2.1 branch, you find =
that the eglibc recipes for the denzil branch are still at 2.13 and 2.15

=
http://git.denx.de/?p=3Deldk.git;a=3Dtree;f=3Dmeta/recipes-core/eglibc;h=3D=
9e2d141f608f42b259651ec928efde803f1dd077;hb=3Drefs/heads/eldk-rel-v5.2

In conclusion, one potential solution exists, which is to use the ELDK =
repo, and build the ELDK toolchain for my target.

However, I will continue to try to find out why the current yocto master =
repo is failing, and try to see if I can isolate the problem.

I've just finished rebuilding yocto/master with gcc-4.5.1 and =
eglibc-2.13. So will test it out and let you know how it goes!

Thanks for all your help and patience!!

Best regards,

Elvis Dowson=

--Apple-Mail=_E2FF1F9F-59CF-49D9-A438-A6E98B6EA752
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Khem,<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;I've made tangential progress!!&nbsp;</div><div><br></div><div>I =
found out that Denx had a bunch of pre-built rootfilesystems, generated =
from yocto/denzil branch.&nbsp;</div><div><br></div><div>I took =
the&nbsp;core-image-core-generic-powerpc-4xx-softfloat.tar.gz from the =
following location:</div><div><br></div><div><a =
href=3D"ftp://ftp.denx.de/pub/eldk/5.2.1/targets/powerpc-4xx-softfloat" =
target=3D"_top" style=3D"color: rgb(0, 102, 204); background-color: =
rgb(255, 255, 255); text-decoration: underline; font-family: verdana, =
helvetica, arial, sans-serif; font-size: 13px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: 19px; orphans: 2; text-align: justify; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
">ftp://ftp.denx.de/pub/eldk/5.2.1/targets/powerpc-4xx-softfloat</a><span =
style=3D"color: rgb(0, 0, 0); font-family: verdana, helvetica, arial, =
sans-serif; font-size: 13px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: 19px; orphans: =
2; text-align: justify; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
background-color: rgb(255, 255, 255); display: inline !important; float: =
none; ">&nbsp;</span></div><div><br></div><div>I used the =
linux-xilinx-3.3.0 kernel that I built earlier (since the linux sources =
are independent) with gcc-4.5.1, and use the pre-build root filesystem, =
and guess what, I get the bash =
prompt!!</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">zImage starting: loaded at 0x00800000 (sp: =
0x016defa0) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Allocating 0x54cf4c bytes for kernel ... =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">gunzipping (0x00000000 &lt;- =
0x0080f000:0x00a1aedf)...done 0x42f600 bytes &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Attached initrd image at =
0x00a1b000-0x016ddb0f &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">initrd head: 0x1f8b0808 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Linux/PowerPC load: console=3DttyS0,9600n8 =
ip=3Doff root=3D/dev/ram rw rootwait init=3D/bin/sh &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Finalizing device tree... flat tree at =
0x16eb0e0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;PM: Adding =
info for No Bus:ttyv9 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.572492] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.577880] 83e00000.serial: =
ttyS0 at MMIO 0x83e01003 (irq =3D 20) is a 16550 &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.773419] console [ttyS0] enabled &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.818736] brd: module loaded &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.865394] loop: module loaded &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.902715] xsysace 83600000.sysace: Xilinx SystemACE revision =
1.0.12 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.979410] xsysace =
83600000.sysace: No CF in slot &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.038416] Xilinx SystemACE device driver, major=3D254 &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.099449] xilinx_emaclite =
81000000.ethernet: Device Tree Probing &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.172953] xilinx_emaclite 81000000.ethernet: =
error registering MDIO bus &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.254057] xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:b7:78:00 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.347806] xilinx_emaclite =
81000000.ethernet: Xilinx EmacLite at 0x81000000 mapped to 0xD10A0000, =
irq=3D17 &nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.462670] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2' =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.531949] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd1036000, irq=3D22 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.631395] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2' =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.701014] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped =
to 0xd1038000, irq=3D23 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.801542] mousedev: PS/2 mouse device common for all mice &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.869031] i2c /dev entries driver &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.910602] Device Tree Probing 'i2c' &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.954862] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, irq=3D18=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.032541] TCP cubic registered =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;2.070347] NET: Registered protocol family 17 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.867055] atkbd serio0: =
keyboard reset failed on xilinxps2/serio at 81480000 &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;3.351351] RAMDISK: gzip image found at block 0 &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;3.875264] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0 &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;6.223416] EXT2-fs (ram0): warning: mounting unchecked fs, running =
e2fsck is recommended &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;6.320721] VFS: Mounted root (ext2 filesystem) on device 1:0. =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;6.391510] Freeing unused kernel memory: 160k freed &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/bin/sh: can't access tty; job control turned off &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">/ =
#&nbsp;</font></div></div><div><br></div><div>The following link gives =
some useful information about ELDK 5.2.1: <a =
href=3D"http://www.denx.de/wiki/ELDK-5/WebHome">http://www.denx.de/wiki/EL=
DK-5/WebHome</a>&nbsp;</div><div><br></div><div>Looking at the denx git =
repository for the eldk-5.2.1 branch, you find that the eglibc recipes =
for the denzil branch are still at 2.13 and =
2.15</div><div><br></div><div><a =
href=3D"http://git.denx.de/?p=3Deldk.git;a=3Dtree;f=3Dmeta/recipes-core/eg=
libc;h=3D9e2d141f608f42b259651ec928efde803f1dd077;hb=3Drefs/heads/eldk-rel=
-v5.2">http://git.denx.de/?p=3Deldk.git;a=3Dtree;f=3Dmeta/recipes-core/egl=
ibc;h=3D9e2d141f608f42b259651ec928efde803f1dd077;hb=3Drefs/heads/eldk-rel-=
v5.2</a></div><div><br></div><div>In conclusion, one potential solution =
exists, which is to use the ELDK repo, and build the ELDK toolchain for =
my target.</div><div><br></div><div>However, I will continue to try to =
find out why the current yocto master repo is failing, and try to see if =
I can isolate the problem.</div><div><br></div><div>I've just finished =
rebuilding yocto/master with gcc-4.5.1 and eglibc-2.13. So will test it =
out and let you know how it goes!</div><div><br></div><div>Thanks for =
all your help and patience!!</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_E2FF1F9F-59CF-49D9-A438-A6E98B6EA752--
