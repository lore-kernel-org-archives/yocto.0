Return-Path: <prvs=33346b2aea=NAVANI.Srivastava@lnties.com>
Received: from mailout2.ltindia.com (mailout2.ltindia.com [125.18.18.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E033FE00306
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2011 02:41:59 -0800 (PST)
X-AuditID: c0a8466b-b7c80ae0000052e8-d6-4eef14f248f0
Received: from POCITMSEXHUB02.LntUniverse.com ( [10.2.1.59])
	by mailout2.ltindia.com (Symantec Mail Security) with SMTP id
	5F.9E.21224.2F41FEE4; Mon, 19 Dec 2011 16:11:54 +0530 (IST)
Received: from POCITMSEXMB03.LntUniverse.com ([fe80::f495:7e6e:4c34:a3a9]) by
	POCITMSEXHUB02.LntUniverse.com ([::1]) with mapi id 14.01.0218.012;
	Mon, 19 Dec 2011 16:11:53 +0530
From: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Related to mounting USB
Thread-Index: Acy+OrXSoyBXlduqT5KiSUAH7vKNgw==
Date: Mon, 19 Dec 2011 10:41:52 +0000
Message-ID: <9BACABF0C6B14A4D8C33B42A795119BE096D7BA7@POCITMSEXMB03.LntUniverse.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.37.159]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrPIsWRmVeSWpSXmKPExsXCxcRorftJ5L2fwZVNfBaTXq5hc2D0aD/R
	xxbAGMVtk5RYUhacmZ6nb5fAnbG7/RRrwTqziquLrjM2MC7R72Lk5JAQMJHYuHsvG4QtJnHh
	3nogm4tDSGAHo8TFSbeZIJytjBJ/W3ayglSxCdhIPD6/jgXEFhEwlXhx7AtYt7CAgsTr1nOs
	EHFViUf/dgHZHEC2nsSbdg+QMAtQuHMaxDJegRCJmdt6mUBsRqDF30+tAbOZBcQlbj2ZzwRx
	kIDEkj3nmSFsUYmXj/+BjZQQUJJ4vJITojxfYsvufVAjBSVOznzCMoFRaBaSSbOQlM1CUgYR
	15FYsPsTG4StLbFs4WtmGPvMgcdMyOILGNlXMYrkJmbm5JeWGOnllGTmpWQm6iXn525iBEbE
	gRVu2TsYP+5ROcQowMGoxMO7YNY7PyHWxLLiytxDjJIcTEqivPcE3vsJ8SXlp1RmJBZnxBeV
	5qQWH2KU4GBWEuH98eKtnxBvSmJlVWpRPkxKhoNDSYJXFxi9QoJFqempFWmZOcC4h0kzcXCC
	CC6QGTxAM4JBCnmLCxJzizPTIYpOMUpKifOagiQEQBIZpXlwA14xigNdKswbApLlAaYquK5X
	QAOZgAb2Bb4BGViSiJCSamDsv73o+d2crzGalxMuex3VSZNNiBFhjM79Wi7kJNwj0xmuwBG/
	2lDb+ItCs5JM2YSp1c7vWIyZrs/0EvqS2NPz8c33lPSQnPrdH3b/U1s1u3u6ZFdUWEtzcv+W
	dO24lQkd7amNjRdlBdYz5Jd+Xew6a1q3RfOxr529Z77/jU3Q5JRI3sI8W4mlOCPRUIu5qDgR
	AEBGniISAwAA
Subject: Related to mounting USB
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
X-List-Received-Date: Mon, 19 Dec 2011 10:42:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9BACABF0C6B14A4D8C33B42A795119BE096D7BA7POCITMSEXMB03Ln_"

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D7BA7POCITMSEXMB03Ln_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am facing problem in mounting USB. At the time of system bootup if USB st=
ick is plugged, it shows messages like

"scsi 0:0:0:0: Direct-Access     JetFlash Transcend 8GB    8.07 PQ: 0 ANSI:=
 2
sd 0:0:0:0: [sda] 15654912 512-byte logical blocks: (8.01 GB/7.46 GiB)
sd 0:0:0:0: [sda] Write Protect is off
sd 0:0:0:0: [sda] Assuming drive cache: write through
sd 0:0:0:0: [sda] Assuming drive cache: write through
sda: sda1
sd 0:0:0:0: [sda] Assuming drive cache: write through
sd 0:0:0:0: [sda] Attached SCSI removable disk
PHY: 0:01 - Link is Up - 100/Full"

But I won't get any sda or sda1 in /dev to mount. If I am unplugging the US=
B stick and again plug it I would be able to look for it in /dev and mount =
it. Please look after this issue.

Thanks & Regards,
Navani Kamal Srivastava


Larsen & Toubro Limited

www.larsentoubro.com<http://www.larsentoubro.com/>

This mail is classified as: ( ) L&T Proprietary ( ) L&T Confidential (X) L&=
T Internal Use ( ) L&T General Business
This email may contain confidential or privileged information for the inten=
ded recipient(s). If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.




Larsen & Toubro Limited

www.larsentoubro.com

This Email may contain confidential or privileged information for the inten=
ded recipient (s) If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D7BA7POCITMSEXMB03Ln_
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
@font-face
	{font-family:"Poor Richard"}
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
homa&quot;,&quot;sans-serif&quot;">Hi,</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">I am facing problem in mounting USB. At =
the time of system bootup if USB stick is plugged, it shows messages like
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&#8220;scsi 0:0:0:0: Direct-Access&nbsp;=
&nbsp;&nbsp;&nbsp; JetFlash Transcend 8GB&nbsp;&nbsp;&nbsp; 8.07 PQ: 0 ANSI=
: 2</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">sd 0:0:0:0: [sda] 15654912 512-byte logi=
cal blocks: (8.01 GB/7.46 GiB)</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">sd 0:0:0:0: [sda] Write Protect is off</=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">sd 0:0:0:0: [sda] Assuming drive cache: =
write through</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">sd 0:0:0:0: [sda] Assuming drive cache: =
write through</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">sda: sda1</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">sd 0:0:0:0: [sda] Assuming drive cache: =
write through</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">sd 0:0:0:0: [sda] Attached SCSI removabl=
e disk</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">PHY: 0:01 - Link is Up - 100/Full&#8221;=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">But I won&#8217;t get any sda or sda1 in=
 /dev to mount. If I am unplugging the USB stick and again plug it I would =
be able to look for it in /dev and mount it. Please look after
 this issue.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal">Thanks &amp; Regards,</p>
<p class=3D"MsoNormal">Navani Kamal Srivastava</p>
<p class=3D"MsoNormal"><br>
<br>
<b>Larsen &amp; Toubro Limited <br>
<br>
<a href=3D"http://www.larsentoubro.com/"><span style=3D"color:blue">www.lar=
sentoubro.com</span></a>
<br>
<br>
</b><span style=3D"font-family:&quot;Poor Richard&quot;,&quot;serif&quot;; =
color:black">This mail is classified as: ( ) L&amp;T Proprietary ( ) L&amp;=
T Confidential (X) L&amp;T Internal Use ( ) L&amp;T General Business</span>=
<span style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;; color:black"><br>
This email may contain confidential or privileged information for the inten=
ded recipient(s). If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.
<br>
<br>
</span></p>
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

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D7BA7POCITMSEXMB03Ln_--
