Return-Path: <kumaramit124@gmail.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03CAFE0140D
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 09:44:55 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id x12so9745904ief.40
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 09:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:reply-to:date:message-id:subject:from:to:content-type;
	bh=6d1QRvznKnOIlUQJm6ZP65edOvHWVlL4Ewagj5zY1ak=;
	b=LIqXp3XAxTloBl+7zm6aUiUQdAKsnLQuHkDRqDpTmrfIPTyVk99sKioCWUEaa0//F4
	2FBgTiGx51ltXVpCI8L+Ex3Nh1Oj84YGabQhhokhYpP9Onj9zW47h1+TjcM0+4mxH9Em
	67X0+EP8rU0oB+js7B0hD7AufytGf5OQdUouFOQ4tB9NT0VHHh0nDP+91EbuKKux6gRr
	MrVZi3zkKsMWk4f0dDwkSPT0ArXiZf8Z42Ai6YJ/JNCjdcZy5w8tc/xufKPZoPHBqJs2
	nkrRyEfq5RJqb2rsH2/7haFv6j5mMSKdwRlhANKwseUQOVgj5EoPfvqlHTCIJUWNs2Ec
	DGPg==
MIME-Version: 1.0
X-Received: by 10.43.0.67 with SMTP id nl3mr11513277icb.2.1374252294900; Fri,
	19 Jul 2013 09:44:54 -0700 (PDT)
Received: by 10.42.238.132 with HTTP; Fri, 19 Jul 2013 09:44:54 -0700 (PDT)
Date: Fri, 19 Jul 2013 22:14:54 +0530
Message-ID: <CAEO8TxDS2aCjH=AtiVcdPOWsdZ_4NMOd+cHhn-WWX=GYjB4fTA@mail.gmail.com>
From: amit kumar <kumaramit124@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 19 Jul 2013 09:53:55 -0700
Subject: Arago project image fail to run in QEMU
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: himself_amit@yahoo.co.in
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 19 Jul 2013 16:44:56 -0000
Content-Type: multipart/alternative; boundary=bcaec511e1b6de92fc04e1e00b23

--bcaec511e1b6de92fc04e1e00b23
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have built the Arago project for keystone-II successfully. The images are
available under the deploy/Images dir.

I have already added my module into the kernel and recompiled the kernel
image.



Now my doubt is before putting the image on actual hardware I want to run
it on QEMU. Is it possible to run the built images on QEMU?

I tried to run using the following command but getting an error-


/**************************************************************/

amit@amit-HP:~/OE/MCSDK/mcsdk/build$ runqemu
arago-tmp-external-linaro-toolchain/deploy/images/uImage-keystone-evm.bin
arago-tmp-external-linaro-toolchain/deploy/images/core-image-minimal-keystone-evm-20130718181345.rootfs.ubi
Error: unknown file arg
[arago-tmp-external-linaro-toolchain/deploy/images/core-image-minimal-keystone-evm-20130718181345.rootfs.ubi]

Usage: you can run this script with any valid combination
of the following options (in any order):
  QEMUARCH - the qemu machine architecture to use
  KERNEL - the kernel image file to use
  ROOTFS - the rootfs image file or nfsroot directory to use
  MACHINE - the machine name (optional, autodetected from KERNEL filename
if unspecified)
  RAMFS - boot a ramfs-based image
  Simplified QEMU command-line options can be passed with:
    nographic - disables video console
    serial - enables a serial console on /dev/ttyS0
    kvm - enables KVM when running qemux86/qemux86-64 (VT-capable CPU
required)
  qemuparams="xyz" - specify custom parameters to QEMU
  bootparams="xyz" - specify custom kernel parameters during boot

Examples:
  runqemu qemuarm
  runqemu qemux86-64 core-image-sato ext3
  runqemu path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial
  runqemu qemux86 ramfs
  runqemu qemux86 qemuparams="-m 256"
  runqemu qemux86 bootparams="psplash=false"
amit@amit-HP:~/OE/MCSDK/mcsdk/build$

/**********************************************************/

The build step I followed from the arago project build link-

"http://arago-project.org/wiki/index.php/Setting_Up_Build_Environment"


Please let me know if I have to do something else to run the image under
QEMU.

-- 
Thanks & Regards
Amit Kumar

--bcaec511e1b6de92fc04e1e00b23
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br clear=3D"all"></div>Hi,<br><br><p class=3D""><spa=
n style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">I h=
ave built the Arago project for keystone-II successfully. The images are av=
ailable under the deploy/Images dir.</span></p>

<p class=3D""><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;san=
s-serif&quot;">I have already added my module into the kernel and recompile=
d the kernel image.</span></p>
<p class=3D""><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;san=
s-serif&quot;">=A0</span></p>
<p class=3D""><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;san=
s-serif&quot;">Now
 my doubt is before putting the image on actual hardware I want to run=20
it on QEMU. Is it possible to run the built images on QEMU?</span></p>
<p class=3D""><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;san=
s-serif&quot;">I tried to run using the following command but getting an er=
ror-</span></p><p class=3D""><span style=3D"font-family:&quot;Trebuchet MS&=
quot;,&quot;sans-serif&quot;"><br>
</span></p>
<p class=3D""><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;san=
s-serif&quot;">/***********************************************************=
***/ <br></span></p><p class=3D""><span style=3D"font-family:&quot;Trebuche=
t MS&quot;,&quot;sans-serif&quot;">amit@amit-HP:~/OE/MCSDK/mcsdk/build$ run=
qemu arago-tmp-external-linaro-toolchain/deploy/images/uImage-keystone-evm.=
bin arago-tmp-external-linaro-toolchain/deploy/images/core-image-minimal-ke=
ystone-evm-20130718181345.rootfs.ubi<br>
Error: unknown file arg [arago-tmp-external-linaro-toolchain/deploy/images/=
core-image-minimal-keystone-evm-20130718181345.rootfs.ubi]<br><br>Usage: yo=
u can run this script with any valid combination<br>of the following option=
s (in any order):<br>
=A0 QEMUARCH - the qemu machine architecture to use<br>=A0 KERNEL - the ker=
nel image file to use<br>=A0 ROOTFS - the rootfs image file or nfsroot dire=
ctory to use<br>=A0 MACHINE - the machine name (optional, autodetected from=
 KERNEL filename if unspecified)<br>
=A0 RAMFS - boot a ramfs-based image<br>=A0 Simplified QEMU command-line op=
tions can be passed with:<br>=A0=A0=A0 nographic - disables video console<b=
r>=A0=A0=A0 serial - enables a serial console on /dev/ttyS0<br>=A0=A0=A0 kv=
m - enables KVM when running qemux86/qemux86-64 (VT-capable CPU required)<b=
r>
=A0 qemuparams=3D&quot;xyz&quot; - specify custom parameters to QEMU<br>=A0=
 bootparams=3D&quot;xyz&quot; - specify custom kernel parameters during boo=
t<br><br>Examples:<br>=A0 runqemu qemuarm<br>=A0 runqemu qemux86-64 core-im=
age-sato ext3<br>
=A0 runqemu path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial<br>=A0 r=
unqemu qemux86 ramfs<br>=A0 runqemu qemux86 qemuparams=3D&quot;-m 256&quot;=
<br>=A0 runqemu qemux86 bootparams=3D&quot;psplash=3Dfalse&quot;<br>amit@am=
it-HP:~/OE/MCSDK/mcsdk/build$ <br>

</span></p>
<p class=3D""><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;san=
s-serif&quot;">/**********************************************************/=
</span></p>
<p class=3D""><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;san=
s-serif&quot;">The build step I followed from the arago project build link-=
 <br></span></p><p class=3D""><span style=3D"font-family:&quot;Trebuchet MS=
&quot;,&quot;sans-serif&quot;">&quot;<a href=3D"http://arago-project.org/wi=
ki/index.php/Setting_Up_Build_Environment">http://arago-project.org/wiki/in=
dex.php/Setting_Up_Build_Environment</a>&quot;</span></p>
<p class=3D""><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;san=
s-serif&quot;"></span></p>
<p class=3D""><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;san=
s-serif&quot;">=A0</span></p>
<span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;"=
>Please let me know if I have to do something else to run the image under Q=
EMU.</span><br><br><div>-- <br>Thanks &amp; Regards<br>Amit Kumar=20
</div></div>

--bcaec511e1b6de92fc04e1e00b23--
