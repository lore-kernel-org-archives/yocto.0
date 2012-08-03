Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DC7CE0144B
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 14:30:21 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2296919pbb.35
	for <yocto@yoctoproject.org>; Fri, 03 Aug 2012 14:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=+R2uu0yzfSQvHDp9BpF0zrOSMEwtHhF5wgs226eS98c=;
	b=g4R1eAAmUf998301zllYqurEtBFRW8TT1+mCTATY1FCelZGCopNByk5M+Ip+HJ8Q4k
	C29c4XXayIpRRBdAhiCMrbTGabT9GMB1ULKE8yAPQMDPyiDYOR5BaR8Dnenixky2e64C
	okSI1jSpWi204WO3tuycf8+gOXxvc0fIhl1yAaaV5mu96S5nB8welbJPPxlWscHtA5D0
	ZYZt22VvF+Au4wCVDSYA2y3uPAHxMPxedZ6OTU7JTcx45vq67S3Ms9PP78jpP68umS0Y
	JDiM7Tu0szl/uavp8bET51ZStnYWoUUxDHU5J/OVtDkV0Wcxo0UDjiNnS087P+II/Omm
	1+Vg==
Received: by 10.68.218.101 with SMTP id pf5mr533347pbc.60.1344029421029;
	Fri, 03 Aug 2012 14:30:21 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id pe8sm203956pbc.76.2012.08.03.14.30.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 03 Aug 2012 14:30:20 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
Date: Sat, 4 Aug 2012 01:30:14 +0400
Message-Id: <15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
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
X-List-Received-Date: Fri, 03 Aug 2012 21:30:21 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_30430B0D-5F95-4663-BC19-868603563499"

--Apple-Mail=_30430B0D-5F95-4663-BC19-868603563499
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Aug 4, 2012, at 12:59 AM, Elvis Dowson wrote:

> Now to try to debug the init process.

I compiled bash statically by making the following changes:

diff --git a/meta/recipes-extended/bash/bash.inc =
b/meta/recipes-extended/bash/bash.inc
index 3684191..071d79e 100644
--- a/meta/recipes-extended/bash/bash.inc
+++ b/meta/recipes-extended/bash/bash.inc
@@ -11,7 +11,7 @@ inherit autotools gettext update-alternatives
=20
 PARALLEL_MAKE =3D ""
=20
-EXTRA_OECONF =3D "--enable-job-control"
+EXTRA_OECONF =3D "--enable-job-control --without-gnu-malloc =
--enable-static-link"
 export CC_FOR_BUILD =3D "${BUILD_CC}"
=20
 ALTERNATIVE_${PN} =3D "sh"

That seems to be working!=20

zImage starting: loaded at 0x00800000 (sp: 0x00d38fb0)
Allocating 0x540e0c bytes for kernel ...
gunzipping (0x00000000 <- 0x0080f000:0x00a17ddd)...done 0x4235c0 bytes
Attached initrd image at 0x00a18000-0x00d3797b
initrd head: 0x1f8b0808

Linux/PowerPC load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw =
rootwait init=3D/bash
Finalizing device tree... flat tree at 0xd450e0
 PM: Adding info for No Bus:ttyv9
[    0.473944] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.479429] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) is =
a 16550
[    0.674847] console [ttyS0] enabled
[    0.738939] brd: module loaded
[    0.785690] loop: module loaded
[    0.823018] xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12
[    0.899716] xsysace 83600000.sysace: No CF in slot
[    0.958789] Xilinx SystemACE device driver, major=3D254
[    1.019641] xilinx_emaclite 81000000.ethernet: Device Tree Probing
[    1.093183] xilinx_emaclite 81000000.ethernet: error registering MDIO =
bus
[    1.174263] xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:b7:78:00
[    1.267929] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17
[    1.382861] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'
[    1.452151] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd1036000, irq=3D22
[    1.551544] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'
[    1.621222] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped =
to 0xd1038000, irq=3D23
[    1.721705] mousedev: PS/2 mouse device common for all mice
[    1.789048] i2c /dev entries driver
[    1.830824] Device Tree Probing 'i2c'
[    1.874996] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, irq=3D18
[    1.952627] TCP cubic registered
[    1.990531] NET: Registered protocol family 17
[    2.786413] atkbd serio0: keyboard reset failed on xilinxps2/serio at =
81480000
[    3.270686] RAMDISK: gzip image found at block 0
[    3.794609] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0
[    4.158841] VFS: Mounted root (ext2 filesystem) on device 1:0.
[    4.229004] Freeing unused kernel memory: 152k freed
bash: cannot set terminal process group (-1): Inappropriate ioctl for =
device
bash: no job control in this shell
bash-4.2#=20

I get a bash shell prompt with no issues.=20

Not sure at this moment, if it was the updates to gcc-4.7.2 that fixed =
the problem or if there is still a problem with the init scripts.

I'll try to switch back to a non-static bash, and try booting the =
core-image-minimal filesystem once again.

Best regards,

Elvis Dowson


--Apple-Mail=_30430B0D-5F95-4663-BC19-868603563499
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Aug 4, 2012, at 12:59 AM, Elvis Dowson =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; -webkit-line-break: after-white-space; "><div>Now to try to debug =
the init process.</div></div></blockquote><br></div><div>I compiled bash =
statically by making the following =
changes:</div><div><br></div><div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">diff --git =
a/meta/recipes-extended/bash/bash.inc =
b/meta/recipes-extended/bash/bash.inc</div><div style=3D"margin-top: =
0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: =
normal normal normal 10px/normal Monaco; ">index 3684191..071d79e =
100644</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">--- =
a/meta/recipes-extended/bash/bash.inc</div><div style=3D"margin-top: =
0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: =
normal normal normal 10px/normal Monaco; ">+++ =
b/meta/recipes-extended/bash/bash.inc</div><div style=3D"margin-top: =
0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: =
normal normal normal 10px/normal Monaco; ">@@ -11,7 +11,7 @@ inherit =
autotools gettext update-alternatives</div><p style=3D"margin: 0.0px =
0.0px 0.0px 0.0px; font: 10.0px Monaco; min-height: 14.0px">&nbsp;<br =
class=3D"webkit-block-placeholder"></p><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">&nbsp;PARALLEL_MAKE =3D ""</div><p =
style=3D"margin: 0.0px 0.0px 0.0px 0.0px; font: 10.0px Monaco; =
min-height: 14.0px">&nbsp;<br class=3D"webkit-block-placeholder"></p><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">-EXTRA_OECONF =3D "--enable-job-control"</div><div style=3D"margin-top: =
0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: =
normal normal normal 10px/normal Monaco; ">+EXTRA_OECONF =3D =
"--enable-job-control --without-gnu-malloc =
--enable-static-link"</div><div style=3D"margin-top: 0px; margin-right: =
0px; margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; ">&nbsp;export CC_FOR_BUILD =3D =
"${BUILD_CC}"</div><p style=3D"margin: 0.0px 0.0px 0.0px 0.0px; font: =
10.0px Monaco; min-height: 14.0px">&nbsp;<br =
class=3D"webkit-block-placeholder"></p><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">&nbsp;ALTERNATIVE_${PN} =3D =
"sh"</div><div><br></div></div><div>That seems to be =
working!&nbsp;</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">zImage starting: =
loaded at 0x00800000 (sp: 0x00d38fb0)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Allocating =
0x540e0c bytes for kernel ...</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">gunzipping =
(0x00000000 &lt;- 0x0080f000:0x00a17ddd)...done 0x4235c0 =
bytes</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">Attached initrd image at =
0x00a18000-0x00d3797b</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">initrd head: =
0x1f8b0808</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linux/PowerPC =
load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw rootwait =
init=3D/bash</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Finalizing device tree... flat tree at =
0xd450e0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp;PM: Adding info for No =
Bus:ttyv9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.473944] Serial: 8250/16550 =
driver, 4 ports, IRQ sharing disabled</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.479429] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) =
is a 16550</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.674847] console [ttyS0] =
enabled</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.738939] brd: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.785690] loop: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.823018] xsysace 83600000.sysace: Xilinx =
SystemACE revision 1.0.12</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.899716] xsysace 83600000.sysace: No CF in =
slot</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.958789] Xilinx SystemACE device driver, =
major=3D254</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.019641] xilinx_emaclite =
81000000.ethernet: Device Tree Probing</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.093183] xilinx_emaclite 81000000.ethernet: error registering =
MDIO bus</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;1.174263] xilinx_emaclite 81000000.ethernet: =
MAC address is now 00:0a:35:b7:78:00</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.267929] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.382861] xilinx_ps2 81480000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.452151] xilinx_ps2 81480000.ps2: Xilinx PS2 =
at 0x81480000 mapped to 0xd1036000, irq=3D22</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.551544] xilinx_ps2 81481000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.621222] xilinx_ps2 81481000.ps2: Xilinx PS2 =
at 0x81481000 mapped to 0xd1038000, irq=3D23</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.721705] mousedev: PS/2 mouse device common for all =
mice</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.789048] i2c /dev entries =
driver</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.830824] Device Tree Probing =
'i2c'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.874996] xilinx-iic #0 at 0x81600000 mapped =
to 0xD10C0000, irq=3D18</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.952627] TCP cubic =
registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.990531] NET: Registered =
protocol family 17</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.786413] atkbd serio0: =
keyboard reset failed on xilinxps2/serio at =
81480000</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;3.270686] RAMDISK: gzip image found at block =
0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;3.794609] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;4.158841] VFS: Mounted root (ext2 filesystem) on device =
1:0.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;4.229004] Freeing unused kernel memory: 152k =
freed</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">bash: cannot set terminal process group (-1): Inappropriate =
ioctl for device</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">bash: no job control in this =
shell</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">bash-4.2#&nbsp;</font></div><div><br></div><div>I get a bash =
shell prompt with no issues.&nbsp;</div><div><br></div><div>Not sure at =
this moment, if it was the updates to gcc-4.7.2 that fixed the problem =
or if there is still a problem with the init =
scripts.</div><div><br></div><div>I'll try to switch back to a =
non-static bash, and try booting the core-image-minimal filesystem once =
again.</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div></div><br></div></body></html>=

--Apple-Mail=_30430B0D-5F95-4663-BC19-868603563499--
