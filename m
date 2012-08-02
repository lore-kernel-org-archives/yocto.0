Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78150E002A9
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 09:51:55 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so10365024yhf.35
	for <yocto@yoctoproject.org>; Thu, 02 Aug 2012 09:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=0BIQPLea/qEXkZzokoZh2Cw7QFax4QOGlW3R2CuTN0g=;
	b=lYRByvwKEZmtwDSWW85UDvko0cUbnnvHUcBtOnDY5psX1DY+Fzr3bUoRuiosRd46Di
	SRYNItKJDKwnmVWxxOxASPBitG4a/niR587DveRtkpZaXPxUErT1+yW67sjMLDZIHHG5
	5NnEW6lTihDbtWNw5CNd5y/aht/jWJDW7hOhJgTCokq1Uiw1E7yfUkUWEh+lf2FMHQYn
	g3PfC67ZpgzhxLHUJ6qRsSl1D22uYhsPnmki3l8YQGdLZJHK7sRvFoowqjp545y8YjlB
	sbXFeOXoxAPEohhDUlgZPM0ZskePPnmFsJQsOpHi40y+0HNQN2k6qKt1X1sjQDipuPYc
	kAFg==
Received: by 10.50.158.163 with SMTP id wv3mr4907954igb.24.1343926314649;
	Thu, 02 Aug 2012 09:51:54 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id ch4sm17704790igb.2.2012.08.02.09.51.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 02 Aug 2012 09:51:54 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <6913CD3A-3504-405D-9315-8C8D8D47502C@gmail.com>
Date: Thu, 2 Aug 2012 20:51:48 +0400
Message-Id: <2EF18D81-CF40-43E5-9B18-F21B788CFBEC@gmail.com>
References: <C8B6E7F6-81CE-4DC0-A928-3D021DF1B8AA@gmail.com>
	<A278F391-405E-4AE7-A49D-E614A7E1D26C@gmail.com>
	<7033B489-BD0B-4347-BCB2-0A819E99C7A3@gmail.com>
	<CAEsOVNeU6pz6Pkciymxu+2-JgcEuj=zc7-D+5xCXsjpg7fRuXw@mail.gmail.com>
	<6913CD3A-3504-405D-9315-8C8D8D47502C@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: GLIBCTARGETOS ?= "linux-gnueabi" for PowerPC 440 targets
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
X-List-Received-Date: Thu, 02 Aug 2012 16:51:55 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D2F49442-6050-4090-ADCE-5E7947AAF959"

--Apple-Mail=_D2F49442-6050-4090-ADCE-5E7947AAF959
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1

Hi,

On Aug 2, 2012, at 10:21 AM, Khem Raj wrote:

>=20
> On Aug 1, 2012, at 8:50 PM, McClintock Matthew-B29882 =
<B29882@freescale.com> wrote:
>=20
>> Are you running with prelinking? You might try disabling that. It's =
in
>> local.conf under IMAGE_CLASSES I believe.
>>=20
>=20
> FWIW I have seen issues with prelink + ppc64 that said ppc32 + prelink =
has worked well for me
>=20

I tried rebuilding the entire yocto build without image-prelink, and =
still no change, I still do not get
a root login prompt.

Any suggestions on what else I can try?=20

zImage starting: loaded at 0x00800000 (sp: 0x00d8afb0)
Allocating 0x540e0c bytes for kernel ...
gunzipping (0x00000000 <- 0x0080f000:0x00a17dd6)...done 0x4235c0 bytes
Attached initrd image at 0x00a18000-0x00d89ddc
initrd head: 0x1f8b0808

Linux/PowerPC load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw =
rootwait
Finalizing device tree... flat tree at 0xd970e0
 PM: Adding info for No Bus:ttyv9
[    0.477306] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.482790] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) is =
a 16550
[    0.678224] console [ttyS0] enabled
[    0.742215] brd: module loaded
[    0.789116] loop: module loaded
[    0.826377] xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12
[    0.903095] xsysace 83600000.sysace: No CF in slot
[    0.962077] Xilinx SystemACE device driver, major=3D254
[    1.023122] xilinx_emaclite 81000000.ethernet: Device Tree Probing
[    1.096656] xilinx_emaclite 81000000.ethernet: error registering MDIO =
bus
[    1.177745] xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:b7:78:00
[    1.271437] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A00007
[    1.386354] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'
[    1.455652] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd1036000, irq=3D22
[    1.555028] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'
[    1.624704] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped =
to 0xd1038000, irq=3D23
[    1.725185] mousedev: PS/2 mouse device common for all mice
[    1.792535] i2c /dev entries driver
[    1.834242] Device Tree Probing 'i2c'
[    1.878524] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, irq=3D18
[    1.956082] TCP cubic registered
[    1.993980] NET: Registered protocol family 17
[    2.790410] atkbd serio0: keyboard reset failed on xilinxps2/serio at =
81480000
[    3.274683] RAMDISK: gzip image found at block 0
[    3.791700] atkbd serio1: Frame/parity error: 02
[    3.858598] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/in0
[    4.234835] VFS: Mounted root (ext2 filesystem) on device 1:0.
[    4.305005] Freeing unused kernel memory: 152k freed


Best regards,

Elvis Dowson=

--Apple-Mail=_D2F49442-6050-4090-ADCE-5E7947AAF959
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Aug 2, 2012, at 10:21 AM, Khem Raj =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div><br>On Aug 1, 2012, at 8:50 PM, McClintock =
Matthew-B29882 &lt;<a =
href=3D"mailto:B29882@freescale.com">B29882@freescale.com</a>&gt; =
wrote:<br><br><blockquote type=3D"cite">Are you running with prelinking? =
You might try disabling that. It's in<br></blockquote><blockquote =
type=3D"cite">local.conf under IMAGE_CLASSES I =
believe.<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><br>FWIW I have seen issues with prelink =
+ ppc64 that said ppc32 + prelink has worked well for =
me<br><br></div></blockquote></div><br><div>I tried rebuilding the =
entire yocto build without image-prelink, and still no change, I still =
do not get</div><div>a root login prompt.</div><div><br></div><div>Any =
suggestions on what else I can =
try?&nbsp;</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">zImage starting: loaded at 0x00800000 (sp: =
0x00d8afb0)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Allocating 0x540e0c bytes for kernel =
...</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">gunzipping (0x00000000 &lt;- 0x0080f000:0x00a17dd6)...done =
0x4235c0 bytes</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Attached initrd image at =
0x00a18000-0x00d89ddc</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">initrd head: =
0x1f8b0808</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linux/PowerPC =
load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw =
rootwait</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">Finalizing device tree... flat tree at =
0xd970e0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp;PM: Adding info for No =
Bus:ttyv9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.477306] Serial: 8250/16550 =
driver, 4 ports, IRQ sharing disabled</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.482790] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) =
is a 16550</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.678224] console [ttyS0] =
enabled</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.742215] brd: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.789116] loop: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.826377] xsysace 83600000.sysace: Xilinx =
SystemACE revision 1.0.12</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.903095] xsysace 83600000.sysace: No CF in =
slot</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.962077] Xilinx SystemACE device driver, =
major=3D254</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.023122] xilinx_emaclite =
81000000.ethernet: Device Tree Probing</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.096656] xilinx_emaclite 81000000.ethernet: error registering =
MDIO bus</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;1.177745] xilinx_emaclite 81000000.ethernet: =
MAC address is now 00:0a:35:b7:78:00</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.271437] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A00007</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.386354] xilinx_ps2 81480000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.455652] xilinx_ps2 81480000.ps2: Xilinx PS2 =
at 0x81480000 mapped to 0xd1036000, irq=3D22</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.555028] xilinx_ps2 81481000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.624704] xilinx_ps2 81481000.ps2: Xilinx PS2 =
at 0x81481000 mapped to 0xd1038000, irq=3D23</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.725185] mousedev: PS/2 mouse device common for all =
mice</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.792535] i2c /dev entries =
driver</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.834242] Device Tree Probing =
'i2c'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.878524] xilinx-iic #0 at 0x81600000 mapped =
to 0xD10C0000, irq=3D18</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.956082] TCP cubic =
registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.993980] NET: Registered =
protocol family 17</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.790410] atkbd serio0: =
keyboard reset failed on xilinxps2/serio at =
81480000</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;3.274683] RAMDISK: gzip image found at block =
0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;3.791700] atkbd serio1: Frame/parity error: =
02</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;3.858598] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/in0</font></div><div><f=
ont class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;4.234835] VFS: Mounted root (ext2 filesystem) on device =
1:0.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;4.305005] Freeing unused kernel memory: 152k =
freed</font></div><div><br></div></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></div></body></html>=

--Apple-Mail=_D2F49442-6050-4090-ADCE-5E7947AAF959--
