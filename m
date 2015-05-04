Return-Path: <juliet.z.cai@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96074E00960; Mon,  4 May 2015 12:45:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C880E007B9
	for <yocto@yoctoproject.org>; Mon,  4 May 2015 12:45:25 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 04 May 2015 12:45:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,367,1427785200"; 
	d="scan'208,217";a="566114788"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga003.jf.intel.com with ESMTP; 04 May 2015 12:45:24 -0700
Received: from orsmsx109.amr.corp.intel.com ([169.254.2.224]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.30]) with mapi id
	14.03.0224.002; Mon, 4 May 2015 12:45:24 -0700
From: "Cai, Juliet Z" <juliet.z.cai@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Issue with git repo clone through scons
Thread-Index: AdCGhub9aF+BJsNuTC6kxYfL+WpwLQAG5CzQ
Date: Mon, 4 May 2015 19:45:24 +0000
Message-ID: <51A964697D1B374D923D8F12DAC9906F972FE384@ORSMSX109.amr.corp.intel.com>
References: <51A964697D1B374D923D8F12DAC9906F972FE343@ORSMSX109.amr.corp.intel.com>
In-Reply-To: <51A964697D1B374D923D8F12DAC9906F972FE343@ORSMSX109.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Issue with git repo clone through scons
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
X-List-Received-Date: Mon, 04 May 2015 19:45:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_51A964697D1B374D923D8F12DAC9906F972FE384ORSMSX109amrcor_"

--_000_51A964697D1B374D923D8F12DAC9906F972FE384ORSMSX109amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I realized SConscript did not inherit os proxy settings.  I tried to create=
 site.conf and specified ALL_PROXY, but it didn't seem to make difference. =
Anyone knows how the site.conf supposed to work?

Thanks

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Cai, Juliet Z
Sent: Monday, May 04, 2015 9:33 AM
To: yocto@yoctoproject.org
Subject: [yocto] Issue with git repo clone through scons

Hi all,

I have a package that is built with scons in my bb layer. Inside the SConsc=
ript, it clones https://github.com/...   When I run bitbake, I get "Failed =
to connect to github.com port 443: Connection time out."  I know the packag=
e build fine outside bitbake.  Any idea why bitbake doesn't allow it? How c=
an I get around it?

Thanks in advance

--_000_51A964697D1B374D923D8F12DAC9906F972FE384ORSMSX109amrcor_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I realized SConscript =
did not inherit os proxy settings.&nbsp; I tried to create site.conf and sp=
ecified ALL_PROXY, but it didn&#8217;t seem to make difference. Anyone know=
s how the site.conf supposed to work?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks <o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"color:#1F=
497D"><o:p>&nbsp;</o:p></span></a></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> yocto-bounces@yoctoproject.org [mailto:=
yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Cai, Juliet Z<br>
<b>Sent:</b> Monday, May 04, 2015 9:33 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Issue with git repo clone through scons<o:p></o:p><=
/p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a package that is built with scons in my bb l=
ayer. Inside the SConscript, it clones
<a href=3D"https://github.com/">https://github.com/</a>... &nbsp;&nbsp;When=
 I run bitbake, I get &#8220;Failed to connect to github.com port 443: Conn=
ection time out.&#8221;&nbsp; I know the package build fine outside bitbake=
. &nbsp;Any idea why bitbake doesn&#8217;t allow it? How can I get around
 it?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks in advance<o:p></o:p></p>
</div>
</body>
</html>

--_000_51A964697D1B374D923D8F12DAC9906F972FE384ORSMSX109amrcor_--
