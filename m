Return-Path: <vidal.develone@gmail.com>
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4098CE00802
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 16:04:57 -0800 (PST)
Received: by mail-qa0-f45.google.com with SMTP id o15so4268806qap.18
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 16:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=N+4MpeMB8kEvkwBkgD6Kv52BvftUN97yVQ9EIVeFVQs=;
	b=VuIv5jOlY3YdeUKK77YZIGOPPVpgj9tDD1/WjLH93/KBTGfun+WgUT52qucR+IdD6g
	HiX7a05Xsl1a5JJng18tKN7USqHljkyuAKgGYalhv1Dffm5917vvt1geh+zxL0Beuj8X
	G//OReVSIAGvP2DFzNCwao+Qf+xfh3Tvbo052Pj53nPiCyjXTi6/Y/LreXoubBMQGDEc
	ckW4VvxH58aYDBB5T2wtDAlZSEPf+oQ5Nlz4608GhKjXYOSvI5N9CyJVr7vxcN6hz6Lp
	vhImGsvTg2/PAfF4y0c1hzyJjXAn49TgZUSWJgoXK1U6t5dd3fANQfdD3oJHLbIOv7HI
	u24w==
MIME-Version: 1.0
X-Received: by 10.224.120.10 with SMTP id b10mr58300044qar.64.1387411496459;
	Wed, 18 Dec 2013 16:04:56 -0800 (PST)
Received: by 10.140.37.49 with HTTP; Wed, 18 Dec 2013 16:04:56 -0800 (PST)
Date: Wed, 18 Dec 2013 17:04:56 -0700
Message-ID: <CANwz6nzZYk4dTgHaETSQX_7G3zi9opJ=RoV8OqVi9BxqQ18cfQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: deploy/images
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
X-List-Received-Date: Thu, 19 Dec 2013 00:04:58 -0000
Content-Type: multipart/alternative; boundary=001a11c2ff706c38d504edd7e99d

--001a11c2ff706c38d504edd7e99d
Content-Type: text/plain; charset=ISO-8859-1

Hello all,
I have a few questions about the files in deploy/images.
When working with beagleboard I would see MLO u-boot and uImage. I would
copy these to DOS partition.
Now Working with ZedBoard I have been using the BOOT.bin, devicetree.dtb
and zImage.  The BOOT.bin was created with xilinx FSBL and system.bit using
the Xilinx tools.   The zImage and devicetree.dtb were created with a
kernel that was modified from linux-digilent .
https://github.com/Digilent/linux-digilent.git.  Yocto item that I have
been using is custom-image-zedboard-20131214212545.rootfs.ext2.
What tools do I need to use The files in deploy/images
custom-image-zedboard-20131214212545.rootfs.cpio
custom-image-zedboard-20131214212545.rootfs.ext2
custom-image-zedboard-20131214212545.rootfs.ext2.gz
custom-image-zedboard-20131214212545.rootfs.ext2.gz.u-boot
custom-image-zedboard.cpio
custom-image-zedboard.ext2
custom-image-zedboard.ext2.gz
custom-image-zedboard.ext2.gz.u-boot
modules--3.8-xilinx+git0+6a0bedad60e2bca8d9b50bf81b9895e29e31a6d7-r1-zedboard-20131214164131.tgz
README_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt
uImage
uImage--3.8-xilinx+git0+6a0bedad60e2bca8d9b50bf81b9895e29e31a6d7-r1-zedboard-20131214164131.bin
uImage--3.8-xilinx+git0+6a0bedad60e2bca8d9b50bf81b9895e29e31a6d7-r1-zynq-zed-20131214164131.dtb
uImage-zedboard.bin
uImage-zynq-zed.dtb
Is uImage-zedboard.bin a u-boot type file?
Which manual should I read about transferring these files to the mmc.
Any and all help will be appreciated.
Thanks

--001a11c2ff706c38d504edd7e99d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div>Hello all,<br></di=
v>I have a few questions about the files in deploy/images.<br></div>When wo=
rking with beagleboard I would see MLO u-boot and uImage. I would copy thes=
e to DOS partition. <br>
</div>Now Working with ZedBoard I have been using the BOOT.bin, devicetree.=
dtb=A0 and zImage.=A0 The BOOT.bin was created with xilinx FSBL and system.=
bit using the Xilinx tools. =A0 The zImage and devicetree.dtb were created =
with a kernel that was modified from linux-digilent .=A0 <a href=3D"https:/=
/github.com/Digilent/linux-digilent.git">https://github.com/Digilent/linux-=
digilent.git</a>.=A0 Yocto item that I have been using is custom-image-zedb=
oard-20131214212545.rootfs.ext2.<br>
</div>What tools do I need to use The files in deploy/images<br>custom-imag=
e-zedboard-20131214212545.rootfs.cpio<br>custom-image-zedboard-201312142125=
45.rootfs.ext2<br>custom-image-zedboard-20131214212545.rootfs.ext2.gz<br>
custom-image-zedboard-20131214212545.rootfs.ext2.gz.u-boot<br>custom-image-=
zedboard.cpio<br>custom-image-zedboard.ext2<br>custom-image-zedboard.ext2.g=
z<br>custom-image-zedboard.ext2.gz.u-boot<br>modules--3.8-xilinx+git0+6a0be=
dad60e2bca8d9b50bf81b9895e29e31a6d7-r1-zedboard-20131214164131.tgz<br>
README_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt<br>uImage<br>uImage--3.8=
-xilinx+git0+6a0bedad60e2bca8d9b50bf81b9895e29e31a6d7-r1-zedboard-201312141=
64131.bin<br>uImage--3.8-xilinx+git0+6a0bedad60e2bca8d9b50bf81b9895e29e31a6=
d7-r1-zynq-zed-20131214164131.dtb<br>
uImage-zedboard.bin<br>uImage-zynq-zed.dtb<br></div>Is uImage-zedboard.bin =
a u-boot type file?<br></div>Which manual should I read about transferring =
these files to the mmc.<br></div>Any and all help will be appreciated.<br>
</div>Thanks<br></div>

--001a11c2ff706c38d504edd7e99d--
