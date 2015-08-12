Return-Path: <Georg.PIEWALD@frequentis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DA8CE009D7; Wed, 12 Aug 2015 06:49:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [195.20.158.50 listed in list.dnswl.org]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Wed, 12 Aug 2015 06:49:21 PDT
Received: from mail1.frequentis.com (mail1.frequentis.com [195.20.158.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3F5FE009B3
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 06:49:21 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.15,661,1432591200"; d="scan'208,217";a="11328593"
Received: from vie191nt.frequentis.frq ([172.16.1.191])
	by mail1.frequentis.com with ESMTP; 12 Aug 2015 15:48:16 +0200
Received: from vie196nt.frequentis.frq ([172.16.1.196]) by
	vie191nt.frequentis.frq ([172.16.1.191]) with mapi id 14.02.0328.009;
	Wed, 12 Aug 2015 15:48:15 +0200
From: PIEWALD Georg <Georg.PIEWALD@frequentis.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Selecting a preferred recipe version for devtools
Thread-Index: AdDVBYAytOsxK/A4TLqyO3UnY3ObLg==
Date: Wed, 12 Aug 2015 13:48:15 +0000
Message-ID: <7858CE2B355E1A438F13002DDE9D639401110B8A51@vie196nt>
Accept-Language: en-US, de-AT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.19.4.23]
MIME-Version: 1.0
Subject: Selecting a preferred recipe version for devtools
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
X-List-Received-Date: Wed, 12 Aug 2015 13:49:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7858CE2B355E1A438F13002DDE9D639401110B8A51vie196nt_"

--_000_7858CE2B355E1A438F13002DDE9D639401110B8A51vie196nt_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I have two recipes for building Subversion (which I only need as a devtool =
on the build-machine):

$ ls oe-core/meta/recipes-devtools/subversion/*.bb
subversion_1.6.15.bb
subversion_1.7.8.bb

Naturally Yocto uses 1.7.8, which is the newer. However, unfortunately I mu=
st use 1.6.15 on my build machine. How can I instruct Yocto to use the olde=
r version?

I tried to put a variable
PREFERRED_VERSION_subversion =3D "1.6.15"
in my local.conf, but it turned out that this only affects the builds for t=
he target-machine (cortexa8hf-vfp-neon-3.8-oe-linux-gnueabi), but not the d=
evtools on the build-machine (x86_64-linux).

One apparent solution is to simply remove the subversion_1.7.8.bb file, but=
 I'm wondering if there is a better way, and how I can select a preferred v=
ersion specifically for devtools.

BR, Georg

--_000_7858CE2B355E1A438F13002DDE9D639401110B8A51vie196nt_
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
<p class=3D"MsoNormal"><span lang=3D"DE-AT">Hi all,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE-AT"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">I have two recipes for building Subversion (which I =
only need as a devtool on the build-machine):<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"FR">$ ls oe-core/meta/recipes-devtools=
/subversion/*.bb<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR">subversion_1.6.15.bb<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"FR">subversion_1.7.8.bb<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"FR"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">Naturally Yocto uses 1.7.8, which is the newer. Howe=
ver, unfortunately I must use 1.6.15 on my build machine. How can I instruc=
t Yocto to use the older version?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tried to put a variable <o:p></o:p></p>
<p class=3D"MsoNormal">PREFERRED_VERSION_subversion =3D &quot;1.6.15&quot;<=
o:p></o:p></p>
<p class=3D"MsoNormal">in my local.conf, but it turned out that this only a=
ffects the builds for the target-machine (cortexa8hf-vfp-neon-3.8-oe-linux-=
gnueabi), but not the devtools on the build-machine (x86_64-linux).<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">One apparent solution is to simply remove the subver=
sion_1.7.8.bb file, but I'm wondering if there is a better way, and how I c=
an select a preferred version specifically for devtools.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">BR, Georg<o:p></o:p></p>
</div>
</body>
</html>

--_000_7858CE2B355E1A438F13002DDE9D639401110B8A51vie196nt_--
