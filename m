Return-Path: <bogdanx.a.voiculescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FEB3E00AD7; Tue,  8 Dec 2015 04:59:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39E63E0079A
	for <yocto@yoctoproject.org>; Tue,  8 Dec 2015 04:59:25 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 08 Dec 2015 04:59:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,399,1444719600"; 
	d="scan'208,217";a="614502088"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
	by FMSMGA003.fm.intel.com with ESMTP; 08 Dec 2015 04:59:24 -0800
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.13]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.208]) with mapi id
	14.03.0248.002; Tue, 8 Dec 2015 12:59:23 +0000
From: "Voiculescu, BogdanX A" <bogdanx.a.voiculescu@intel.com>
To: Suram Suram <suram@freescale.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: testsuite for meta-selinux
Thread-Index: AdEv6Opm7le2LfCqSIadlCOx6ExcEgBzwUMg
Date: Tue, 8 Dec 2015 12:59:22 +0000
Message-ID: <D0E9455D42555F408A7166316B4F2AD61AFB51DD@IRSMSX103.ger.corp.intel.com>
References: <BY1PR03MB13398A9786969B9BF6D630BFA10A0@BY1PR03MB1339.namprd03.prod.outlook.com>
In-Reply-To: <BY1PR03MB13398A9786969B9BF6D630BFA10A0@BY1PR03MB1339.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: testsuite for meta-selinux
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
X-List-Received-Date: Tue, 08 Dec 2015 12:59:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D0E9455D42555F408A7166316B4F2AD61AFB51DDIRSMSX103gercor_"

--_000_D0E9455D42555F408A7166316B4F2AD61AFB51DDIRSMSX103gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Suram,
Package 'selinux-policy-devel' is needed to be installed on your host.

In https://github.com/SELinuxProject/selinux-testsuite is specified what yo=
u need to install (example is for Fedora or RHEL):

yum install perl-Test perl-Test-Harness selinux-policy-devel gcc libselinux=
-devel net-tools netlabel_tools iptables

One of them is "selinux-policy-devel"

BR,
Bogdan

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Suram Suram
Sent: Sunday, December 06, 2015 7:48 AM
To: yocto@yoctoproject.org
Subject: [yocto] testsuite for meta-selinux

Hi,
Iam trying to use the selinux testsuite taken from
SELinuxProject<https://github.com/SELinuxProject>/selinux-testsuite<https:/=
/github.com/SELinuxProject/selinux-testsuite>
When trying to compile, it is complaining with the following error
ERROR: You must have selinux-policy-devel installed.

I would like to know how to enable selinux-policy-devel in the meta-selinux=
 layer.

Regards
Suram

--_000_D0E9455D42555F408A7166316B4F2AD61AFB51DDIRSMSX103gercor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40">
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
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
h1
	{mso-style-priority:9;
	mso-style-link:"Heading 1 Char";
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:24.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.Heading1Char
	{mso-style-name:"Heading 1 Char";
	mso-style-priority:9;
	mso-style-link:"Heading 1";
	font-family:"Times New Roman","serif";
	font-weight:bold;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.author
	{mso-style-name:author;}
span.path-divider
	{mso-style-name:path-divider;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi Suram,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Package &#8216;selinux=
-policy-devel&#8217; is needed to be installed on your host.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">In <a href=3D"https://=
github.com/SELinuxProject/selinux-testsuite">
https://github.com/SELinuxProject/selinux-testsuite</a> is specified what y=
ou need to install (example is for Fedora or RHEL):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">yum install perl-Test perl-Test-Harness selinux-policy-dev=
el gcc libselinux-devel net-tools netlabel_tools iptables<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">One of them is &#8220;=
</span><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"=
>selinux-policy-devel&#8221;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">BR,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Bogdan<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Suram Suram<br>
<b>Sent:</b> Sunday, December 06, 2015 7:48 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] testsuite for meta-selinux<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">Iam trying to use the selinux testsuite taken from <=
o:p></o:p></p>
<h1><span class=3D"author"><a href=3D"https://github.com/SELinuxProject">SE=
LinuxProject</a></span><span class=3D"path-divider">/</span><strong><a href=
=3D"https://github.com/SELinuxProject/selinux-testsuite">selinux-testsuite<=
/a></strong>
<o:p></o:p></h1>
<p class=3D"MsoNormal">When trying to compile, it is complaining with the f=
ollowing error<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: You must have selinux-policy-devel installed.=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I would like to know how to enable selinux-policy-de=
vel in the meta-selinux layer.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Suram<o:p></o:p></p>
</div>
</body>
</html>

--_000_D0E9455D42555F408A7166316B4F2AD61AFB51DDIRSMSX103gercor_--
