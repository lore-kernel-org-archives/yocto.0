Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E94B3E0044A
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 09:47:43 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so283894pbb.35
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 09:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:mime-version:content-type:subject:date:in-reply-to:to
	:references:message-id:x-mailer;
	bh=w6GGIcGRganSWZOU+wiXQtYn2BpHo3frbm34xx37rkg=;
	b=EIEz1bMng64u+bjGCq6daec8gapqrHHZm5OT3ujof9MMA2Z5Z+sXxdtR/EegThRGtx
	hEixsqQuq03IGBJBm5UXoUezVV/wv1s3yqz0g/X3yn4NzEm3wZ954lJ9e+pgahvdfsuM
	ETSCRJ0Lat9bCaWLJHPBsicZrUE877w97aa2qMsElrIKkLoDM9cl4tCXjdBaRrLWVTbo
	pOo2KY+CWYpEksIr8ydy2yj91mYpcx19Z6Si+lsbvx/iVgjC8KdyfztkgxmB2VyUSmgN
	rdr+NsEj7Nrv7Nm9Il74nH7FK3XEmmAABm9N6I1xgQoSQyczSVnoUzUUQaPhVT4577/I
	gwbA==
Received: by 10.68.221.72 with SMTP id qc8mr5462877pbc.63.1344530863688;
	Thu, 09 Aug 2012 09:47:43 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id gv1sm1454492pbc.38.2012.08.09.09.47.40
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 09 Aug 2012 09:47:42 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Mime-Version: 1.0 (Apple Message framework v1278)
Date: Thu, 9 Aug 2012 20:47:37 +0400
In-Reply-To: <CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
Message-Id: <ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
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
X-List-Received-Date: Thu, 09 Aug 2012 16:47:44 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B01FC749-D353-45A2-AE43-EDFDAA195C3E"

--Apple-Mail=_B01FC749-D353-45A2-AE43-EDFDAA195C3E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
       I switched to using gcc-4.6 from the meta-openembedded layer, and =
still get the same issue, i.e. no login or bash prompt with init=3D/bin/sh=


zImage starting: loaded at 0x00800000 (sp: 0x016d2fa0)
Allocating 0x546e0c bytes for kernel ...
gunzipping (0x00000000 <- 0x0080f000:0x00a14e83)...done 0x4295c0 bytes
Attached initrd image at 0x00a15000-0x016d1e57
initrd head: 0x1f8b0808

Linux/PowerPC load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw =
rootwait init=3D/bin/sh
Finalizing device tree... flat tree at 0x16df0e0
 PM: Adding info for No Bus:ttyv9
[    0.571186] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.576568] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) is =
a 16550
[    0.772047] console [ttyS0] enabled
[    0.836379] brd: module loaded
[    0.883293] loop: module loaded
[    0.920576] xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12
[    0.997321] xsysace 83600000.sysace: No CF in slot
[    1.056390] Xilinx SystemACE device driver, major=3D254
[    1.117274] xilinx_emaclite 81000000.ethernet: Device Tree Probing
[    1.190788] xilinx_emaclite 81000000.ethernet: error registering MDIO =
bus
[    1.271877] xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:b7:78:00
[    1.365554] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17
[    1.480513] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'
[    1.549769] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd1036000, irq=3D22
[    1.649154] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'
[    1.718826] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped =
to 0xd1038000, irq=3D23
[    1.819612] mousedev: PS/2 mouse device common for all mice
[    1.887013] i2c /dev entries driver
[    1.928583] Device Tree Probing 'i2c'
[    1.972867] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, irq=3D18
[    2.050528] TCP cubic registered
[    2.088448] NET: Registered protocol family 17
[    2.882860] atkbd serio0: keyboard reset failed on xilinxps2/serio at =
81480000
[    3.367142] RAMDISK: gzip image found at block 0
[    3.895064] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0
[    6.255216] EXT2-fs (ram0): warning: mounting unchecked fs, running =
e2fsck is recommended
[    6.352491] VFS: Mounted root (ext2 filesystem) on device 1:0.
[    6.423252] Freeing unused kernel memory: 156k freed

gdb, connected to the target board via JTAG to debug the kernel, also =
doesn't seem to complain:

(gdb) syslog
 device: 'input0': device_add
<7>[    3.890268] PM: Adding info for No Bus:input0
<6>[    3.895007] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0
<7>[    4.110886] driver: 'serio1': driver_bound: bound to device =
'atkbd'
<7>[    4.110922] bus: 'serio': really_probe: bound device serio1 to =
driver atkbd
<7>[    4.110956] bus: 'serio': driver_probe_device: matched device =
serio0 with driver psmouse
<7>[    4.110975] bus: 'serio': really_probe: probing driver psmouse =
with device serio0
<7>[    4.310941] psmouse: probe of serio0 rejects match -19
<4>[    6.259162] EXT2-fs (ram0): warning: mounting unchecked fs, =
running e2fsck is recommended
<6>[    6.356473] VFS: Mounted root (ext2 filesystem) on device 1:0.
<6>[    6.427235] Freeing unused kernel memory: 156k freed

So weird.=20

Best regards,

Elvis Dowson=

--Apple-Mail=_B01FC749-D353-45A2-AE43-EDFDAA195C3E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; &nbsp;I switched to using gcc-4.6 from =
the meta-openembedded layer, and still get the same issue, i.e. no login =
or bash prompt with init=3D/bin/sh</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">zImage starting: =
loaded at 0x00800000 (sp: 0x016d2fa0)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Allocating =
0x546e0c bytes for kernel ...</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">gunzipping =
(0x00000000 &lt;- 0x0080f000:0x00a14e83)...done 0x4295c0 =
bytes</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Attached initrd image at =
0x00a15000-0x016d1e57</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">initrd head: =
0x1f8b0808</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linux/PowerPC =
load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw rootwait =
init=3D/bin/sh</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Finalizing device tree... flat tree at =
0x16df0e0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;PM: Adding info for No =
Bus:ttyv9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.571186] Serial: 8250/16550 =
driver, 4 ports, IRQ sharing disabled</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.576568] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) =
is a 16550</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.772047] console [ttyS0] =
enabled</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.836379] brd: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.883293] loop: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.920576] xsysace 83600000.sysace: Xilinx =
SystemACE revision 1.0.12</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.997321] xsysace 83600000.sysace: No CF in =
slot</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.056390] Xilinx SystemACE device driver, =
major=3D254</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.117274] xilinx_emaclite =
81000000.ethernet: Device Tree Probing</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.190788] xilinx_emaclite 81000000.ethernet: error registering =
MDIO bus</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;1.271877] xilinx_emaclite 81000000.ethernet: =
MAC address is now 00:0a:35:b7:78:00</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.365554] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.480513] xilinx_ps2 81480000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.549769] xilinx_ps2 81480000.ps2: Xilinx PS2 =
at 0x81480000 mapped to 0xd1036000, irq=3D22</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.649154] xilinx_ps2 81481000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.718826] xilinx_ps2 81481000.ps2: Xilinx PS2 =
at 0x81481000 mapped to 0xd1038000, irq=3D23</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.819612] mousedev: PS/2 mouse device common for all =
mice</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.887013] i2c /dev entries =
driver</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.928583] Device Tree Probing =
'i2c'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.972867] xilinx-iic #0 at 0x81600000 mapped =
to 0xD10C0000, irq=3D18</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.050528] TCP cubic =
registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.088448] NET: Registered =
protocol family 17</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.882860] atkbd serio0: =
keyboard reset failed on xilinxps2/serio at =
81480000</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;3.367142] RAMDISK: gzip image found at block =
0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;3.895064] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;6.255216] EXT2-fs (ram0): warning: mounting unchecked fs, running =
e2fsck is recommended</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;6.352491] VFS: Mounted root =
(ext2 filesystem) on device 1:0.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;6.423252] Freeing unused kernel memory: 156k =
freed</font></div><div><br></div></div><div>gdb, connected to the target =
board via JTAG to debug the kernel, also doesn't seem to =
complain:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">(gdb) syslog</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;device: =
'input0': device_add</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&lt;7&gt;[ &nbsp; &nbsp;3.890268] PM: Adding =
info for No Bus:input0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&lt;6&gt;[ &nbsp; &nbsp;3.895007] input: AT =
Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&lt;7&gt;[ =
&nbsp; &nbsp;4.110886] driver: 'serio1': driver_bound: bound to device =
'atkbd'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&lt;7&gt;[ &nbsp; &nbsp;4.110922] bus: 'serio': really_probe: =
bound device serio1 to driver atkbd</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&lt;7&gt;[ &nbsp; =
&nbsp;4.110956] bus: 'serio': driver_probe_device: matched device serio0 =
with driver psmouse</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&lt;7&gt;[ &nbsp; &nbsp;4.110975] bus: =
'serio': really_probe: probing driver psmouse with device =
serio0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&lt;7&gt;[ &nbsp; &nbsp;4.310941] psmouse: probe of serio0 =
rejects match -19</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&lt;4&gt;[ &nbsp; &nbsp;6.259162] EXT2-fs =
(ram0): warning: mounting unchecked fs, running e2fsck is =
recommended</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&lt;6&gt;[ &nbsp; &nbsp;6.356473] VFS: =
Mounted root (ext2 filesystem) on device 1:0.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&lt;6&gt;[ &nbsp; =
&nbsp;6.427235] Freeing unused kernel memory: 156k =
freed</font></div></div><div><br></div><div>So =
weird.&nbsp;</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></body></html>=

--Apple-Mail=_B01FC749-D353-45A2-AE43-EDFDAA195C3E--
