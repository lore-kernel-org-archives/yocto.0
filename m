Return-Path: <prvs=3331ba38b9=NAVANI.Srivastava@lnties.com>
Received: from mailout2.ltindia.com (mailout2.ltindia.com [125.18.18.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABE71E013DD
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 23:06:10 -0800 (PST)
X-AuditID: c0a8466b-b7c80ae0000052e8-f5-4eeaeddf68d2
Received: from POCITMSEXHUB03.LntUniverse.com ( [10.2.1.60])
	by mailout2.ltindia.com (Symantec Mail Security) with SMTP id
	75.DB.21224.FDDEAEE4; Fri, 16 Dec 2011 12:36:07 +0530 (IST)
Received: from POCITMSEXMB03.LntUniverse.com ([fe80::f495:7e6e:4c34:a3a9]) by
	POCITMSEXHUB03.LntUniverse.com ([::1]) with mapi id 14.01.0218.012;
	Fri, 16 Dec 2011 12:36:07 +0530
From: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Qt image is flicking at every touch
Thread-Index: Acy7wRKDyMXoLKnKTh6vse8iUYbTEw==
Date: Fri, 16 Dec 2011 07:06:06 +0000
Message-ID: <9BACABF0C6B14A4D8C33B42A795119BE096D77E5@POCITMSEXMB03.LntUniverse.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.37.159]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEKsWRmVeSWpSXmKPExsXCxcRoo3v/7Ss/g/9PtC0mvVzD5sDo0X6i
	jy2AMYrbJimxpCw4Mz1P3y6BO+PJ0h7mghazihN/LzA2MG7Q72Lk5JAQMJF4tfIZE4QtJnHh
	3nq2LkYuDiGBHYwSu7r/MUE4WxkljqzdxAhSxSZgI/H4/DoWEFtEwFTixbEvbCC2sICOxMF9
	x6HihhL3l51lhLD1JJ7N2gtmswioSkzd28wKYvMKhEgcP7wYbDMj0Obvp9aA2cwC4hK3nsyH
	ukhAYsme88wQtqjEy8f/gHo5gGwliccrOSHK8yUent4INVJQ4uTMJywTGIVmIZk0C0nZLCRl
	EHEdiQW7P7FB2NoSyxa+Zoaxzxx4zIQsvoCRfRWjSG5iZk5+aYmRXk5JZl5KZqJecn7uJkZg
	TBxY4Za9g/HjHpVDjAIcjEo8vBucX/kJsSaWFVfmHmKU5GBSEuVd+QYoxJeUn1KZkVicEV9U
	mpNafIhRgoNZSYRX3B4ox5uSWFmVWpQPk5Lh4FCS4E0Dxq+QYFFqempFWmYOMPJh0kwcnCDt
	XFIixal5KalFiaUlGfGgSI8vBsY6SIoHaLIzSDtvcUFiLlAUovUUoyrH8TW/zzAKseTl56VK
	ifOaghQJgBRllObBrXjFKA70izCvG0iWB5jw4Ca8AhrOBDR8e9gLkOEliQgpqQbG1TPvznsh
	fSNoUW3TjH2zDgo1l/fIn5A+5fd7r6v6CcErtxtnOYZvyFZgkFq10Xy+6FzOjJbdf48sfBVY
	MvFpuab7tuMKZ0s2PHkb/K5+67XXlx5vXrtY7+nSJTb18/9JrHC23pw8pSlKNyT0ckiIjdyR
	ZzP5nOru2W/+xnx8OlMnv8yBZU/vnVJiKc5INNRiLipOBACy9jamNQMAAA==
X-Mailman-Approved-At: Fri, 16 Dec 2011 09:30:00 -0800
Subject: Qt image is flicking at every touch
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
X-List-Received-Date: Fri, 16 Dec 2011 07:06:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9BACABF0C6B14A4D8C33B42A795119BE096D77E5POCITMSEXMB03Ln_"

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D77E5POCITMSEXMB03Ln_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I compiled my rootfs with given options-

IMAGE_INSTALL =3D "task-poky-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP}"
IMAGE_INSTALL +=3D "qt4-embedded tslib-conf tslib-tests tslib-calibrate tsl=
ib-dev tslib-locale busybox iproute2 canutils alsa-utils alsa-lib directfb =
hwapps qt4-embedded"
IMAGE_INSTALL +=3D "alsa-utils-alsamixer alsa-utils-midi alsa-utils-aplay a=
lsa-utils-amixer alsa-utils-aconnect alsa-utils-iecset alsa-utils-speakerte=
st alsa-utils-aseqnet alsa-utils-aseqdump alsa-utils-alsaconf alsa-utils-al=
sactl"
IMAGE_LINGUAS =3D " "


Now if we are running Qt binaries produced by yocto on our board, image is =
flickering at every touch. Can you please help me to resolve the problem.
I am pretty sure with the libraries because when I am copying all these lib=
raries produced by yocto in rootfs to freescale provided rootfs and trying =
to run the same binary produced by Qt (yocto ) , it is working fine.

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

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D77E5POCITMSEXMB03Ln_
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
homa&quot;,&quot;sans-serif&quot;">I compiled my rootfs with given options-=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">IMAGE_INSTALL =3D &quot;task-poky-boot $=
{ROOTFS_PKGMANAGE_BOOTSTRAP}&quot;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">IMAGE_INSTALL &#43;=3D &quot;qt4-embedde=
d tslib-conf tslib-tests tslib-calibrate tslib-dev tslib-locale busybox ipr=
oute2 canutils alsa-utils alsa-lib directfb hwapps qt4-embedded&quot;</span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">IMAGE_INSTALL &#43;=3D &quot;alsa-utils-=
alsamixer alsa-utils-midi alsa-utils-aplay alsa-utils-amixer alsa-utils-aco=
nnect alsa-utils-iecset alsa-utils-speakertest alsa-utils-aseqnet alsa-util=
s-aseqdump
 alsa-utils-alsaconf alsa-utils-alsactl&quot;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">IMAGE_LINGUAS =3D &quot; &quot;</span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">&nbsp;</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">Now if we are running Qt binaries produc=
ed by yocto on our board, image is flickering at every touch. Can you pleas=
e help me to resolve the problem.</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt; font-family:&quot;Ta=
homa&quot;,&quot;sans-serif&quot;">I am pretty sure with the libraries beca=
use when I am copying all these libraries produced by yocto in rootfs to fr=
eescale provided rootfs and trying to run the same binary
 produced by Qt (yocto ) , it is working fine.</span></p>
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

--_000_9BACABF0C6B14A4D8C33B42A795119BE096D77E5POCITMSEXMB03Ln_--
