Return-Path: <damir.anicic@psi.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA801E00951; Fri, 23 Sep 2016 07:13:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [82.130.75.186 listed in list.dnswl.org]
Received: from edge10.ethz.ch (edge10.ethz.ch [82.130.75.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 484B4E0074B
	for <yocto@yoctoproject.org>; Fri, 23 Sep 2016 07:13:44 -0700 (PDT)
Received: from CAS22.d.ethz.ch (172.31.51.112) by edge10.ethz.ch
	(82.130.75.186) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Fri, 23 Sep 2016 16:13:39 +0200
Received: from MBX114.d.ethz.ch ([fe80::4875:1a61:8b1c:148]) by
	CAS22.d.ethz.ch ([fe80::dd0e:466a:b055:c090%10]) with mapi id
	14.03.0319.002; Fri, 23 Sep 2016 16:13:43 +0200
From: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Freescale DPAA drivers
Thread-Index: AdIVpLC27vdc1JXaQ3WU0FdsIiYGUQ==
Date: Fri, 23 Sep 2016 14:13:43 +0000
Message-ID: <DB23C91B06C303459B24BC3208AF424A20F9B38A@MBX114.d.ethz.ch>
Accept-Language: en-US, de-DE, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.129.145.249]
MIME-Version: 1.0
Subject: Freescale DPAA drivers
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
X-List-Received-Date: Fri, 23 Sep 2016 14:13:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB23C91B06C303459B24BC3208AF424A20F9B38AMBX114dethzch_"

--_000_DB23C91B06C303459B24BC3208AF424A20F9B38AMBX114dethzch_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using Yocto 2.1, PowerPC64, default kernel 4.1.22
Building for T2080rdb.

Everything builds, but kernel is missing DPAA Freescale drivers
(dpaa_eth at least)


It seems that DPAA Freescale drivers not in any Linux kernel (or am I wrong=
).

Why is that so, is Freescale not planing to include them in kernel ?

Kind regards,

Damir




--_000_DB23C91B06C303459B24BC3208AF424A20F9B38AMBX114dethzch_
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
10pt;">Hi,<br>
<br>
I am using Yocto 2.1, PowerPC64, default kernel 4.1.22<br>
Building for T2080rdb.<br>
<br>
Everything builds, but kernel is missing DPAA Freescale drivers<br>
(dpaa_eth at least)<br>
<br>
<br>
It seems that DPAA Freescale drivers not in any Linux kernel (or am I wrong=
).<br>
<br>
Why is that so, is Freescale not planing to include them in kernel ?<br>
<br>
Kind regards,<br>
<br>
Damir<br>
<br>
<br>
<br>
</div>
</body>
</html>

--_000_DB23C91B06C303459B24BC3208AF424A20F9B38AMBX114dethzch_--
