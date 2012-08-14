Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD454E002AC
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 23:33:07 -0700 (PDT)
Received: by yenm12 with SMTP id m12so53979yen.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 23:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=ezaaS8AXAKAU7izNBFm7grOt4R4asR3lrNP7WLgiuFE=;
	b=mLnPzhZmRzlTX+WOkDjR0H2OOKAsGgb0BPk7G8CKDrKAEVSaTZuXiWF8kD0Sq/2AYH
	la6GG0xBEVxocg4sb+8jzxVXHO7DJJHV84mDZnN+QgjQZkicSD57T3FqqeVFgHtfBkhX
	9DBEMKvsHQ1zu4u1ZaQQ346EXJOYdScGq8sIh/5XsEw9DBB1gEEmmjaMcNWMhYI20dSv
	9zd60JVy43vxsMlfiOmNqCvuhtQdA2oaPea+h4ZeYa+i2ZDzj0FCJe0FqFZn4g8mqT3z
	0L5uCUeT+3dciIJGiM5eBl7+WH/7ZdzFDvXjGBo1vUTEh4pytHN6OSX3MbhZ9oSJEZsH
	SG7w==
Received: by 10.68.231.168 with SMTP id th8mr21865925pbc.14.1344925986720;
	Mon, 13 Aug 2012 23:33:06 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id rd7sm521431pbc.70.2012.08.13.23.33.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 13 Aug 2012 23:33:06 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1soQ3o7E6h86xbD9Wh8jCGzHEKmvzpwpYXKjePGcQe-+Yg@mail.gmail.com>
Date: Tue, 14 Aug 2012 10:32:59 +0400
Message-Id: <6047F1EE-6246-490D-BEC3-EE93F40439FE@gmail.com>
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
	<651EC518-2C02-4A13-8AE7-0D118BCB3719@gmail.com>
	<CAMKF1sp5hQKC3fEd4TnXHnPMjPyEsCmWHOUuHdd4RLMZMZZb0w@mail.gmail.com>
	<50739671-4885-4C82-9360-C3376960B165@gmail.com>
	<3E8B6BA0-C1A9-4861-B1A1-F15BAAB7B3ED@gmail.com>
	<CAMKF1soQ3o7E6h86xbD9Wh8jCGzHEKmvzpwpYXKjePGcQe-+Yg@mail.gmail.com>
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
X-List-Received-Date: Tue, 14 Aug 2012 06:33:08 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_ADBF9F7A-B800-4F05-9E69-E0D339025DE9"

--Apple-Mail=_ADBF9F7A-B800-4F05-9E69-E0D339025DE9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Khem,
                  I also just tried gcc-4.6.3 and eglibc-2.13, and I get =
a segmentation fault while running /bin/getty, and a kernel panic when =
running init=3D/bin/bash, building off poky/master branch recipes.=20

zImage starting: loaded at 0x00800000 (sp: 0x0185dfa0)
Allocating 0x548f0c bytes for kernel ...
gunzipping (0x00000000 <- 0x0080f000:0x00a1563f)...done 0x42b5c0 bytes
Attached initrd image at 0x00a16000-0x0185ce95
initrd head: 0x1f8b0808

Linux/PowerPC load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw =
rootwait init=3D/bin/sh
Finalizing device tree... flat tree at 0x186a0e0
 PM: Adding info for No Bus:ttyv9
[    0.588026] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.593401] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) is =
a 16550
[    0.788848] console [ttyS0] enabled
[    0.834170] brd: module loaded
[    0.880867] loop: module loaded
[    0.918134] xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12
[    0.994836] xsysace 83600000.sysace: No CF in slot
[    1.053840] Xilinx SystemACE device driver, major=3D254
[    1.114793] xilinx_emaclite 81000000.ethernet: Device Tree Probing
[    1.188315] xilinx_emaclite 81000000.ethernet: error registering MDIO =
bus
[    1.269388] xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:b7:78:00
[    1.363146] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17
[    1.477955] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'
[    1.547173] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd1036000, irq=3D22
[    1.646551] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'
[    1.716251] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped =
to 0xd1038000, irq=3D23
[    1.816836] mousedev: PS/2 mouse device common for all mice
[    1.884361] i2c /dev entries driver
[    1.925909] Device Tree Probing 'i2c'
[    1.970181] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, irq=3D18
[    2.047926] TCP cubic registered
[    2.085783] NET: Registered protocol family 17
[    2.882898] atkbd serio0: keyboard reset failed on xilinxps2/serio at =
81480000
[    3.367192] RAMDISK: gzip image found at block 0
[    3.891097] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0
[    6.271270] EXT2-fs (ram0): warning: mounting unchecked fs, running =
e2fsck is recommended
[    6.368556] VFS: Mounted root (ext2 filesystem) on device 1:0.
[    6.439318] Freeing unused kernel memory: 156k freed
/bin/sh: can't access tty; job control turned off
[    6.583032] Kernel panic - not syncing: Attempted to kill init!
[    6.653114] Rebooting in 180 seconds..

So, in summary:

The following combinations didn't work for the poky/master branch
gcc-4.5.1, eglibc-2.15, binutils-2.22
gcc-4.5.1, eglibc-2.16, binutils-2.22
gcc-4.6.3, eglibc-2.13, binutils-2.22
gcc-4.7.2, eglibc-2.13, binutils-2.22

The combinations that worked are
gcc-4.5.1, eglibc-2.13, binutils-2.22 (from poky/master)
gcc-4.6.3, eglibc-2.13, binutils-2.22 (from the Denx ELDK 5.2.1 release, =
which corresponds to the denzil release)


What would you like me to do next, to try and narrow down this issue?=20

Some things that I can try are:

a. build gcc-4.6.3, eglibc-2.13, binutils-2.22 (from poky/denzil branch, =
to establish a known good build data point)
b. try and build gcc-4.8.0, with eglibc-2.13, binutils-2.22 (I prepare a =
gcc-4.8 recipe already, but need to try it out)
c. try eglibc-2.13/2.15/2.16 combination with gcc-4.5.1 and =
binutils-2.22 on a different architecture (e.g. TI OMAP 3530 ARM Cortex =
A8 Gumstix Overo, TI OMAP 4430 PandaBoard, Xilinx Zynq-7020 Dual ARM =
Cortex A9)
    just to see if the problem manifests on different architectures as =
well

Best regards,

Elvis Dowson=

--Apple-Mail=_ADBF9F7A-B800-4F05-9E69-E0D339025DE9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Khem,<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
I also just tried gcc-4.6.3 and eglibc-2.13, and I get a segmentation =
fault while running /bin/getty, and a kernel panic when running =
init=3D/bin/bash, building off poky/master branch =
recipes.&nbsp;</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">zImage starting: =
loaded at 0x00800000 (sp: 0x0185dfa0)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Allocating =
0x548f0c bytes for kernel ...</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">gunzipping =
(0x00000000 &lt;- 0x0080f000:0x00a1563f)...done 0x42b5c0 =
bytes</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Attached initrd image at =
0x00a16000-0x0185ce95</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">initrd head: =
0x1f8b0808</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linux/PowerPC =
load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw rootwait =
init=3D/bin/sh</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Finalizing device tree... flat tree at =
0x186a0e0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;PM: Adding info for No =
Bus:ttyv9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.588026] Serial: 8250/16550 =
driver, 4 ports, IRQ sharing disabled</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.593401] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) =
is a 16550</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.788848] console [ttyS0] =
enabled</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.834170] brd: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.880867] loop: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.918134] xsysace 83600000.sysace: Xilinx =
SystemACE revision 1.0.12</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.994836] xsysace 83600000.sysace: No CF in =
slot</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.053840] Xilinx SystemACE device driver, =
major=3D254</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.114793] xilinx_emaclite =
81000000.ethernet: Device Tree Probing</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.188315] xilinx_emaclite 81000000.ethernet: error registering =
MDIO bus</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;1.269388] xilinx_emaclite 81000000.ethernet: =
MAC address is now 00:0a:35:b7:78:00</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.363146] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.477955] xilinx_ps2 81480000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.547173] xilinx_ps2 81480000.ps2: Xilinx PS2 =
at 0x81480000 mapped to 0xd1036000, irq=3D22</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.646551] xilinx_ps2 81481000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.716251] xilinx_ps2 81481000.ps2: Xilinx PS2 =
at 0x81481000 mapped to 0xd1038000, irq=3D23</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.816836] mousedev: PS/2 mouse device common for all =
mice</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.884361] i2c /dev entries =
driver</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.925909] Device Tree Probing =
'i2c'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.970181] xilinx-iic #0 at 0x81600000 mapped =
to 0xD10C0000, irq=3D18</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.047926] TCP cubic =
registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.085783] NET: Registered =
protocol family 17</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.882898] atkbd serio0: =
keyboard reset failed on xilinxps2/serio at =
81480000</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;3.367192] RAMDISK: gzip image found at block =
0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;3.891097] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;6.271270] EXT2-fs (ram0): warning: mounting unchecked fs, running =
e2fsck is recommended</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;6.368556] VFS: Mounted root =
(ext2 filesystem) on device 1:0.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;6.439318] Freeing unused kernel memory: 156k =
freed</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">/bin/sh: can't access tty; job control turned =
off</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;6.583032] Kernel panic - not syncing: =
Attempted to kill init!</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;6.653114] Rebooting in 180 =
seconds..</font></div></div><div><br></div><div>So, in =
summary:</div><div><br></div><div>The following combinations didn't work =
for the poky/master branch<br>gcc-4.5.1, eglibc-2.15, =
binutils-2.22<br>gcc-4.5.1, eglibc-2.16, =
binutils-2.22</div><div>gcc-4.6.3, eglibc-2.13, =
binutils-2.22<br>gcc-4.7.2, eglibc-2.13, binutils-2.22<br><br>The =
combinations that worked are<br>gcc-4.5.1, eglibc-2.13, binutils-2.22 =
(from poky/master)<br>gcc-4.6.3, eglibc-2.13, binutils-2.22 (from the =
Denx ELDK 5.2.1 release, which corresponds to the denzil =
release)</div><div><br></div><div><br></div><div>What would you like me =
to do next, to try and narrow down this =
issue?&nbsp;</div><div><br></div><div>Some things that I can try =
are:</div><div><br></div><div>a. build&nbsp;gcc-4.6.3, eglibc-2.13, =
binutils-2.22 (from poky/denzil branch, to establish a known good build =
data point)</div><div>b. try and build gcc-4.8.0, with&nbsp;eglibc-2.13, =
binutils-2.22 (I prepare a gcc-4.8 recipe already, but need to try it =
out)</div><div>c. try eglibc-2.13/2.15/2.16 combination =
with&nbsp;gcc-4.5.1 and&nbsp;binutils-2.22 on a different architecture =
(e.g. TI OMAP 3530 ARM Cortex A8 Gumstix Overo, TI OMAP 4430 PandaBoard, =
Xilinx Zynq-7020 Dual ARM Cortex A9)</div><div>&nbsp; &nbsp; just to see =
if the problem manifests on different architectures as =
well</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_ADBF9F7A-B800-4F05-9E69-E0D339025DE9--
