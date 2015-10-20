Return-Path: <Georg.PIEWALD@frequentis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ABBFE0086D; Tue, 20 Oct 2015 14:08:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [195.20.158.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0014]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 Oct 2015 14:08:23 PDT
Received: from mail1.frequentis.com (mail1.frequentis.com [195.20.158.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8335E00708
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 14:08:23 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.17,708,1437429600"; d="scan'208,217";a="12308544"
Received: from vie191nt.frequentis.frq ([172.16.1.191])
	by mail1.frequentis.com with ESMTP; 20 Oct 2015 23:07:17 +0200
Received: from vie196nt.frequentis.frq ([172.16.1.196]) by
	vie191nt.frequentis.frq ([172.16.1.191]) with mapi id 14.03.0266.001;
	Tue, 20 Oct 2015 23:07:17 +0200
From: PIEWALD Georg <Georg.PIEWALD@frequentis.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Modifying the OE-internal Python code
Thread-Index: AdELez5v3r9R+0lcQmCqlihvMDGqXg==
Date: Tue, 20 Oct 2015 21:07:15 +0000
Message-ID: <7858CE2B355E1A438F13002DDE9D639401110E3132@vie196nt>
Accept-Language: en-US, de-AT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.254.163]
MIME-Version: 1.0
Subject: Modifying the OE-internal Python code
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
X-List-Received-Date: Tue, 20 Oct 2015 21:08:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7858CE2B355E1A438F13002DDE9D639401110E3132vie196nt_"

--_000_7858CE2B355E1A438F13002DDE9D639401110E3132vie196nt_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I'm trying to do some modifications in the OE-internals (just some personal=
 customizations), in the Python code. In particular, I changed the file
oe-core/meta/lib/oe/terminal.py
I also compiled it into a terminal.pyc file. However, the modifications don=
't seem to be picked up by bitbake. Is there something more I have to do? D=
oes the .pyc file have to be installed somewhere?

Thanks for any hints,
Georg

--_000_7858CE2B355E1A438F13002DDE9D639401110E3132vie196nt_
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.Code, li.Code, div.Code
	{mso-style-name:Code;
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	mso-fareast-language:EN-US;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">I'm trying to do some modifications in the OE-intern=
als (just some personal customizations), in the Python code. In particular,=
 I changed the file<o:p></o:p></p>
<p class=3D"MsoNormal">oe-core/meta/lib/oe/terminal.py<o:p></o:p></p>
<p class=3D"MsoNormal">I also compiled it into a terminal.pyc file. However=
, the modifications don't seem to be picked up by bitbake. Is there somethi=
ng more I have to do? Does the .pyc file have to be installed somewhere?<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks for any hints,<o:p></o:p></p>
<p class=3D"MsoNormal">Georg<o:p></o:p></p>
</div>
</body>
</html>

--_000_7858CE2B355E1A438F13002DDE9D639401110E3132vie196nt_--
