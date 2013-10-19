Return-Path: <vidal.develone@gmail.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E9F0E0043A
	for <yocto@yoctoproject.org>; Sat, 19 Oct 2013 07:42:11 -0700 (PDT)
Received: by mail-qe0-f49.google.com with SMTP id a11so2727017qen.36
	for <yocto@yoctoproject.org>; Sat, 19 Oct 2013 07:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=VXCn/41Y7ul1lCQWf0XANtDWpgVxfWEYwctOnjFqI0w=;
	b=C32vew6EqV21xLOudq9h68aG/RqTpsNtq8wbDxluV3RGZZrUF5xuWxAUlfqyw0zsx6
	xwNLs+Dyz2kAsiCAFjEWSrhGnHIg8XI6KVJp/VD54qGXaCS4j5CrZq9+YW0Vt5JTCADb
	t27ebkqc50Cjzqhf9lul+lrsGuGcikp/pNmRuLVRjyGMSXr8Q3rnxpQqB35Of5no2RUB
	0oZ2dd3mf4pacj4HPflTDP1INPICQQI9M7beE0iBgo61QLlQdhtPr/zyEEOZnrzbSuCB
	mtInEoUZ4H26ga4K2TisMwT/lVDIZuItKxAjezFi03Nc0TLV39+MjUyOslAo3Vpya1vz
	U0qg==
MIME-Version: 1.0
X-Received: by 10.49.94.72 with SMTP id da8mr11011155qeb.67.1382193730694;
	Sat, 19 Oct 2013 07:42:10 -0700 (PDT)
Received: by 10.96.26.37 with HTTP; Sat, 19 Oct 2013 07:42:10 -0700 (PDT)
Date: Sat, 19 Oct 2013 08:42:10 -0600
Message-ID: <CANwz6nznDfo=40RJ4aZh6BESHbYT3d+CcoTpB+wyaU5qXZ57fA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: uimage instead of zImage
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 19 Oct 2013 14:42:12 -0000
Content-Type: multipart/alternative; boundary=047d7b5d4e3c544f8004e9190e6d

--047d7b5d4e3c544f8004e9190e6d
Content-Type: text/plain; charset=ISO-8859-1

Hello all,
I made some changes to my uEnv.txt
 mpurate=auto

bootcmd="mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm 0x80300000"
dvimode="hd720 omapfb.vram=0:8M,1:4M,2:4M"
vram=16M
optargs="consoleblank=0"
console="ttyO2 console=tty0,115200n8"
chgs uImage to zImage in the bootcmd line above.


Still would not boot?

setenv bootcmd "mmc rescan 0; fatload mmc 0:1 0x80200000 zImage; bootz
0x80200000"
setenv vram "16M"
setenv bootfile "zImage"
printenv
echo $vram
echo $bootfile
echo $bootcmd
run bootcmd
If I make the above setenv at the u-boot prompt I get the kernel to boot,
but get a kernel panic.
VFS: Cannot open root device "ubi0:rootfs" or unknown-block(0,0): error -19
Please append a correct "root=" boot option; here are the available
partitions:
VFS: Unable to mount root fs on unknown-block(0,0)
User configuration error - no valid root filesystem found
Kernel panic - not syncing: Invalid configuration from end user prevents
continu
ing
CPU: 0 PID: 1 Comm: swapper Not tainted 3.10.11-yocto-standard #1
[<c00145c8>] (unwind_backtrace+0x0/0xec) from [<c0011b9c>]
(show_stack+0x20/0x24
)
[<c0011b9c>] (show_stack+0x20/0x24) from [<c0602c90>] (dump_stack+0x20/0x28)
[<c0602c90>] (dump_stack+0x20/0x28) from [<c05fea4c>] (panic+0x84/0x1c0)
[<c05fea4c>] (panic+0x84/0x1c0) from [<c08d30e4>]
(mount_block_root+0x1fc/0x244)
[<c08d30e4>] (mount_block_root+0x1fc/0x244) from [<c08d33b4>]
(prepare_namespace
+0x94/0x1c4)
[<c08d33b4>] (prepare_namespace+0x94/0x1c4) from [<c08d2c9c>]
(kernel_init_freea
ble+0x1e8/0x238)
[<c08d2c9c>] (kernel_init_freeable+0x1e8/0x238) from [<c05fdc10>]
(kernel_init+0
x1c/0xf4)
[<c05fdc10>] (kernel_init+0x1c/0xf4) from [<c000db18>]
(ret_from_fork+0x14/0x20)

zImage-omap3-beagle.dtb is the name of my dtb file.  This is a new file
that I had seen before in my beagleboard until dora build.  I had seen in
my zedboard build.

Any and all help will be appreciated.
Thanks

--047d7b5d4e3c544f8004e9190e6d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello all,<br></div>I made some c=
hanges to my uEnv.txt<br>=A0mpurate=3Dauto<br><br>bootcmd=3D&quot;mmc resca=
n 0; fatload mmc 0:1 0x80300000 uImage; bootm 0x80300000&quot;<br>dvimode=
=3D&quot;hd720 omapfb.vram=3D0:8M,1:4M,2:4M&quot;<br>
vram=3D16M<br>optargs=3D&quot;consoleblank=3D0&quot;<br>console=3D&quot;tty=
O2 console=3Dtty0,115200n8&quot;<br></div><div>chgs uImage to zImage in the=
 bootcmd line above.<br><br></div><div>=A0<br></div>Still would not boot?<b=
r><br>setenv bootcmd &quot;mmc rescan 0; fatload mmc 0:1 0x80200000 zImage;=
 bootz 0x80200000&quot;<br>
setenv vram &quot;16M&quot;<br>setenv bootfile &quot;zImage&quot;<br>printe=
nv <br>echo $vram<br>echo $bootfile<br>echo $bootcmd<br>run bootcmd<br></di=
v>If I make the above setenv at the u-boot prompt I get the kernel to boot,=
 but get a kernel panic.<br>
VFS: Cannot open root device &quot;ubi0:rootfs&quot; or unknown-block(0,0):=
 error -19<br>Please append a correct &quot;root=3D&quot; boot option; here=
 are the available partitions:<br>VFS: Unable to mount root fs on unknown-b=
lock(0,0)<br>
User configuration error - no valid root filesystem found<br>Kernel panic -=
 not syncing: Invalid configuration from end user prevents continu<br>ing<b=
r>CPU: 0 PID: 1 Comm: swapper Not tainted 3.10.11-yocto-standard #1<br>
[&lt;c00145c8&gt;] (unwind_backtrace+0x0/0xec) from [&lt;c0011b9c&gt;] (sho=
w_stack+0x20/0x24<br>)<br>[&lt;c0011b9c&gt;] (show_stack+0x20/0x24) from [&=
lt;c0602c90&gt;] (dump_stack+0x20/0x28)<br>[&lt;c0602c90&gt;] (dump_stack+0=
x20/0x28) from [&lt;c05fea4c&gt;] (panic+0x84/0x1c0)<br>
[&lt;c05fea4c&gt;] (panic+0x84/0x1c0) from [&lt;c08d30e4&gt;] (mount_block_=
root+0x1fc/0x244)<br>[&lt;c08d30e4&gt;] (mount_block_root+0x1fc/0x244) from=
 [&lt;c08d33b4&gt;] (prepare_namespace<br>+0x94/0x1c4)<br>[&lt;c08d33b4&gt;=
] (prepare_namespace+0x94/0x1c4) from [&lt;c08d2c9c&gt;] (kernel_init_freea=
<br>
ble+0x1e8/0x238)<br>[&lt;c08d2c9c&gt;] (kernel_init_freeable+0x1e8/0x238) f=
rom [&lt;c05fdc10&gt;] (kernel_init+0<br>x1c/0xf4)<br>[&lt;c05fdc10&gt;] (k=
ernel_init+0x1c/0xf4) from [&lt;c000db18&gt;] (ret_from_fork+0x14/0x20)<br>
<br>zImage-omap3-beagle.dtb is the name of my dtb file.=A0 This is a new fi=
le that I had seen before in my beagleboard until dora build.=A0 I had seen=
 in my zedboard build.<br><br></div>Any and all help will be appreciated.<b=
r>
</div>Thanks<br></div>

--047d7b5d4e3c544f8004e9190e6d--
