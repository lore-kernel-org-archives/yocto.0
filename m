Return-Path: <david.c.stewart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91FEEE0044A
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 07:24:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Aug 2012 07:24:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,802,1336374000"; 
	d="scan'208,217";a="211677259"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga002.fm.intel.com with ESMTP; 21 Aug 2012 07:24:41 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 21 Aug 2012 07:24:41 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.178]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.217]) with mapi id
	14.01.0355.002; Tue, 21 Aug 2012 07:24:40 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Seth Bollinger <seth.boll@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Classes
Thread-Index: AQHNf0KlYy8SynLyA0Od9HnLHPD6sZdkT1wg
Date: Tue, 21 Aug 2012 14:24:40 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D151C8FDC78@ORSMSX105.amr.corp.intel.com>
References: <CA+JN8xMPwisCNTrbzQaDm97D0ShGWRaCbkj752wLcF13eV6j=Q@mail.gmail.com>
In-Reply-To: <CA+JN8xMPwisCNTrbzQaDm97D0ShGWRaCbkj752wLcF13eV6j=Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: Classes
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
X-List-Received-Date: Tue, 21 Aug 2012 14:24:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CDED78A957032E45B3239CDDA7642D151C8FDC78ORSMSX105amrcor_"

--_000_CDED78A957032E45B3239CDDA7642D151C8FDC78ORSMSX105amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Seth - it sounds like you need something different than an overview class. =
I think you might want to have one of the consultants who are familiar with=
 building projects using the Yocto Project work for you for a couple of day=
s to help you sort these things out, for a fee. I'm sure one of them on thi=
s mailing list would be willing to offer their help. (Guys - you know who y=
ou are...)

Dave

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Seth Bollinger
Sent: Monday, August 20, 2012 7:14 PM
To: yocto@yoctoproject.org
Subject: [yocto] Classes

Hello,

Will anyone recommend some classes regarding yocto and open embedded?  It w=
ould be nice to get up to speed quickly and into the nitty gritty instead o=
f an overview.

Something covering the following items would be nice:

1.  How should projects be laid out?  Distro, image, task, BSP, what things=
 should go where?
2.  How should subprojects inherit from superprojects?  If you need to crea=
te many subplatforms from a base platform, what's the best way to go about =
this?
3.  How should classes such as distutils be created to be inherited by othe=
r recipes (ruby modules that require a C extension to be compiled would be =
one example).
4.  How should hardware specific software be handled?

I fear that (as a newb) I will design a layout that will be sub-optimal, bu=
t we'll discover that after we have 25 platforms that will need major refac=
toring.  :)

Thanks,

Seth


--_000_CDED78A957032E45B3239CDDA7642D151C8FDC78ORSMSX105amrcor_
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Seth &#8211; it sounds li=
ke you need something different than an overview class. I think you might w=
ant to have one of the consultants who are familiar with building
 projects using the Yocto Project work for you for a couple of days to help=
 you sort these things out, for a fee. I&#8217;m sure one of them on this m=
ailing list would be willing to offer their help. (Guys &#8211; you know wh=
o you are&#8230;)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Dave<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Seth Bollinger<br>
<b>Sent:</b> Monday, August 20, 2012 7:14 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Classes<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Will anyone recommend some classes regarding yocto a=
nd open embedded? &nbsp;It would be nice to get up to speed quickly and int=
o the nitty gritty instead of an overview.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Something covering the following items would be nice=
:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">1. &nbsp;How should projects be laid out? &nbsp;Dist=
ro, image, task, BSP, what things should go where?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">2. &nbsp;How should subprojects inherit from superpr=
ojects? &nbsp;If you need to create many subplatforms from a base platform,=
 what's the best way to go about this?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">3. &nbsp;How should classes such as distutils be cre=
ated to be inherited by other recipes (ruby modules that require a C extens=
ion to be compiled would be one example).<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">4. &nbsp;How should hardware specific software be ha=
ndled?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I fear that (as a newb) I will design a layout that =
will be sub-optimal, but we'll discover that after we have 25 platforms tha=
t will need major refactoring. &nbsp;:)<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Seth<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_CDED78A957032E45B3239CDDA7642D151C8FDC78ORSMSX105amrcor_--
