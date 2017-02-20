Return-Path: <Javier.Viguera@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BDBEE00935; Mon, 20 Feb 2017 04:47:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.82.251.2 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0002]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 378 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Feb 2017 04:46:56 PST
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41C5DE0082A
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 04:46:56 -0800 (PST)
Received: from [216.82.251.37] by server-2.bemta-12.messagelabs.com id
	EE/FB-26228-6C3EAA85; Mon, 20 Feb 2017 12:40:38 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupkleJIrShJLcpLzFFi42Jx8l0noHv08ao
	Ig39nTSwmvVzD5sDo0X6ijy2AMYo1My8pvyKBNWPjqUMsBS90Kxa9eMrSwPhLo4uRk0NIYBWj
	xKZPKV2MXED2EkaJpW9mMoIk2AQMJSZ8+sQGYosImEq8OPYFzBYWMJZY0P+UHSJuIbF50WWgO
	AeQrSexepI4SJhFQFVi5fp7rCA2r4CvxNp/t8HKGQVkJb40rmYGsZkFxCVuPZnPBGJLCAhILN
	lznhnCFpV4+fgfK4QtLzHlw0VGCNtQYtW0AywQtrTEm551bBBz8iRa3qxhhtglKHFy5hMWiL9
	UJDbc+M00gVF4FpJ1s5C0zELSAhHXkViw+xMbhK0tsWzha2YY+8yBx0zI4gsY2VcxahSnFpWl
	FukaG+glFWWmZ5TkJmbm6BoaGunlphYXJ6an5iQmFesl5+duYgRGUT0DA+MOxt//fQ8xSnIwK
	Yny3lmyKkKILyk/pTIjsTgjvqg0J7X4EKMMB4eSBO+RR0A5waLU9NSKtMwcYDzDpCU4eJREeM
	tA0rzFBYm5xZnpEKlTjIpS4rzTQRICIImM0jy4NlgKucQoKyXMy8jAwCDEU5BalJtZgir/ilG
	cg1FJmHcyyBSezLwSuOmvgBYzAS2+6bESZHFJIkJKqoEx1DTzxKUk7sfvXAqnaOXtnZq/qdDG
	Ia5oy4z/qlr5TtHlOmtmb6ze8/hr9/SJngFb4vZZnsmPTl9z/vipirT8TwFH/19admKriJ/v1
	IV7uN86Ln6xOy2r6daepNan7bPZLq9a0efN8GnPEtU54Rf5Jp9nthCbE99qYxy13FdZ+Evpk4
	lJ8f1LlFiKMxINtZiLihMBGsZFAxwDAAA=
X-Env-Sender: Javier.Viguera@digi.com
X-Msg-Ref: server-14.tower-153.messagelabs.com!1487594437!13524238!1
X-Originating-IP: [66.77.174.16]
X-StarScan-Received: 
X-StarScan-Version: 9.2.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 80718 invoked from network); 20 Feb 2017 12:40:37 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-14.tower-153.messagelabs.com with SMTP;
	20 Feb 2017 12:40:37 -0000
Received: from DOR-VMS-XCH01.digi.com (10.49.8.98) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Mon, 20 Feb 2017 06:40:33 -0600
Received: from DOR-SMS-XCH01.digi.com ([fe80::894b:3bdc:74ae:6efc]) by
	DOR-VMS-XCH01.digi.com ([::1]) with mapi id 14.03.0319.002;
	Mon, 20 Feb 2017 13:40:31 +0100
From: "Viguera, Javier" <Javier.Viguera@digi.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Dependence from image type to image recipe
Thread-Index: AdKLdoT08Tiv+BbnRNSVaNRRCilUaw==
Date: Mon, 20 Feb 2017 12:40:30 +0000
Message-ID: <DA8287CC96892A4EB4FCF4FB3FBDA1AB014389D8@dor-sms-xch01.digi.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.101.2.55]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
Subject: Dependence from image type to image recipe
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
X-List-Received-Date: Mon, 20 Feb 2017 12:47:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DA8287CC96892A4EB4FCF4FB3FBDA1AB014389D8dorsmsxch01digi_"

--_000_DA8287CC96892A4EB4FCF4FB3FBDA1AB014389D8dorsmsxch01digi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I need a bit of help to add a dependence from an image type to an image rec=
ipe that build and initramfs.

A bit of background: I have an image type recovery.ubifs that boots using a=
 ramdisk. The ramdisk is generated with a different image recipe (recovery-=
initramfs).

So whenever I configure any image (core-image-minimal, core-image-sato) to =
generate recovery images, it should build first the ramdisk and add it to t=
he final recovery image.

In Jethro this was working file using IMAGE_DEPENDS in my custom image-crea=
tion class:

IMAGE_DEPENDS_recovery.ubifs =3D " \
    mtd-utils-native:do_populate_sysroot \
    u-boot:do_deploy \
    virtual/kernel:do_deploy \
    recovery-initramfs:do_rootfs \
"

Now I'm migrating to Morty, and this does not seem to work anymore. When in=
structed to generate a recovery image, it does not detect the dependence on=
 the recovery-initramfs image, and fails to generate the final image.

How should I code such dependence? Remember is not a dependence from any ot=
her image recipe, it's a dependence from an image FSTYPE.

Hope the description is clear enough. Otherwise please say so and I'll try =
to explain it better.

--
Thanks.

Javier Viguera

--_000_DA8287CC96892A4EB4FCF4FB3FBDA1AB014389D8dorsmsxch01digi_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 85.05pt 70.85pt 85.05pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I need a bit of help to add a dependence from an ima=
ge <b>type</b> to an image recipe that build and initramfs.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">A bit of background: I have an image type <b>recover=
y.ubifs</b> that boots using a ramdisk. The ramdisk is generated with a dif=
ferent image recipe (recovery-initramfs).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So whenever I configure any image (core-image-minima=
l, core-image-sato) to generate recovery images, it should build first the =
ramdisk and add it to the final recovery image.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In Jethro this was working file using IMAGE_DEPENDS =
in my custom image-creation class:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">IMAGE_DEPENDS_r=
ecovery.ubifs =3D &quot; \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">&nbsp;&nbsp;&nb=
sp; mtd-utils-native:do_populate_sysroot \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">&nbsp;&nbsp;&nb=
sp; u-boot:do_deploy \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">&nbsp;&nbsp;&nb=
sp; virtual/kernel:do_deploy \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">&nbsp;&nbsp;&nb=
sp; recovery-initramfs:do_rootfs \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:Consolas">&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now I'm migrating to Morty, and this does not seem t=
o work anymore. When instructed to generate a recovery image, it does not d=
etect the dependence on the recovery-initramfs image, and fails to generate=
 the final image.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How should I code such dependence? Remember is not a=
 dependence from any other image recipe, it's a dependence from an image FS=
TYPE.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hope the description is clear enough. Otherwise plea=
se say so and I'll try to explain it better.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Javier Viguera<o:p></o:p></p>
</div>
</body>
</html>

--_000_DA8287CC96892A4EB4FCF4FB3FBDA1AB014389D8dorsmsxch01digi_--
