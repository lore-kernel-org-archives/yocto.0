Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3741.1607331809900957426
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 01:03:30 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=YFY+PMld;
 spf=none, err=SPF record not found (domain: optimcloud.com, ip: 198.145.29.25, mailfrom: dingo@optimcloud.com)
Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3E6D238C085B
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2020 09:03:29 +0000 (UTC)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id aa8e5eaf
	for <yocto@yoctoproject.org>;
	Mon, 7 Dec 2020 10:03:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=to
	:from:subject:message-id:date:mime-version:content-type
	:content-transfer-encoding; s=obsd; bh=IFAvft6Ge19aaMlqDjSup7Lz7
	ic+fiG6gdzYptA+zEY=; b=YFY+PMldQo4hg4h8ZMPsnPEZLOcNxaTCpEWzvQubV
	7ZE/tTzfbESgscBBhoIB/0L1Gkas+pYA6vdYaWpTTb4qA3JRpXwNBiSvjCL7s+cP
	1ieHJ1OAVa/Xy/Qih/sx/4GjrAvGwamqXshETL1fDfQm9zXXv+XHW1EuQMnu3b4/
	TYkHz+MFRIgunKZd18Q7BQqMzcj4+41/lBfeEWLBeGKHxZfm5z/STL6Ys73GaNDf
	+tqjpO8HOmmRxYPI/4/A0S9kSUBgX+UBNf0l3ZiYBCJz5WDMiaaXrrbEq7Yezix+
	/fNySv9fMPH5mbnrkALzjAbPU33t3adhtzpWQeIApMORg==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=to:from
	:subject:message-id:date:mime-version:content-type
	:content-transfer-encoding; q=dns; s=obsd; b=LfM7vK8UB+bjxoBOeJl
	EuGt2TgAjmKzrwB9kRqdQzJxRhG0KE/D6l4+UmfWsKsPOoQpq7mKV/Bra+xUKhDB
	faLiQspbwIbnZcamv15Z/h1lARfVvY06SHz1djrcL3yU5N6jcTJwqEtpQ6sXqPWY
	Y82NDLmJIHmtmFNEyMsslqJG/CQKzElq4/0QnOnK97d5yuhZWj4EZsXr770TI+ft
	WlDP1sw9ih94LPlKZhGe8qBMBgCqaa3LAsDTrIXvxjWUDP1+8tmOWMe7eKwfbtZb
	dez6k7i6QSm0DFl/MpFGoZitVwcycJvRAwyUw2T8zUVFCpUXC9DAgttTPSAQvD05
	LIg==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id c7f8278c (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=support@optimcloud.com
	for <yocto@yoctoproject.org>;
	Mon, 7 Dec 2020 10:03:26 +0100 (CET)
To: yocto <yocto@yoctoproject.org>
From: "Dingo" <dingo@optimcloud.com>
Subject: qemu-5.1.0-r0 do_package_write_deb
Message-ID: <200f8dfa-4e96-007e-67dd-ed426e49694d@optimcloud.com>
Date: Mon, 7 Dec 2020 16:03:19 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Build Configuration:
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "1.49.0"
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "fedora-33"
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "x86_64-overc-linux"
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "intel-corei7-64"
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D "overc"
DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "1.0"
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "m64 corei7"
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 ""
meta
meta-poky
meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "HEAD:64a18762f05d=
caf525a2c945908b2747897a79df"
meta-oe
meta-python
meta-networking
meta-filesystems
meta-initramfs
meta-multimedia
meta-perl=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "HEAD:a6d9a4adb86bac52ef02731fd9c8c941a6fbf955"
meta-overc
meta-cube=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "HEAD:470c1d77d5d65b10ea6713404042d6a97df022bc"
meta-virtualization=C2=A0 =3D "HEAD:6049f9abf8cebe6d827b51b63f3b6bcfd462a=
b99"
meta-security=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "HEAD:d2ceb5e=
438b3b9c91696c83bf32f2df415a761ab"
meta-selinux=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "HEAD:5a=
58e87aa998c53527f92b32c3e6bc516a03d9a3"
meta-gnome
meta-xfce=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "HEAD:a6d9a4adb86bac52ef02731fd9c8c941a6fbf955"
meta-intel=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "HEAD:7d79beb5093da8adf0f9b106a33d8e0904a50a48"
meta-cloud-services=C2=A0 =3D "HEAD:ad57527aff18c3977a4187e001bf89b008d65=
c92"
meta-awnix=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "<unknown>:<unknown>"
meta-browser=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "master:=
1aef1b7857bc065c0e350c5732c3f0d69572e9ec"
meta-clang=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D=
 "master:1dfc3a905ad0fed7a3b300aa51153365f9950fe7"
meta-rust=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "master:f56fd4ec6835d68c4e9f8a9630963acd34d172e5"
meta-python2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "<unknow=
n>:<unknown>"

ERROR: qemu-5.1.0-r0 do_package_write_deb: Fatal errors occurred in=20
subprocesses:
Command=20
'PATH=3D"/var/home/dingo/overc/poky/scripts:/var/home/dingo/overc/build/t=
mp/work/corei7-64-overc-linux/qemu/5.1.0-r0/recipe-sysroot-native/usr/bin=
/x86_64-overc-linux:/var/home/dingo/overc/build/tmp/work/corei7-64-overc-=
linux/qemu/5.1.0-r0/recipe-sysroot/usr/bin/crossscripts:/var/home/dingo/o=
verc/build/tmp/work/corei7-64-overc-linux/qemu/5.1.0-r0/recipe-sysroot-na=
tive/usr/sbin:/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/=
qemu/5.1.0-r0/recipe-sysroot-native/usr/bin:/var/home/dingo/overc/build/t=
mp/work/corei7-64-overc-linux/qemu/5.1.0-r0/recipe-sysroot-native/sbin:/v=
ar/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/qemu/5.1.0-r0/re=
cipe-sysroot-native/bin:/var/home/dingo/overc/poky/bitbake/bin:/var/home/=
dingo/overc/build/tmp/hosttools"=20
dpkg-deb -b=20
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/qemu/5.1.0-r0/=
packages-split/qemu-x86_64=20
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/qemu/5.1.0-r0/=
deploy-debs/corei7-64'=20
returned non-zero exit status 2.
Subprocess output:dpkg-deb: error: package name has characters that=20
aren't lowercase alphanums or '-+.'

ERROR: Logfile of failure stored in:=20
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/qemu/5.1.0-r0/=
temp/log.do_package_write_deb.3730245
ERROR: Task=20
(/var/home/dingo/overc/poky/meta/recipes-devtools/qemu/qemu_5.1.0.bb:do_p=
ackage_write_deb)=20
failed with exit code '1'




