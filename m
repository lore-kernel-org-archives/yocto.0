Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E2A1E0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 11:46:05 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Sep 2012 11:46:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,503,1344236400"; 
	d="scan'208,217";a="198473866"
Received: from fmsmsx107.amr.corp.intel.com ([10.19.9.54])
	by azsmga001.ch.intel.com with ESMTP; 28 Sep 2012 11:46:04 -0700
Received: from fmsmsx151.amr.corp.intel.com ([169.254.6.213]) by
	FMSMSX107.amr.corp.intel.com ([169.254.9.20]) with mapi id
	14.01.0355.002; Fri, 28 Sep 2012 11:46:04 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Rudolf Streif <rudolf.streif@linux.com>
Thread-Topic: [yocto] The term Package as used in the YP docs
Thread-Index: Ac2dpRsLh9EQgU5BRbiGnRBZQLE+jwAPIC2AAAA7dQAADpyIkP//jfiAgAB1FIA=
Date: Fri, 28 Sep 2012 18:46:03 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A73136@FMSMSX151.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0@FMSMSX151.amr.corp.intel.com>
	<CA+gsK-pYtXKaVyERW7ys9j_3DEExXUKf2=wNTOOQ+r-Jvt9xrQ@mail.gmail.com>
	<31384487.oKEco2inpj@helios>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A73111@FMSMSX151.amr.corp.intel.com>
	<CA+gsK-qgU=6MHF4T+U1uU1qjVOGBq6pVsbbrTvwZUnYcBeBy=g@mail.gmail.com>
In-Reply-To: <CA+gsK-qgU=6MHF4T+U1uU1qjVOGBq6pVsbbrTvwZUnYcBeBy=g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The term Package as used in the YP docs
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
X-List-Received-Date: Fri, 28 Sep 2012 18:46:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A73136FMSMSX151amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A73136FMSMSX151amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Rudolf,

This is good feedback on the descriptions for the variable names Rudolf.  I=
 did try and clean things up there a bit.

Thanks,
Scott

From: rstreif@linuxfoundation.org [mailto:rstreif@linuxfoundation.org] On B=
ehalf Of Rudolf Streif
Sent: Friday, September 28, 2012 11:45 AM
To: Rifenbark, Scott M
Cc: Paul Eggleton; yocto@yoctoproject.org
Subject: Re: [yocto] The term Package as used in the YP docs

I am not advocating changing the variable names. I know that this is a huge=
 undertaking and prone to many problems. This probably one of the many lega=
cy things people will have to live with and understand. In most cases recip=
e name and version exactly reflect the name and version of the package it i=
s intended to build which to some extend mitigates the issue.

As far as the Terms section in the manuals is concerned, I see that you alr=
eady changed the describing text for the variables. That's sufficient, I th=
ink.

:rjs
On Fri, Sep 28, 2012 at 11:37 AM, Rifenbark, Scott M <scott.m.rifenbark@int=
el.com<mailto:scott.m.rifenbark@intel.com>> wrote:
I have tried to weed out the ambiguous use of "package" for this upcoming v=
ersion of the manual set.  I don't think I would want to suggest changing a=
ny of the "P*" type variable names in the code.  I agree with Paul here tha=
t the potential for really messing things up out-weighs any other benefit. =
 This is why I was trying to worm in a bit of history behind those names fo=
r the people that might struggle like me.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of Paul Eggleton
Sent: Friday, September 28, 2012 11:34 AM
To: Rudolf Streif
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] The term Package as used in the YP docs
On Friday 28 September 2012 11:27:37 Rudolf Streif wrote:
> +1
>
> I agree with Scott's definition. In the general Linux context a Package i=
s
> a compilation of binaries, documentation, development files, etc. wrapped
> up in a format that can be used by a package management system to install
> it on a target system.

No dispute there.

> It is somewhat confusing that YP and OE use the term 'package' synonymous=
ly
> with 'recipe'. In most cases a package is the output of a recipe.

The thing is, we no longer do that - we've fixed a number of references in =
the
documentation, help text and error messages for this release so that "recip=
e"
is used when that's what we mean. If we've left any references that should =
be
considered a bug.

> Unfortunately, changing variables like P, PN, PV, PR etc.
> may cause some pain. If a transition is what the broader community would
> like to achieve then a period where old and new variables can be used
> interchangeably (if possible) would be the way to go.

I'm not sure there's a huge amount to be gained by doing this when weighed
against the cost - it would certainly cause a massive amount of churn, with
the potential for problems with layer interaction where one layer has done =
the
big rename and another that bbappends recipes in the first hasn't.

Cheers,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto


--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A73136FMSMSX151amrcor_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.hoenzb
	{mso-style-name:hoenzb;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Rudolf,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">This is good feedback on =
the descriptions for the variable names Rudolf.&nbsp; I did try and clean t=
hings up there a bit.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Scott<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> rstreif@=
linuxfoundation.org [mailto:rstreif@linuxfoundation.org]
<b>On Behalf Of </b>Rudolf Streif<br>
<b>Sent:</b> Friday, September 28, 2012 11:45 AM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> Paul Eggleton; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] The term Package as used in the YP docs<o:p></o=
:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am not advocating changing the variable names. I k=
now that this is a huge undertaking and prone to many problems. This probab=
ly one of the many legacy things people will have to live with and understa=
nd. In most cases recipe name and
 version exactly reflect the name and version of the package it is intended=
 to build which to some extend mitigates the issue.<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">As far as the Terms section in the manuals is concer=
ned, I see that you already changed the describing text for the variables. =
That's sufficient, I think.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">:rjs<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On Fri, Sep 28, 2012 at 11:37 AM, Rifenbark, Scott M=
 &lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott=
.m.rifenbark@intel.com</a>&gt; wrote:<o:p></o:p></p>
<p class=3D"MsoNormal">I have tried to weed out the ambiguous use of &quot;=
package&quot; for this upcoming version of the manual set. &nbsp;I don't th=
ink I would want to suggest changing any of the &quot;P*&quot; type variabl=
e names in the code. &nbsp;I agree with Paul here that the potential
 for really messing things up out-weighs any other benefit. &nbsp;This is w=
hy I was trying to worm in a bit of history behind those names for the peop=
le that might struggle like me.<br>
<span style=3D"color:#888888"><br>
<span class=3D"hoenzb">Scott</span></span><o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of Paul Eggleton<br>
Sent: Friday, September 28, 2012 11:34 AM<br>
To: Rudolf Streif<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] The term Package as used in the YP docs<o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">On Friday 28 September 2012 11:27:37 Rudolf Streif w=
rote:<br>
&gt; &#43;1<br>
&gt;<br>
&gt; I agree with Scott's definition. In the general Linux context a Packag=
e is<br>
&gt; a compilation of binaries, documentation, development files, etc. wrap=
ped<br>
&gt; up in a format that can be used by a package management system to inst=
all<br>
&gt; it on a target system.<br>
<br>
No dispute there.<br>
<br>
&gt; It is somewhat confusing that YP and OE use the term 'package' synonym=
ously<br>
&gt; with 'recipe'. In most cases a package is the output of a recipe.<br>
<br>
The thing is, we no longer do that - we've fixed a number of references in =
the<br>
documentation, help text and error messages for this release so that &quot;=
recipe&quot;<br>
is used when that's what we mean. If we've left any references that should =
be<br>
considered a bug.<br>
<br>
&gt; Unfortunately, changing variables like P, PN, PV, PR etc.<br>
&gt; may cause some pain. If a transition is what the broader community wou=
ld<br>
&gt; like to achieve then a period where old and new variables can be used<=
br>
&gt; interchangeably (if possible) would be the way to go.<br>
<br>
I'm not sure there's a huge amount to be gained by doing this when weighed<=
br>
against the cost - it would certainly cause a massive amount of churn, with=
<br>
the potential for problems with layer interaction where one layer has done =
the<br>
big rename and another that bbappends recipes in the first hasn't.<br>
<br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<o:p></o:p></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal">_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><o:p></o:p></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A73136FMSMSX151amrcor_--
