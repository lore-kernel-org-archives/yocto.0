Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B56E1E0132F
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 14:02:48 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 26 Mar 2012 14:02:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208,217";a="81827854"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Mar 2012 14:02:46 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 26 Mar 2012 14:02:45 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.160]) with mapi id
	14.01.0355.002; Mon, 26 Mar 2012 14:02:45 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Rudolf Streif <rudolf.streif@linux.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] can all of the licensing discussion be centralized in
	an appendix?
Thread-Index: AQHNC5JS6DKagFuvQkamcltRImRZSpZ9D7iA
Date: Mon, 26 Mar 2012 21:02:44 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB12379451766F4@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203260747350.4275@oneiric>
	<CA+gsK-qBgcKDtQCQJVhUBKijKok7tQeXM4O5ZJUTea0iMKwvfQ@mail.gmail.com>
In-Reply-To: <CA+gsK-qBgcKDtQCQJVhUBKijKok7tQeXM4O5ZJUTea0iMKwvfQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: can all of the licensing discussion be centralized in	an appendix?
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
X-List-Received-Date: Mon, 26 Mar 2012 21:02:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB12379451766F4ORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB12379451766F4ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Rudi,

I would like you to examine the "latest" documents (the ones under developm=
ent).  I have added some new licensing information and would like your feed=
back for this upcoming version.  There are licensing discussions in both th=
e latest versions of the BSP Guide and the reference manual.  Since, at the=
 moment, the BSP Guide is included as a chapter in the reference manual, I'=
ll point you to the latest version of the reference manual:

http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.htm=
l.


Thanks,
Scott

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Rudolf Streif
Sent: Monday, March 26, 2012 2:52 PM
To: yocto@yoctoproject.org
Subject: Re: [yocto] can all of the licensing discussion be centralized in =
an appendix?

>> there's *way* too much coverage of licensing sprinkled throughout.
>> most people are not going to care about licensing until the time comes
>> to maybe start distributing their BSP.
The ability of collecting licensing information, tracking license changes a=
nd providing the license information automatically with the images and pack=
ages for deployment is in my opinion a major feature of Yocto albeit undere=
stimated. Most people will only appreciate it once they have to deliver tha=
t information with a product for the end user. However, it starts much earl=
ier, with the recipe.

How to include licensing tracking information with your recipe needs to be =
part of the section explaining how to write recipes of the reference manual=
. In both, the current 1.1 and the upcoming 1.1.1, versions of the manual t=
he license tracking section is a little disjoint from the sections explaini=
ng how to add packages/recipes in my opinion. The examples include the lice=
nse tracking info, of course because otherwise the sanity checker will not =
allow building the recipe, but they don't explain that you actually need it=
 (unless you use LICENSE =3D "CLOSED").

Since the license tracking and deployment feature follows the rule "garbage=
 in, garbage out" the manual cannot stress enough providing the correct inf=
o in particular when writing recipes for upstream projects.

Side note: And nice features for a future release are SPDX info (already wo=
rked on as far as I know) and providing the license info in ${TMPDIR}/deplo=
y/licenses according to the images in ${TMPDIR}/images so that one knows wh=
at licenses are in use for what image. That would be very convenient when b=
uilding multiple images with different package content.

Rudi

--_000_41DEA4B02DBDEF40A0F3B6D0DDB12379451766F4ORSMSX101amrcor_
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
span.EmailStyle17
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Rudi,<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I would like you to exami=
ne the &#8220;latest&#8221; documents (the ones under development).&nbsp; I=
 have added some new licensing information and would like your feedback for
 this upcoming version.&nbsp; There are licensing discussions in both the l=
atest versions of the BSP Guide and the reference manual.&nbsp; Since, at t=
he moment, the BSP Guide is included as a chapter in the reference manual, =
I&#8217;ll point you to the latest version of the
 reference manual:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><a href=3D"http://www.yoc=
toproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html">http://www.=
yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html</a>.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,
<o:p></o:p></span></p>
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
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Rudolf Streif<br>
<b>Sent:</b> Monday, March 26, 2012 2:52 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] can all of the licensing discussion be centrali=
zed in an appendix?<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">&gt;&gt; there's *way=
* too much coverage of licensing sprinkled throughout.<br>
&gt;&gt; most people are not going to care about licensing until the time c=
omes<br>
&gt;&gt; to maybe start distributing their BSP.<o:p></o:p></p>
</blockquote>
<div>
<p class=3D"MsoNormal">The ability of collecting licensing information, tra=
cking license changes and providing the license information automatically w=
ith the images and packages for deployment is in my opinion a major feature=
 of Yocto albeit underestimated. Most
 people will only appreciate it once they have to deliver that information =
with a product for the end user. However, it starts much earlier, with the =
recipe.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">How to include licensing tracking information with y=
our recipe needs to be part of the section explaining how to write recipes =
of the reference manual. In both, the current 1.1 and the upcoming 1.1.1, v=
ersions of the manual the license
 tracking section is a little disjoint from the sections explaining how to =
add packages/recipes in my opinion. The examples include the license tracki=
ng info, of course because otherwise the sanity checker will not allow buil=
ding the recipe, but they don't
 explain that you actually need it (unless you use LICENSE =3D &quot;CLOSED=
&quot;).<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Since the license tracking and deployment feature fo=
llows the rule &quot;garbage in, garbage out&quot; the manual cannot stress=
 enough providing the correct info in particular when writing recipes for u=
pstream projects.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Side note: And nice features for a future release ar=
e SPDX info (already worked on as far as I know) and providing the license =
info in ${TMPDIR}/deploy/licenses according to the images in ${TMPDIR}/imag=
es so that one knows what licenses
 are in use for what image. That would be very convenient when building mul=
tiple images with different package content.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Rudi<o:p></o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB12379451766F4ORSMSX101amrcor_--
