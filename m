Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AADCE009C5; Mon, 20 Jul 2015 17:53:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.152 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm22-vm3.bullet.mail.ne1.yahoo.com
	(nm22-vm3.bullet.mail.ne1.yahoo.com [98.138.91.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2D14E008D4
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 17:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1437440003; bh=ZoRnYmQH1dztlEAjdcCOdhvOpJdO+d41Ff8w/Rmz5BA=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=OXLYbk1vIFnyNyu60kweZSQPL82uNLI8fMUW0lR4rSGSORu7AZzJ3FJz4WFgjp9OkqTOwaRSlQIZZdk2WJzDQ3ULDGhBN/E9mB5fMD0x9x8nk1YcsJC3iM2RunkxBBlwpAClzY/Glu2r+tlAxUaY0VptQrz6m6IlwzCT0M8LVarH7CDiX+sMvQ9vu9q5mEEweOqv13ef6J7RO+2fYxKel4mquRJtuQ6VR6r2XOLaixO9hdk5bsyY4iTc7cdU7f4Dae7lPlSJy5hqWHM6XZIqRcaJEFdTJSy7Nh71hZRwv1qO/gZnaXX7zoZg7k8GkWulBMQjBkEIq7soT0kH+hRSXw==
Received: from [98.138.101.129] by nm22.bullet.mail.ne1.yahoo.com with NNFMP;
	21 Jul 2015 00:53:23 -0000
Received: from [98.138.89.249] by tm17.bullet.mail.ne1.yahoo.com with NNFMP;
	21 Jul 2015 00:53:23 -0000
Received: from [127.0.0.1] by omp1041.mail.ne1.yahoo.com with NNFMP;
	21 Jul 2015 00:53:23 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 111254.89119.bm@omp1041.mail.ne1.yahoo.com
X-YMail-OSG: yD4rxEsVM1mjaKuE5JkE3RfStodDg9T.5NzvzpNWQB_ok7URySADE1oDeh4o4FL
	kIZd7z4vrIvnmChrO9_hoUOwF6v2xf0s5cs77HR_P3ibNXtQdttovN7ct440HiINrVx2HJFLowGq
	JcQfFR3uk2fn3RAKUCyyYC27CJz_mHkFjJXrnPFAR3End5GqcUubpCRfvlCiCrOdzCzA5Jp0Yx3v
	.dIGw_DO2xLjjwdz1ea55QDAzg.4bNifqpRQXa9eRK6hHqxcke.z1JTRn5U4YyUb82LhbXRmK2VO
	rR0Zl0rhVIhO7DGoGwxQqRrWwuYkThfFLZHr2r.iYmiePCSS8ar0Fo_cXt9wUhhkTqks9K8hBODJ
	poKq3G2hvvMtlNIm80YYk8reF25FGu_VNXpkOLsnBvPFTGCLsqDpj21dWUMNJpKGaegBmLp0cse4
	klR98sTIvbHsWtAMoh2WFqtP5_dSrhoo.aOpaYLLuUX9xy_Va2R7UAtAl_FoQJFydoIlhqy59VbP
	R5ofPttRiIslk1q2zJjukyznDCul3kzA-
Received: by 98.138.101.163; Tue, 21 Jul 2015 00:53:22 +0000 
Date: Tue, 21 Jul 2015 00:53:04 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <589295184.1298757.1437439984022.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: Raspberry 2 Pi
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Jul 2015 00:53:28 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1298756_651716771.1437439984018"

------=_Part_1298756_651716771.1437439984018
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,Finally making progress.=C2=A0 My problem was conf/bblayers.confI ha=
d the=C2=A0=20
poky/meta-raspberrypi in the=20
BBLAYERS_NON_REMOVABLE ?=3D " \=C2=A0 Instead BBLAYERS ?=3D " \

Currently working on 1965 tasks
Build Configuration:
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "1.27.1"
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "x86_64-linux=
"
NATIVELSBSTRING=C2=A0=C2=A0 =3D "Ubuntu-12.04"
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "arm-poky-linux-gn=
ueabi"
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "ra=
spberrypi2"
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D "poky"
DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D "1.8+snapshot-20150721"
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D "arm armv7a vfp thumb neon callco=
nvention-hard vfpv4 cortexa7"
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "vfp-vfpv4-neon"
meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=20
meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D "master:0f8d89ce66cfffccc9911d6c61470a=
585173b79d"
meta-raspberrypi=C2=A0 =3D "master:7457bf182c8fd550ec877ecd786a3edd16e65495=
"
=C2=A0Is anyone working on a compute module for the Pi using Yocto?Any and =
all help will be appreciated.
Regards,

Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_1298756_651716771.1437439984018
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1437439284461_2363"><span>Hi all,</sp=
an></div><div id=3D"yui_3_16_0_1_1437439284461_2402"><span id=3D"yui_3_16_0=
_1_1437439284461_2401">Finally making progress.&nbsp; My problem was conf/b=
blayers.conf</span></div><div dir=3D"ltr" id=3D"yui_3_16_0_1_1437439284461_=
2531"><span class=3D"" id=3D"yui_3_16_0_1_1437439284461_2401">I had the&nbs=
p; <br class=3D""></span><span class=3D"" id=3D"yui_3_16_0_1_1437439284461_=
2401"><span class=3D"" id=3D"yui_3_16_0_1_1437439284461_2401"><span class=
=3D"" id=3D"yui_3_16_0_1_1437439284461_2401">poky/me</span></span>ta-raspbe=
rrypi in the </span><br><span class=3D"" id=3D"yui_3_16_0_1_1437439284461_2=
401">BBLAYERS_NON_REMOVABLE ?=3D " \&nbsp; Instead BBLAYERS ?=3D " \<br></s=
pan></div><div dir=3D"ltr"><span class=3D"" id=3D"yui_3_16_0_1_143743928446=
1_2401"><br></span></div><div dir=3D"ltr"><span id=3D"yui_3_16_0_1_14374392=
84461_2401">Currently working on 1965 tasks<br></span></div><div id=3D"yui_=
3_16_0_1_1437439284461_2517" dir=3D"ltr"><span>Build Configuration:<br clas=
s=3D"">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "1.27.1"<br=
 class=3D"">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "=
x86_64-linux"<br class=3D"">NATIVELSBSTRING&nbsp;&nbsp; =3D "Ubuntu-12.04"<=
br class=3D"">TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm=
-poky-linux-gnueabi"<br class=3D"">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "raspberrypi2"<br class=3D"">DISTRO&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "poky"<br cl=
ass=3D"">DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D "1.8+snapshot-20150721"<br cl=
ass=3D"">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm armv7a vfp thumb ne=
on callconvention-hard vfpv4 cortexa7"<br class=3D"">TARGET_FPU&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "vfp-vfpv4-neon"<br class=3D"">meta&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <=
br class=3D"">meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br clas=
s=3D"">meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D "master:0f8d89ce66cfffccc9911d6=
c61470a585173b79d"<br class=3D"">meta-raspberrypi&nbsp; =3D "master:7457bf1=
82c8fd550ec877ecd786a3edd16e65495"<br class=3D""></span></div><div><div>&nb=
sp;Is anyone working on a compute module for the Pi using Yocto?</div><div>=
Any and all help will be appreciated.</div><div><br></div><div>Regards,</di=
v><div><br></div><div><br></div></div><div><div>Edward Vidal Jr.<br>e-mail =
develone@sbcglobal.net<br>915-595-1613</div></div></div></body></html>

------=_Part_1298756_651716771.1437439984018--
