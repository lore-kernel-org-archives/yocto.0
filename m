Return-Path: <dean.saridakis@baesystems.com>
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
	[149.32.232.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F0E7E014B6
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 11:52:20 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.87,402,1363132800"; d="scan'208,217";a="3188745"
X-IronPort-AV: E=Sophos;i="4.87,402,1363132800"; d="scan'208,217";a="3092719"
From: "Saridakis, Dean   (US SSA)" <dean.saridakis@baesystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Easy one: fetch fails
Thread-Index: Ac4wmirKzG7I/3HMQzqAt5Om3ArUVA==
Date: Wed, 3 Apr 2013 18:52:07 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.37.161.240]
MIME-Version: 1.0
Subject: Easy one: fetch fails
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
X-List-Received-Date: Wed, 03 Apr 2013 18:52:20 -0000
Message-ID: <MADEUP.15D9585896A5ADF7.29417@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B98BBFB67D89184E8E876F332BDBC3E0A16BCFGLDMS85001goldlnk_"

--_000_B98BBFB67D89184E8E876F332BDBC3E0A16BCFGLDMS85001goldlnk_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I've got the yocto basics, but sill a novice.

I'm starting w/ an SDK based on yocto & am trying to add canutil to the bui=
ld. There's already a recipe in meta-oe, but unfortunately I can't get thro=
ugh my corporate firewall w/ the git protocol. However I can w/ http. So I =
added a layer w/ a bbppend to change the SRC_URI

from "git://git.pengutronix.de/git/tools/canutils.git;protocol=3Dgit;tag=3D=
${TAG}"
to "http://git.pengutronix.de/git/tools/canutils.git;protocol=3Dhttp;tag=3D=
${TAG}"

(and similarly for libsocketcan). If there's simpler/cleaner way to do this=
 I'm open to suggestions.

Problem is the fetch fails w/
ERROR: Fetcher failure for URL: 'http://git.pengutronix.de/git/tools/canuti=
ls.git'. The fetch command returned success for url http://git.pengutronix.=
de/git/tools/canutils.git but /home/ds/QorIQ-SDK-V1.3-20121114-yocto/build_=
p5020ds_release/../sources/canutils.git doesn't exist?!

I am able to manually do a git clone w/ the http url. (thought about manual=
ly forcing the file into the source dir, but wasn't sure exactly what's exp=
ected, especially w/ the tag - still a git novice as well)

Thanks,

Dean


--_000_B98BBFB67D89184E8E876F332BDBC3E0A16BCFGLDMS85001goldlnk_
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
<p class=3D"MsoNormal">I&#8217;ve got the yocto basics, but sill a novice.<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m starting w/ an SDK based on yocto &amp; am=
 trying to add canutil to the build. There&#8217;s already a recipe in meta=
-oe, but unfortunately I can&#8217;t get through my corporate firewall w/ t=
he git protocol. However I can w/ http. So I added a layer
 w/ a bbppend to change the SRC_URI <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">from &quot;git://git.pengutronix.de/git/tools/canuti=
ls.git;protocol=3Dgit;tag=3D${TAG}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">to &quot;http://git.pengutronix.de/git/tools/canutil=
s.git;protocol=3Dhttp;tag=3D${TAG}&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">(and similarly for libsocketcan). If there&#8217;s s=
impler/cleaner way to do this I&#8217;m open to suggestions.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Problem is the fetch fails w/ <o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Fetcher failure for URL: 'http://git.pengutro=
nix.de/git/tools/canutils.git'. The fetch command returned success for url =
http://git.pengutronix.de/git/tools/canutils.git but /home/ds/QorIQ-SDK-V1.=
3-20121114-yocto/build_p5020ds_release/../sources/canutils.git
 doesn't exist?!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am able to manually do a git clone w/ the http url=
. (thought about manually forcing the file into the source dir, but wasn&#8=
217;t sure exactly what&#8217;s expected, especially w/ the tag &#8211; sti=
ll a git novice as well)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Dean <o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_B98BBFB67D89184E8E876F332BDBC3E0A16BCFGLDMS85001goldlnk_--
