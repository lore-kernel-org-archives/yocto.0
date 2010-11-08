Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D77CA4C80B6B
	for <yocto@yoctoproject.org>; Mon,  8 Nov 2010 11:55:33 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Nov 2010 09:55:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,314,1286175600"; 
	d="scan'208,217";a="675432524"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 08 Nov 2010 09:55:33 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Mon, 8 Nov 2010 09:54:27 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 8 Nov 2010 09:54:25 -0800
Thread-Topic: python modules upgrade issues
Thread-Index: Act/bfsIN8u7GMKNS2i679BNim9LVA==
Message-ID: <8EA2C2C4116BF44AB370468FBF85A77701BC9523ED@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: python modules upgrade issues
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
X-List-Received-Date: Mon, 08 Nov 2010 17:55:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8EA2C2C4116BF44AB370468FBF85A77701BC9523EDorsmsx504amrc_"

--_000_8EA2C2C4116BF44AB370468FBF85A77701BC9523EDorsmsx504amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Today I tried upgrading python modules, and some of the modules have other =
dependencies for upgrading to the latest version.

I was seeing these errors:

Python-pygtk:
| configure: error: Package requirements (pygobject-2.0 >=3D 2.21.3) were n=
ot met:
|
| Requested 'pygobject-2.0 >=3D 2.21.3' but version of PyGObject is 2.21.1
|
Python-pygobject:
| configure: error: Package requirements (glib-2.0 >=3D 2.22.4
|         gobject-introspection-1.0 >=3D 0.9.5
|     ) were not met:
|

Can the maintainer of gnome libraries look into these upgrades?


Thanks & Regards,
Nitin


--_000_8EA2C2C4116BF44AB370468FBF85A77701BC9523EDorsmsx504amrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DWordSection1>

<p class=3DMsoNormal>Today I tried upgrading python modules, and some of th=
e
modules have other dependencies for upgrading to the latest version.<o:p></=
o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>I was seeing these errors:<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Python-pygtk:<o:p></o:p></p>

<p class=3DMsoNormal>| configure: error: Package requirements (pygobject-2.=
0
&gt;=3D 2.21.3) were not met:<o:p></o:p></p>

<p class=3DMsoNormal>|<o:p></o:p></p>

<p class=3DMsoNormal>| Requested 'pygobject-2.0 &gt;=3D 2.21.3' but version=
 of
PyGObject is 2.21.1<o:p></o:p></p>

<p class=3DMsoNormal>|<o:p></o:p></p>

<p class=3DMsoNormal>Python-pygobject:<o:p></o:p></p>

<p class=3DMsoNormal>| configure: error: Package requirements (glib-2.0 &gt=
;=3D
2.22.4<o:p></o:p></p>

<p class=3DMsoNormal>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
gobject-introspection-1.0 &gt;=3D 0.9.5<o:p></o:p></p>

<p class=3DMsoNormal>|&nbsp;&nbsp;&nbsp;&nbsp; ) were not met:<o:p></o:p></=
p>

<p class=3DMsoNormal>|<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Can the maintainer of gnome libraries look into these
upgrades?<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Thanks &amp; Regards,<o:p></o:p></p>

<p class=3DMsoNormal>Nitin<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

--_000_8EA2C2C4116BF44AB370468FBF85A77701BC9523EDorsmsx504amrc_--
