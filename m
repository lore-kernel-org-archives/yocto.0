Return-Path: <damir.anicic@psi.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0A19E009BB; Wed, 14 Sep 2016 00:55:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_40,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [82.130.75.186 listed in list.dnswl.org]
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.3002]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 186 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Sep 2016 00:55:09 PDT
Received: from edge10.ethz.ch (edge10.ethz.ch [82.130.75.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 393F5E007D3
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 00:55:09 -0700 (PDT)
Received: from CAS12.d.ethz.ch (172.31.38.212) by edge10.ethz.ch
	(82.130.75.186) with Microsoft SMTP Server (TLS) id 14.3.301.0;
	Wed, 14 Sep 2016 09:51:58 +0200
Received: from MBX114.d.ethz.ch ([fe80::4875:1a61:8b1c:148]) by
	CAS12.d.ethz.ch ([fe80::7861:4ecb:7c42:cad4%10]) with mapi id
	14.03.0301.000; Wed, 14 Sep 2016 09:52:01 +0200
From: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Fetcher failure
Thread-Index: AdIOXOA5GKic+Ii1RS2D956AFIO9BQ==
Date: Wed, 14 Sep 2016 07:52:00 +0000
Message-ID: <DB23C91B06C303459B24BC3208AF424A20F820DE@MBX114.d.ethz.ch>
Accept-Language: en-US, de-DE, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.129.145.249]
MIME-Version: 1.0
Subject: Fetcher failure
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
X-List-Received-Date: Wed, 14 Sep 2016 07:55:10 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB23C91B06C303459B24BC3208AF424A20F820DEMBX114dethzch_"

--_000_DB23C91B06C303459B24BC3208AF424A20F820DEMBX114dethzch_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Yocto 2.1:

I had working setup, and wanted to rebuild.
I am quite sure that I did not change anything, and suddenly it does not wo=
rk any more:

    Fetcher failure for URL: 'https://www.example.com/'. URL https://www.ex=
ample.com/ doesn't work. Please ensure your network is configured correctly=
.

If I
  wget https://www.example.com/
it works

What could it be?



--_000_DB23C91B06C303459B24BC3208AF424A20F820DEMBX114dethzch_
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
Yocto 2.1:<br>
<br>
I had working setup, and wanted to rebuild.<br>
I am quite sure that I did not change anything, and suddenly it does not wo=
rk any more:<br>
<br>
&nbsp;&nbsp;&nbsp; Fetcher failure for URL: 'https://www.example.com/'. URL=
 https://www.example.com/ doesn't work. Please ensure your network is confi=
gured correctly.<br>
<br>
If I <br>
&nbsp; wget <a href=3D"https://www.example.com/" target=3D"_blank">https://=
www.example.com/</a><br>
it works<br>
<br>
What could it be?<br>
<br>
<br>
</div>
</body>
</html>

--_000_DB23C91B06C303459B24BC3208AF424A20F820DEMBX114dethzch_--
