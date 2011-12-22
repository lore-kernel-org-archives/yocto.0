Return-Path: <prvs=333774cde2=NAVANI.Srivastava@lnties.com>
Received: from mailout2.ltindia.com (mailout2.ltindia.com [125.18.18.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17258E005A3
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2011 01:01:32 -0800 (PST)
X-AuditID: c0a8466b-b7c80ae0000052e8-24-4ef2f1e9a5ba
Received: from POCITMSEXHUB03.LntUniverse.com ( [10.2.1.60])
	by mailout2.ltindia.com (Symantec Mail Security) with SMTP id
	8D.41.21224.9E1F2FE4; Thu, 22 Dec 2011 14:31:29 +0530 (IST)
Received: from POCITMSEXMB03.LntUniverse.com ([fe80::f495:7e6e:4c34:a3a9]) by
	POCITMSEXHUB03.LntUniverse.com ([::1]) with mapi id 14.01.0218.012;
	Thu, 22 Dec 2011 14:31:28 +0530
From: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Related to eglibc
Thread-Index: AczAhRNNMeVWXocERdu9bHxP6ZuUWQ==
Date: Thu, 22 Dec 2011 09:01:27 +0000
Message-ID: <9BACABF0C6B14A4D8C33B42A795119BE096D8373@POCITMSEXMB03.LntUniverse.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.37.159]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDKsWRmVeSWpSXmKPExsXCxcRoo/vy4yc/g/OfxS0mvVzD5sDo0X6i
	jy2AMYrbJimxpCw4Mz1P3y6BO2P13+usBYtkK862vGJuYJwl2cXIySEhYCJxdMkTVghbTOLC
	vfVsXYxcHEICOxglJh7dxg7hbGWU2PJhMSNIFZuAjcTj8+tYQGwRAVOJF8e+sIHYwgJSElM3
	tQPVcADF5SXeTdaHMPUk9p3KBalgEVCVmHNkC9guXoEQiffX+5lBbEagvd9PrWECsZkFxCVu
	PZnPBHGPgMSSPeeZIWxRiZeP/7GCjJQQUJJ4vJITojxfYsm0eVAjBSVOznzCMoFRaBaSSbOQ
	lM1CUgYR15FYsPsTG4StLbFs4WtmGPvMgcdMyOILGNlXMYrkJmbm5JeWGOnllGTmpWQm6iXn
	525iBMbDgRVu2TsYP+5ROcQowMGoxMM7U/yTnxBrYllxZe4hRkkOJiVR3iVvgEJ8SfkplRmJ
	xRnxRaU5qcWHGCU4mJVEeB/FAOV4UxIrq1KL8mFS0hwsSuK8JvM++gkJpCeWpGanphakFsFk
	ZTg4lCR4338AahQsSk1PrUjLzClBSDNxcIIILpANPEAb7oEU8hYXJOYWZ6ZDFJ1ilJQS5/0G
	khAASWSU5sENeMUoDvSHMK8MMG0J8QCTHFzXK6CBTEADtzl/ABlYkoiQkmpglL0gYF+7JXnZ
	E8MtU3q0Trg8lGPK9jlg+FE1OOBjVIhdYLx8h2Olwt/AeeWpltsONb45VuF/wOyX2B4paVP1
	pQytIYeFn9y5NNdJ6LGv6xvVg27PVObVBXQU2Mz69+WP/AeV7q4T75omeJcePDKFM6F8y4XM
	/2XJnvGt8+5Kr2PaeebXKxlnJZbijERDLeai4kQADQQfNi8DAAA=
Subject: Related to eglibc
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
X-List-Received-Date: Thu, 22 Dec 2011 09:01:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9BACABF0C6B14A4D8C33B42A795119BE096D8373POCITMSEXMB03Ln_"

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D8373POCITMSEXMB03Ln_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are having problem in running Qt applications. What I figured out is whe=
n we are putting eglibc-2.12 generated libraries (like libdl-2.12.1.so, lib=
m-2.12.1.so), Qt applications are flickering or can say refreshing at every=
 touch. On putting same libraries of version 2.11 taken from freescale root=
fs ( libdl-2.11.1.so, libm-2.11.1.so) Qt applications are running fine. We =
tried compiling eglibc-2.11.1 through yocto but we didn't even succeeded to=
 configure it. Can you please suggest some patch that we can apply to get t=
he same libraries.

Thanks & Regards,
Navani Kamal Srivastava






Larsen & Toubro Limited

www.larsentoubro.com

This Email may contain confidential or privileged information for the inten=
ded recipient (s) If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D8373POCITMSEXMB03Ln_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style>
<!--
@font-face
	{font-family:Calibri}
@font-face
	{font-family:Tahoma}
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif"}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline}
span.EmailStyle17
	{font-family:"Tahoma","sans-serif";
	color:windowtext}
.MsoChpDefault
	{font-family:"Calibri","sans-serif"}
@page WordSection1
	{margin:1.0in 1.0in 1.0in 1.0in}
div.WordSection1
	{}
-->
</style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Hello,</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">We are having problem in running Qt appl=
ications. What I figured out is when we are putting eglibc-2.12 generated l=
ibraries (like libdl-2.12.1.so, libm-2.12.1.so), Qt applications
 are flickering or can say refreshing at every touch. On putting same libra=
ries of version 2.11 taken from freescale rootfs ( libdl-2.11.1.so, libm-2.=
11.1.so) Qt applications are running fine. We tried compiling eglibc-2.11.1=
 through yocto but we didn&#8217;t even
 succeeded to configure it. Can you please suggest some patch that we can a=
pply to get the same libraries.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal">Thanks &amp; Regards,</p>
<p class=3D"MsoNormal">Navani Kamal Srivastava</p>
<p class=3D"MsoNormal"><br>
<br>
<br>
</p>
<p class=3D"MsoNormal">&nbsp;</p>
</div>
<br>
<br>
<b>Larsen &amp; Toubro Limited <br>
<br>
www.larsentoubro.com <br>
<br>
</b>This Email may contain confidential or privileged information for the i=
ntended recipient (s) If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.
</body>
</html>

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D8373POCITMSEXMB03Ln_--
