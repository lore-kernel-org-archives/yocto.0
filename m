Return-Path: <briank@RUSSOUND.COM>
Received: from Pegasus.RUSSOUND.COM (pegasus.russound.com [64.223.142.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FAB5E0152A
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 12:05:06 -0700 (PDT)
Received: from HERMES.RUSSOUND.com (10.0.0.14) by pegasus.RUSSOUND.COM
	(10.0.0.15) with Microsoft SMTP Server (TLS) id 8.3.298.1;
	Mon, 29 Jul 2013 15:05:04 -0400
Received: from HERMES.RUSSOUND.com (10.0.0.14) by HERMES.RUSSOUND.com
	(10.0.0.14) with Microsoft SMTP Server (TLS) id 15.0.620.29;
	Mon, 29 Jul 2013 15:05:04 -0400
Received: from HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5]) by
	HERMES.RUSSOUND.com ([fe80::3946:4b97:77b1:c1c5%12]) with mapi id
	15.00.0620.020; Mon, 29 Jul 2013 15:05:04 -0400
From: Brian Karcz <briank@RUSSOUND.COM>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: recipe dependency on externally built binaries?
Thread-Index: Ac6MirQlju/4ubWnQmiu6GvRyfmo+A==
Date: Mon, 29 Jul 2013 19:05:04 +0000
Message-ID: <0a4bf31ea87549a1bf22c3d6e740804a@HERMES.RUSSOUND.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.3.59]
MIME-Version: 1.0
Subject: recipe dependency on externally built binaries?
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
X-List-Received-Date: Mon, 29 Jul 2013 19:05:07 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0a4bf31ea87549a1bf22c3d6e740804aHERMESRUSSOUNDcom_"

--_000_0a4bf31ea87549a1bf22c3d6e740804aHERMESRUSSOUNDcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm curious if there is a way to tell a package recipe that its resulting p=
ackage output is dependent on the pieces it's assembling. The scenario I ha=
ve is as follows. I created a series of recipes that assemble an externally=
 built executable, and some configurations files that are local to the reci=
pe:

xyz-app.bb

    SRC_URI =3D "file://<path to xyz-app executable> \
               File://xyz-app.config<File:///\\xyz-app.config>"

    do_install () {
        <make the required directories>
        <put the files in their places>
    }

abc-image.bb

    POKY_EXTRA_INSTALL +=3D "xyz-app"

This setup works for assembling all the pieces I need, but unless the app r=
ecipe revision gets bumped, it's not able to tell when the xyz-app executab=
le or xyz-app.config get changed and create a new xyz-app package file. Is =
there a way to tell the recipe that there is a dependency for its output pa=
ckage on the contents of the SRC_URI line without having to bump the revisi=
on?

These used to be assembled in an image preprocess command, but I wanted to =
break out some pieces, that are common to multiple images, into their own r=
ecipes in a common layer. In the prior model, all the apps and their config=
 files (that were local to the image recipe) were assembled every time the =
image was bitbaked. Now that they are in their own recipes, some sort of de=
pendency is required to re-create the package file that the image is bringi=
ng in.

Thanks,
Brian





--_000_0a4bf31ea87549a1bf22c3d6e740804aHERMESRUSSOUNDcom_
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
@font-face
	{font-family:"Lucida Console";
	panose-1:2 11 6 9 4 5 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
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
	font-family:"Lucida Console";
	color:windowtext;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">I&#8217;m curious if there is a way to tell a package r=
ecipe that its resulting package output is dependent on the pieces it&#8217=
;s assembling. The scenario I have is as follows. I created
 a series of recipes that assemble an externally built executable, and some=
 configurations files that are local to the recipe:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">xyz-app.bb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">&nbsp;&nbsp;&nbsp; SRC_URI =3D &#8220;file://&lt;path t=
o xyz-app executable&gt; \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=3D"File:///\\xyz-app.config">File://x=
yz-app.config</a>&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">&nbsp;&nbsp;&nbsp; do_install () {<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&lt;make the=
 required directories&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&lt;put the =
files in their places&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">abc-image.bb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">&nbsp;&nbsp;&nbsp; POKY_EXTRA_INSTALL &#43;=3D &#8220;x=
yz-app&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">This setup works for assembling all the pieces I need, =
but unless the app recipe revision gets bumped, it&#8217;s not able to tell=
 when the xyz-app executable or xyz-app.config get changed
 and create a new xyz-app package file. Is there a way to tell the recipe t=
hat there is a dependency for its output package on the contents of the SRC=
_URI line without having to bump the revision?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">These used to be assembled in an image preprocess comma=
nd, but I wanted to break out some pieces, that are common to multiple imag=
es, into their own recipes in a common layer.
 In the prior model, all the apps and their config files (that were local t=
o the image recipe) were assembled every time the image was bitbaked. Now t=
hat they are in their own recipes, some sort of dependency is required to r=
e-create the package file that the
 image is bringing in.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;">Brian<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Lu=
cida Console&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_0a4bf31ea87549a1bf22c3d6e740804aHERMESRUSSOUNDcom_--
