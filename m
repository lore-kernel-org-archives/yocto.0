Return-Path: <Robert.Guenzel@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44C7BE0079F
	for <yocto@yoctoproject.org>; Fri, 29 Nov 2013 01:02:48 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id rAT92lek019736
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 29 Nov 2013 01:02:47 -0800 (PST)
Received: from ALA-MBA.corp.ad.wrs.com ([169.254.2.188]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.02.0347.000;
	Fri, 29 Nov 2013 01:02:47 -0800
From: "Guenzel, Robert" <Robert.Guenzel@windriver.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Documentation on WORKDIR
Thread-Index: Ac7s4HNy4jJ7fjB1THK3QUE6Xas74g==
Date: Fri, 29 Nov 2013 09:02:47 +0000
Message-ID: <D6170FF7C32A6B4A895BCD8D281C7934A6D74693@ALA-MBA.corp.ad.wrs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.116.40]
MIME-Version: 1.0
Subject: Documentation on WORKDIR
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
X-List-Received-Date: Fri, 29 Nov 2013 09:02:52 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D6170FF7C32A6B4A895BCD8D281C7934A6D74693ALAMBAcorpadwrs_"

--_000_D6170FF7C32A6B4A895BCD8D281C7934A6D74693ALAMBAcorpadwrs_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently starting to work with Yocto and I am having a bit of a hard =
time to figure out how the two documented versions of WORKDIR come into exi=
stence.

The doc states:
"""
For packages that are not dependent on a particular machine, WORKDIR is def=
ined as follows:
   ${TMPDIR}/work/${PACKAGE_ARCH}-poky-${TARGET_OS}/${PN}/${PV}-${PR}
[...]
For packages that are dependent on a particular machine, WORKDIR is defined=
 slightly different:
  ${TMPDIR}/work/${MACHINE}-poky-${TARGET_OS}/${PN}/${PV}-${PR}
"""

Now I tried to figure out how a package becomes machine dependent, and I co=
uld not find this.
After poking around in already existing layers and recipes, I think that th=
e doc is misleading.

It appears to me that only one version exists, which is:
  ${TMPDIR}/work/${PACKAGE_ARCH}-poky-${TARGET_OS}/${PN}/${PV}-${PR}

And in case a package is machine specific, one overrides the default PACKAG=
E_ARCH with (the undocumented)
variable MACHINE_ARCH like this:
  PACKAGE_ARCH=3D"${MACHINE_ARCH}"
(where I believe that MACHINE_ARCH is equal to MACHINE??)

Which will then lead to a WORKDIR that looks like ${TMPDIR}/work/${MACHINE}=
-poky-${TARGET_OS}/${PN}/${PV}-${PR}
(but still is ${TMPDIR}/work/${PACKAGE_ARCH}-poky-${TARGET_OS}/${PN}/${PV}-=
${PR}).

(there are some bbclasses that do this, and there are some recipes that do =
it).

Being pretty new to Yocto, I have the feeling that I simply got it all wron=
g, so before posting bugs or something, I'd wanted to know
if anybody could shed light on this.

thanks and best regards
  Robert


--_000_D6170FF7C32A6B4A895BCD8D281C7934A6D74693ALAMBAcorpadwrs_
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
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am currently starting to work with Yocto and I am =
having a bit of a hard time to figure out how the two documented versions o=
f WORKDIR come into existence.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The doc states:<o:p></o:p></p>
<p class=3D"MsoNormal">&#8220;&#8221;&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal">For packages that are not dependent on a particular =
machine, WORKDIR is defined as follows:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp; ${TMPDIR}/work/${PACKAGE_ARCH}-poky-${T=
ARGET_OS}/${PN}/${PV}-${PR}<o:p></o:p></p>
<p class=3D"MsoNormal">[...]<o:p></o:p></p>
<p class=3D"MsoNormal">For packages that are dependent on a particular mach=
ine, WORKDIR is defined slightly different:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; ${TMPDIR}/work/${MACHINE}-poky-${TARGET_OS}/$=
{PN}/${PV}-${PR}<o:p></o:p></p>
<p class=3D"MsoNormal">&#8220;&#8221;&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now I tried to figure out how a package becomes mach=
ine dependent, and I could not find this.<o:p></o:p></p>
<p class=3D"MsoNormal">After poking around in already existing layers and r=
ecipes, I think that the doc is misleading.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It appears to me that only one version exists, which=
 is:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; ${TMPDIR}/work/${PACKAGE_ARCH}-poky-${TARGET_=
OS}/${PN}/${PV}-${PR}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">And in case a package is machine specific, one overr=
ides the default PACKAGE_ARCH with (the undocumented)<o:p></o:p></p>
<p class=3D"MsoNormal">variable MACHINE_ARCH like this:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; PACKAGE_ARCH=3D&#8221;${MACHINE_ARCH}&#8221;<=
o:p></o:p></p>
<p class=3D"MsoNormal">(where I believe that MACHINE_ARCH is equal to MACHI=
NE??)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Which will then lead to a WORKDIR that looks like ${=
TMPDIR}/work/${MACHINE}-poky-${TARGET_OS}/${PN}/${PV}-${PR}<o:p></o:p></p>
<p class=3D"MsoNormal">(but still is ${TMPDIR}/work/${PACKAGE_ARCH}-poky-${=
TARGET_OS}/${PN}/${PV}-${PR}).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">(there are some bbclasses that do this, and there ar=
e some recipes that do it).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Being pretty new to Yocto, I have the feeling that I=
 simply got it all wrong, so before posting bugs or something, I&#8217;d wa=
nted to know<o:p></o:p></p>
<p class=3D"MsoNormal">if anybody could shed light on this.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">thanks and best regards<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; Robert<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_D6170FF7C32A6B4A895BCD8D281C7934A6D74693ALAMBAcorpadwrs_--
