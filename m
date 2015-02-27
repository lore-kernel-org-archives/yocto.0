Return-Path: <rickard.bremer@tritech.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EF03E008DC; Fri, 27 Feb 2015 01:28:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 381 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Feb 2015 01:28:49 PST
Received: from tritech.se (tritech.se [46.59.120.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31748E0077E
	for <yocto@yoctoproject.org>; Fri, 27 Feb 2015 01:28:49 -0800 (PST)
Received: from post.tritech.se (post.tritech.se [10.75.60.100])
	by tritech.se (8.14.3/8.14.3) with ESMTP id t1R9MMK3025903
	for <yocto@yoctoproject.org>; Fri, 27 Feb 2015 10:22:27 +0100
Received: from POST.tritech.se ([10.75.60.100]) by post ([10.75.60.100]) with
	mapi id 14.02.0387.000; Fri, 27 Feb 2015 10:22:22 +0100
From: Rickard Bremer <rickard.bremer@tritech.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: meta-lxcbench
Thread-Index: AdBSbqLY+4D0jAqgRtCMYsB7poHbZQ==
Date: Fri, 27 Feb 2015 09:22:21 +0000
Message-ID: <E0AAEDF37958A64591322A370796C7897B5D7A@post>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.75.122.235]
MIME-Version: 1.0
Subject: meta-lxcbench
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
X-List-Received-Date: Fri, 27 Feb 2015 09:28:55 -0000
Content-Language: sv-SE
Content-Type: multipart/alternative;
	boundary="_000_E0AAEDF37958A64591322A370796C7897B5D7Apost_"

--_000_E0AAEDF37958A64591322A370796C7897B5D7Apost_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Encountering some problems while trying to build tools provided  by the met=
a-lxcbench layer.

rickardb@yocto:~/poky/build$ bitbake pts-stream
Loading cache: 100% |######################################################=
############| ETA:  00:00:00
Loaded 2145 entries from dependency cache.
ERROR: There is a confusing multiline, partially commented expression on li=
ne 27 of file /home/rickardb/poky/lxcbench/meta-lxcbench/recipes-misc/lxc/l=
xc_0.8.0-rc1.bb ().
Please clarify whether this is all a comment or should be parsed.
ERROR: QA Issue: /home/rickardb/poky/lxcbench/meta-lxcbench/recipes-misc/lx=
cbench-test/lxcbench-test.bb: Variable RDEPENDS is set as not being package=
 specific, please fix this. [pkgvarcheck]
ERROR: QA Issue: /home/rickardb/poky/lxcbench/meta-lxcbench/recipes-phoroni=
x/pts-encode-mp3/pts-encode-mp3.bb: Variable RDEPENDS is set as not being p=
ackage specific, please fix this. [pkgvarcheck]
ERROR: Failed to parse recipe: /home/rickardb/poky/lxcbench/meta-lxcbench/r=
ecipes-misc/lxc/lxc_0.8.0-rc1.bb
ERROR: QA Issue: /home/rickardb/poky/lxcbench/meta-lxcbench/recipes-phoroni=
x/phoronix-test-suite/phoronix-test-suite.bb: Variable RDEPENDS is set as n=
ot being package specific, please fix this. [pkgvarcheck]

Summary: There were 5 ERROR messages shown, returning a non-zero exit code.

/ Best Regards
Rickard

--_000_E0AAEDF37958A64591322A370796C7897B5D7Apost_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
span.E-postmall17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"SV" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Encountering some problems whil=
e trying to build tools provided&nbsp; by the meta-lxcbench layer.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">rickardb@yocto:~/poky/build$ bi=
tbake pts-stream<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Loading cache: 100% |##########=
########################################################| ETA:&nbsp; 00:00:=
00<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Loaded 2145 entries from depend=
ency cache.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: There is a confusing mul=
tiline, partially commented expression on line 27 of file /home/rickardb/po=
ky/lxcbench/meta-lxcbench/recipes-misc/lxc/lxc_0.8.0-rc1.bb ().<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Please clarify whether this is =
all a comment or should be parsed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: QA Issue: /home/rickardb=
/poky/lxcbench/meta-lxcbench/recipes-misc/lxcbench-test/lxcbench-test.bb: V=
ariable RDEPENDS is set as not being package specific, please fix this. [pk=
gvarcheck]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: QA Issue: /home/rickardb=
/poky/lxcbench/meta-lxcbench/recipes-phoronix/pts-encode-mp3/pts-encode-mp3=
.bb: Variable RDEPENDS is set as not being package specific, please fix thi=
s. [pkgvarcheck]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: Failed to parse recipe: =
/home/rickardb/poky/lxcbench/meta-lxcbench/recipes-misc/lxc/lxc_0.8.0-rc1.b=
b<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: QA Issue: /home/rickardb=
/poky/lxcbench/meta-lxcbench/recipes-phoronix/phoronix-test-suite/phoronix-=
test-suite.bb: Variable RDEPENDS is set as not being package specific, plea=
se fix this. [pkgvarcheck]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Summary: There were 5 ERROR mes=
sages shown, returning a non-zero exit code.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">/ Best Regards<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Rickard<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_E0AAEDF37958A64591322A370796C7897B5D7Apost_--
