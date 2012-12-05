Return-Path: <andreas@schweigstill.de>
Received: from kitz.schweigstill.de (kitz.schweigstill.de [195.244.237.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1AA1E0120C
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 05:21:26 -0800 (PST)
Received: from mailserver (192.168.16.41) by mail-extern (Axigen)
	with (AES256-SHA encrypted) ESMTPS id 243CCE;
	Wed, 5 Dec 2012 14:21:26 +0100
Received: from mailserver (127.0.0.1) by mailserver (Axigen)
	with ESMTPSA id 0D8E12; Wed, 5 Dec 2012 14:21:25 +0100
Received: from [80.246.32.33] by schweigstill.de with HTTP;
	Wed, 5 Dec 2012 14:21:25 +0100
From: Andreas Schweigstill <andreas@schweigstill.de>
Date: Wed, 5 Dec 2012 14:21:25 +0100
X-Mailer: Axigen WebMail
To: yocto@yoctoproject.org
Message-ID: <1354713685799908500@schweigstill.de>
Importance: Normal
MIME-Version: 1.0
X-AxigenSpam-Level: 1
X-CTCH-RefID: str=0001.0A0C0202.50BF4A56.0065,ss=1,fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
Subject: Re: mail list for Xilinx Zynq platform?
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
X-List-Received-Date: Wed, 05 Dec 2012 13:21:27 -0000
Content-Type: text/plain;	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hello!

> I personally have used Philip's meta-zynq layer to build a working u-boot=
 and=20
> linux kernel image using Yocto. It works really well.

I have also tried to build a kernel and root filesystem for Zynq but the ke=
rnel
gets stuck when booting, regardless if on the ZC702 board or on Qemu. I tri=
ed
Poky denzil and Poky danny.

Also the alternate meta-zynq layer from git.yoctoproject.org shows the same
behaviour.

These are the last console messages which I get:
## Booting kernel from Legacy Image at 01000000 ...
   Image Name:   Linux-3.2.11-yocto-standard
   Created:      2012-12-04  20:07:37 UTC
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    2997472 Bytes =3D 2.9 MiB
   Load Address: 00008000
   Entry Point:  00008000
   Verifying Checksum ... OK
## Flattened Device Tree blob at 01a80000
   Booting using the fdt blob at 0x1a80000
   Loading Device Tree to 0eff8000, end 0efff185 ... OK
   Loading Kernel Image ... OK
OK
   Loading Device Tree to 0efed000, end 0eff7185 ... OK

Starting kernel ...


Instead of using Linux kernel version 3.5-xilinx I always get
Linux-3.2.11-yocto-standard which is obviously missing the
Zynq patches.

meta-zynq/recipes-kernel-linux-zynq contains the following lines:
LINUX_VERSION ?=3D "3.5"
LINUX_VERSION_EXTENSION ?=3D "-xilinx"

How can I force Yocto to build kernel 3.5-xilinx?

With best regards,
Andreas Schweigstill

=E2=80=8B--=20
Dipl.-Phys. Andreas Schweigstill=20
Schweigstill IT | Embedded Systems=20
Schauenburgerstra=C3=9Fe 116, D-24118 Kiel, Germany=20
Phone: (+49) 431 530354-35, Fax: (+49) 431 530354-36=20
Mobile: (+49) 171 6921973, Web: http://www.schweigstill.de/=20

