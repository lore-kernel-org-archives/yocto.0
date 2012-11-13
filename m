Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99127E0142C
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2012 15:27:41 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Nov 2012 15:27:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,768,1352102400"; 
	d="scan'208,217";a="217351106"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by azsmga001.ch.intel.com with ESMTP; 13 Nov 2012 15:27:40 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.82]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.196]) with mapi id
	14.01.0355.002; Tue, 13 Nov 2012 15:27:40 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Autotools-based project question
Thread-Index: Ac3B9Qpvn+PAuqz3S+SRj9GKVBiuxgAAUYYg
Date: Tue, 13 Nov 2012 23:27:39 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B3A3F8@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A9D497@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A9D497@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: Autotools-based project question
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
X-List-Received-Date: Tue, 13 Nov 2012 23:27:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C46B3A3F8ORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C46B3A3F8ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Scott,



In eclipse when you reconfigure the project and build the project, all the =
details will be show in the console, those are the info you need to capture=
 in the document if people do things from command-line.



Cheers,

Jessica



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Rifenbark, Scott M
Sent: Tuesday, November 13, 2012 3:18 PM
To: yocto@yoctoproject.org
Subject: [yocto] Autotools-based project question



I have an Autotools-based project (helloworld) that I have create and works=
.  I am trying to test the instructions in the "Autotools-Based Projects" s=
ection of the YP Application Developer's Guide (http://www.yoctoproject.org=
/docs/1.4/adt-manual/adt-manual.html#autotools-based-projects).  This short=
 section basically tells you how to use the cross-toolchain by passing the =
appropriate host option to configure.sh.  When I execute configure and pass=
 the --host and --with options it is not recognizing the --with stuff.  The=
re is a note in the section that tells what to do if this is the case.  Whe=
n I run through the steps in the note I get problems when running autoheade=
r.  It complains of AC_CONFIG_HEADERS not being in configure.in.  I tried a=
dding a line (AC_CONFIG_HEADERS) to my configure.in file but that doesn't w=
ork.  I've googled a bunch of stuff trying to educate myself but I have not=
 made any headway.  Does anyone know anything about this area?



Thanks,

Scott



Scott Rifenbark

Intel Corporation

Yocto Project Documentation

503.712.2702

503.341.0418 (cell)




--_000_C6510F6D410BB64A8C15398EDC6B847C46B3A3F8ORSMSX101amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Scott,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">In eclipse when you re=
configure the project and build the project, all the details will be show i=
n the console, those are the info you need to capture in the document if pe=
ople do things from command-line.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Cheers,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Jessica<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Rifenbark, Scott M<br>
<b>Sent:</b> Tuesday, November 13, 2012 3:18 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Autotools-based project question<o:p></o:p></span><=
/p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have an Autotools-based project (helloworld) that =
I have create and works.&nbsp; I am trying to test the instructions in the =
&#8220;Autotools-Based Projects&#8221; section of the YP Application Develo=
per&#8217;s Guide (<a href=3D"http://www.yoctoproject.org/docs/1.4/adt-manu=
al/adt-manual.html#autotools-based-projects">http://www.yoctoproject.org/do=
cs/1.4/adt-manual/adt-manual.html#autotools-based-projects</a>).&nbsp;
 This short section basically tells you how to use the cross-toolchain by p=
assing the appropriate host option to configure.sh.&nbsp; When I execute co=
nfigure and pass the &#8211;-host and &#8211;-with options it is not recogn=
izing the &#8211;-with stuff.&nbsp; There is a note in the section
 that tells what to do if this is the case.&nbsp; When I run through the st=
eps in the note I get problems when running autoheader.&nbsp; It complains =
of AC_CONFIG_HEADERS not being in configure.in.&nbsp; I tried adding a line=
 (AC_CONFIG_HEADERS) to my configure.in file but
 that doesn&#8217;t work.&nbsp; I&#8217;ve googled a bunch of stuff trying =
to educate myself but I have not made any headway.&nbsp; Does anyone know a=
nything about this area? &nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Scott<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;;color:blue">Scott Rifenbark<o:p></o:p><=
/span></b></p>
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

--_000_C6510F6D410BB64A8C15398EDC6B847C46B3A3F8ORSMSX101amrcor_--
