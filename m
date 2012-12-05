Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B81E0E0120C
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 06:42:19 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id fa1so3560239pad.35
	for <yocto@yoctoproject.org>; Wed, 05 Dec 2012 06:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=vd/0vcKIq77/rWwnmUOTKcyy362wlP2kqtmGiq2tOUU=;
	b=uMO4K3NB35PcQVIKh6IjWLk0Sz0qYc7YH1U0HmeJvwEGJEx0vikKewoXKPhCfIp5t2
	THi9zA56qYmx9EA+5hXfodCNyQt6b/y8mFg9+ZVlo5EsZ+xJ3cEoY+zBZ4ygxJMWWwqe
	1cuSf6bo/KN6i8Ra1pU2h3JSWNSgbw1ce18wzDqNWrT4ogzXKskV134lkuPS3B6ruBMy
	u33/8bpfQAdeqdeY36zYfVYvWDmnRAujZeXVsn8k/qwzOmxL1vRbeo/6ulkR/Hsq54Ue
	TXosWWHkSw3DEESXQUW9mfwu41GqQVz8u2KfMMjgu6k2Yc3AUgAF3sQhLP0KavxKdxI7
	bHeA==
Received: by 10.68.219.67 with SMTP id pm3mr49737676pbc.150.1354718539568;
	Wed, 05 Dec 2012 06:42:19 -0800 (PST)
Received: from [192.168.1.100] ([94.205.107.244])
	by mx.google.com with ESMTPS id wg3sm3002733pbc.28.2012.12.05.06.42.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 05 Dec 2012 06:42:19 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <1354713685799908500@schweigstill.de>
Date: Wed, 5 Dec 2012 18:42:13 +0400
Message-Id: <96350C20-3499-4549-9B3F-DA51BF2875D7@gmail.com>
References: <1354713685799908500@schweigstill.de>
To: Andreas Schweigstill <andreas@schweigstill.de>
X-Mailer: Apple Mail (2.1499)
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 05 Dec 2012 14:42:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

On Dec 5, 2012, at 5:21 PM, Andreas Schweigstill =
<andreas@schweigstill.de> wrote:

> I have also tried to build a kernel and root filesystem for Zynq but =
the kernel
> gets stuck when booting, regardless if on the ZC702 board or on Qemu. =
I tried
> Poky denzil and Poky danny.
>=20
> Also the alternate meta-zynq layer from git.yoctoproject.org shows the =
same
> behaviour.
>=20
> These are the last console messages which I get:
> ## Booting kernel from Legacy Image at 01000000 ...
>   Image Name:   Linux-3.2.11-yocto-standard
>   Created:      2012-12-04  20:07:37 UTC
>   Image Type:   ARM Linux Kernel Image (uncompressed)
>   Data Size:    2997472 Bytes =3D 2.9 MiB
>   Load Address: 00008000
>   Entry Point:  00008000
>   Verifying Checksum ... OK
> ## Flattened Device Tree blob at 01a80000
>   Booting using the fdt blob at 0x1a80000
>   Loading Device Tree to 0eff8000, end 0efff185 ... OK
>   Loading Kernel Image ... OK
> OK
>   Loading Device Tree to 0efed000, end 0eff7185 ... OK
>=20
> Starting kernel ...
>=20
>=20
> Instead of using Linux kernel version 3.5-xilinx I always get
> Linux-3.2.11-yocto-standard which is obviously missing the
> Zynq patches.
>=20
> meta-zynq/recipes-kernel-linux-zynq contains the following lines:
> LINUX_VERSION ?=3D "3.5"
> LINUX_VERSION_EXTENSION ?=3D "-xilinx"
>=20
> How can I force Yocto to build kernel 3.5-xilinx?
>=20

=46rom you messages, I infer that you are using the meta-zynq layer=20
located here:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-zynq/

For my builds, I used Philip Ballister's meta-zynq layer located here
for the simple reason that it uses xilinx git repository:

https://github.com/balister/meta-zynq

Also, try to ensure that you don't put both the meta-layers in your =
bblayers.conf file
while building, and ensure that you set machine as follows in your =
local.conf file

MACHINE ?=3D "zynq-zc702"

Do let me know how it goes!=20

Best regards,

Elvis Dowson=

