Return-Path: <damir.anicic@psi.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB1DAE00BE7; Tue, 27 Sep 2016 02:34:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [82.130.75.186 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from edge10.ethz.ch (edge10.ethz.ch [82.130.75.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E628E00A48
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2016 02:34:08 -0700 (PDT)
Received: from CAS11.d.ethz.ch (172.31.38.211) by edge10.ethz.ch
	(82.130.75.186) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Tue, 27 Sep 2016 11:34:04 +0200
Received: from MBX214.d.ethz.ch ([fe80::5c68:3688:18d4:cbf7]) by
	CAS11.d.ethz.ch ([fe80::ecc9:4e2d:b26b:1614%10]) with mapi id
	14.03.0319.002; Tue, 27 Sep 2016 11:34:07 +0200
From: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
To: Chris Z. <winotu.email@gmail.com>
Thread-Topic: [yocto] fetcher failure
Thread-Index: AdIX7cTViZAReqQYSJeJl3PiSMwDqgApPimS///8CoCAACJACA==
Date: Tue, 27 Sep 2016 09:34:06 +0000
Message-ID: <DB23C91B06C303459B24BC3208AF424A20FA7E8A@MBX214.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20FA7C19@MBX214.d.ethz.ch>
	<DB23C91B06C303459B24BC3208AF424A20FA7E3F@MBX214.d.ethz.ch>,
	<CAEjjReJMjr=dVvxhUtYB0y_SwGQvOYEEe0MTNLqufmozC=iJLA@mail.gmail.com>
In-Reply-To: <CAEjjReJMjr=dVvxhUtYB0y_SwGQvOYEEe0MTNLqufmozC=iJLA@mail.gmail.com>
Accept-Language: en-US, de-DE, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.129.145.249]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fetcher failure
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
X-List-Received-Date: Tue, 27 Sep 2016 09:34:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB23C91B06C303459B24BC3208AF424A20FA7E8AMBX214dethzch_"

--_000_DB23C91B06C303459B24BC3208AF424A20FA7E8AMBX214dethzch_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Why should I check,
the meta-fsl-ppc/recipes-kernel/linux/linux-qoriq_4.1.bb has

SRC_URI =3D "git://git.freescale.com/ppc/sdk/linux.git;branch=3Dsdk-v2.0.x =
\
SRCREV =3D "bd51baffc04ecc73f933aee1c3a37c8b44b889a7"

If that is wrong freescale should correct it.

And besides, the downloaded file gets deleted.

But, OK, I'll try.


--_000_DB23C91B06C303459B24BC3208AF424A20FA7E8AMBX214dethzch_
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
10pt;">Why should I check,<br>
the meta-fsl-ppc/recipes-kernel/linux/linux-qoriq_4.1.bb has<br>
<br>
SRC_URI =3D &quot;git://git.freescale.com/ppc/sdk/linux.git;branch=3Dsdk-v2=
.0.x \<br>
SRCREV =3D &quot;bd51baffc04ecc73f933aee1c3a37c8b44b889a7&quot;<br>
<br>
If that is wrong freescale should correct it.<br>
<br>
And besides, the downloaded file gets deleted.<br>
<br>
But, OK, I'll try.<br>
<br>
</div>
</body>
</html>

--_000_DB23C91B06C303459B24BC3208AF424A20FA7E8AMBX214dethzch_--
