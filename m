Return-Path: <damir.anicic@psi.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F02EDE0098A; Tue, 21 Jun 2016 07:43:04 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BCDFE00972
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 07:43:01 -0700 (PDT)
Received: from CAS21.d.ethz.ch (172.31.51.111) by edge10.ethz.ch
	(82.130.75.186) with Microsoft SMTP Server (TLS) id 14.3.266.1;
	Tue, 21 Jun 2016 16:42:56 +0200
Received: from MBX214.d.ethz.ch ([fe80::5c68:3688:18d4:cbf7]) by
	CAS21.d.ethz.ch ([fe80::55ba:c4a5:d8a7:ab62%10]) with mapi id
	14.03.0266.001; Tue, 21 Jun 2016 16:42:59 +0200
From: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto 2.1 perl problem
Thread-Index: AdHLvNR7cxzv77rzRP67xRQlJO9sav//8I0AgAAm3zaAAATgOA==
Date: Tue, 21 Jun 2016 14:42:59 +0000
Message-ID: <DB23C91B06C303459B24BC3208AF424A20F4CFEE@MBX214.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F4CF40@MBX214.d.ethz.ch>,
	<a2cff31a-909e-988c-562b-29289f8c79c9@linux.intel.com>,
	<DB23C91B06C303459B24BC3208AF424A20F4CFB7@MBX214.d.ethz.ch>
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F4CFB7@MBX214.d.ethz.ch>
Accept-Language: en-US, de-DE, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.129.145.249]
MIME-Version: 1.0
Subject: Re: Yocto 2.1 perl problem
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
X-List-Received-Date: Tue, 21 Jun 2016 14:43:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB23C91B06C303459B24BC3208AF424A20F4CFEEMBX214dethzch_"

--_000_DB23C91B06C303459B24BC3208AF424A20F4CFEEMBX214dethzch_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I found something.
It seems that tar 1.29 (which I recently installed) is broken.

http://patchwork.openembedded.org/patch/123727/

I'll try now with tar 1.28



--_000_DB23C91B06C303459B24BC3208AF424A20F4CFEEMBX214dethzch_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1" bgcolor=3D"#FFFFFF">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">I found something.<br>
It seems that tar 1.29 (which I recently installed) is broken.<br>
<br>
<a href=3D"http://patchwork.openembedded.org/patch/123727/" target=3D"_blan=
k">http://patchwork.openembedded.org/patch/123727/</a><br>
<br>
<div style=3D"font-family: Times New Roman; color: #000000; font-size: 16px=
">I'll try now with tar 1.28<br>
<br>
<br>
</div>
</div>
</body>
</html>

--_000_DB23C91B06C303459B24BC3208AF424A20F4CFEEMBX214dethzch_--
