Return-Path: <prvs=03353c1255=NAVANI.Srivastava@lnties.com>
Received: from mailout2.ltindia.com (mailout2.ltindia.com [125.18.18.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5E40E00305
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 00:33:45 -0800 (PST)
X-AuditID: c0a8466b-b7c80ae0000052e8-6e-4ef048673ff7
Received: from POCITMSEXHUB03.LntUniverse.com ( [10.2.1.60])
	by mailout2.ltindia.com (Symantec Mail Security) with SMTP id
	DA.D8.21224.76840FE4; Tue, 20 Dec 2011 14:03:43 +0530 (IST)
Received: from POCITMSEXMB03.LntUniverse.com ([fe80::f495:7e6e:4c34:a3a9]) by
	POCITMSEXHUB03.LntUniverse.com ([::1]) with mapi id 14.01.0218.012;
	Tue, 20 Dec 2011 14:03:43 +0530
From: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Poky-Build error 
Thread-Index: Acy+8ZySZAtsiQvSTYGYUdSkMZUpwgAABqkw
Date: Tue, 20 Dec 2011 08:33:42 +0000
Message-ID: <9BACABF0C6B14A4D8C33B42A795119BE096D7E06@POCITMSEXMB03.LntUniverse.com>
References: <B02DFE681008F243B33346CA5752CA2B096D3A83@POCITMSEXMB03.LntUniverse.com>
In-Reply-To: <B02DFE681008F243B33346CA5752CA2B096D3A83@POCITMSEXMB03.LntUniverse.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.37.159]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKKsWRmVeSWpSXmKPExsXCxcRoo5vu8cHP4MdNPYtJL9ewOTB6tJ/o
	YwtgjOK2SUosKQvOTM/Tt0vgztjzQ6fgf0DFndO7GBsYX3l0MXJySAiYSExofsQCYYtJXLi3
	nq2LkYtDSGAHo8Thux8YIZytjBIvnz5mB6liE7CReHx+HViHiICpxItjX9hAbGEBKYkV1+ey
	Q8TlJb70rmKCsI0kts2dD1bPIqAqsXPDcbA4r0CIROupv0A2B9CCEInZkyVBTE6BUInJt0tA
	KhiB7vl+ag1YNbOAuMStJ/OZIO4UkFiy5zwzhC0q8fLxP1aQVgkBJYnHKzkhyvMlbm4/ygKx
	SFDi5MwnLBMYRWYhmTQLSdksJGUQcR2JBbs/sUHY2hLLFr5mhrHPHHjMhCy+gJF9FaNIbmJm
	Tn5piZFeTklmXkpmol5yfu4mRmD0HFjhlr2D8eMelUOMAhyMSjy8Gzrf+wmxJpYVV+YeYpTk
	YFIS5WVy/+AnxJeUn1KZkVicEV9UmpNafIhRgoNZSYR34XOgct6UxMqq1KJ8mJQMB4eSBO8O
	kDbBotT01Iq0zBxgioBJM3FwgggukBk8QDNWgRTyFhck5hZnpkMUnWKUlBLnjQdJCIAkMkrz
	4Aa8YhQHulSY9yxIlgeY1uC6XgENZAIauM0ZbGBJIkJKqoHRNTdJpbhnTYnYpGUXlr+xfXh5
	/8eUOQdU6m5/+/VN/8/PW5tucEze/Om9vtlNP/2y1527o19x7kqLMnGq9J7xekk038wL26yW
	2HPPrjRoPlLFusH0M/u2vymaluvbNizVjmN53BSe35Dg1a4jtn/Zv68z+BUs//mEPE26ck0x
	cfsb5d/G5RM/KrEUZyQaajEXFScCAGdqi/soAwAA
Subject: Poky-Build error
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
X-List-Received-Date: Tue, 20 Dec 2011 08:33:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9BACABF0C6B14A4D8C33B42A795119BE096D7E06POCITMSEXMB03Ln_"

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D7E06POCITMSEXMB03Ln_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



Hi,

We are facing the problem when we are compiling poky-bernard5.0 -(  bitbake=
 -v -b poky-image-eb.bb )


NOTE: package poky-image-eb-1.0-r0: task do_install: Started
NOTE: package poky-image-eb-1.0-r0: task do_install: Succeeded
NOTE: Running noexec task 13 of 15 (ID: 10, /home/prashanth/yocto/poky-bern=
ard-5.0/meta/recipes-eb/images/poky-image-eb.bb, do_package_write)
NOTE: Running task 14 of 15 (ID: 9, /home/prashanth/yocto/poky-bernard-5.0/=
meta/recipes-eb/images/poky-image-eb.bb, do_rootfs)
ERROR: '/home/prashanth/yocto/poky-bernard-5.0/meta/recipes-eb/images/poky-=
image-eb.bb' failed
NOTE: package poky-image-eb-1.0-r0: task do_rootfs: Started
ERROR: Function 'do_rootfs' failed (see /home/prashanth/yocto/poky-bernard-=
5.0/build/tmp/work/mx35pdk-poky-linux-gnueabi/poky-image-eb-1.0-r0/temp/log=
.do_rootfs.9800 for further information)
ERROR: Logfile of failure stored in: /home/prashanth/yocto/poky-bernard-5.0=
/build/tmp/work/mx35pdk-poky-linux-gnueabi/poky-image-eb-1.0-r0/temp/log.do=
_rootfs.9800
Log data follows:
| /home/prashanth/yocto/poky-bernard-5.0/build/tmp/work/mx35pdk-poky-linux-=
gnueabi/poky-image-eb-1.0-r0/temp/run.do_rootfs.9800: line 91: makedevs: co=
mmand not found
| ERROR: Function 'do_rootfs' failed (see /home/prashanth/yocto/poky-bernar=
d-5.0/build/tmp/work/mx35pdk-poky-linux-gnueabi/poky-image-eb-1.0-r0/temp/l=
og.do_rootfs.9800 for further information)
NOTE: package poky-image-eb-1.0-r0: task do_rootfs: Failed
ERROR: Task 9 (/home/prashanth/yocto/poky-bernard-5.0/meta/recipes-eb/image=
s/poky-image-eb.bb, do_rootfs) failed with exit code '1'
prashanth@eb-vmc-desktop:~/yocto/poky-bernard-5.0/build$<mailto:prashanth@e=
b-vmc-desktop:~/yocto/poky-bernard-5.0/build$>

Any help related to resolving this error is appreciable.


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

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D7E06POCITMSEXMB03Ln_
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
p.msochpdefault, li.msochpdefault, div.msochpdefault
	{margin-right:0in;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Calibri","sans-serif"}
span.emailstyle17
	{font-family:"Calibri","sans-serif";
	color:windowtext}
span.EmailStyle19
	{font-family:"Tahoma","sans-serif";
	color:#1F497D}
.MsoChpDefault
	{font-size:10.0pt;
	font-family:"Calibri","sans-serif"}
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
homa&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi,</span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal">We are facing the problem when we are compiling poky=
-bernard5.0 &#8211;( &nbsp;bitbake &#8211;v &#8211;b poky-image-eb.bb )</p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt; font-family:&quot;Courier New&quot;; color:#1F497D">&nbsp;</span=
></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt; font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;; color:#1F4=
97D">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt; font-family:&quot;Courier New&quot;">NOTE: package poky-image-eb=
-1.0-r0: task do_install: Started</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt; font-family:&quot;Courier New&quot;">NOTE: package poky-image-eb=
-1.0-r0: task do_install: Succeeded</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt; font-family:&quot;Courier New&quot;">NOTE: Running noexec task 1=
3 of 15 (ID: 10, /home/prashanth/yocto/poky-bernard-5.0/meta/recipes-eb/ima=
ges/poky-image-eb.bb, do_package_write)</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt; font-family:&quot;Courier New&quot;">NOTE: Running task 14 of 15=
 (ID: 9, /home/prashanth/yocto/poky-bernard-5.0/meta/recipes-eb/images/poky=
-image-eb.bb, do_rootfs)</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt; font-family:&quot;Courier New&quot;">ERROR: '/home/prashanth/yoc=
to/poky-bernard-5.0/meta/recipes-eb/images/poky-image-eb.bb' failed</span><=
/p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt; font-family:&quot;Courier New&quot;">NOTE: package poky-image-eb=
-1.0-r0: task do_rootfs: Started</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt; font-family:&quot;Courier New&quot;">ERROR: Function 'do_rootfs'=
 failed (see /home/prashanth/yocto/poky-bernard-5.0/build/tmp/work/mx35pdk-=
poky-linux-gnueabi/poky-image-eb-1.0-r0/temp/log.do_rootfs.9800
 for further information)</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt; font-family:&quot;Courier New&quot;">ERROR: Logfile of failure s=
tored in: /home/prashanth/yocto/poky-bernard-5.0/build/tmp/work/mx35pdk-pok=
y-linux-gnueabi/poky-image-eb-1.0-r0/temp/log.do_rootfs.9800</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt; font-family:&quot;Courier New&quot;">Log data follows:</span></p=
>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt; font-family:&quot;Courier New&quot;">| /home/prashanth/yocto/pok=
y-bernard-5.0/build/tmp/work/mx35pdk-poky-linux-gnueabi/poky-image-eb-1.0-r=
0/temp/run.do_rootfs.9800: line 91: makedevs: command
 not found</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt; font-family:&quot;Courier New&quot;">| ERROR: Function 'do_rootf=
s' failed (see /home/prashanth/yocto/poky-bernard-5.0/build/tmp/work/mx35pd=
k-poky-linux-gnueabi/poky-image-eb-1.0-r0/temp/log.do_rootfs.9800
 for further information)</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt; font-family:&quot;Courier New&quot;">NOTE: package poky-image-eb=
-1.0-r0: task do_rootfs: Failed</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt; font-family:&quot;Courier New&quot;">ERROR: Task 9 (/home/prasha=
nth/yocto/poky-bernard-5.0/meta/recipes-eb/images/poky-image-eb.bb, do_root=
fs) failed with exit code '1'</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt; font-family:&quot;C=
ourier New&quot;"><a href=3D"mailto:prashanth@eb-vmc-desktop:~/yocto/poky-b=
ernard-5.0/build$">prashanth@eb-vmc-desktop:~/yocto/poky-bernard-5.0/build$=
</a></span></p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Any help related to re=
solving this error is appreciable.
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;; color:#1F497D">&nbsp;</span></p>
<p class=3D"MsoNormal">Thanks &amp; Regards,</p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Navani Kamal Srivastav=
a</span></p>
<p class=3D"MsoNormal"><br>
<br>
<b>Larsen &amp; Toubro Limited <br>
<br>
<a href=3D"http://www.larsentoubro.com/">www.larsentoubro.com</a> <br>
<br>
</b><span style=3D"font-family:&quot;Poor Richard&quot;,&quot;serif&quot;; =
color:black">This mail is classified as: ( ) L&amp;T Proprietary ( ) L&amp;=
T Confidential (X) L&amp;T Internal Use ( ) L&amp;T General Business</span>=
<span style=3D"font-size:10.0pt; font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;; color:black"><br>
This email may contain confidential or privileged information for the inten=
ded recipient(s). If you are not the intended recipient, please do not use =
or disseminate the information, notify the sender and delete it from your s=
ystem.</span></p>
<p class=3D"MsoNormal">&nbsp;</p>
</div>
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

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D7E06POCITMSEXMB03Ln_--
