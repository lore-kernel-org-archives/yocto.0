Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.8574.1578577589490399808
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 05:46:30 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@iwavesystems.com header.s=default header.b=RwQbi510;
 spf=permerror, err=parse error for token &{10 18 _spf.mailspamprotection.com}: parse error for token &{10 18 _nb5.mailspamprotection.com}: limit exceeded (domain: iwavesystems.com, ip: 140.211.169.56, mailfrom: sheraz.ali@iwavesystems.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A309E0138A; Thu,  9 Jan 2020 05:46:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from c57603.sgvps.net (c57603.sgvps.net [109.199.122.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 955DDE01381
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2020 05:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=iwavesystems.com; s=default; h=Content-Type:MIME-Version:Date:Message-ID:Cc
	:Subject:From:To:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gabikXjGzoxT5eD5a3Wi+ELpztY+0h86+lopy9LAFlU=; b=RwQbi510OUOz0/vAejMBCc55fz
	8lJAldu8JpQ5c39yGfLc8sz0cwOhQwlNxfTpLbYUw4/BMfU/JQyE6fxaB/fDxAuyrPAkP23clKpNU
	C2Fczmsa4Ig1zd4H8I40K8aH356yR4d+3t8++4Z3+JtGIJiW3QZIBO6K1d396JjtXRpFVxQ7j7e+P
	l8+OI0fkQl44sGJuL5n68f1rumBiP3m2nswf+slEQUUARzKNNQeqquyTi9DCX0HXV6Zbt4iCwonI6
	n8mruIAZ4z01BAxBKYF2Q5DM3VJB8Xh7igT4h8fr1HUtZ8auKRhJe6ur0++kNWWvmicaiZWqlA7x5
	Q2zA/ODQ==;
Received: from [210.18.180.104] (port=50787 helo=[192.168.1.131])
	by c57603.sgvps.net with esmtpsa  tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.90devstart-1178-b07e68e5-XX)
	(envelope-from <sheraz.ali@iwavesystems.com>)
	id 1ipY8m-0003Yy-Ex; Thu, 09 Jan 2020 07:46:24 -0600
To: Yocto <yocto@yoctoproject.org>
From: "Sheraz Ali" <sheraz.ali@iwavesystems.com>
Subject: QA Issue while building core-image-mono
Cc: Syed Rizwan <syedrizwanb@iwavesystems.com>
Message-ID: <30a193f7-cb24-b82f-031f-925b0ac43df9@iwavesystems.com>
Date: Thu, 9 Jan 2020 19:16:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - c57603.sgvps.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - iwavesystems.com
X-Get-Message-Sender-Via: c57603.sgvps.net: authenticated_id: sheraz.ali@iwavesystems.com
X-Authenticated-Sender: c57603.sgvps.net: sheraz.ali@iwavesystems.com
Content-Type: multipart/alternative;
 boundary="------------422C99B11DB385F7C11E3E12"
Content-Language: en-US

--------------422C99B11DB385F7C11E3E12
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

 =C2=A0=C2=A0=C2=A0 I was trying to add meta-mono to yocto build, i had c=
loned=20
meta-mono and added the layer to bblayer.conf and when i try to build=20
core-image-mono using the below command, i get QA issues, I have added=20
the error log for your reference.

bitbake core-image-mono

*Build Configuration:*
BB_VERSION           =3D "1.38.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "ubuntu-16.04"
TARGET_SYS           =3D "aarch64-poky-linux"
MACHINE              =3D "imx8qm_iwg27m"
DISTRO               =3D "fsl-imx-xwayland"
DISTRO_VERSION       =3D "L4.14.98-2.0.0_GA"
TUNE_FEATURES        =3D "aarch64"
TARGET_FPU           =3D ""
meta
meta-poky            =3D "HEAD:c9bd4984f8f471ca2c43052714f4413ba99cf171"
meta-oe
meta-multimedia      =3D "HEAD:8760facba1bceb299b3613b8955621ddaa3d4c3f"
meta-freescale       =3D "HEAD:27ca94f8a4336790ba117b4298566f6820e7e74c"
meta-freescale-3rdparty =3D "HEAD:82037216280a39957fb4272581637abec734ad5=
0"
meta-freescale-distro =3D "HEAD:f7e2216e93aff14ac32728a13637a48df436b7f4"
meta-ublox-modules   =3D "<unknown>:<unknown>"
meta-bsp
meta-sdk             =3D "HEAD:8eeb420fad668b733ab95b460895e1c337c66b25"
meta-browser         =3D "HEAD:75640e14e325479c076b6272b646be7a239c18aa"
meta-gnome
meta-networking
meta-python
meta-filesystems     =3D "HEAD:8760facba1bceb299b3613b8955621ddaa3d4c3f"
meta-qt5             =3D "HEAD:d4e7f73d04e8448d326b6f89908701e304e37d65"
meta-mono            =3D "master:1a54dbe8027644e68b02f4e44ca2f631d7e80e99=
"

*LOG:*

ERROR: mono-5.14.0.177-r0 do_package_qa: QA Issue:=20
/usr/lib/mono/4.5/Microsoft.CodeAnalysis.Scripting.dll contained in=20
package mono-libs-4.5 requires mono(System.Runtime.Loader), but no=20
providers found in RDEPENDS_mono-libs-4.5? [file-rdeps]
ERROR: mono-5.14.0.177-r0 do_package_qa: QA run found fatal errors.=20
Please consider fixing them.
ERROR: mono-5.14.0.177-r0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in:=20
/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bsp/build_imx8qm/t=
mp/work/aarch64-poky-linux/mono/5.14.0.177-r0/temp/log.do_package_qa.1683=
6
ERROR: Task=20
(/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bsp/sources/meta-=
mono/recipes-mono/mono/mono_5.14.0.177.bb:do_package_qa)=20
failed with exit code '1'
ERROR: core-image-mono-1.0-r0 do_rootfs: Could not invoke dnf. Command=20
'/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bsp/build_imx8qm/=
tmp/work/imx8qm_iwg27m-poky-linux/core-image-mono/1.0-r0/recipe-sysroot-n=
ative/usr/bin/dnf=20
-y -c=20
/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bsp/build_imx8qm/t=
mp/work/imx8qm_iwg27m-poky-linux/core-image-mono/1.0-r0/rootfs/etc/dnf/dn=
f.conf=20
--setopt=3Dreposdir=3D/home/rizwan/Projects/embedded_world_1.1/iwg27-rele=
ase-bsp/build_imx8qm/tmp/work/imx8qm_iwg27m-poky-linux/core-image-mono/1.=
0-r0/rootfs/etc/yum.repos.d=20
--repofrompath=3Doe-repo,/home/rizwan/Projects/embedded_world_1.1/iwg27-r=
elease-bsp/build_imx8qm/tmp/work/imx8qm_iwg27m-poky-linux/core-image-mono=
/1.0-r0/oe-rootfs-repo=20
--installroot=3D/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bs=
p/build_imx8qm/tmp/work/imx8qm_iwg27m-poky-linux/core-image-mono/1.0-r0/r=
ootfs=20
--setopt=3Dlogdir=3D/home/rizwan/Projects/embedded_world_1.1/iwg27-releas=
e-bsp/build_imx8qm/tmp/work/imx8qm_iwg27m-poky-linux/core-image-mono/1.0-=
r0/temp=20
--nogpgcheck install iwtest obexftp psplash mono mrvl-wireless-firmware=20
gstreamer1.0-libav tzdata dnf rpm packagegroup-base-extended=20
packagegroup-core-x11-sato mrvl-wireless-modules mono-helloworld=20
run-postinsts dhcpcd packagegroup-core-boot=20
packagegroup-core-ssh-dropbear locale-base-en-us locale-base-en-gb'=20
returned 1:
Added oe-repo repo from=20
/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bsp/build_imx8qm/t=
mp/work/imx8qm_iwg27m-poky-linux/core-image-mono/1.0-r0/oe-rootfs-repo
Last metadata expiration check: 0:00:00 ago on Thu 09 Jan 2020 01:40:51=20
PM UTC.
Error:
 =C2=A0Problem 1: package mono-5.14.0.177-r0.aarch64 requires mono-libs-4=
.5,=20
but none of the providers can be installed
 =C2=A0 - conflicting requests
 =C2=A0 - nothing provides mono(System.Runtime.Loader) =3D 4.0.0.0 needed=
 by=20
mono-libs-4.5-5.14.0.177-r0.aarch64
 =C2=A0Problem 2: package mono-helloworld-1.2-r0.aarch64 requires mono, b=
ut=20
none of the providers can be installed
 =C2=A0 - package mono-5.14.0.177-r0.aarch64 requires mono-libs-4.5, but =
none=20
of the providers can be installed
 =C2=A0 - conflicting requests
 =C2=A0 - nothing provides mono(System.Runtime.Loader) =3D 4.0.0.0 needed=
 by=20
mono-libs-4.5-5.14.0.177-r0.aarch64

ERROR: core-image-mono-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:=20
/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bsp/build_imx8qm/t=
mp/work/imx8qm_iwg27m-poky-linux/core-image-mono/1.0-r0/temp/log.do_rootf=
s.16847
ERROR: Task=20
(/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bsp/sources/meta-=
mono/recipes-mono/images/core-image-mono.bb:do_rootfs)=20
failed with exit code '1'

--=20
Thanks and Regards
Sheraz Ali Shah


--------------422C99B11DB385F7C11E3E12
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Hi,</p>
    <p>=C2=A0=C2=A0=C2=A0 I was trying to add meta-mono to yocto build, i=
 had cloned
      meta-mono and added the layer to bblayer.conf and when i try to
      build core-image-mono using the below command, i get QA issues, I
      have added the error log for your reference.</p>
    <pre>bitbake core-image-mono

<b>Build Configuration:</b>
BB_VERSION           =3D "1.38.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "ubuntu-16.04"
TARGET_SYS           =3D "aarch64-poky-linux"
MACHINE              =3D "imx8qm_iwg27m"
DISTRO               =3D "fsl-imx-xwayland"
DISTRO_VERSION       =3D "L4.14.98-2.0.0_GA"
TUNE_FEATURES        =3D "aarch64"
TARGET_FPU           =3D ""
meta                =20
meta-poky            =3D "HEAD:c9bd4984f8f471ca2c43052714f4413ba99cf171"
meta-oe             =20
meta-multimedia      =3D "HEAD:8760facba1bceb299b3613b8955621ddaa3d4c3f"
meta-freescale       =3D "HEAD:27ca94f8a4336790ba117b4298566f6820e7e74c"
meta-freescale-3rdparty =3D "HEAD:82037216280a39957fb4272581637abec734ad5=
0"
meta-freescale-distro =3D "HEAD:f7e2216e93aff14ac32728a13637a48df436b7f4"
meta-ublox-modules   =3D "&lt;unknown&gt;:&lt;unknown&gt;"
meta-bsp            =20
meta-sdk             =3D "HEAD:8eeb420fad668b733ab95b460895e1c337c66b25"
meta-browser         =3D "HEAD:75640e14e325479c076b6272b646be7a239c18aa"
meta-gnome          =20
meta-networking     =20
meta-python         =20
meta-filesystems     =3D "HEAD:8760facba1bceb299b3613b8955621ddaa3d4c3f"
meta-qt5             =3D "HEAD:d4e7f73d04e8448d326b6f89908701e304e37d65"
meta-mono            =3D "master:1a54dbe8027644e68b02f4e44ca2f631d7e80e99=
"

</pre>
    <p><b>LOG:</b></p>
    <p>ERROR: mono-5.14.0.177-r0 do_package_qa: QA Issue:
      /usr/lib/mono/4.5/Microsoft.CodeAnalysis.Scripting.dll contained
      in package mono-libs-4.5 requires mono(System.Runtime.Loader), but
      no providers found in RDEPENDS_mono-libs-4.5? [file-rdeps]<br>
      ERROR: mono-5.14.0.177-r0 do_package_qa: QA run found fatal
      errors. Please consider fixing them.<br>
      ERROR: mono-5.14.0.177-r0 do_package_qa: Function failed:
      do_package_qa<br>
      ERROR: Logfile of failure stored in:
/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bsp/build_imx8qm/t=
mp/work/aarch64-poky-linux/mono/5.14.0.177-r0/temp/log.do_package_qa.1683=
6<br>
      ERROR: Task
(/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bsp/sources/meta-=
mono/recipes-mono/mono/mono_5.14.0.177.bb:do_package_qa)
      failed with exit code '1'<br>
      ERROR: core-image-mono-1.0-r0 do_rootfs: Could not invoke dnf.
      Command
'/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bsp/build_imx8qm/=
tmp/work/imx8qm_iwg27m-poky-linux/core-image-mono/1.0-r0/recipe-sysroot-n=
ative/usr/bin/dnf
      -y -c
/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bsp/build_imx8qm/t=
mp/work/imx8qm_iwg27m-poky-linux/core-image-mono/1.0-r0/rootfs/etc/dnf/dn=
f.conf
--setopt=3Dreposdir=3D/home/rizwan/Projects/embedded_world_1.1/iwg27-rele=
ase-bsp/build_imx8qm/tmp/work/imx8qm_iwg27m-poky-linux/core-image-mono/1.=
0-r0/rootfs/etc/yum.repos.d
--repofrompath=3Doe-repo,/home/rizwan/Projects/embedded_world_1.1/iwg27-r=
elease-bsp/build_imx8qm/tmp/work/imx8qm_iwg27m-poky-linux/core-image-mono=
/1.0-r0/oe-rootfs-repo
--installroot=3D/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bs=
p/build_imx8qm/tmp/work/imx8qm_iwg27m-poky-linux/core-image-mono/1.0-r0/r=
ootfs
--setopt=3Dlogdir=3D/home/rizwan/Projects/embedded_world_1.1/iwg27-releas=
e-bsp/build_imx8qm/tmp/work/imx8qm_iwg27m-poky-linux/core-image-mono/1.0-=
r0/temp
      --nogpgcheck install iwtest obexftp psplash mono
      mrvl-wireless-firmware gstreamer1.0-libav tzdata dnf rpm
      packagegroup-base-extended packagegroup-core-x11-sato
      mrvl-wireless-modules mono-helloworld run-postinsts dhcpcd
      packagegroup-core-boot packagegroup-core-ssh-dropbear
      locale-base-en-us locale-base-en-gb' returned 1:<br>
      Added oe-repo repo from
/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bsp/build_imx8qm/t=
mp/work/imx8qm_iwg27m-poky-linux/core-image-mono/1.0-r0/oe-rootfs-repo<br=
>
      Last metadata expiration check: 0:00:00 ago on Thu 09 Jan 2020
      01:40:51 PM UTC.<br>
      Error: <br>
      =C2=A0Problem 1: package mono-5.14.0.177-r0.aarch64 requires
      mono-libs-4.5, but none of the providers can be installed<br>
      =C2=A0 - conflicting requests<br>
      =C2=A0 - nothing provides mono(System.Runtime.Loader) =3D 4.0.0.0 n=
eeded
      by mono-libs-4.5-5.14.0.177-r0.aarch64<br>
      =C2=A0Problem 2: package mono-helloworld-1.2-r0.aarch64 requires mo=
no,
      but none of the providers can be installed<br>
      =C2=A0 - package mono-5.14.0.177-r0.aarch64 requires mono-libs-4.5,=
 but
      none of the providers can be installed<br>
      =C2=A0 - conflicting requests<br>
      =C2=A0 - nothing provides mono(System.Runtime.Loader) =3D 4.0.0.0 n=
eeded
      by mono-libs-4.5-5.14.0.177-r0.aarch64<br>
      <br>
      ERROR: core-image-mono-1.0-r0 do_rootfs: Function failed:
      do_rootfs<br>
      ERROR: Logfile of failure stored in:
/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bsp/build_imx8qm/t=
mp/work/imx8qm_iwg27m-poky-linux/core-image-mono/1.0-r0/temp/log.do_rootf=
s.16847<br>
      ERROR: Task
(/home/rizwan/Projects/embedded_world_1.1/iwg27-release-bsp/sources/meta-=
mono/recipes-mono/images/core-image-mono.bb:do_rootfs)
      failed with exit code '1'<br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Thanks and Regards
Sheraz Ali Shah
</pre>
  </body>
</html>

--------------422C99B11DB385F7C11E3E12--
