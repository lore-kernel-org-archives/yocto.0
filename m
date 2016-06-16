Return-Path: <damir.anicic@psi.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6403DE00D69; Wed, 15 Jun 2016 23:33:35 -0700 (PDT)
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
Received: from edge20.ethz.ch (edge20.ethz.ch [82.130.99.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA401E00D5B
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 23:33:28 -0700 (PDT)
Received: from CAS22.d.ethz.ch (172.31.51.112) by edge20.ethz.ch
	(82.130.99.26) with Microsoft SMTP Server (TLS) id 14.3.266.1;
	Thu, 16 Jun 2016 08:33:27 +0200
Received: from MBX114.d.ethz.ch ([fe80::4875:1a61:8b1c:148]) by
	CAS22.d.ethz.ch ([fe80::dd0e:466a:b055:c090%10]) with mapi id
	14.03.0266.001; Thu, 16 Jun 2016 08:33:26 +0200
From: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: meta-qt3 and meta-qt4
Thread-Index: AdHHmPzD4YjkYcVPSw6x0YY8oAGlKA==
Date: Thu, 16 Jun 2016 06:33:26 +0000
Message-ID: <DB23C91B06C303459B24BC3208AF424A20F40D70@MBX114.d.ethz.ch>
Accept-Language: en-US, de-DE, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [129.129.145.249]
MIME-Version: 1.0
Subject: meta-qt3 and meta-qt4
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
X-List-Received-Date: Thu, 16 Jun 2016 06:33:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB23C91B06C303459B24BC3208AF424A20F40D70MBX114dethzch_"

--_000_DB23C91B06C303459B24BC3208AF424A20F40D70MBX114dethzch_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi!

By building core-image-lsb-sdk (or derivate) I get :


WARNING: The meta-qt4 layer should be added, this layer provides Qt 4.xlibr=
aries. Its intended use is for passing LSB tests as Qt4 isa requirement for=
 LSB.
WARNING: The meta-qt3 layer should be added, this layer provides Qt 3.xlibr=
aries. Its intended use is for passing LSB tests as Qt3 isa requirement for=
 LSB.

WARNING: packagegroup-core-lsb-1.0-r10 do_package: The meta-qt4 layer shoul=
d be added, this layer provides Qt 4.xlibraries. Its intended use is for pa=
ssing LSB tests as Qt4 isa requirement for LSB.
WARNING: packagegroup-core-lsb-1.0-r10 do_package: The meta-qt3 layer shoul=
d be added, this layer provides Qt 3.xlibraries. Its intended use is for pa=
ssing LSB tests as Qt3 isa requirement for LSB.

I do not find meta-qt3 & meta-qt4 in Yocto 2.1



Damir


--_000_DB23C91B06C303459B24BC3208AF424A20F40D70MBX114dethzch_
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
10pt;">Hi!<br>
<br>
By building core-image-lsb-sdk (or derivate) I get :<br>
<br>
<br>
WARNING: The meta-qt4 layer should be added, this layer provides Qt 4.xlibr=
aries. Its intended use is for passing LSB tests as Qt4 isa requirement for=
 LSB.<br>
WARNING: The meta-qt3 layer should be added, this layer provides Qt 3.xlibr=
aries. Its intended use is for passing LSB tests as Qt3 isa requirement for=
 LSB.<br>
<br>
WARNING: packagegroup-core-lsb-1.0-r10 do_package: The meta-qt4 layer shoul=
d be added, this layer provides Qt 4.xlibraries. Its intended use is for pa=
ssing LSB tests as Qt4 isa requirement for LSB.<br>
WARNING: packagegroup-core-lsb-1.0-r10 do_package: The meta-qt3 layer shoul=
d be added, this layer provides Qt 3.xlibraries. Its intended use is for pa=
ssing LSB tests as Qt3 isa requirement for LSB.<br>
<br>
I do not find meta-qt3 &amp; meta-qt4 in Yocto 2.1<br>
<br>
<br>
<br>
Damir<br>
<br>
</div>
</body>
</html>

--_000_DB23C91B06C303459B24BC3208AF424A20F40D70MBX114dethzch_--
