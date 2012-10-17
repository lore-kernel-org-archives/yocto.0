Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 015A1E0027E
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 08:32:41 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Oct 2012 08:32:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,601,1344236400"; 
	d="scan'208,217";a="236434733"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 17 Oct 2012 08:32:41 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 17 Oct 2012 08:32:40 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.82]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.240]) with mapi id
	14.01.0355.002; Wed, 17 Oct 2012 08:32:40 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Requesting information on some variables
Thread-Index: Ac2sfKRdyc0rTfLZQFek7qOD0wY7zQ==
Date: Wed, 17 Oct 2012 15:32:40 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A85CDB@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Requesting information on some variables
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
X-List-Received-Date: Wed, 17 Oct 2012 15:32:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A85CDBORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A85CDBORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

There is a bug (https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3292) s=
tating that we need better documentation describing how DISTRO_FEATURES, CO=
MMON_FEATURES, and MACHINE_FEATURES actually affect the build.  I don't kno=
w anything about these variables beyond what is in the reference manual:

http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html#v=
ar-DISTRO_FEATURES
http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html#v=
ar-MACHINE_FEATURES
(no current entry for  COMMON_FEATURES)

Can anyone provide additional information for these three variables and how=
 they interact with the build system and with one another?

Thanks,
Scott


Bug 3292

The documentation for the following variables:

DISTRO_FEATURES
COMMON_FEATURES
MACHINE_FEATURES

is inadequate to instruct would-be users of how changes will impact the sys=
tem.

These variables combine to determine various aspects of how images and pack=
ages are built. They impact RDEPENDS of various packagegroups, impact the w=
ay live images are built, and certainly others. MACHINE_FEATURES as a docum=
ented list of values, DISTRO_FEATURES does not. I do not see COMMON_FEATURE=
S listed at all.

A discussion of how these interrelate and how someone can discover the exac=
t impact from the sources would be useful. For example, using "git grep 'co=
ntains.*MACHINE_FEATURES.*<FEATURE>'" to discover how the build is impacted=
 would be a useful addition.

It isn't practical to define the dependency chains in the documentation, bu=
t providing the user with the background and tools to discover them seems a=
ppropriate.


Scott Rifenbark
Intel Corporation
Yocto Project Documentation
503.712.2702
503.341.0418 (cell)


--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A85CDBORSMSX101amrcor_
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
	font-size:13.5pt;
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
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black">There is a bug (<a href=3D"https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D3292">https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D3292</a>) stating that we need better documentation
 describing how DISTRO_FEATURES, COMMON_FEATURES, and MACHINE_FEATURES actu=
ally affect the build.&nbsp; I don&#8217;t know anything about these variab=
les beyond what is in the reference manual:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><a href=3D"http://www.yoctoproject.org/docs/1.=
3/poky-ref-manual/poky-ref-manual.html#var-DISTRO_FEATURES">http://www.yoct=
oproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html#var-DISTRO_FEATU=
RES</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><a href=3D"http://www.yoctoproject.org/docs/1.=
3/poky-ref-manual/poky-ref-manual.html#var-MACHINE_FEATURES">http://www.yoc=
toproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html#var-MACHINE_FEA=
TURES</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black">(no current entry for &nbsp;COMMON_FEATURES)<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black">Can anyone provide additional information for =
these three variables and how they interact with the build system and with =
one another?&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black">Thanks,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black">Scott<o:p></o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0in 0in 1.0pt 0in">
<p class=3D"MsoNormal" style=3D"border:none;padding:0in"><span style=3D"fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;<=
/o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black">Bug 3292
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,&quot;s=
ans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:&quot;Co=
urier New&quot;;color:black">The documentation for the following variables:=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:&quot;Co=
urier New&quot;;color:black">DISTRO_FEATURES<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:&quot;Co=
urier New&quot;;color:black">COMMON_FEATURES<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:&quot;Co=
urier New&quot;;color:black">MACHINE_FEATURES<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:&quot;Co=
urier New&quot;;color:black">is inadequate to instruct would-be users of ho=
w changes will impact the system.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:&quot;Co=
urier New&quot;;color:black">These variables combine to determine various a=
spects of how images and packages are built. They impact RDEPENDS of variou=
s packagegroups, impact the way live images are
 built, and certainly others. MACHINE_FEATURES as a documented list of valu=
es, DISTRO_FEATURES does not. I do not see COMMON_FEATURES listed at all.<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:&quot;Co=
urier New&quot;;color:black">A discussion of how these interrelate and how =
someone can discover the exact impact from the sources would be useful. For=
 example, using &quot;git grep 'contains.*MACHINE_FEATURES.*&lt;FEATURE&gt;=
'&quot;
 to discover how the build is impacted would be a useful addition.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:&quot;Co=
urier New&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:13.5pt;font-family:&quot;Co=
urier New&quot;;color:black">It isn't practical to define the dependency ch=
ains in the documentation, but providing the user with the background and t=
ools to discover them seems appropriate.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A85CDBORSMSX101amrcor_--
