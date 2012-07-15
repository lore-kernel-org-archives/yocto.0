Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CBB8E0027E
	for <yocto@yoctoproject.org>; Sun, 15 Jul 2012 10:23:24 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so10677774pbb.35
	for <yocto@yoctoproject.org>; Sun, 15 Jul 2012 10:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=+T+U66Hd+vByPacq7GvuXYvY3rvPBG4BmJFL423YHQU=;
	b=ddiFqs9kegmtKQSpDbAhgX1GVeHqt6X2Sz6rCwJ8AFQ901BC0BJyUfIa55jbxu+9gp
	wlXQX+OUf7woGOW9ohgeQ65sZl/890MB6LjgdAfuLBdps2q+Wkcom/2uvU+1rDCLkMsa
	oFj65EgheWKNiZEq58gJ+bXB933aCinyqxN/h/3MqF5nXCZTTLFx6oD+xP/4BDdCKhMy
	Z2QCSQjc/b6k+V9qiiX+2UP+z7R4vvXHDGicuv9a/VmiMglycjDyNK2XxG9AU2xkvkLj
	944uXMgI+eqdgsrBLHHBIMmodSD+6NfrFuTVWLMA2cJiMXd8X3P6PzGyj12kuq7QBEE8
	mNDg==
Received: by 10.68.200.162 with SMTP id jt2mr20310143pbc.54.1342373004181;
	Sun, 15 Jul 2012 10:23:24 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id he9sm10198637pbc.68.2012.07.15.10.23.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 15 Jul 2012 10:23:22 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1spOYQD1LRK+AbRo-Tes5Ykch3ELJ==6+r7N=igngeBP+Q@mail.gmail.com>
Date: Sun, 15 Jul 2012 21:23:15 +0400
Message-Id: <D4B0883B-1498-4743-BF9D-1AAE07113E18@gmail.com>
References: <A44F3AEF-22D3-4C66-A9AC-15DE9D355ECE@gmail.com>
	<78C7EA88-D00A-45E7-8DB4-038E07A7BCBA@gmail.com>
	<CAMKF1spOYQD1LRK+AbRo-Tes5Ykch3ELJ==6+r7N=igngeBP+Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: linux-xilinx: uImage.dtb files not being generated anymore
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
X-List-Received-Date: Sun, 15 Jul 2012 17:23:24 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,

On Jun 30, 2012, at 7:41 PM, Khem Raj wrote:

> On Sat, Jun 30, 2012 at 4:07 AM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>> Hi,
>>=20
>> On Jun 30, 2012, at 10:17 AM, Elvis Dowson wrote:
>>=20
>>> About a week ago, my linux-xilinx builds used to correctly generate =
the *.dtb files, required for the PowerPC440 processor on my Xilinx =
ML-507 development board. After having recently updated poky, I find =
that the required *.dtb files are not generated anymore.
>>>=20
>>> Would someone be able to tell me which file I should take a look at =
to restore this functionality?
>>>=20
>>> My build configuration is as follows:
>>>=20
>>> Build Configuration:
>>> BB_VERSION        =3D "1.15.2"
>>> TARGET_ARCH       =3D "powerpc"
>>> TARGET_OS         =3D "linux"
>>> MACHINE           =3D "virtex5"
>>> DISTRO            =3D "poky"
>>> DISTRO_VERSION    =3D "1.2+snapshot-20120630"
>>> TUNE_FEATURES     =3D "m32 fpu-soft ppc440"
>>> TARGET_FPU        =3D "soft"
>>> meta
>>> meta-yocto        =3D =
"master:4d48398798c898c5db08294ba64d9bfc7daca19c"
>>> meta-oe           =3D =
"master:3eb5f6eecf6faf7b2701f94b12cf779350d31acc"
>>> meta-xilinx       =3D =
"master:c977270d6f0608cc5fa83f57254202713af37be0"
>>=20
>> I traced the reason for the dtb file not build due to the following =
commit:
>>=20
>> =
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D8c904eb643ad8c=
a1bc29cb2d870a80b355dcb341
>>=20
>> Should I specify DTS_FILE in order to get my recipe to build the =
*.dtb?
>>=20
>=20
> you need to define KERNEL_DEVICETREE =3D "<yourdtbfile>

I tried various combinations, but all of them did not yield a dtb file.

KERNEL_DEVICETREE =3D "virtex440-ml507.dtb"  (as you suggested in your =
original email, but I guess it might have been a typo? should be .dts?)
KERNEL_DEVICETREE =3D "virtex440-ml507.dts"
KERNEL_DEVICETREE =3D "arch/powerpc/boot/dts/virtex440-ml507.dts"

How exactly should I specify the .dts to get yocto to generate the .dtb =
file?

Best regards,

Elvis Dowson



