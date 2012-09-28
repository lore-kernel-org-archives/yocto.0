Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90A98E0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 11:14:33 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Sep 2012 11:14:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,503,1344236400"; 
	d="scan'208,217";a="199457236"
Received: from fmsmsx105.amr.corp.intel.com ([10.19.9.36])
	by orsmga001.jf.intel.com with ESMTP; 28 Sep 2012 11:14:32 -0700
Received: from fmsmsx151.amr.corp.intel.com ([169.254.6.213]) by
	FMSMSX105.amr.corp.intel.com ([169.254.5.227]) with mapi id
	14.01.0355.002; Fri, 28 Sep 2012 11:14:32 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: The term Package as used in the YP docs
Thread-Index: Ac2dpRsLh9EQgU5BRbiGnRBZQLE+jw==
Date: Fri, 28 Sep 2012 18:14:31 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: The term Package as used in the YP docs
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
X-List-Received-Date: Fri, 28 Sep 2012 18:14:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0FMSMSX151amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0FMSMSX151amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This post will have some strong opinions and responses.  But, I want to thr=
ow this out as a re-write of the term "Package" as defined in the YP Develo=
pment Manual's "Terms" section.  I gave this a shot based on my brief under=
standing and on some email that was tossed about a while back on the term. =
 What I would like to ultimately come up with is a definition that works fo=
r the term as we want to use it in the YP docs and also as an explanation f=
or some of our older variable names like PR, PV, and so forth that really r=
efer to recipes.  Please thrash over it....


*         Package: In the context of the Yocto Project, this term refers to=
 the packaged output from a baked recipe. A package is generally the compil=
ed binaries produced from the recipe's sources. You 'bake' something by run=
ning it through BitBake.

It is worth noting that the term "package" can, in general, have subtle mea=
nings. For example, the packages refered to in the "The Packages<http://www=
.yoctoproject.org/docs/1.3/yocto-project-qs/yocto-project-qs.html#packages>=
" section are compiled binaries that when installed add functionality to yo=
ur Linux distribution.

Another point worth noting is that historically within the Yocto Project, r=
ecipes were referred to as packages - thus, the existence of several BitBak=
e variables that are seemingly mis-named, (e.g. PR<http://www.yoctoproject.=
org/docs/1.3/poky-ref-manual/poky-ref-manual.html#var-PR>, PRINC<http://www=
.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html#var-PRINC>,=
 PV<http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.ht=
ml#var-PV>, and PE<http://www.yoctoproject.org/docs/1.3/poky-ref-manual/pok=
y-ref-manual.html#var-PE>).


Scott Rifenbark
Intel Corporation
Yocto Project Documentation
503.712.2702
503.341.0418 (cell)


--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0FMSMSX151amrcor_
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
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
/* List Definitions */
@list l0
	{mso-list-id:1087579690;
	mso-list-template-ids:-1952302836;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">This post will have some strong opinions and respons=
es.&nbsp; But, I want to throw this out as a re-write of the term &#8220;Pa=
ckage&#8221; as defined in the YP Development Manual&#8217;s &#8220;Terms&#=
8221; section.&nbsp; I gave this a shot based on my brief understanding and
 on some email that was tossed about a while back on the term.&nbsp; What I=
 would like to ultimately come up with is a definition that works for the t=
erm as we want to use it in the YP docs and also as an explanation for some=
 of our older variable names like PR,
 PV, and so forth that really refer to recipes.&nbsp; Please thrash over it=
&#8230;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin-left:.5in;text-indent:-.25in;mso-list:l0 level1 lfo1"><!=
[if !supportLists]><span style=3D"font-size:10.0pt;font-family:Symbol"><spa=
n style=3D"mso-list:Ignore">&middot;<span style=3D"font:7.0pt &quot;Times N=
ew Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><em>Package:</em> In the context of the Yoct=
o Project, this term refers to the packaged output from a baked recipe. A p=
ackage is generally the compiled binaries produced from the recipe's source=
s. You &#8216;bake&#8217; something by running
 it through BitBake.<o:p></o:p></p>
<p style=3D"margin-left:.5in">It is worth noting that the term &quot;packag=
e&quot; can, in general, have subtle meanings. For example, the packages re=
fered to in the &quot;<a href=3D"http://www.yoctoproject.org/docs/1.3/yocto=
-project-qs/yocto-project-qs.html#packages" target=3D"_top">The
 Packages</a>&quot; section are compiled binaries that when installed add f=
unctionality to your Linux distribution.<o:p></o:p></p>
<p style=3D"margin-left:.5in">Another point worth noting is that historical=
ly within the Yocto Project, recipes were referred to as packages - thus, t=
he existence of several BitBake variables that are seemingly mis-named, (e.=
g.
<a href=3D"http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-ma=
nual.html#var-PR" target=3D"_top">
<code><span style=3D"font-size:10.0pt;color:blue">PR</span></code></a>, <a =
href=3D"http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manua=
l.html#var-PRINC" target=3D"_top">
<code><span style=3D"font-size:10.0pt;color:blue">PRINC</span></code></a>, =
<a href=3D"http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-ma=
nual.html#var-PV" target=3D"_top">
<code><span style=3D"font-size:10.0pt;color:blue">PV</span></code></a>, and=
 <a href=3D"http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-m=
anual.html#var-PE" target=3D"_top">
<code><span style=3D"font-size:10.0pt;color:blue">PE</span></code></a>). <o=
:p></o:p></p>
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

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0FMSMSX151amrcor_--
