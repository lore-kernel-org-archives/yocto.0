Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DA63E00346
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 14:01:18 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Sep 2012 14:01:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,485,1344236400"; 
	d="scan'208,217";a="226389141"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga001.fm.intel.com with ESMTP; 25 Sep 2012 14:01:15 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.60]) with mapi id
	14.01.0355.002; Tue, 25 Sep 2012 14:01:14 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: SSTATE_MIRRORS information needed
Thread-Index: Ac2bYOS0YGFGW9SFQAeVMBD2Oh72Og==
Date: Tue, 25 Sep 2012 21:01:12 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A6A3B5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: SSTATE_MIRRORS information needed
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
X-List-Received-Date: Tue, 25 Sep 2012 21:01:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A6A3B5ORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A6A3B5ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Could someone provide me with a rough paragraph or two as a base with which=
 to create a glossary entry for the SSTATE_MIRRORS variable?  Richard submi=
tted a patch that introduces a two-letter directory name that chunks up the=
 shared state cache.   As an explanation for the new behavior he provided t=
his (sourced from http://lists.linuxtogo.org/pipermail/openembedded-devel/2=
012-July/040712.html):



Currently all sstate files are placed into one directory. This does not sca=
le and

causes a variety of filesystem issues. This patch adds a two character subd=
irectory

to the layout (based on the first two characters of the hash) so that files

can be split into several directories.



This should help performance of sstate in most cases by avoding creating di=
rectories with

huge numbers of files.



The SSTATE_MIRRORS syntax needs updating to account for the extra path elem=
ent by

the addition of a PATH item, for example:



SSTATE_MIRRORS =3D "file://.*<file:///\\.*> file:///some/path/to/sstate-cac=
he/PATH"<file:///\\some\path\to\sstate-cache\PATH%22>

SSTATE_MIRRORS =3D "file://.*<file:///\\.*> http://192.168.1.23/sstate-cach=
e/PATH"<http://192.168.1.23/sstate-cache/PATH%22>



I would like to create a glossary entry for the SSTATE_MIRRORS variable in =
the YP Reference Manual.  Currently, the only place this variable is refere=
nced in the YP documentation is a small example in http://www.yoctoproject.=
org/docs/latest/poky-ref-manual/poky-ref-manual.html#shared-state.  In that=
 example I can update the syntax of the SSTATE_MIRRORS statements used in t=
he example but it would be good to have the variable referenced in the glos=
sary.

Scott Rifenbark
Intel Corporation
Yocto Project Documentation
503.712.2702
503.341.0418 (cell)


--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A6A3B5ORSMSX101amrcor_
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Could someone provide me with a rough paragraph or t=
wo as a base with which to create a glossary entry for the SSTATE_MIRRORS v=
ariable?&nbsp; Richard submitted a patch that introduces a two-letter direc=
tory name that chunks up the shared state
 cache.&nbsp;&nbsp; As an explanation for the new behavior he provided this=
 (sourced from <a href=3D"http://lists.linuxtogo.org/pipermail/openembedded=
-devel/2012-July/040712.html">
http://lists.linuxtogo.org/pipermail/openembedded-devel/2012-July/040712.ht=
ml</a>):
<o:p></o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0in 0in 1.0pt 0in">
<p class=3D"MsoNormal" style=3D"border:none;padding:0in"><o:p>&nbsp;</o:p><=
/p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<pre>Currently all sstate files are placed into one directory. This does no=
t scale and<o:p></o:p></pre>
<pre>causes a variety of filesystem issues. This patch adds a two character=
 subdirectory<o:p></o:p></pre>
<pre>to the layout (based on the first two characters of the hash) so that =
files<o:p></o:p></pre>
<pre>can be split into several directories.<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>This should help performance of sstate in most cases by avoding creati=
ng directories with <o:p></o:p></pre>
<pre>huge numbers of files.<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>The SSTATE_MIRRORS syntax needs updating to account for the extra path=
 element by<o:p></o:p></pre>
<pre>the addition of a PATH item, for example:<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>SSTATE_MIRRORS =3D &quot;<a href=3D"file:///\\.*">file://.*</a> <a hre=
f=3D"file:///\\some\path\to\sstate-cache\PATH%22">file:///some/path/to/ssta=
te-cache/PATH&quot;</a><o:p></o:p></pre>
<pre>SSTATE_MIRRORS =3D &quot;<a href=3D"file:///\\.*">file://.*</a> <a hre=
f=3D"http://192.168.1.23/sstate-cache/PATH%22">http://192.168.1.23/sstate-c=
ache/PATH&quot;</a><o:p></o:p></pre>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0in 0in 1.0pt 0in">
<pre style=3D"border:none;padding:0in"><o:p>&nbsp;</o:p></pre>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I would like to create a glossary entry for the SSTA=
TE_MIRRORS variable in the YP Reference Manual.&nbsp; Currently, the only p=
lace this variable is referenced in the YP documentation is a small example=
 in
<a href=3D"http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref=
-manual.html#shared-state">
http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.htm=
l#shared-state</a>.&nbsp; In that example I can update the syntax of the SS=
TATE_MIRRORS statements used in the example but it would be good to have th=
e variable referenced in the glossary.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:blue">Scott Rifenbark</span></b><=
b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;;color:blue"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue">Intel Corporation</span><span s=
tyle=3D"font-size:7.5pt;font-family:&quot;Times New Roman&quot;,&quot;serif=
&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue">Yocto Project Documentation<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue">503.712.2702</span><span style=
=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&qu=
ot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:blue">503.341.0418 (cell)</span><span=
 style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;se=
rif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A6A3B5ORSMSX101amrcor_--
