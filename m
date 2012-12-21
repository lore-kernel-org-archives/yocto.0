Return-Path: <jonas.l.jonsson@ericsson.com>
Received: from mailgw2.ericsson.se (mailgw2.ericsson.se [193.180.251.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4398BE006C3
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2012 07:04:49 -0800 (PST)
X-AuditID: c1b4fb25-b7fb26d000006129-88-50d47a8f541f
Received: from ESESSHC004.ericsson.se (Unknown_Domain [153.88.253.124])
	by mailgw2.ericsson.se (Symantec Mail Security) with SMTP id
	7E.A7.24873.F8A74D05; Fri, 21 Dec 2012 16:04:47 +0100 (CET)
Received: from ESESSMB305.ericsson.se ([169.254.5.172]) by
	ESESSHC004.ericsson.se ([153.88.183.30]) with mapi id 14.02.0318.004;
	Fri, 21 Dec 2012 16:04:46 +0100
From: Jonas Jonsson L <jonas.l.jonsson@ericsson.com>
To: "Yocto Mailinglist (yocto@yoctoproject.org)" <yocto@yoctoproject.org>
Thread-Topic: Set hostname on image?
Thread-Index: Ac3fjINpJpa8CkFEQHeNRUFSHRmsZQ==
Date: Fri, 21 Dec 2012 15:04:46 +0000
Message-ID: <0342A6AD36648742A199353A51DDC703114FF6A1@ESESSMB305.ericsson.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [153.88.183.18]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrKLMWRmVeSWpSXmKPExsUyM+JvjW5/1ZUAgyt7ZSwmvVzD5sDo0X6i
	jy2AMYrLJiU1J7MstUjfLoEr49/yTYwF24QrLs2Xa2DcK9DFyMkhIWAisfz9fXYIW0ziwr31
	bF2MXBxCAocYJTrm3oRyljBKHOubCFbFBtQxYeVNxi5GDg4RAU+JKw90QcLCAvISGyedZwWx
	RQRUJJ5PbmGGsPUk3p26xQRiswioSmxp38gCYvMK+EqsPt3IBmIzCshK3P9+DyzOLCAucevJ
	fCaIgwQkluw5zwxhi0q8fPyPFcJWlPj4ah8jRH2+RMfKY2wQMwUlTs58wjKBUWgWklGzkJTN
	QlIGEdeRWLD7ExuErS2xbOFrZhj7zIHHTMjiCxjZVzGy5yZm5qSXG21iBAb9wS2/VXcw3jkn
	cohRmoNFSZw33PVCgJBAemJJanZqakFqUXxRaU5q8SFGJg5OqQZGfQELftbnmWELzfpT29W4
	kiV33GTb8UEraWZv140FPSGujCHZR0RV1jCUXr/NElN5UWLxZvncWUEBujplHD/Dt6g6xbNI
	79BoUilbvIbnFzfDJ9mfmede/0lnsQ1Od3DaoX9g8ZsPEyMeflTWnmrTVLFWWl3w8KuLzjfb
	4jStNx6pF1R6e0qJpTgj0VCLuag4EQB93fvpSAIAAA==
Subject: Set hostname on image?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Dec 2012 15:04:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0342A6AD36648742A199353A51DDC703114FF6A1ESESSMB305erics_"

--_000_0342A6AD36648742A199353A51DDC703114FF6A1ESESSMB305erics_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi!

This is probably a very stupid question, but I don't understand how to set =
the hostname of the system that I'm building (I'm building a 'core-image-mi=
nimal'), unless I

A) write a /etc/hostname file to the image, or
B) write a script that updates the hostname during startup

The installed (/etc/hostname) file is created & installed in the base-files=
 recipe, but I don't understand how to set/use the hostname-variable in tha=
t recipe so that it becomes what I want it to be (unless I start editing th=
at recipe ....).

Is there a way to modify the hostname from my 'local.conf' file?

Best regards, Merry Christmas & Happy New Year!

Jonas



--_000_0342A6AD36648742A199353A51DDC703114FF6A1ESESSMB305erics_
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
<font face=3D"Arial" size=3D"2"><span style=3D"font-size:10pt;">
<div>Hi!</div>
<div>&nbsp;</div>
<div>This is probably a very stupid question, but I don't understand how to=
 set the hostname of the system that I'm building (I'm building a 'core-ima=
ge-minimal'), unless I</div>
<div>&nbsp;</div>
<div>A) write a /etc/hostname file to the image, or</div>
<div>B) write a script that updates the hostname during startup</div>
<div>&nbsp;</div>
<div>The installed (/etc/hostname) file is created &amp; installed in the b=
ase-files recipe, but I don't understand how to set/use the hostname-variab=
le in that recipe so that it becomes what I want it to be (unless I start e=
diting that recipe ....).</div>
<div>&nbsp;</div>
<div>Is there a way to modify the hostname from my 'local.conf' file?</div>
<div>&nbsp;</div>
<div>Best regards, Merry Christmas &amp; Happy New Year!</div>
<div>&nbsp;</div>
<div>Jonas</div>
<div>&nbsp;</div>
<div><font face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12p=
t;">&nbsp;</span></font></div>
</span></font>
</body>
</html>

--_000_0342A6AD36648742A199353A51DDC703114FF6A1ESESSMB305erics_--
