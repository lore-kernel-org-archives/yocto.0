Return-Path: <Sivaprasad.Pala@in.bosch.com>
Received: from smtp6-v.fe.bosch.de (smtp6-v.fe.bosch.de [139.15.237.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81E29E007B2
	for <yocto@yoctoproject.org>; Sun,  5 Jan 2014 20:56:44 -0800 (PST)
Received: from vsmta13.fe.internet.bosch.com (unknown [10.4.98.53])
	by imta24.fe.bosch.de (Postfix) with ESMTP id 06877D801D7
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 05:56:42 +0100 (CET)
Received: from vsgw12.fe.internet.bosch.com (vsgw12.fe.internet.bosch.com
	[10.4.98.14])
	by vsmta13.fe.internet.bosch.com (Postfix) with ESMTP id 084AB600B2F
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 05:56:42 +0100 (CET)
Received: from localhost (unknown [127.0.0.1])
	by IMSVA (Postfix) with SMTP id 0AB6D228540
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 05:56:42 +0100 (CET)
X-IMSS-HAND-OFF-DIRECTIVE: 10.4.98.62:25
Received: from si-hub02.de.bosch.com (unknown [10.3.144.67])
	by vsgw12.fe.internet.bosch.com (Postfix) with ESMTP id 83D6322855D
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 05:56:36 +0100 (CET)
Received: from SI-PUB1000.de.bosch.com (10.3.153.157) by si-hub02.de.bosch.com
	(10.3.144.67) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Mon, 6 Jan 2014 05:56:36 +0100
Received: from sgphub11.APAC.bosch.com (10.187.48.74) by
	SI-PUB1000.de.bosch.com (10.3.153.157) with Microsoft SMTP Server (TLS)
	id 14.3.174.1; Mon, 6 Jan 2014 05:56:36 +0100
Received: from SGPMBX02.APAC.bosch.com ([10.187.64.46]) by
	sgphub11.APAC.bosch.com ([10.187.48.74]) with mapi;
	Mon, 6 Jan 2014 12:56:25 +0800
From: "Sivaprasad Pala (RBEI/EAA1)" <Sivaprasad.Pala@in.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 6 Jan 2014 12:56:23 +0800
Thread-Topic: yocto offline build
Thread-Index: Ac8Km6WuWd+t7QQhRWyCSGxsGj6GEA==
Message-ID: <F2E05BCE6D875B4AAC726FD84CBB8F13236AA33A42@SGPMBX02.APAC.bosch.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-TM-AS-MML: disable
X-Mailman-Approved-At: Sun, 05 Jan 2014 22:48:59 -0800
Subject: yocto offline build
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
X-List-Received-Date: Mon, 06 Jan 2014 04:56:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F2E05BCE6D875B4AAC726FD84CBB8F13236AA33A42SGPMBX02APACb_"

--_000_F2E05BCE6D875B4AAC726FD84CBB8F13236AA33A42SGPMBX02APACb_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Yocto Help,

I am trying to build yocto offline using below steps.
Steps:

1.      bitbake -c fetchall core-image-minimal
2.      conf/local.conf changes
DL_DIR ?=3D "${TOPDIR}/tmp/downloads-keepout"
SSTATE_DIR ?=3D "${TOPDIR}/sstate-cache"

BB_NO_NETWORK =3D "0"
INHERIT +=3D "own-mirrors"
SOURCE_MIRROR_URL ?=3D "file://path/to/download/sources/"
BB_GENERATE_MIRROR_TARBALLS =3D "1"
BB_FETCH_PREMIRRORONLY =3D "1"
CONNECTIVITY_CHECK_URIS=3D""
DISABLE_NETWORK_SANITY =3D "1"
3.      bitbake core-image-minimal

But I am getting errors in the step 3 saying not able to "unpack".

Please tell me "IF I MISSED OUT ANY STEPS".

Thanks and Regards,
Sivaprasad Pala.


--_000_F2E05BCE6D875B4AAC726FD84CBB8F13236AA33A42SGPMBX02APACb_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri, sans-serif" size=3D"2">
<div>Hello Yocto Help,</div>
<div>&nbsp;</div>
<div>I am trying to build yocto offline using below steps.</div>
<div>Steps:</div>
<div>&nbsp;</div>
<ol style=3D"margin-top: 0pt; margin-bottom: 0pt; margin-left: 36pt; ">
<li>bitbake &#8211;c fetchall core-image-minimal</li><li>conf/local.conf ch=
anges </li></ol>
<div style=3D"padding-left: 36pt; ">DL_DIR ?=3D &quot;${TOPDIR}/tmp/downloa=
ds-keepout&quot;</div>
<div style=3D"padding-left: 36pt; ">SSTATE_DIR ?=3D &quot;${TOPDIR}/sstate-=
cache&quot;</div>
<div style=3D"padding-left: 36pt; ">&nbsp;</div>
<div style=3D"padding-left: 36pt; ">BB_NO_NETWORK =3D &quot;0&quot;</div>
<div style=3D"padding-left: 36pt; ">INHERIT &#43;=3D &quot;own-mirrors&quot=
;</div>
<div style=3D"padding-left: 36pt; ">SOURCE_MIRROR_URL ?=3D &quot;<a href=3D=
"file://path/to/download/sources/"><font color=3D"#0000FF"><u>file://path/t=
o/download/sources/</u></font></a>&quot;</div>
<div style=3D"padding-left: 36pt; ">BB_GENERATE_MIRROR_TARBALLS =3D &quot;1=
&quot;</div>
<div style=3D"padding-left: 36pt; ">BB_FETCH_PREMIRRORONLY =3D &quot;1&quot=
;</div>
<div style=3D"padding-left: 36pt; ">CONNECTIVITY_CHECK_URIS=3D&quot;&quot;<=
/div>
<div style=3D"padding-left: 36pt; ">DISABLE_NETWORK_SANITY =3D &quot;1&quot=
;</div>
<ol start=3D"3" style=3D"margin-top: 0pt; margin-bottom: 0pt; margin-left: =
36pt; ">
<li>bitbake core-image-minimal</li></ol>
<div><font face=3D"Times New Roman, serif">&nbsp;</font></div>
<div>But I am getting errors in the step 3 saying not able to &#8220;unpack=
&#8221;.</div>
<div>&nbsp;</div>
<div>Please tell me &#8220;IF I MISSED OUT ANY STEPS&#8221;.</div>
<div>&nbsp;</div>
<div>Thanks and Regards,</div>
<div>Sivaprasad Pala.</div>
<div><font face=3D"Times New Roman, serif">&nbsp;</font></div>
</font>
</body>
</html>

--_000_F2E05BCE6D875B4AAC726FD84CBB8F13236AA33A42SGPMBX02APACb_--
