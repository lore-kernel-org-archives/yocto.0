Return-Path: <M.Gielen@celestia-sts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24298E00D44; Wed, 26 Oct 2016 08:36:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 26 Oct 2016 08:36:53 PDT
Received: from MAIL.SSBV.COM (mail.ssbv.com [87.213.108.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E74FDE00D3F
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 08:36:53 -0700 (PDT)
Received: from SSBV0001.SSBV.NOORDWIJK ([fe80::f514:d7a0:5fd7:60e3]) by
	SSBV0001.SSBV.NOORDWIJK ([fe80::f514:d7a0:5fd7:60e3%11]) with mapi;
	Wed, 26 Oct 2016 17:35:49 +0200
From: "Marcel Gielen [Celestia-STS]" <M.Gielen@celestia-sts.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to proceed with kernel-fitimage and INITRAMFS_IMAGE
Thread-Index: AdIvncuijzOkrrCHSauQe/7v+xHhgA==
Date: Wed, 26 Oct 2016 15:35:47 +0000
Message-ID: <66FF3836D9E3F84186A25972B1DABA540288EC489B@SSBV0001.SSBV.NOORDWIJK>
Accept-Language: en-US, en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: How to proceed with kernel-fitimage and INITRAMFS_IMAGE
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
X-List-Received-Date: Wed, 26 Oct 2016 15:36:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_66FF3836D9E3F84186A25972B1DABA540288EC489BSSBV0001SSBVN_"

--_000_66FF3836D9E3F84186A25972B1DABA540288EC489BSSBV0001SSBVN_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am using poky Krogoth and try to generate a fitImage including an initram=
fs.
Whatever I try I end up with circular dependendies.

My image recipe is based on core-image

In my local conf I have the following:

KERNEL_CLASSES +=3D "kernel-fitimage"
INITRAMFS_IMAGE =3D "image-recovery"
INITRAMFS_IMAGE_BUNDLE =3D "1"

And in my image recipe I tried:

EXTRA_IMAGEDEPENDS =3D ""
RDEPENDS_kernel-base =3D ""

But still end up with circular dependencies.

What is the correct configuration to be able to build a fitimage with an in=
itramfs included ?

And what shall be the bitbake command... the kernel or the image name ?

Any suggestions ?




--_000_66FF3836D9E3F84186A25972B1DABA540288EC489BSSBV0001SSBVN_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 15 (filtered medium)"><style><!--
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB link=3D"#0563C1=
" vlink=3D"#954F72"><div class=3DWordSection1><p class=3DMsoNormal>I am usi=
ng poky Krogoth and try to generate a fitImage including an initramfs. <br>=
Whatever I try I end up with circular dependendies. <br><br>My image recipe=
 is based on core-image<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p=
></p><p class=3DMsoNormal>In my local conf I have the following:<o:p></o:p>=
</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>KERNEL_C=
LASSES +=3D &quot;kernel-fitimage&quot;<o:p></o:p></p><p class=3DMsoNormal>=
INITRAMFS_IMAGE =3D &quot;image-recovery&quot;<o:p></o:p></p><p class=3DMso=
Normal>INITRAMFS_IMAGE_BUNDLE =3D &quot;1&quot;<o:p></o:p></p><p class=3DMs=
oNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>And in my image recipe I =
tried:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DM=
soNormal>EXTRA_IMAGEDEPENDS =3D &quot;&quot;<o:p></o:p></p><p class=3DMsoNo=
rmal>RDEPENDS_kernel-base =3D &quot;&quot;<o:p></o:p></p><p class=3DMsoNorm=
al><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>But still end up with circular=
 dependencies. <o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>What is the correct configuration to be able to build a f=
itimage with an initramfs included ?<o:p></o:p></p><p class=3DMsoNormal><o:=
p>&nbsp;</o:p></p><p class=3DMsoNormal>And what shall be the bitbake comman=
d&#8230; the kernel or the image name ?<o:p></o:p></p><p class=3DMsoNormal>=
<o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Any suggestions ?<o:p></o:p></p><=
p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</=
o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>=

--_000_66FF3836D9E3F84186A25972B1DABA540288EC489BSSBV0001SSBVN_--
