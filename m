Return-Path: <damir.anicic@psi.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1CF5E00DAA; Thu, 22 Sep 2016 01:47:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FF17E00571
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 01:47:14 -0700 (PDT)
Received: from CAS12.d.ethz.ch (172.31.38.212) by edge10.ethz.ch
	(82.130.75.186) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Thu, 22 Sep 2016 10:47:10 +0200
Received: from MBX214.d.ethz.ch ([fe80::5c68:3688:18d4:cbf7]) by
	CAS12.d.ethz.ch ([fe80::7861:4ecb:7c42:cad4%10]) with mapi id
	14.03.0319.002; Thu, 22 Sep 2016 10:47:12 +0200
From: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Enable/disable service startup
Thread-Index: AQHSFK3pn4SZNfS39k+Yu58kJ+yfZg==
Date: Thu, 22 Sep 2016 08:47:12 +0000
Message-ID: <DB23C91B06C303459B24BC3208AF424A20F90FF3@MBX214.d.ethz.ch>
Accept-Language: en-US, de-DE, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.129.145.249]
MIME-Version: 1.0
Subject: Enable/disable service startup
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
X-List-Received-Date: Thu, 22 Sep 2016 08:47:19 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB23C91B06C303459B24BC3208AF424A20F90FF3MBX214dethzch_"

--_000_DB23C91B06C303459B24BC3208AF424A20F90FF3MBX214dethzch_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hi,

I am building Yocto 2.1 for PowerPC-64

I have bind and dhcpcd packages built in.

named service (from bind) gets started - but I do not want it started
dhcpcd service does not get started - but I would like to have it started

I would also prefer not to remove bind, because I need dig (dig, host, nslo=
okup)

How to get services enabled/disabled ?

Also I do not want to change original recipes.

Kind regards,
Damir


--_000_DB23C91B06C303459B24BC3208AF424A20F90FF3MBX214dethzch_
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
10pt;"><br>
Hi,<br>
<br>
I am building Yocto 2.1 for PowerPC-64<br>
<br>
I have bind and dhcpcd packages built in.<br>
<br>
named service (from bind) gets started - but I do not want it started<br>
dhcpcd service does not get started - but I would like to have it started<b=
r>
<br>
I would also prefer not to remove bind, because I need dig (dig, host, nslo=
okup)<br>
<br>
How to get services enabled/disabled ?<br>
<br>
Also I do not want to change original recipes.<br>
<br>
Kind regards,<br>
Damir<br>
<br>
</div>
</body>
</html>

--_000_DB23C91B06C303459B24BC3208AF424A20F90FF3MBX214dethzch_--
