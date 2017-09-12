Return-Path: <Vinothkumar.Eswaran@de.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E33AE0090A; Tue, 12 Sep 2017 00:38:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [139.15.243.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 493 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Sep 2017 00:38:50 PDT
Received: from imta21.fe.bosch.de (imta21.fe.bosch.de [139.15.243.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87811E0091D
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 00:38:50 -0700 (PDT)
Received: from smtp6-v.fe.bosch.de (imta24.fe.bosch.de [139.15.243.27])
	by imta21.fe.bosch.de (Postfix) with ESMTP id 9AE69C053F
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 09:30:01 +0200 (CEST)
Received: from vsmta11.fe.internet.bosch.com (unknown [10.4.98.51])
	by imta24.fe.bosch.de (Postfix) with ESMTP id 30D15D8021E
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 09:29:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=de.bosch.com;
	s=2015-01-21; t=1505201396;
	bh=iRnd6yhP70ncviNOXHR57LNObNH+XNZc+UBMQnEOP58=; l=10;
	h=From:From:Reply-To:Sender;
	b=HAbIltqHhfWCh+lgadO7p+BVZKydwiYhSEg6TswhhnrfKjTuJPKnWnAutxSZWFkDc
	QrrCUbNa1q6MYcXejfRhsVU4RR6jCWyz14DiC2L4Lxc6b1EN7uVbbAAF6gmn6uWxIw
	Pxu8Wxcb7R2dizknyRXFm7eesLVLYWX4Bsl1zqYI=
Received: from SI-MBX1027.de.bosch.com (vsgw24.fe.internet.bosch.com
	[10.4.98.24])
	by vsmta11.fe.internet.bosch.com (Postfix) with ESMTP id 9633C2380441
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 09:30:33 +0200 (CEST)
Received: from FE-MBX2014.de.bosch.com (10.3.231.20) by
	SI-MBX1027.de.bosch.com (10.3.230.41) with Microsoft SMTP Server (TLS)
	id 15.0.1236.3; Tue, 12 Sep 2017 09:30:33 +0200
Received: from FE-MBX2014.de.bosch.com (10.3.231.20) by
	FE-MBX2014.de.bosch.com (10.3.231.20) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1034.26; Tue, 12 Sep 2017 09:30:32 +0200
Received: from FE-MBX2014.de.bosch.com ([fe80::d909:5d48:6bde:c74a]) by
	FE-MBX2014.de.bosch.com ([fe80::d909:5d48:6bde:c74a%6]) with mapi id
	15.01.1034.026; Tue, 12 Sep 2017 09:30:32 +0200
From: "Eswaran Vinothkumar (BEG/PJ-IOT-EL)" <Vinothkumar.Eswaran@de.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: SD card image fails for IMX7 
Thread-Index: AdMrmFhWgN0MeejbQiCP/18k8uHD4A==
Date: Tue, 12 Sep 2017 07:30:32 +0000
Message-ID: <24bdab5d1f0f47568bd492abacb4afc9@de.bosch.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.42.242.21]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.0.0.1202-23322.005
X-TMASE-MatchedRID: KzYwp8F58qS36bWU2xVUinvBWikXzNqD7T7u8yAbuqNOCtCDJNptxun7
	a+A6E3NNKX3/S0k7vxAOqZbf/AiUnOzxNaI2BL2hRlqShqb35p4/lQ/FXgTmaUfYTakhm+vsMSu
	S6JxBG64HnAuQWaUnqj+uYNnDyjfsIVhkBY4/HqQwmhCbeOj6aXN3sLsG0mhuow/V8X6BDY6Vkl
	z/Bg5YoG41LK71hOpy80GYheQ7dyavhOOX3csmV0+4wmL9kCTx0w14HFJQjaNh2lxkfcGsFP0ub
	/xgdoFfWnc7D0LzZnxhjdPZ6iZcXFOpO+Sviejw/Sl5cYQQGW+DddlymG7iS0rRZP/NcCCSizrF
	pWHTBvcEdWbTGHnxVjwu4/5s6Qxa3eMXZ9Vw93OYcl4BgqVyk3G1ZiUO5FClj2iyfwmt0k+fT+t
	FD2StERGdJ4eSxuIY9yaXhPhnUZ2CIg7tJ//usYvptQwz5tsim/y00tE9StYKw+Kw6rehm+RqQA
	xbWD9+4vM1YF6AJbZO+3uGNcav94GPZcQEXn13OwBXM346/+yDLIUuaF8jfqqcyWRStwyVGA5jy
	mMSIG9pLOX/cIF42Nxom+AoOhvt
Subject: SD card image fails for IMX7
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
X-List-Received-Date: Tue, 12 Sep 2017 07:38:52 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_24bdab5d1f0f47568bd492abacb4afc9deboschcom_"

--_000_24bdab5d1f0f47568bd492abacb4afc9deboschcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am using Yocto based build system for my project. The Yocto version used =
in pyro.( BB_VERSION  =3D "1.34.0").

I am trying to build an SD card image by setting the,

IMAGE_FSTYPES =3D "sdcard" and also set the SDCARD_GENERATION_COMMAND =3D "=
generate_imx_sdcard" .

After trying to build the image , I am seeing the following error messages,

| NOTE: libpthread-stubs-native exists in sysroot, skipping
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_image_sdcard
| 0+0 records in
| 0+0 records out
| 0 bytes copied, 0.000164164 s, 0.0 kB/s
| Model:  (file)
| Disk /home/evk1206/Projects/test/build/tmp/work/cl_som_imx7-fsl-linux-gnu=
eabi/iot-eval-image/1.0-r0/deploy-iot-eval-image-image-complete/iot-eval-im=
age-cl-som-imx7-20170912065601.rootfs.sdcard: 1057MB
| Sector size (logical/physical): 512B/512B
| Partition Table: msdos
| Disk Flags:
|
| Number  Start   End     Size    Type     File system  Flags
|  1      4194kB  12.6MB  8389kB  primary               lba
|  2      12.6MB  1053MB  1040MB  primary
|
| 846+0 records in
| 846+0 records out
| 433152 bytes (433 kB, 423 KiB) copied, 0.00094238 s, 460 MB/s
| mkfs.fat: warning - lowercase labels might not work properly with DOS or =
Windows
| mkfs.fat 4.1 (2017-01-24)
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_image_sdcard (log file is located at /home/evk=
1206/Projects/test/build/tmp/work/cl_som_imx7-fsl-linux-gnueabi/iot-eval-im=
age/1.0-r0/temp/log.do_image_sdcard.28053)
ERROR: Task (/home/evk1206/Projects/test/sources/meta-alen/recipes-core/ima=
ges/iot-eval-image.bb:do_image_sdcard) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3415 tasks of which 3407 didn't need to be r=
erun and 1 failed.

Summary: 1 task failed:
  /home/evk1206/Projects/test/sources/meta-alen/recipes-core/images/iot-eva=
l-image.bb:do_image_sdcard
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

May I know how to fix this issue.

Mit freundlichen Gr=FC=DFen / Best regards

Vinothkumar Eswaran
BEG-PT/PJ-EL



--_000_24bdab5d1f0f47568bd492abacb4afc9deboschcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I am using Yocto based build system for my project. T=
he Yocto version used in pyro.(</span>
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">B=
B_VERSION &nbsp;=3D &quot;1.34.0&quot;).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I am trying to build an SD card image by setting the,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">IMAGE_FSTYPES =3D &quot;sdcard&quot; and also set the=
 SDCARD_GENERATION_COMMAND =3D &quot;generate_imx_sdcard&quot; .
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">After trying to build the image , I am seeing the fol=
lowing error messages,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| NOTE: libpthread-stubs-native exists in sysroot, sk=
ipping<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| DEBUG: Python function extend_recipe_sysroot finish=
ed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| DEBUG: Executing shell function do_image_sdcard<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| 0&#43;0 records in<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| 0&#43;0 records out<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| 0 bytes copied, 0.000164164 s, 0.0 kB/s<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| Model:&nbsp; (file)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| Disk /home/evk1206/Projects/test/build/tmp/work/cl_=
som_imx7-fsl-linux-gnueabi/iot-eval-image/1.0-r0/deploy-iot-eval-image-imag=
e-complete/iot-eval-image-cl-som-imx7-20170912065601.rootfs.sdcard:
 1057MB<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| Sector size (logical/physical): 512B/512B<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| Partition Table: msdos<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| Disk Flags:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">|
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| Number&nbsp; Start&nbsp;&nbsp; End&nbsp;&nbsp;&nbsp=
;&nbsp; Size&nbsp;&nbsp;&nbsp; Type&nbsp;&nbsp;&nbsp;&nbsp; File system&nbs=
p; Flags<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">|&nbsp; 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4194kB&nbsp; =
12.6MB&nbsp; 8389kB&nbsp; primary&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; lba<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">|&nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12.6MB&nbsp; =
1053MB&nbsp; 1040MB&nbsp; primary<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">|
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| 846&#43;0 records in<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| 846&#43;0 records out<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| 433152 bytes (433 kB, 423 KiB) copied, 0.00094238 s=
, 460 MB/s<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| mkfs.fat: warning - lowercase labels might not work=
 properly with DOS or Windows<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| mkfs.fat 4.1 (2017-01-24)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| WARNING: exit code 1 from a shell command.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">| ERROR: Function failed: do_image_sdcard (log file i=
s located at /home/evk1206/Projects/test/build/tmp/work/cl_som_imx7-fsl-lin=
ux-gnueabi/iot-eval-image/1.0-r0/temp/log.do_image_sdcard.28053)<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">ERROR: Task (/home/evk1206/Projects/test/sources/meta=
-alen/recipes-core/images/iot-eval-image.bb:do_image_sdcard) failed with ex=
it code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">NOTE: Tasks Summary: Attempted 3415 tasks of which 34=
07 didn't need to be rerun and 1 failed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Summary: 1 task failed:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&nbsp; /home/evk1206/Projects/test/sources/meta-alen/=
recipes-core/images/iot-eval-image.bb:do_image_sdcard<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Summary: There was 1 WARNING message shown.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Summary: There was 1 ERROR message shown, returning a=
 non-zero exit code.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">May I know how to fix this issue.<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">Mit freundlichen Gr=FC=DFen /=
 Best regards
<br>
<br>
<b>Vinothkumar Eswaran<br>
BEG-PT/PJ-EL</b><br>
<br>
</span><span lang=3D"DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_24bdab5d1f0f47568bd492abacb4afc9deboschcom_--
