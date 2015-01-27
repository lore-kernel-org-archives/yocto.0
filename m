Return-Path: <joshua.fung@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AA22E008DC; Mon, 26 Jan 2015 22:56:30 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E2FCE0083A
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 22:56:19 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 26 Jan 2015 22:56:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,473,1418112000"; 
	d="scan'208,217";a="518095042"
Received: from pgsmsx103.gar.corp.intel.com ([10.221.44.82])
	by orsmga003.jf.intel.com with ESMTP; 26 Jan 2015 22:49:12 -0800
Received: from pgsmsx107.gar.corp.intel.com ([169.254.7.42]) by
	PGSMSX103.gar.corp.intel.com ([169.254.2.129]) with mapi id
	14.03.0195.001; Tue, 27 Jan 2015 14:56:15 +0800
From: "Fung, Joshua" <joshua.fung@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Add a new recipe/meta layer to Yocto
Thread-Index: AdA5/gzr6fFXuOrIRMqqmD0yxnPtuw==
Date: Tue, 27 Jan 2015 06:56:14 +0000
Message-ID: <0391341A8FEB8748B378C04B6DDBCC0B349FACBE@PGSMSX107.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Add a new recipe/meta layer to Yocto
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
X-List-Received-Date: Tue, 27 Jan 2015 06:56:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0391341A8FEB8748B378C04B6DDBCC0B349FACBEPGSMSX107garcor_"

--_000_0391341A8FEB8748B378C04B6DDBCC0B349FACBEPGSMSX107garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am new to Yocto project.  I have been working on some SW components, and =
I'll like to know how can I upstream it to Yocto so that it may be reused b=
y others.
I have searched the FAQ and find https://www.yoctoproject.org/blogs/dvhart/=
2011/extending-yocto-project-poky-meta-layers.
Yet I still have no clue what to do with the job.
Anyone care to shed some light ?

Best regards,
Joshua Fung


--_000_0391341A8FEB8748B378C04B6DDBCC0B349FACBEPGSMSX107garcor_
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
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
<p class=3D"MsoNormal">I am new to Yocto project.&nbsp; I have been working=
 on some SW components, and I&#8217;ll like to know how can I upstream it t=
o Yocto so that it may be reused by others.<o:p></o:p></p>
<p class=3D"MsoNormal">I have searched the FAQ and find <a href=3D"https://=
www.yoctoproject.org/blogs/dvhart/2011/extending-yocto-project-poky-meta-la=
yers">
https://www.yoctoproject.org/blogs/dvhart/2011/extending-yocto-project-poky=
-meta-layers</a>.<o:p></o:p></p>
<p class=3D"MsoNormal">Yet I still have no clue what to do with the job.<o:=
p></o:p></p>
<p class=3D"MsoNormal">Anyone care to shed some light ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Joshua Fung<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0391341A8FEB8748B378C04B6DDBCC0B349FACBEPGSMSX107garcor_--
