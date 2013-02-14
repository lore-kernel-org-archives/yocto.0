Return-Path: <scancool@yahoo.com>
Received: from nm31-vm5.bullet.mail.bf1.yahoo.com
	(nm31-vm5.bullet.mail.bf1.yahoo.com [72.30.239.13])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 98E74E003BC
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 09:31:24 -0800 (PST)
Received: from [98.139.215.141] by nm31.bullet.mail.bf1.yahoo.com with NNFMP;
	14 Feb 2013 17:31:23 -0000
Received: from [98.139.212.222] by tm12.bullet.mail.bf1.yahoo.com with NNFMP;
	14 Feb 2013 17:31:23 -0000
Received: from [127.0.0.1] by omp1031.mail.bf1.yahoo.com with NNFMP;
	14 Feb 2013 17:31:23 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 381605.58263.bm@omp1031.mail.bf1.yahoo.com
Received: (qmail 84926 invoked by uid 60001); 14 Feb 2013 17:31:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1360863083; bh=By2gFkB+aAziJt65CxdyaCYltCzfZeOokurnWPORMzA=;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=F2qpmZNadzQdu2cahm6Om1VpXM5bsMgRIAPXRYmrhzgx0pCNFug63OBhPSwMgZn84lu1V0H9ULEIm4ObkZywH4xa5x47jJNetzDhKVKv8PBbtotdnN687cDyXF/i3bKBDGAYxEe3RArOfQCrYLmhbNkaoqdCDzZ5tN5dMPkKo0A=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Rocket-MIMEInfo:X-Mailer:Message-ID:Date:From:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=N5uzljy+3htezlRtATzLT5/TPAysmdu7ecFtQP6AejB/fDK8ybadtU12eIA3C20MGoxtEHjK+joF3KZTqtpD45bZj6ynqaC+fLCorYZk4WUjp8/U82P0LqAyjcBZtCFGUmCF5Gt+qLoWZdnVxPVcYyhiRz80/VoA9F4UV+ZPZes=;
X-YMail-OSG: _MhDXDwVM1msz9z92LLOZ1ToUOQYnpyXhCP7Zq4Fpp2cjx4
	PN9d27glRSUaR_iE9rIwLbRs.EjXdmRUOxZnb1YZwjQhPUBwWMtLpjRbABkr
	Yym3AK0XT2ZCiyjDPvAnBD2MnzUO0sFvQnnIH1Et9fMixoOwGsC5or70Y2td
	i8k1OEJh8k_wUBccSc0iuf3vBZhGCwOel05mGWKJBI_hH4SHPaeUpij_XGa7
	.j2aqfzwQOxY_2mnzVx_tGulrCZ8g4KhAJ9udEX.VnAkoKWOgEdHTMcDuw4B
	mjR0CBzFhuEQxCICwGz_AA8BeCN6hpvT8q7tqzicZCLoNeBeMOX6GXkrqUje
	ezPgVnGcWrwA6bL7xJtDbVKEbS03Y_oRdxGra1BQ5JS0K8TeN2.LO2riFicy
	KOHr4cuz94D9OokLvG9yuvyi2S3oKj_FNpt8taMKziuFahiDlG_uDgjcmRPK
	ElkEMTl81ybWNRcJ8TY51TS9k8KKGnMjgUkn78GkeIexuIVwAT_H.gNNiqRD
	d9Z6dGFotWRlrkc_8ipqNoO2dTVdpGVweCJz6u5aj4Hw3F.Iy57vVgDOfm18
	2a0hAsC6HQIMKIqPBgRNEqh4PX8oVRAVhup7h72CPGOu0vvJG1uezHd6ufmz
	n1tOxYH8eJw.fXpgEnspYkrUT2YCzJ9xsd6KpxRMadxpdvOCCRuWIikpgL23
	ZPBJA5jWp3edXFvdfB.xLxyXi2CPoImDvv.js0M6Yd0omN1jWGJms0PGfm.a
	6.KxHvh5vjcjNKMr2lKa_BsqYv_w47EOVV_uTKz7BtRmxjkj2MO68xZ9oyDZ
	MZ7YRxKSFa1CltHkZfJMhcVb2pEsYDaO3F2AdoiOBFu8tudOC6S..M1o-
Received: from [64.62.111.10] by web140001.mail.bf1.yahoo.com via HTTP;
	Thu, 14 Feb 2013 09:31:23 PST
X-Rocket-MIMEInfo: 001.001,
	SEkgUnVkb2xmLCANCkkgd2FzIGFibGUgdG8gYnVpbGQgbmFubzoNCmJ1dCBteSBxdWVzdGlvbiBpcyB0aGVyZSBhIG1lbnVjb25maWcgdG8gc2VsZWN0IHdoYXQgdG8gYnVpbGQgbGlrZSBpbiBidWlsZHJvb3Q_DQoNCmFuZHJlQGxpbnV4On4vZnNsLWNvbW11bml0eS1ic3AvYnVpbGQkIGJpdGJha2UgLWIgbmFubw0KV0FSTklORzogQnVpbGRmaWxlIHNwZWNpZmllZCwgZGVwZW5kZW5jaWVzIHdpbGwgbm90IGJlIGhhbmRsZWQuIElmIHRoaXMgaXMgbm90IHdoYXQgeW91IHdhbnQsIGRvIG5vdCB1c2UgLWIgLyABMAEBAQE-
X-Mailer: YahooMailClassic/15.1.2 YahooMailWebService/0.8.133.508
Message-ID: <1360863083.63962.YahooMailClassic@web140001.mail.bf1.yahoo.com>
Date: Thu, 14 Feb 2013 09:31:23 -0800 (PST)
From: Andre Bella <scancool@yahoo.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
In-Reply-To: <CA+gsK-o5NBuaCcukAohuMh06VXpxyJVD9Bz=G7W8r0hu-TV9Mw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: select installation packages
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
X-List-Received-Date: Thu, 14 Feb 2013 17:31:25 -0000
Content-Type: multipart/alternative;
	boundary="1722594484-440261852-1360863083=:63962"

--1722594484-440261852-1360863083=:63962
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

HI Rudolf,=20
I was able to build nano:
but my question is there a menuconfig to select what to build like in build=
root?

andre@linux:~/fsl-community-bsp/build$ bitbake -b nano
WARNING: Buildfile specified, dependencies will not be handled. If this is =
not what you want, do not use -b / --buildfile.

OE Build Configuration:
BB_VERSION=A0=A0=A0=A0=A0=A0=A0 =3D "1.15.2"
TARGET_ARCH=A0=A0=A0=A0=A0=A0 =3D "arm"
TARGET_OS=A0=A0=A0=A0=A0=A0=A0=A0 =3D "linux-gnueabi"
MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D "imx53qsb"
DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D "poky"
DISTRO_VERSION=A0=A0=A0 =3D "1.2.2"
TUNE_FEATURES=A0=A0=A0=A0 =3D "armv7a vfp neon cortexa8"
TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D "vfp-neon"
meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=20
meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D "(nobranch):6caa7d1d6c122d084ed01d1f5e1=
dae0bf259f854"
meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D "(nobranch):c0117f5ad7d1fe18d149b=
da426c7134ff24daae8"
meta-fsl-arm=A0=A0=A0=A0=A0 =3D "(nobranch):debea1a3c80227b33a3bbaa21c51435=
db1b3f5d7"
meta-fsl-arm-extra =3D "(nobranch):6710df97df3d96776c598330e1bd2c63a9450030=
"
meta-fsl-demos=A0=A0=A0 =3D "(nobranch):02186c594a782c9c5f5a2df1d0dbb3a91fd=
1e929"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 1 of 12 (ID: 4, /home/andre/fsl-community-bsp/sources/me=
ta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_fetch)
NOTE: package nano-2.2.5-r2.0: task do_fetch: Started
NOTE: package nano-2.2.5-r2.0: task do_fetch: Succeeded
NOTE: Running task 2 of 12 (ID: 0, /home/andre/fsl-community-bsp/sources/me=
ta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_unpack)
NOTE: package nano-2.2.5-r2.0: task do_unpack: Started
NOTE: package nano-2.2.5-r2.0: task do_unpack: Succeeded
NOTE: Running task 3 of 12 (ID: 1, /home/andre/fsl-community-bsp/sources/me=
ta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_patch)
NOTE: package nano-2.2.5-r2.0: task do_patch: Started
NOTE: package nano-2.2.5-r2.0: task do_patch: Succeeded
NOTE: Running task 4 of 12 (ID: 6, /home/andre/fsl-community-bsp/sources/me=
ta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_configure)
NOTE: Running task 5 of 12 (ID: 10, /home/andre/fsl-community-bsp/sources/m=
eta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_populate_li=
c)
NOTE: package nano-2.2.5-r2.0: task do_populate_lic: Started
NOTE: package nano-2.2.5-r2.0: task do_configure: Started
NOTE: package nano-2.2.5-r2.0: task do_populate_lic: Succeeded
NOTE: package nano-2.2.5-r2.0: task do_configure: Succeeded
NOTE: Running task 6 of 12 (ID: 7, /home/andre/fsl-community-bsp/sources/me=
ta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_compile)
NOTE: package nano-2.2.5-r2.0: task do_compile: Started
NOTE: package nano-2.2.5-r2.0: task do_compile: Succeeded
NOTE: Running task 7 of 12 (ID: 2, /home/andre/fsl-community-bsp/sources/me=
ta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_install)
NOTE: package nano-2.2.5-r2.0: task do_install: Started
NOTE: package nano-2.2.5-r2.0: task do_install: Succeeded
NOTE: Running task 8 of 12 (ID: 9, /home/andre/fsl-community-bsp/sources/me=
ta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_package)
NOTE: Running task 9 of 12 (ID: 3, /home/andre/fsl-community-bsp/sources/me=
ta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_populate_sys=
root)
NOTE: package nano-2.2.5-r2.0: task do_package: Started
NOTE: package nano-2.2.5-r2.0: task do_populate_sysroot: Started
NOTE: package nano-2.2.5-r2.0: task do_populate_sysroot: Succeeded
NOTE: package nano-2.2.5-r2.0: task do_package: Succeeded
NOTE: Running task 10 of 12 (ID: 11, /home/andre/fsl-community-bsp/sources/=
meta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_package_wr=
ite_rpm)
NOTE: package nano-2.2.5-r2.0: task do_package_write_rpm: Started
NOTE: package nano-2.2.5-r2.0: task do_package_write_rpm: Succeeded
NOTE: Running noexec task 11 of 12 (ID: 8, /home/andre/fsl-community-bsp/so=
urces/meta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_pack=
age_write)
NOTE: Running noexec task 12 of 12 (ID: 5, /home/andre/fsl-community-bsp/so=
urces/meta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_buil=
d)
NOTE: Tasks Summary: Attempted 12 tasks of which 0 didn't need to be rerun =
and all succeeded.

Summary: There was 1 WARNING message shown.
andre@linux:~/fsl-community-bsp/build$=20


--- On Thu, 2/14/13, Rudolf Streif <rstreif@linuxfoundation.org> wrote:

From: Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: [yocto] select installation packages
To: "Andre Bella" <scancool@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thursday, February 14, 2013, 10:10 AM

Hi Andre,
There actually is no recipe for building the nano editor in YP by default. =
Unless you added one,
bitbake -b nano
=0Awould result in this output
ERROR: Unable to find any recipe file matching 'nano'

I have attached a recipe for you to build nano and a patch to handle a conf=
iguration mistake configure.ac causing do_configure to fail.=0A
If you add that recipe you can run bitbake nano. You can also include into =
your image by adding
IMAGE_INSTALL_append =3D " nano"=0A
to your conf/local.conf file.
:rjs


On Thu, Feb 14, 2013 at 8:02 AM, Andre Bella <scancool@yahoo.com> wrote:
=0AHello=20
=A0I had used buildroot in the pass and I like it cause is very easy to use=
, but I'm moving to yocto cause it has more applications than buildroot, in=
 buildroot you can select the packages you want to add by going to menuconf=
ig, how do I select the packages I wan to add in yocto, for example if I wa=
n to add nano or gstreamer, from the guide I seen you just type bitbake -b =
nano, but is there a menuconfig on yocto where you can select the package y=
ou want to add before you build the image?
=0Athanks,

_______________________________________________
=0Ayocto mailing list
=0Ayocto@yoctoproject.org
=0Ahttps://lists.yoctoproject.org/listinfo/yocto
=0A



--=20
--=A0
Rudolf J. StreifDirector of Embedded Solutions=0AThe Linux Foundation
rudolf.streif@linux.com=0APhone: +1.619.631.5383Skype: rudolfstreifPGP: RSA=
 2048/2048 D6E7D28B=0A
Linux Foundation Events Schedule: =A0events.linuxfoundation.org
=0ALinux Foundation Training Schedule:=A0training.linuxfoundation.org

=0A=0A=0A

--1722594484-440261852-1360863083=:63962
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0" ><tr><td valign=3D"=
top" style=3D"font: inherit;">HI Rudolf, <br>I was able to build nano:<br>b=
ut my question is there a menuconfig to select what to build like in buildr=
oot?<br><br>andre@linux:~/fsl-community-bsp/build$ bitbake -b nano<br>WARNI=
NG: Buildfile specified, dependencies will not be handled. If this is not w=
hat you want, do not use -b / --buildfile.<br><br>OE Build Configuration:<b=
r>BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "1.15.2"<br>TARG=
ET_ARCH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm"<br>TARGET_OS&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "linux-gnueabi"<br>MACHINE&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "imx53qsb"<br>D=
ISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D=
 "poky"<br>DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D "1.2.2"<br>TUNE_FEATURES&nb=
sp;&nbsp;&nbsp;&nbsp; =3D "armv7a vfp neon
 cortexa8"<br>TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "vfp=
-neon"<br>meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; <br>meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D "(nobranch):6caa7d1d6c122d084ed01d1f5e1dae0bf259f854"<br>meta-oe&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "(nobranch):c0117=
f5ad7d1fe18d149bda426c7134ff24daae8"<br>meta-fsl-arm&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; =3D "(nobranch):debea1a3c80227b33a3bbaa21c51435db1b3f5d7"<br>meta-f=
sl-arm-extra =3D "(nobranch):6710df97df3d96776c598330e1bd2c63a9450030"<br>m=
eta-fsl-demos&nbsp;&nbsp;&nbsp; =3D "(nobranch):02186c594a782c9c5f5a2df1d0d=
bb3a91fd1e929"<br><br>NOTE: Preparing runqueue<br>NOTE: Executing SetScene =
Tasks<br>NOTE: Executing RunQueue Tasks<br>NOTE: Running task 1 of 12 (ID: =
4, /home/andre/fsl-community-bsp/sources/meta-openembedded/meta-oe/recipes-=
support/nano/nano_2.2.5.bb, do_fetch)<br>NOTE: package nano-2.2.5-r2.0: tas=
k
 do_fetch: Started<br>NOTE: package nano-2.2.5-r2.0: task do_fetch: Succeed=
ed<br>NOTE: Running task 2 of 12 (ID: 0, /home/andre/fsl-community-bsp/sour=
ces/meta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_unpack=
)<br>NOTE: package nano-2.2.5-r2.0: task do_unpack: Started<br>NOTE: packag=
e nano-2.2.5-r2.0: task do_unpack: Succeeded<br>NOTE: Running task 3 of 12 =
(ID: 1, /home/andre/fsl-community-bsp/sources/meta-openembedded/meta-oe/rec=
ipes-support/nano/nano_2.2.5.bb, do_patch)<br>NOTE: package nano-2.2.5-r2.0=
: task do_patch: Started<br>NOTE: package nano-2.2.5-r2.0: task do_patch: S=
ucceeded<br>NOTE: Running task 4 of 12 (ID: 6, /home/andre/fsl-community-bs=
p/sources/meta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_=
configure)<br>NOTE: Running task 5 of 12 (ID: 10, /home/andre/fsl-community=
-bsp/sources/meta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, =
do_populate_lic)<br>NOTE: package nano-2.2.5-r2.0: task
 do_populate_lic: Started<br>NOTE: package nano-2.2.5-r2.0: task do_configu=
re: Started<br>NOTE: package nano-2.2.5-r2.0: task do_populate_lic: Succeed=
ed<br>NOTE: package nano-2.2.5-r2.0: task do_configure: Succeeded<br>NOTE: =
Running task 6 of 12 (ID: 7, /home/andre/fsl-community-bsp/sources/meta-ope=
nembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_compile)<br>NOTE: =
package nano-2.2.5-r2.0: task do_compile: Started<br>NOTE: package nano-2.2=
.5-r2.0: task do_compile: Succeeded<br>NOTE: Running task 7 of 12 (ID: 2, /=
home/andre/fsl-community-bsp/sources/meta-openembedded/meta-oe/recipes-supp=
ort/nano/nano_2.2.5.bb, do_install)<br>NOTE: package nano-2.2.5-r2.0: task =
do_install: Started<br>NOTE: package nano-2.2.5-r2.0: task do_install: Succ=
eeded<br>NOTE: Running task 8 of 12 (ID: 9, /home/andre/fsl-community-bsp/s=
ources/meta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_pac=
kage)<br>NOTE: Running task 9 of 12 (ID: 3,
 /home/andre/fsl-community-bsp/sources/meta-openembedded/meta-oe/recipes-su=
pport/nano/nano_2.2.5.bb, do_populate_sysroot)<br>NOTE: package nano-2.2.5-=
r2.0: task do_package: Started<br>NOTE: package nano-2.2.5-r2.0: task do_po=
pulate_sysroot: Started<br>NOTE: package nano-2.2.5-r2.0: task do_populate_=
sysroot: Succeeded<br>NOTE: package nano-2.2.5-r2.0: task do_package: Succe=
eded<br>NOTE: Running task 10 of 12 (ID: 11, /home/andre/fsl-community-bsp/=
sources/meta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.bb, do_pa=
ckage_write_rpm)<br>NOTE: package nano-2.2.5-r2.0: task do_package_write_rp=
m: Started<br>NOTE: package nano-2.2.5-r2.0: task do_package_write_rpm: Suc=
ceeded<br>NOTE: Running noexec task 11 of 12 (ID: 8, /home/andre/fsl-commun=
ity-bsp/sources/meta-openembedded/meta-oe/recipes-support/nano/nano_2.2.5.b=
b, do_package_write)<br>NOTE: Running noexec task 12 of 12 (ID: 5,
 /home/andre/fsl-community-bsp/sources/meta-openembedded/meta-oe/recipes-su=
pport/nano/nano_2.2.5.bb, do_build)<br>NOTE: Tasks Summary: Attempted 12 ta=
sks of which 0 didn't need to be rerun and all succeeded.<br><br>Summary: T=
here was 1 WARNING message shown.<br>andre@linux:~/fsl-community-bsp/build$=
 <br><br><br>--- On <b>Thu, 2/14/13, Rudolf Streif <i>&lt;rstreif@linuxfoun=
dation.org&gt;</i></b> wrote:<br><blockquote style=3D"border-left: 2px soli=
d rgb(16, 16, 255); margin-left: 5px; padding-left: 5px;"><br>From: Rudolf =
Streif &lt;rstreif@linuxfoundation.org&gt;<br>Subject: Re: [yocto] select i=
nstallation packages<br>To: "Andre Bella" &lt;scancool@yahoo.com&gt;<br>Cc:=
 "yocto@yoctoproject.org" &lt;yocto@yoctoproject.org&gt;<br>Date: Thursday,=
 February 14, 2013, 10:10 AM<br><br><div id=3D"yiv1592188634"><div dir=3D"l=
tr">Hi Andre,<div><br></div><div style=3D"">There actually is no recipe for=
 building the nano editor in YP by default. Unless you added one,</div><div
 style=3D""><br></div><div style=3D"">bitbake -b nano</div><div style=3D"">=
<br></div>=0A<div style=3D"">would result in this output</div><div style=3D=
""><br></div><div style=3D"">ERROR: Unable to find any recipe file matching=
 'nano'<br></div><div style=3D""><br></div><div style=3D"">I have attached =
a recipe for you to build nano and a patch to handle a configuration mistak=
e <a rel=3D"nofollow" target=3D"_blank" href=3D"http://configure.ac">config=
ure.ac</a> causing do_configure to fail.</div>=0A<div style=3D""><br></div>=
<div style=3D"">If you add that recipe you can run bitbake nano. You can al=
so include into your image by adding</div><div style=3D""><br></div><div st=
yle=3D"">IMAGE_INSTALL_append =3D " nano"</div><div style=3D"">=0A<br></div=
><div style=3D"">to your conf/local.conf file.</div><div style=3D""><br></d=
iv><div style=3D"">:rjs</div><div style=3D""><br></div></div><div class=3D"=
yiv1592188634gmail_extra"><br><br><div class=3D"yiv1592188634gmail_quote">O=
n Thu, Feb 14, 2013 at 8:02 AM, Andre Bella <span dir=3D"ltr">&lt;<a rel=3D=
"nofollow" ymailto=3D"mailto:scancool@yahoo.com" target=3D"_blank" href=3D"=
/mc/compose?to=3Dscancool@yahoo.com">scancool@yahoo.com</a>&gt;</span> wrot=
e:<br>=0A<blockquote class=3D"yiv1592188634gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;"><table border=3D"0" c=
ellpadding=3D"0" cellspacing=3D"0"><tbody><tr><td style=3D"font:inherit;" v=
align=3D"top">Hello <br>&nbsp;I had used buildroot in the pass and I like i=
t cause is very easy to use, but I'm moving to yocto cause it has more appl=
ications than buildroot, in buildroot you can select the packages you want =
to add by going to menuconfig, how do I select the packages I wan to add in=
 yocto, for example if I wan to add nano or gstreamer, from the guide I see=
n you just type bitbake -b nano, but is there a menuconfig on yocto where y=
ou can select the package you want to add before you build the image?<br>=
=0Athanks,<br></td></tr></tbody></table><br>_______________________________=
________________<br>=0Ayocto mailing list<br>=0A<a rel=3D"nofollow" ymailto=
=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" href=3D"/mc/compose?to=
=3Dyocto@yoctoproject.org">yocto@yoctoproject.org</a><br>=0A<a rel=3D"nofol=
low" target=3D"_blank" href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o">https://lists.yoctoproject.org/listinfo/yocto</a><br>=0A<br></blockquote=
></div><br><br clear=3D"all"><div><br></div>-- <br>--&nbsp;<br><font face=
=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b></font><div><font =
face=3D"arial, helvetica, sans-serif">Director of Embedded Solutions</font>=
</div>=0A<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundat=
ion</font></div><div><font face=3D"arial, helvetica, sans-serif"><br></font=
></div><div><a rel=3D"nofollow" ymailto=3D"mailto:rudolf.streif@linux.com" =
target=3D"_blank" href=3D"/mc/compose?to=3Drudolf.streif@linux.com"><font f=
ace=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></di=
v>=0A<div><font face=3D"arial, helvetica, sans-serif">Phone: +1.619.631.538=
3</font></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudol=
fstreif</font></div><div><font face=3D"arial, helvetica, sans-serif">PGP: R=
SA 2048/2048 D6E7D28B</font></div>=0A<div><font face=3D"garamond, serif"><b=
r></font></div><div><font face=3D"garamond, serif"><span style=3D"border-co=
llapse:collapse;color:rgb(102,102,102);font-family:arial, sans-serif;font-s=
ize:13px;"><span style=3D"border-collapse:collapse;">Linux Foundation Event=
s Schedule: &nbsp;<a rel=3D"nofollow" target=3D"_blank" href=3D"http://even=
ts.linuxfoundation.org/" style=3D"color:rgb(64,100,128);">events.linuxfound=
ation.org</a><br>=0ALinux Foundation Training Schedule:&nbsp;<a rel=3D"nofo=
llow" target=3D"_blank" href=3D"http://training.linuxfoundation.org/" style=
=3D"color:rgb(64,100,128);">training.linuxfoundation.org</a></span><br></sp=
an></font></div><div><font face=3D"garamond, serif"><span style=3D"border-c=
ollapse:collapse;color:rgb(102,102,102);font-family:arial, sans-serif;font-=
size:13px;"><br>=0A</span></font></div>=0A</div>=0A</div></blockquote></td>=
</tr></table>

--1722594484-440261852-1360863083=:63962--
