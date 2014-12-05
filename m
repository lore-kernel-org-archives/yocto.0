Return-Path: <chan.kitx.yu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61CC7E00927; Thu,  4 Dec 2014 20:11:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1DBEE0090A
	for <yocto@yoctoproject.org>; Thu,  4 Dec 2014 20:11:30 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Dec 2014 20:11:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,520,1413270000"; 
	d="scan'208,217";a="618977083"
Received: from pgsmsx102.gar.corp.intel.com ([10.221.44.80])
	by orsmga001.jf.intel.com with ESMTP; 04 Dec 2014 20:11:29 -0800
Received: from pgsmsx104.gar.corp.intel.com ([169.254.3.33]) by
	PGSMSX102.gar.corp.intel.com ([169.254.6.7]) with mapi id
	14.03.0195.001; Fri, 5 Dec 2014 12:09:11 +0800
From: "Yu, Chan KitX" <chan.kitx.yu@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: do_fetch() with svn which has http prefix
Thread-Index: AdAQQOGAwSzqv8DCRhSeMNRdoaQvvQ==
Date: Fri, 5 Dec 2014 04:09:10 +0000
Message-ID: <0E4D391FE2BDEC45AA0B4E32D6BD598A245C92@PGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Subject: do_fetch() with svn which has http prefix
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
X-List-Received-Date: Fri, 05 Dec 2014 04:11:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0E4D391FE2BDEC45AA0B4E32D6BD598A245C92PGSMSX104garcorpi_"

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A245C92PGSMSX104garcorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I need to do svn checkout http://llvm.org/svn/llvm-project/llvm/trunk but s=
ince that repo has a http prefix, I don't think it's smart enough to recogn=
ize that the link is actually an SVN repo. So how do I work around this pro=
blem?

Thanks,
Chan Kit

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A245C92PGSMSX104garcorpi_
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
tt
	{mso-style-priority:99;
	font-family:"Courier New";}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I need to do svn checkout <tt><span style=3D"font-si=
ze:10.0pt"><a href=3D"http://llvm.org/svn/llvm-project/llvm/trunk">http://l=
lvm.org/svn/llvm-project/llvm/trunk</a>
</span></tt>but since that repo has a http prefix, I don&#8217;t think it&#=
8217;s smart enough to recognize that the link is actually an SVN repo. So =
how do I work around this problem?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Chan Kit<o:p></o:p></p>
</div>
</body>
</html>

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A245C92PGSMSX104garcorpi_--
