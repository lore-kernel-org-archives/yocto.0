Return-Path: <damir.anicic@psi.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E6E5E00EF9; Wed, 31 Aug 2016 05:55:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [82.130.99.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 186 seconds by postgrey-1.32 at yocto-www;
	Wed, 31 Aug 2016 05:55:47 PDT
Received: from edge20.ethz.ch (edge20.ethz.ch [82.130.99.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56983E00EF5
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2016 05:55:47 -0700 (PDT)
Received: from CAS12.d.ethz.ch (172.31.38.212) by edge20.ethz.ch
	(82.130.99.26) with Microsoft SMTP Server (TLS) id 14.3.301.0;
	Wed, 31 Aug 2016 14:52:36 +0200
Received: from MBX114.d.ethz.ch ([fe80::4875:1a61:8b1c:148]) by
	CAS12.d.ethz.ch ([fe80::7861:4ecb:7c42:cad4%10]) with mapi id
	14.03.0301.000; Wed, 31 Aug 2016 14:52:39 +0200
From: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: u-boot-mkimage in SDK
Thread-Index: AdIDhfmmlQJSz8BpQ1mTtPKPdvq3HA==
Date: Wed, 31 Aug 2016 12:52:38 +0000
Message-ID: <DB23C91B06C303459B24BC3208AF424A20F7F1B1@MBX114.d.ethz.ch>
Accept-Language: en-US, de-DE, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.129.145.249]
MIME-Version: 1.0
Subject: u-boot-mkimage in SDK
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
X-List-Received-Date: Wed, 31 Aug 2016 12:55:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB23C91B06C303459B24BC3208AF424A20F7F1B1MBX114dethzch_"

--_000_DB23C91B06C303459B24BC3208AF424A20F7F1B1MBX114dethzch_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


I have built Yocto 2.1, for PowerPC (E6500):

Build Configuration:
BB_VERSION        =3D "1.30.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "universal"
TARGET_SYS        =3D "powerpc-poky-linux"
MACHINE           =3D "powerpc-ppce6500"
DISTRO            =3D "gfa-ppce6500"
DISTRO_VERSION    =3D "2.1"
TUNE_FEATURES     =3D "m32 fpu-hard e6500 altivec"
TARGET_FPU        =3D ""





Now, if I am cross-compiling additional uImage kernels outside bitbake,
I need mkimage.
But it is not in SDK.

I have managed to get mkimage into rootfs, (added to IMAGE_INSTALL +=3D...)
but how to get it inside cross-toolchain?

Regards,
Damir


--_000_DB23C91B06C303459B24BC3208AF424A20F7F1B1MBX114dethzch_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hi all,<br>
<br>
<br>
I have built Yocto 2.1, for PowerPC (E6500):<br>
<br>
Build Configuration:<br>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.30.0&quot;=
<br>
BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-=
linux&quot;<br>
NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;universal&quot;<br>
TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;powerpc-poky=
-linux&quot;<br>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &qu=
ot;powerpc-ppce6500&quot;<br>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;gfa-ppce6500&quot;<br>
DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;2.1&quot;<br>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m32 fpu-hard e6500 altivec&=
quot;<br>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;&quot;<br>
<br>
<br>
<br>
<br>
<br>
Now, if I am cross-compiling additional uImage kernels outside bitbake,<br>
I need mkimage.<br>
But it is not in SDK.<br>
<br>
I have managed to get mkimage into rootfs, (added to IMAGE_INSTALL &#43;=3D=
...)<br>
but how to get it inside cross-toolchain?<br>
<br>
Regards,<br>
Damir<br>
<br>
</div>
</body>
</html>

--_000_DB23C91B06C303459B24BC3208AF424A20F7F1B1MBX114dethzch_--
