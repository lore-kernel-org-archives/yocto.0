Return-Path: <djnass_18@hotmail.com>
Received: from dub0-omc3-s4.dub0.hotmail.com (dub0-omc3-s4.dub0.hotmail.com
	[157.55.2.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97B33E01541
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 07:19:11 -0700 (PDT)
Received: from DUB116-W53 ([157.55.2.7]) by dub0-omc3-s4.dub0.hotmail.com with
	Microsoft SMTPSVC(6.0.3790.4675); Tue, 18 Jun 2013 07:19:10 -0700
X-TMN: [Z12Cn0czwT2uWhEDmSYMaouWqAyDrWPOm6Oa1P2ysdU=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB116-W535D2739FAA722F6E3D6BB988C0@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 18 Jun 2013 14:19:10 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 18 Jun 2013 14:19:10.0105 (UTC)
	FILETIME=[CCD3C890:01CE6C2E]
Subject: toolchain's environment-setup file that includes the image generated rootfs
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
X-List-Received-Date: Tue, 18 Jun 2013 14:19:14 -0000
Content-Type: multipart/alternative;
	boundary="_8e5e9efb-6e45-4ad1-89a2-1be84cfabda4_"

--_8e5e9efb-6e45-4ad1-89a2-1be84cfabda4_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

hello everyone=2C
tampering with eclipse I was advised to use the image generated rootfs for =
sysroot entry=2C under window->preferences->Yocto Project ADT. I also used =
the meta-toolchain=2C which is extracted under /opt/poky/

If I copy extract the same toolchain and sysroots to another pc=2C I should=
 alter the environment-setup file.
Looking into this file some changes are obvious. Variables:

CC=2C CXX=2C CPP=2C LD should be appended with " --sysroot=3D/path/to/image=
-rootfs/"=2C next to the already existing "--sysroot=3D/opt/poky/1.4.1/sysr=
oots/armv7a-vfp-neon-poky-linux-gnueabi".

It is not clear if the above should be appended in the CONFIGURE_FLAGS=3D"-=
-target=3Darm-poky-linux-gnueabi --host=3Darm-poky-linux-gnueabi --build=3D=
x86_64-linux --with-libtool-sysroot=3D/opt/poky/1.4.1/sysroots/armv7a-vfp-n=
eon-poky-linux-gnueabi"

as well.

Thank you.
 		 	   		  =

--_8e5e9efb-6e45-4ad1-89a2-1be84cfabda4_
Content-Type: text/html; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>hello everyone=2C<br>tampering w=
ith eclipse I was advised to use the image generated rootfs for sysroot ent=
ry=2C under window-&gt=3Bpreferences-&gt=3BYocto Project ADT. I also used t=
he meta-toolchain=2C which is extracted under /opt/poky/<br><br>If I copy e=
xtract the same toolchain and sysroots to another pc=2C I should alter the =
environment-setup file.<br>Looking into this file some changes are obvious.=
 Variables:<br><br>CC=2C CXX=2C CPP=2C LD should be appended with " --sysro=
ot=3D/path/to/image-rootfs/"=2C next to the already existing "--sysroot=3D/=
opt/poky/1.4.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi".<br><br>It is n=
ot clear if the above should be appended in the CONFIGURE_FLAGS=3D"--target=
=3Darm-poky-linux-gnueabi --host=3Darm-poky-linux-gnueabi --build=3Dx86_64-=
linux --with-libtool-sysroot=3D/opt/poky/1.4.1/sysroots/armv7a-vfp-neon-pok=
y-linux-gnueabi"<br><br>as well.<br><br>Thank you.<br> 		 	   		  </div></b=
ody>
</html>=

--_8e5e9efb-6e45-4ad1-89a2-1be84cfabda4_--
