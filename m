Return-Path: <c.andersen@kostal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 305B6E00C2B; Tue, 29 Aug 2017 07:37:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.22.205.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from debemgw001.kostal.com (securemail.kostal.com [193.22.205.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1506E00A38
	for <yocto@yoctoproject.org>; Tue, 29 Aug 2017 07:37:06 -0700 (PDT)
Received: from DEBEMAIL002.kostal.int ([10.20.2.182]) by 
	debemgw001.kostal.com (8.14.7/8.14.7) with ESMTP id v7TEatZp023149 
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL) for 
	<yocto@yoctoproject.org>; Tue, 29 Aug 2017 16:36:55 +0200
Received: from DEBEMAIL001.kostal.int (10.20.2.181) by DEBEMAIL002.kostal.int 
	(10.20.2.182) with Microsoft SMTP Server (TLS) id 15.0.1320.4; Tue, 
	29 Aug 2017 16:36:55 +0200
Received: from DEBEMAIL001.kostal.int ([fe80::709d:54a:e7ef:38eb]) by 
	DEBEMAIL001.kostal.int ([fe80::709d:54a:e7ef:38eb%12]) with mapi id 
	15.00.1320.000; Tue, 29 Aug 2017 16:36:54 +0200
From: "Andersen, Christian" <c.andersen@kostal.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Building multiple FIT images with different initramfs images
Thread-Index: AdMg051XjHWBCmV9SjOMKs0gT/noaw==
Date: Tue, 29 Aug 2017 14:36:54 +0000
Message-ID: <3d7dfdc5c8dc4eb4b31cb394d2ab32b4@DEBEMAIL001.kostal.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.20.2.192]
MIME-Version: 1.0
x-msw-jemd-newsletter: false
Subject: Building multiple FIT images with different initramfs images
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
X-List-Received-Date: Tue, 29 Aug 2017 14:37:09 -0000
Content-Language: de-DE
Content-Type: multipart/alternative; 
	boundary="_000_3d7dfdc5c8dc4eb4b31cb394d2ab32b4DEBEMAIL001kostalint_"

--_000_3d7dfdc5c8dc4eb4b31cb394d2ab32b4DEBEMAIL001kostalint_
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

we are using signed FIT images to establish a verified boot system. Now I t=
ry to generate multiple FIT images, where every image contains another init=
ramfs. The idea is to use a signed FIT image (loaded via TFTP) including a =
special ramdisk in our production line. This ramdisk only contains the code=
 to copy the rootfs onto our eMMC. Another FIT image (the default one) will=
 be included in our rootfs and used in all other cases (in the field).

Currently Yocto (kernel-fitimage.bbclass) only supports the variable INITRA=
MFS_IMAGE (which as far as I know, has to be set in the machine config). So=
 I am not able to build a second FIT image with another initramfs image.

I did some (ugly) hacking on kernel.bbclass and kernel-fitimage.bbclass and=
 created a new variable INITRAMFS_IMAGES, which may contain one or more dif=
ferent initramfs images. Using this approach I am now able to build multipl=
e FIT images for one machine, which contain different ramdisks.

What do you think about such a feature? Is it something which might be inte=
grated into mainline YP/OE?

Regards
Christian


KOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergericht Iserlo=
hn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170
Postanschrift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49  2=
351 16-0 * Telefax: +49  2351 16-2400
Werksanschrift: Lange Eck 11, D-58099 Hagen * Tel. +49 2331 8040-601 * Fax =
+49 2331 8040-602
Gesch=E4ftsf=FChrung: Dr.-Ing. Dipl.-Wirt.Ing. Manfred Gerhard, Dipl.-Ing. =
Marwin Kinzl, Dipl.-Oec. Andreas Kostal


--_000_3d7dfdc5c8dc4eb4b31cb394d2ab32b4DEBEMAIL001kostalint_
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<META http-equiv=3D"Content-Type" content=3D"text/html; charset=3DISO-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">we are using signed FIT images to esta=
blish a verified boot system. Now I try to generate multiple FIT images, wh=
ere every image contains another initramfs. The
 idea is to use a signed FIT image (loaded via TFTP) including a special ra=
mdisk in our production line. This ramdisk only contains the code to copy t=
he rootfs onto our eMMC. Another FIT image (the default one) will be includ=
ed in our rootfs and used in all
 other cases (in the field).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Currently Yocto (kernel-fitimage.bbcla=
ss) only supports the variable INITRAMFS_IMAGE (which as far as I know, has=
 to be set in the machine config). So I am not able
 to build a second FIT image with another initramfs image.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">I did some (ugly) hacking on kernel.bb=
class and kernel-fitimage.bbclass and created a new variable INITRAMFS_IMAG=
ES, which may contain one or more different initramfs
 images. Using this approach I am now able to build multiple FIT images for=
 one machine, which contain different ramdisks.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">What do you think about such a feature=
? Is it something which might be integrated into mainline YP/OE?<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Christian<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
=0A<table>=0A<tbody><tr valign=3D"bottom">=0A<td valign=3D"bottom">=0A<img =
border=3D"0" src=3D"http://www.kostal-solar-electric.com/~/media/Industrie%=
20Elektrik/Header_Logos%20und%20Bilder/blue_Quadrat_Intelligent.ashx" />=0A=
</td>=0A<td width=3D"5"></td>=0A<td valign=3D"bottom" style=3D"font-size: 8=
pt;">=0AKOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergerich=
t Iserlohn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170=0A<br />=0APostansch=
rift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49  2351 16-0 =
* Telefax: +49  2351 16-2400=0A<br />=0AWerksanschrift: Lange Eck 11, D-580=
99 Hagen * Tel. +49 2331 8040-800 * Fax +49 2331 8040-602=0A<br />=0AGesch=
=E4ftsf=FChrung: Dr.-Ing. Dipl.-Wirt.Ing. Manfred Gerhard, Dipl.-Ing. Marwi=
n Kinzl, Dipl.-Oec. Andreas Kostal=0A</td>=0A</tr>=0A</tbody></table>=0A=0A=
=0A=0A=0A</body>
</html>

--_000_3d7dfdc5c8dc4eb4b31cb394d2ab32b4DEBEMAIL001kostalint_--
