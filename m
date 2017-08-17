Return-Path: <John.OSullivan@BlackBox.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C678E00D94; Thu, 17 Aug 2017 07:33:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,URIBL_SBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.15 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.6 URIBL_SBL Contains an URL's NS IP listed in the SBL blocklist
	*      [URIs: yoctoproject.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 379 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Aug 2017 07:33:08 PDT
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A770E008D2
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 07:33:08 -0700 (PDT)
Received: from [216.82.251.41] by server-15.bemta-12.messagelabs.com id
	58/D5-01738-8A7A5995; Thu, 17 Aug 2017 14:26:48 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpmleJIrShJLcpLzFFi42I5MNnTWHfF8qm
	RBlNf8lhMermGzYHRo/1EH1sAYxRrZl5SfkUCa8aclXNZCjZrVBzp62JvYFyk3MXIxSEksI1R
	ouvNTmYI5zCjxN9pe9i6GDk42ASMJeaftu5i5OQQETCVeHHsCxuILSygLLH/4Q8WiLiGxK9lK
	6BsPYme5UtZQWwWAVWJLdunsIOM4QWK3zoiAxJmFJCVmN9wGqyEWUBcYuLrOWAjJQQEJJbsOc
	8MYYtKvHz8jxXCNpDYunQfC4QtL7Hr9npmiN4QiStvVoHFeQUEJU7OfMIygVFwFpKxs5CUzUJ
	SBhHXk7gxdQpUjbbEsoWvmSFsXYkZ/w6xIIsvYGRfxahRnFpUllqka2Kml1SUmZ5RkpuYmaNr
	aGikl5taXJyYnpqTmFSsl5yfu4kRGBX1DAyMOxivLow+xCjJwaQkyvt71pRIIb6k/JTKjMTij
	Pii0pzU4kOMMhwcShK8f5dMjRQSLEpNT61Iy8wBxidMWoKDR0mEd8ZSoDRvcUFibnFmOkTqFK
	Mxx6HfJ74zcRwDkUIsefl5qVLivHdBSgVASjNK8+AGwdLGJUZZKWFeRgYGBiGegtSi3MwSVPl
	XjOIcjErCvKtBpvBk5pXA7XsFdAoT0ClX2ieBnFKSiJCSamBMFU28oOyqunJZ6AYnxQMsP1Y1
	J0htaOPWlfJ1qIzUPf7swIs+i72GXAvOuKofUuFRfKL4OG9fbo16oM8RrX1Gn6cGhVvPvme2d
	X36tKS1f+9ukLxoe25C/ZPpcloMbwVTkw/dahGY92C7WOLVrxzFxwI0ewy7H175ssBpjcCDFi
	YejVnxz5OVWIozEg21mIuKEwFZ3MvDFgMAAA==
X-Env-Sender: John.OSullivan@BlackBox.com
X-Msg-Ref: server-8.tower-143.messagelabs.com!1502980007!53220421!1
X-Originating-IP: [192.147.73.51]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 14812 invoked from network); 17 Aug 2017 14:26:48 -0000
Received: from 192-147-73-51.blackbox.com (HELO PGHPRDEXCH01.corp.bbns.com)
	(192.147.73.51)
	by server-8.tower-143.messagelabs.com with AES256-SHA encrypted SMTP;
	17 Aug 2017 14:26:48 -0000
Received: from PGHPRDEXCH02.corp.bbns.com (10.5.11.182) by
	PGHPRDEXCH01.corp.bbns.com (10.5.11.181) with Microsoft SMTP Server
	(TLS) id 15.0.1293.2; Thu, 17 Aug 2017 10:26:46 -0400
Received: from PGHPRDEXCH02.corp.bbns.com ([fe80::7002:769d:7ab:d1bb]) by
	PGHPRDEXCH02.corp.bbns.com ([fe80::7002:769d:7ab:d1bb%12]) with mapi id
	15.00.1293.004; Thu, 17 Aug 2017 10:26:46 -0400
From: John O'Sullivan <John.OSullivan@BlackBox.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Checking out code from svn
Thread-Index: AQHTAV/1Apcdr2L/D0Chx5qo+qC9PQ==
Date: Thu, 17 Aug 2017 14:26:46 +0000
Message-ID: <1502980006217.54872@BlackBox.com>
Accept-Language: en-IE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.5.10.188]
MIME-Version: 1.0
Subject: Checking out code from svn
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
X-List-Received-Date: Thu, 17 Aug 2017 14:33:10 -0000
Content-Language: en-IE
Content-Type: multipart/alternative;
	boundary="_000_150298000621754872BlackBoxcom_"

--_000_150298000621754872BlackBoxcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


This worked for me

PACKAGE=3D"myapp"
SRC_URI =3D "${SVN_ROOT}/path_to_module/;module=3D${PACKAGE};protocol=3Dsvn=
;rev=3DHEAD"


where SVN_ROOT is something like


SVN_ROOT =3D "svn://10.10.10.xx"


Hi,

I am looking for some help with incorporating a svn check out into a recipe=
.


The current syntax I arrived at is:

SRC_URI =3D "svn://myserverip/Emerald/trunk/Applications/Examples/;module=
=3DSampleApplication;protocol=3Dsvn;rev=3DHEAD;user=3Dusername;pswd=3Duserp=
assword"


In interacting with this server I would normally check out using a command =
like

svn co svn://myserverip/Emerald/trunk/Applications/Example/ SampleApplicati=
on SampleApplication

This would give me a directory called SampleApplication with the required s=
ource code.


I would normally authenticate myself once in advance of this checkout.


The documentation at

http://www.yoctoproject.org/docs/2.3/bitbake-user-manual/bitbake-user-manua=
l.html#svn-fetcher

mentions

"module": The name of the svn module to checkout. You must provide this par=
ameter. You can think of this parameter as the top-level directory of the r=
epository data you want.

I'm not sure what that means in this context, in my example does it mean th=
e SampleApplication folder?


There is no mention in the current documentation of parameters like user or=
 pswd so I am not sure if these are still used.






________________________________

This email and any files transmitted with it are confidential and are inten=
ded for the sole use of the individual to whom they are addressed. Black Bo=
x Corporation reserves the right to scan all e-mail traffic for restricted =
content and to monitor all e-mail in general. If you are not the intended r=
ecipient or you have received this email in error, any use, dissemination o=
r forwarding of this email is strictly prohibited. If you have received thi=
s email in error, please notify the sender by replying to this email.

--_000_150298000621754872BlackBoxcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi,</p>
<p><br>
</p>
<p>This worked for me</p>
<p></p>
PACKAGE=3D&quot;myapp&quot;<br>
SRC_URI =3D &quot;${SVN_ROOT}/path_to_module/;module=3D${PACKAGE};protocol=
=3Dsvn;rev=3DHEAD&quot;
<p><br>
</p>
<p>where SVN_ROOT is something like</p>
<p><br>
</p>
<p>SVN_ROOT =3D &quot;svn://10.10.10.xx&quot;<br>
</p>
<p><br>
</p>
<p>Hi,</p>
<p>I am looking for some help with incorporating a svn check out into a rec=
ipe.</p>
<p><br>
</p>
<p>The current syntax I arrived at is:</p>
<p>SRC_URI =3D &quot;svn://myserverip/Emerald/trunk/Applications/Examples/;=
module=3DSampleApplication;protocol=3Dsvn;rev=3DHEAD;user=3Dusername;pswd=
=3Duserpassword&quot;&nbsp;&nbsp;&nbsp;
</p>
<p><br>
</p>
<p>In interacting with this server I would normally check out using a comma=
nd like</p>
<p>svn co svn://myserverip/Emerald/trunk/Applications/Example/ SampleApplic=
ation SampleApplication</p>
<p>This would give me a directory called SampleApplication with the require=
d source code.</p>
<p><br>
</p>
<p>I would normally authenticate myself once in advance of this checkout.</=
p>
<p><br>
</p>
<p>The documentation at</p>
<p><a href=3D"http://www.yoctoproject.org/docs/2.3/bitbake-user-manual/bitb=
ake-user-manual.html#svn-fetcher">http://www.yoctoproject.org/docs/2.3/bitb=
ake-user-manual/bitbake-user-manual.html#svn-fetcher</a></p>
<p>mentions<br>
</p>
<p><span class=3D"emphasis"><em>&quot;module&quot;:</em></span> The name of=
 the svn module to checkout. You must provide this parameter. You can think=
 of this parameter as the top-level directory of the repository data you wa=
nt.
</p>
<p>I'm not sure what that means in this context, in my example does it mean=
 the SampleApplication folder?
</p>
<p><br>
</p>
<p>There is no mention in the current documentation of parameters like&nbsp=
;user or&nbsp;pswd so I am&nbsp;not sure if these are still used.</p>
<p><br>
</p>
<p>&nbsp;<br>
</p>
<p><br>
</p>
<p><br>
</p>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
This email and any files transmitted with it are confidential and are inten=
ded for the sole use of the individual to whom they are addressed. Black Bo=
x Corporation reserves the right to scan all e-mail traffic for restricted =
content and to monitor all e-mail
 in general. If you are not the intended recipient or you have received thi=
s email in error, any use, dissemination or forwarding of this email is str=
ictly prohibited. If you have received this email in error, please notify t=
he sender by replying to this email.<br>
</font>
</body>
</html>

--_000_150298000621754872BlackBoxcom_--
