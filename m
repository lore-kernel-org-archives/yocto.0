Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7667E0144B
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 13:59:44 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2255400pbb.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 13:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=Un6WULIXywF+W9LHi5CbPOyFcilwpGieOWtsx2PiigA=;
	b=hx1eCSq8yzbAy/B1XktR7D0auewgvCcKinzyE9OI5HOe8ReFugrw3+5tSUFxTEIylm
	Gnnh/6+ZbFfVipIXX8f5KkdIXRfx4nyJB0rfrL1zJn6htM6juMC6h8mS+SK67R7YWQG3
	k7pvukYUx/0fBzKOCbzKto8bAtFuUrczj091AWObS7Iew1c40neSQZVV4pdWzuXtNgdT
	y8Z9jBFbB2tfVaUO9OVp4wIuXIc8gruAy7RL0IdGAwnNlds2T2fysUnrPXX69JQ/N6Ss
	JDfaG1ZaMdqQ53qKw8kRBNg5zJLrIB8CenjHtBIM3eDBAmxUX5+fiMCvEsPo0Iijokbh
	hEZQ==
Received: by 10.68.225.231 with SMTP id rn7mr386787pbc.13.1344027584396;
	Fri, 03 Aug 2012 13:59:44 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id og4sm3581720pbb.48.2012.08.03.13.59.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 03 Aug 2012 13:59:43 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
Date: Sat, 4 Aug 2012 00:59:37 +0400
Message-Id: <654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1278)
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
X-List-Received-Date: Fri, 03 Aug 2012 20:59:44 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_92A57BC5-7079-406D-A981-B74EA784C034"

--Apple-Mail=_92A57BC5-7079-406D-A981-B74EA784C034
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Jul 31, 2012, at 9:27 PM, Elvis Dowson wrote:

> I am unable to get a serial console login prompt using yocto generate =
rootfilesystem (core-image-minimal), for a PowerPC 440 target.=20

I'm now starting the process of debugging the init process step by step.=20=


I've just updated to the latest gcc-4.7.2 commit, as of today

SRCREV =3D "1653160670db186c6243997447ecbe6ce5056648"

I've created a simple hello world program, and used that as init, and I =
get an output as expected:

zImage starting: loaded at 0x00800000 (sp: 0x00d7bfb0)                   =
 =20
Allocating 0x540e0c bytes for kernel ...                                 =
 =20
gunzipping (0x00000000 <- 0x0080f000:0x00a17dda)...done 0x4235c0 bytes
Attached initrd image at 0x00a18000-0x00d7a3e1
initrd head: 0x1f8b0808

Linux/PowerPC load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw =
rootwait init=3D/init
Finalizing device tree... flat tree at 0xd880e0
 PM: Adding info for No Bus:ttyv9
[    0.476678] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.481983] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) is =
a 16550
[    0.677477] console [ttyS0] enabled
[    0.741448] brd: module loaded
[    0.788283] loop: module loaded
[    0.825575] xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12
[    0.902300] xsysace 83600000.sysace: No CF in slot
[    0.961302] Xilinx SystemACE device driver, major=3D254
[    1.022246] xilinx_emaclite 81000000.ethernet: Device Tree Probing
[    1.095778] xilinx_emaclite 81000000.ethernet: error registering MDIO =
bus
[    1.176850] xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:b7:78:00
[    1.270544] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17
[    1.385416] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'
[    1.454651] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd1036000, irq=3D22
[    1.554024] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'
[    1.623705] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped =
to 0xd1038000, irq=3D23
[    1.724252] mousedev: PS/2 mouse device common for all mice
[    1.791648] i2c /dev entries driver
[    1.833441] Device Tree Probing 'i2c'
[    1.877646] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, irq=3D18
[    1.955298] TCP cubic registered
[    1.993143] NET: Registered protocol family 17
[    2.790356] atkbd serio0: keyboard reset failed on xilinxps2/serio at =
81480000
[    3.274628] RAMDISK: gzip image found at block 0
[    3.798553] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0
[    4.178791] VFS: Mounted root (ext2 filesystem) on device 1:0.
[    4.248993] Freeing unused kernel memory: 152k freed

Hello world from myinit.c!

Inside the ramdisk, I just have a /dev folder, and it has nodes for =
console and ttyS0. So this means that the Xilinx hardware project using =
xps_uart16550_v3_00_a and the kernel drivers, etc, are all working.

Now to try to debug the init process.

Best regards,

Elvis Dowson=

--Apple-Mail=_92A57BC5-7079-406D-A981-B74EA784C034
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Jul 31, 2012, at 9:27 PM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; "><div>I am unable to get =
a serial console login prompt using yocto generate rootfilesystem =
(core-image-minimal), for a PowerPC 440 =
target.&nbsp;</div></div></blockquote><br></div><div>I'm now starting =
the process of debugging the init process step by =
step.&nbsp;</div><div><br></div><div>I've just updated to the latest =
gcc-4.7.2 commit, as of today</div></div><div><br></div><div><span =
class=3D"Apple-style-span" style=3D"font-family: Monaco; font-size: =
small; ">SRCREV =3D =
"1653160670db186c6243997447ecbe6ce5056648"</span></div><div><span =
class=3D"Apple-style-span" style=3D"font-family: Monaco; font-size: =
small; "><br></span></div><div>I've created a simple hello world =
program, and used that as init, and I get an output as =
expected:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">zImage starting: loaded at 0x00800000 (sp: =
0x00d7bfb0) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Allocating 0x540e0c bytes for kernel ... =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">gunzipping (0x00000000 &lt;- =
0x0080f000:0x00a17dda)...done 0x4235c0 bytes</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Attached initrd =
image at 0x00a18000-0x00d7a3e1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">initrd head: =
0x1f8b0808</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linux/PowerPC =
load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw rootwait =
init=3D/init</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Finalizing device tree... flat tree at =
0xd880e0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp;PM: Adding info for No =
Bus:ttyv9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.476678] Serial: 8250/16550 =
driver, 4 ports, IRQ sharing disabled</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.481983] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) =
is a 16550</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.677477] console [ttyS0] =
enabled</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.741448] brd: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.788283] loop: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.825575] xsysace 83600000.sysace: Xilinx =
SystemACE revision 1.0.12</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.902300] xsysace 83600000.sysace: No CF in =
slot</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.961302] Xilinx SystemACE device driver, =
major=3D254</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.022246] xilinx_emaclite =
81000000.ethernet: Device Tree Probing</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.095778] xilinx_emaclite 81000000.ethernet: error registering =
MDIO bus</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;1.176850] xilinx_emaclite 81000000.ethernet: =
MAC address is now 00:0a:35:b7:78:00</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.270544] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.385416] xilinx_ps2 81480000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.454651] xilinx_ps2 81480000.ps2: Xilinx PS2 =
at 0x81480000 mapped to 0xd1036000, irq=3D22</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.554024] xilinx_ps2 81481000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.623705] xilinx_ps2 81481000.ps2: Xilinx PS2 =
at 0x81481000 mapped to 0xd1038000, irq=3D23</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.724252] mousedev: PS/2 mouse device common for all =
mice</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.791648] i2c /dev entries =
driver</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.833441] Device Tree Probing =
'i2c'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.877646] xilinx-iic #0 at 0x81600000 mapped =
to 0xD10C0000, irq=3D18</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.955298] TCP cubic =
registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.993143] NET: Registered =
protocol family 17</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.790356] atkbd serio0: =
keyboard reset failed on xilinxps2/serio at =
81480000</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;3.274628] RAMDISK: gzip image found at block =
0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;3.798553] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;4.178791] VFS: Mounted root (ext2 filesystem) on device =
1:0.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;4.248993] Freeing unused kernel memory: 152k =
freed</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Hello world from =
myinit.c!</font></div><div><br></div></div><div>Inside the ramdisk, I =
just have a /dev folder, and it has nodes for console and ttyS0. So this =
means that the Xilinx hardware project using xps_uart16550_v3_00_a and =
the kernel drivers, etc, are all working.</div><div><br></div><div>Now =
to try to debug the init process.</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_92A57BC5-7079-406D-A981-B74EA784C034--
