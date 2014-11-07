Return-Path: <Neil.Wu@Emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BF9FE00905; Thu,  6 Nov 2014 22:33:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [144.191.128.189 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from USSTLZ-PINFEZ05.extemr.org (usstlz-pinfez05.extemr.org
	[144.191.128.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9148EE00863
	for <yocto@yoctoproject.org>; Thu,  6 Nov 2014 22:33:30 -0800 (PST)
Received: from USSTLZ-PMSG016.emrsn.org (10.16.72.198) by
	USSTLZ-PINFEZ05.extemr.org (10.16.8.78) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Fri, 7 Nov 2014 06:33:29 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.30]) by
	USSTLZ-PMSG016.emrsn.org ([169.254.8.125]) with mapi id 14.03.0158.001;
	Fri, 7 Nov 2014 06:33:29 +0000
From: <Neil.Wu@Emerson.com>
To: <ting.liu@freescale.com>
Thread-Topic: Can not generate the ccgi-${PV} package
Thread-Index: Ac/6NKRwhXPCQAGzQEuIFZDgXR9GiQABA26QAAbWzlA=
Date: Fri, 7 Nov 2014 06:33:28 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C8521E20DCCE@USSTLZ-PMSG012.emrsn.org>
References: <3204FE6663E1F14CAF4CA6928E60C8521E20DCA9@USSTLZ-PMSG012.emrsn.org>
	<e01911cf0e2245a3b563abb8538991bc@BN1PR03MB156.namprd03.prod.outlook.com>
In-Reply-To: <e01911cf0e2245a3b563abb8538991bc@BN1PR03MB156.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Can not generate the ccgi-${PV} package
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
X-List-Received-Date: Fri, 07 Nov 2014 06:33:52 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3204FE6663E1F14CAF4CA6928E60C8521E20DCCEUSSTLZPMSG012em_"

--_000_3204FE6663E1F14CAF4CA6928E60C8521E20DCCEUSSTLZPMSG012em_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, ting:
     Thank you very much for your answer. My problem has been solved
      If I don't have this ccgi-${PV} package ,although it is empty, yocto =
will apper an error when adding the ccgi recipes.
      Thank you again for your help.

From: ting.liu@freescale.com [mailto:ting.liu@freescale.com]
Sent: Friday, November 07, 2014 11:17 AM
To: Wu, Neil [CLIMATE/RS/CN]
Cc: yocto@yoctoproject.org
Subject: RE: Can not generate the ccgi-${PV} package

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Neil.Wu@Emerson.com<m=
ailto:Neil.Wu@Emerson.com>
Sent: Friday, November 07, 2014 10:44 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] Can not generate the ccgi-${PV} package


Hi, all

     I try to compile libccgi .

     At end , I don't why can't create the standard ccgi-${PV} package.

     The just create ccgi-dbg-${PV}  ccgi-dev-${PV}, do you know why??



     The following is my recipes .bb file:

SUMMARY =3D "Add ccgi lib to rootfs"

HOMEPAGE =3D "http://sourceforge.net/projects/libccgi/?source=3Dtyp_redirec=
t"

LICENSE =3D "GPLv2"

FILESEXTRAPATHS_prepend  :=3D "${THISDIR}/${PN}:"

LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd32239bcb673463ab874e80d47fae504=
<file:///\\COPYING;md5=3Dd32239bcb673463ab874e80d47fae504>"



FILES_${PN} =3D "/usr \

              /usr/include \

              /usr/lib \

              /usr/include/ccgi.h \

              /usr/lib/libccgi.so \

"

SRC_URI =3D "file://${PN}-${PV}.tar.gz<file:///\\$%7bPN%7d-$%7bPV%7d.tar.gz=
>"



S =3D "${WORKDIR}/${PN}-${PV}"



PARALLEL_MAKEINST=3D"prefix=3D${D}/usr"

EXTRA_OEMAKE =3D 'CROSS=3D${HOST_PREFIX}'



do_install () {

              install -d ${D}${includedir}

              install -d ${D}${libdir}

              install -m 0755  ${S}/*.h ${D}${includedir}

              install -m 0755  ${S}/*.so ${D}${libdir}

}
There is no file to be packaged as ${PN}. You can added below line to gener=
ate it.
ALLOW_EMPTY_${PN} =3D "1"

-Ting




Thank you&Best regards
Neil Wu


--_000_3204FE6663E1F14CAF4CA6928E60C8521E20DCCEUSSTLZPMSG012em_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:Consolas;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:Consolas;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi, ting:<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p; Thank you very much for your answer.</span><span style=3D"font-size:9.0p=
t;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:#666666">
</span><span style=3D"color:#1F497D">My problem has been solved<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; If I don&#8217;t have this ccgi-${PV} package ,although it is empt=
y, yocto will apper an error when adding the ccgi recipes.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; Thank you again for your help.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> ting.liu=
@freescale.com [mailto:ting.liu@freescale.com]
<br>
<b>Sent:</b> Friday, November 07, 2014 11:17 AM<br>
<b>To:</b> Wu, Neil [CLIMATE/RS/CN]<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> RE: Can not generate the ccgi-${PV} package<o:p></o:p></spa=
n></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoprojec=
t.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-b=
ounces@yoctoproject.org</a>]
<b>On Behalf Of </b><a href=3D"mailto:Neil.Wu@Emerson.com">Neil.Wu@Emerson.=
com</a><br>
<b>Sent:</b> Friday, November 07, 2014 10:44 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject:</b> [yocto] Can not generate the ccgi-${PV} package<o:p></o:p><=
/span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Hi, all<o:p></o:p></p>
<p class=3D"MsoPlainText"><b><span style=3D"color:black">&nbsp;&nbsp;&nbsp;=
&nbsp; I try to compile libccgi .
<o:p></o:p></span></b></p>
<p class=3D"MsoPlainText"><b><span style=3D"color:black">&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;At end , I don't why can&#8217;t create the standard
</span><span style=3D"color:red">ccgi-${PV}</span><span style=3D"color:blac=
k"> package.<o:p></o:p></span></b></p>
<p class=3D"MsoPlainText"><b><span style=3D"color:black">&nbsp;&nbsp;&nbsp;=
&nbsp; The just create </span>
<span style=3D"color:red">ccgi-dbg-${PV}&nbsp; ccgi-dev-${PV},</span><span =
style=3D"color:black"> do you know why??<o:p></o:p></span></b></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">&nbsp;&nbsp;&nbsp;&nb=
sp; <o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<b>The following is my recipes .bb file:</b><o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"margin-left:.5in"><span style=3D"color:b=
lack"><br>
</span><span style=3D"font-size:9.0pt;color:black">SUMMARY =3D &quot;Add cc=
gi lib to rootfs&quot;</span><span style=3D"color:black"><o:p></o:p></span>=
</p>
<p class=3D"MsoPlainText" style=3D"text-indent:.5in"><span style=3D"font-si=
ze:9.0pt;color:black">HOMEPAGE =3D &quot;<a href=3D"http://sourceforge.net/=
projects/libccgi/?source=3Dtyp_redirect">http://sourceforge.net/projects/li=
bccgi/?source=3Dtyp_redirect</a>&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"text-indent:.5in"><span style=3D"font-si=
ze:9.0pt;color:black">LICENSE =3D &quot;GPLv2&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"text-indent:.5in"><span style=3D"font-si=
ze:9.0pt;color:black">FILESEXTRAPATHS_prepend&nbsp; :=3D &quot;${THISDIR}/$=
{PN}:&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"text-indent:.5in"><span style=3D"font-si=
ze:9.0pt;color:black">LIC_FILES_CHKSUM =3D &quot;<a href=3D"file:///\\COPYI=
NG;md5=3Dd32239bcb673463ab874e80d47fae504">file://COPYING;md5=3Dd32239bcb67=
3463ab874e80d47fae504</a>&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:9.0pt;color:black"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText" style=3D"text-indent:.5in"><span style=3D"font-si=
ze:9.0pt;color:black">FILES_${PN} =3D &quot;/usr \<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:9.0pt;color:black">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /usr/i=
nclude \<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:9.0pt;color:black">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /usr/l=
ib \<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:9.0pt;color:black">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /usr/i=
nclude/ccgi.h \<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:9.0pt;color:black">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /usr/l=
ib/libccgi.so \<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"text-indent:.5in"><span style=3D"font-si=
ze:9.0pt;color:black">&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"text-indent:.5in"><span style=3D"font-si=
ze:9.0pt;color:black">SRC_URI =3D &quot;<a href=3D"file:///\\$%7bPN%7d-$%7b=
PV%7d.tar.gz">file://${PN}-${PV}.tar.gz</a>&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:9.0pt;color:black"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText" style=3D"text-indent:.5in"><span style=3D"font-si=
ze:9.0pt;color:black">S =3D &quot;${WORKDIR}/${PN}-${PV}&quot;<o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:9.0pt;color:black"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText" style=3D"text-indent:.5in"><span style=3D"font-si=
ze:9.0pt;color:black">PARALLEL_MAKEINST=3D&quot;prefix=3D${D}/usr&quot;<o:p=
></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"text-indent:.5in"><span style=3D"font-si=
ze:9.0pt;color:black">EXTRA_OEMAKE =3D 'CROSS=3D${HOST_PREFIX}'<o:p></o:p><=
/span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:9.0pt;color:black"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText" style=3D"text-indent:.5in"><span style=3D"font-si=
ze:9.0pt;color:black">do_install () {<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:9.0pt;color:black">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; instal=
l -d ${D}${includedir}
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:9.0pt;color:black">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; instal=
l -d ${D}${libdir}<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:9.0pt;color:black">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; instal=
l -m 0755&nbsp; ${S}/*.h ${D}${includedir}<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:9.0pt;color:black">&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; instal=
l -m 0755&nbsp; ${S}/*.so ${D}${libdir}<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"text-indent:.5in"><span style=3D"font-si=
ze:9.0pt;color:black">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">There is no file to be=
 packaged as ${PN}. You can added below line to generate it.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">ALLOW_EMPTY_${PN} =3D =
&quot;1&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">-Ting<o:p></o:p></span=
></p>
<p class=3D"MsoPlainText"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt"><o:p>&nbsp;</o:p></s=
pan></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you&amp;Best regards<o:p></o:p></p>
<p class=3D"MsoNormal">Neil Wu<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_3204FE6663E1F14CAF4CA6928E60C8521E20DCCEUSSTLZPMSG012em_--
