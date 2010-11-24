Return-Path: <joaohf@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id E9DAA4C80B6B
	for <yocto@yoctoproject.org>; Tue, 23 Nov 2010 19:09:10 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm2 with SMTP id 2so4662773fxm.35
	for <yocto@yoctoproject.org>; Tue, 23 Nov 2010 17:09:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type:content-transfer-encoding;
	bh=95joCVOIdiBivCOkRDvTcwW9HuVuc7KkqXv7S3R411E=;
	b=BEPvJrcN2pvIHwZkvZ10H3EmR34IkHeFMayuFvvCgvFauqJcO65ylOvcY0NmtcLRyA
	mYQal1aC59rQRdzSBx1EGzpFMPEJIzWNg74r9O9xNN4rhB3QL3vQQgTpWYIiGWJcWOme
	eHHgX2Y4LUjpDCDBAR487PTZarSqXf+Chxsbs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	b=CoTB11d+0v5vj0rTnYJ9AXLJFLDZmHeEO5ei+5bgChmYI5vp6K4gFLjylFhw/zHoq6
	QtIpBiwopgg6ifJ238qy4U4CAKgks6QjoT6YcxluRHjhmHZftfZHsaIL9gZK55o7tkDz
	gn9uo2ARp/k3FKm4OiSVm0eWkE2Ly9Wmehy8E=
MIME-Version: 1.0
Received: by 10.223.83.4 with SMTP id d4mr2970954fal.59.1290560949447; Tue, 23
	Nov 2010 17:09:09 -0800 (PST)
Received: by 10.223.106.19 with HTTP; Tue, 23 Nov 2010 17:09:09 -0800 (PST)
Date: Tue, 23 Nov 2010 23:09:09 -0200
Message-ID: <AANLkTi=Ehg15jkH2Zb7YYEW-cV4drzVD7-XCC5_NLU0E@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: yocto@yoctoproject.org
Subject: toolchain with big symbolic links?
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
X-List-Received-Date: Wed, 24 Nov 2010 01:09:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I am using yocto 0.9 release and trying to generate my own meta-toolchain.

With toolchain from yocto:

joaohf@joaohf-desktop:~/Downloads$ ls
/opt/poky/sysroots/x86_64-pokysdk-linux/usr/libexec/armv5te-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/4.5.0/
-l
total 30920
lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 ar ->
/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/=
arm-poky-linux-gnueabi-ar
lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 as ->
/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/=
arm-poky-linux-gnueabi-as
-rwxr-xr-x 1 1006 users 10387701 2010-10-24 20:53 cc1
-rwxr-xr-x 1 1006 users 11216826 2010-10-24 20:53 cc1plus
-rwxr-xr-x 1 1006 users   157274 2010-10-24 20:53 collect2
lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 cpp ->
/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/=
arm-poky-linux-gnueabi-cp
lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 g77 ->
/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/=
arm-poky-linux-gnueabi-g7
lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 gcc ->
/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/=
arm-poky-linux-gnueabi-gc
lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 gfortran ->
/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/=
arm-poky-linux-gnueabi-gf
lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 ld ->
/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/=
arm-poky-linux-gnueabi-ld
-rwxr-xr-x 1 1006 users  9803466 2010-10-24 20:53 lto1
-rwxr-xr-x 1 1006 users    36707 2010-10-24 20:53 lto-wrapper
lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 nm ->
/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/=
arm-poky-linux-gnueabi-nm
lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 objcopy ->
/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/=
arm-poky-linux-gnueabi-ob
lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 objdump ->
/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/=
arm-poky-linux-gnueabi-ob
lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 ranlib ->
/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/=
arm-poky-linux-gnueabi-ra
lrwxrwxrwx 1 1006 users      100 2010-11-23 21:18 strip ->
/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/=
arm-poky-linux-gnueabi-st


Same broken symbolic links.

So, I start my own toolchain....

Don't work, TARGET_VENDOR =3D "-tropico"

joaohf@joaohf-desktop:/opt/via/sysroots/x86_64-pokysdk-linux/usr/libexec/ar=
mv5te-tropico-linux-gnueabi/gcc/arm-tropico-linux-gnueabi/4.5.0$
ls -l
total 30904
lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 as ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueab=
i/arm-tropico-linux-gnuea
-rwxr-xr-x 1 joaohf joaohf 10383493 2010-11-23 19:57 cc1
-rwxr-xr-x 1 joaohf joaohf 11212618 2010-11-23 19:57 cc1plus
-rwxr-xr-x 1 joaohf joaohf   157274 2010-11-23 19:57 collect2
lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 cpp ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueab=
i/arm-tropico-linux-gnuea
lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 g77 ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueab=
i/arm-tropico-linux-gnuea
lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 gcc ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueab=
i/arm-tropico-linux-gnuea
lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 gfortran ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueab=
i/arm-tropico-linux-gnuea
lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 ld ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueab=
i/arm-tropico-linux-gnuea
-rwxr-xr-x 1 joaohf joaohf  9798490 2010-11-23 19:57 lto1
-rwxr-xr-x 1 joaohf joaohf    36707 2010-11-23 19:57 lto-wrapper
lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 nm ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueab=
i/arm-tropico-linux-gnuea
lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 objcopy ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueab=
i/arm-tropico-linux-gnuea
lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 objdump ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueab=
i/arm-tropico-linux-gnuea
lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 ranlib ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueab=
i/arm-tropico-linux-gnuea
lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 21:04 strip ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tropico-linux-gnueab=
i/arm-tropico-linux-gnuea


Works, TARGET_VENDOR =3D "-tp"

joaohf@joaohf-desktop:/opt/via/sysroots$ ls
x86_64-pokysdk-linux/usr/libexec/armv5te-tp-linux-gnueabi/gcc/arm-tp-linux-=
gnueabi/4.5.0/
-l
total 30896
lrwxrwxrwx 1 joaohf joaohf       95 2010-11-23 23:00 ar ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm=
-tp-linux-gnueabi-ar
lrwxrwxrwx 1 joaohf joaohf       95 2010-11-23 23:00 as ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm=
-tp-linux-gnueabi-as
-rwxr-xr-x 1 joaohf joaohf 10380613 2010-11-23 22:56 cc1
-rwxr-xr-x 1 joaohf joaohf 11209354 2010-11-23 22:56 cc1plus
-rwxr-xr-x 1 joaohf joaohf   157274 2010-11-23 22:56 collect2
lrwxrwxrwx 1 joaohf joaohf       96 2010-11-23 23:00 cpp ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm=
-tp-linux-gnueabi-cpp
lrwxrwxrwx 1 joaohf joaohf       96 2010-11-23 23:00 g77 ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm=
-tp-linux-gnueabi-g77
lrwxrwxrwx 1 joaohf joaohf       96 2010-11-23 23:00 gcc ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm=
-tp-linux-gnueabi-gcc
lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 23:00 gfortran ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm=
-tp-linux-gnueabi-gfortra
lrwxrwxrwx 1 joaohf joaohf       95 2010-11-23 23:00 ld ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm=
-tp-linux-gnueabi-ld
-rwxr-xr-x 1 joaohf joaohf  9797242 2010-11-23 22:56 lto1
-rwxr-xr-x 1 joaohf joaohf    36707 2010-11-23 22:56 lto-wrapper
lrwxrwxrwx 1 joaohf joaohf       95 2010-11-23 23:00 nm ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm=
-tp-linux-gnueabi-nm
lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 23:00 objcopy ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm=
-tp-linux-gnueabi-objcopy
lrwxrwxrwx 1 joaohf joaohf      100 2010-11-23 23:00 objdump ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm=
-tp-linux-gnueabi-objdump
lrwxrwxrwx 1 joaohf joaohf       99 2010-11-23 23:00 ranlib ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm=
-tp-linux-gnueabi-ranlib
lrwxrwxrwx 1 joaohf joaohf       98 2010-11-23 23:00 strip ->
/opt/via/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-tp-linux-gnueabi/arm=
-tp-linux-gnueabi-strip



But g77 and gfortran is broken.


Is any issue with symbolic link? I am using ubuntu 10.04 and ext4 filesyste=
m.

Thanks.


--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

