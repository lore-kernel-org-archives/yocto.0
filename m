Return-Path: <joshua.collins@arcontia.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F8C1E006F3; Fri,  4 Jul 2014 00:37:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from graveyard4-1.ilait.eu (graveyard4-1.ilait.eu [178.63.104.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8927E00708
	for <yocto@yoctoproject.org>; Fri,  4 Jul 2014 00:37:51 -0700 (PDT)
Received: from smtp1-4.ilait.se (smtp1-4.ilait.se [94.246.96.44])
	by graveyard4-1.ilait.eu (Postfix) with ESMTPS id 9F87750C92E
	for <yocto@yoctoproject.org>; Fri,  4 Jul 2014 07:37:48 +0000 (UTC)
Received: from ex-hub1-1.cloud.local (ex-hub1-1.ilait.se [62.109.34.14])
	by smtp1-4.ilait.se (Postfix) with ESMTPS id 5C815700DA
	for <yocto@yoctoproject.org>; Fri,  4 Jul 2014 07:37:40 +0000 (UTC)
Received: from EX-MBX1-8.cloud.local ([fe80::8b0:2430:4599:5695]) by
	ex-hub1-1.cloud.local ([fe80::7556:3d55:8d3d:1b92%13]) with mapi id
	14.03.0174.001; Fri, 4 Jul 2014 09:37:38 +0200
From: Joshua Collins <joshua.collins@arcontia.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Recipe to copy precompiled binaries to root image
Thread-Index: Ac+XWTuZhtM2e9TiSw+uuOovjLCU1Q==
Date: Fri, 4 Jul 2014 07:37:38 +0000
Message-ID: <EA5D4AA0E56AAB499D0E3B654C889FBFBC1D52@ex-mbx1-8.cloud.local>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [83.218.75.50]
MIME-Version: 1.0
X-Mailman-Approved-At: Sun, 06 Jul 2014 13:59:01 -0700
Subject: Recipe to copy precompiled binaries to root image
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
X-List-Received-Date: Fri, 04 Jul 2014 07:37:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_EA5D4AA0E56AAB499D0E3B654C889FBFBC1D52exmbx18cloudlocal_"

--_000_EA5D4AA0E56AAB499D0E3B654C889FBFBC1D52exmbx18cloudlocal_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have some precompiled libraries that I want to copy to my root image afte=
r it has been built. I am building the fsl-image-gui image.

I have created my own layer and recipe, with a file structure:

meta-mylayer ->
                meta-myrecipe ->
                                myrecipie ->
                                                myrecipe.bb
                                                files ->
                                                                myLib1.so
                                                                myLib2.so
                                                                myScript

I have added my layer to bblayers.conf and added IMAGE_INSTALL_append =3D "=
 myrecipe" to local.conf.

My recipe looks like this:

---------------------------------------------------------------------------=
----
DESCRIPTION =3D "Copies files to the image"
LICENSE =3D "CLOSED"
PN =3D 'arcontia'
PV =3D '0.0.1'

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
SRC_URI +=3D "file://myLib1.so  file://myLib2.so file://myScript "

S =3D "${WORKDIR}"

do_install() {
  install -d ${D}${libdir}
  install -m 755 myLib1.so ${D}${libdir}
  install -m 755 myLib2.so ${D}${libdir}

  install -d ${D}/etc
  install -m 755 myScript ${D}/etc
}
---------------------------------------------------------------------------=
----

This does not copy the files to the image as I would expect. If I look at t=
he bitbake log, I see my recipe is run, but I obviously have not done the r=
ight thing in the recipe.

Can anyone tell me how I could fix this?

Cheers,
Josh

--_000_EA5D4AA0E56AAB499D0E3B654C889FBFBC1D52exmbx18cloudlocal_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
	font-family:"Calibri","sans-serif";
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-AU" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I have some precompiled libraries that I want to cop=
y to my root image after it has been built. I am building the fsl-image-gui=
 image.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have created my own layer and recipe, with a file =
structure:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">meta-mylayer -&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta-myrecipe -&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; myrecipie -&gt;=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; myrecipe.bb<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 files -&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; myLib1.so<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; myLib2.so<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; myScript<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have added my layer to bblayers.conf and added IMA=
GE_INSTALL_append =3D &#8220; myrecipe&#8221; to local.conf.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My recipe looks like this:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">----------------------------------------------------=
---------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">DESCRIPTION =3D &quot;Copies files to the image&quot=
;<o:p></o:p></p>
<p class=3D"MsoNormal">LICENSE =3D &quot;CLOSED&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">PN =3D 'arcontia'<o:p></o:p></p>
<p class=3D"MsoNormal">PV =3D '0.0.1'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:=
&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">SRC_URI &#43;=3D &quot;file://myLib1.so&nbsp; file:/=
/myLib2.so file://myScript &quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">S =3D &quot;${WORKDIR}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_install() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; install -d ${D}${libdir}<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; install -m 755 myLib1.so ${D}${libdir}<o:p></=
o:p></p>
<p class=3D"MsoNormal">&nbsp; install -m 755 myLib2.so ${D}${libdir}<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&nbsp; install -d ${D}/etc<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; install -m 755 myScript ${D}/etc<o:p></o:p></=
p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal">----------------------------------------------------=
---------------------------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This does not copy the files to the image as I would=
 expect. If I look at the bitbake log, I see my recipe is run, but I obviou=
sly have not done the right thing in the recipe.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can anyone tell me how I could fix this?<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cheers,<o:p></o:p></p>
<p class=3D"MsoNormal">Josh<o:p></o:p></p>
</div>
</body>
</html>

--_000_EA5D4AA0E56AAB499D0E3B654C889FBFBC1D52exmbx18cloudlocal_--
