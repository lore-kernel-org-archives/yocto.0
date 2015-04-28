Return-Path: <J.Schaumloeffel@astro-kom.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE08EE00960; Mon, 27 Apr 2015 23:55:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.173.193.132 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 362 seconds by postgrey-1.32 at yocto-www;
	Mon, 27 Apr 2015 23:55:42 PDT
Received: from mailrelay-out2.netcologne.de (mailrelay-out2.netcologne.de
	[81.173.193.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F6FDE0086D
	for <yocto@yoctoproject.org>; Mon, 27 Apr 2015 23:55:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mailrelay-out2.netcologne.de (Postfix) with ESMTP id 506D310B490
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 08:49:38 +0200 (CEST)
Received: from [213.196.222.82] (helo=mailrelay-out2.netcologne.de)
	by localhost with ESMTP (eXpurgate 4.0.6)
	(envelope-from <J.Schaumloeffel@astro-kom.de>)
	id 553f2d82-188e-7f0000012729-7f0000018cb3-1
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 08:49:38 +0200
Received: from ASTRO-EX1.Bensberg.de (unknown [213.196.222.82])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by mailrelay-out2.netcologne.de (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 08:49:36 +0200 (CEST)
Received: from ASTRO-EX1.Bensberg.de (192.168.100.26) by ASTRO-EX1.Bensberg.de
	(192.168.100.26) with Microsoft SMTP Server (TLS) id 15.0.775.38;
	Tue, 28 Apr 2015 08:49:25 +0200
Received: from ASTRO-EX1.Bensberg.de ([::1]) by ASTRO-EX1.Bensberg.de ([::1])
	with mapi id 15.00.0775.031; Tue, 28 Apr 2015 08:49:25 +0200
From: =?iso-8859-1?Q?Schauml=F6ffel=2C_Jan?= <J.Schaumloeffel@astro-kom.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Migration from 1.7.1 to 1.8 - kernel-abiversion missing
Thread-Index: AdCBfI+fMEqCzoTLSdaz+mOzgmAd4Q==
Date: Tue, 28 Apr 2015 06:49:24 +0000
Message-ID: <ce604c0c1a1d4131a72119dbecb97ab2@ASTRO-EX1.Bensberg.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.114]
MIME-Version: 1.0
X-purgate-ID: 153929::1430203778-0000188E-D1C79AD6/0/0
X-purgate: clean
Subject: Migration from 1.7.1 to 1.8 - kernel-abiversion missing
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
X-List-Received-Date: Tue, 28 Apr 2015 06:55:45 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_ce604c0c1a1d4131a72119dbecb97ab2ASTROEX1Bensbergde_"

--_000_ce604c0c1a1d4131a72119dbecb97ab2ASTROEX1Bensbergde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I have a working root fs based on "dizzy", for which I created a customized=
 machine config, a custom package config recipe and a custom image recipe.
When running into problems with the python installation on that rootfs I de=
cided to upgrade to Poky 1.8 "fido".

So I checked out the "fido" branches of the following repositories:

-          git.yoctoproject.org/git/poky

-          github.com/openembedded/openembedded-core.git

-          github.com/openembedded/meta-openembedded.git

After that, a lot of packages were rebuilt (obviously), but everything seem=
ed to work, excluding the last step:

NOTE: Executing buildhistory_get_image_installed ...
DEBUG: Executing shell function buildhistory_get_image_installed
DEBUG: Shell function buildhistory_get_image_installed finished
NOTE: Executing: ldconfig -/.../mymachine -poky-linux-gnueabi/mymachine-ima=
ge/1.0-r0/rootfs-c new -v
ERROR: No kernel-abiversion file found (/.../pkgdata/kernel-depmod/kernel-a=
biversion), cannot run depmod, aborting
DEBUG: Python function do_rootfs finished
ERROR: Function failed: do_rootfs

I already verified that a completely "vanilla" setup from these repositorie=
s (i.e. source oe-init-build-env into empty directory, then bitbake core-im=
age-minimal) does indeed complete.
The problem is re-introduced as soon as I do not build with MACHINE ?=3D "b=
eaglebone" but with my own machine configuration. Naturally I compared the =
configurations without finding anything too suspicious.

So, before I go into any further lengths about my machine configuration: Ar=
e there any general hints why the "kernel-abiversion" file might go missing=
 after migrating from 1.7 to 1.8?

KR and TIA,
Jan

--_000_ce604c0c1a1d4131a72119dbecb97ab2ASTROEX1Bensbergde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:74476906;
	mso-list-type:hybrid;
	mso-list-template-ids:-923251816 -1550666260 67567619 67567621 67567617 67=
567619 67567621 67567617 67567619 67567621;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1743285063;
	mso-list-type:hybrid;
	mso-list-template-ids:372037614 -1201376554 67567619 67567621 67567617 675=
67619 67567621 67567617 67567619 67567621;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi everyone,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have a working root fs based =
on &#8220;dizzy&#8221;, for which I created a customized machine config, a =
custom package config recipe and a custom image recipe.<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When running into problems with=
 the python installation on that rootfs I decided to upgrade to Poky 1.8 &#=
8220;fido&#8221;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So I checked out the &#8220;fid=
o&#8221; branches of the following repositories:<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l1 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">git.yoctoproject.org/gi=
t/poky<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l1 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">github.com/openembedded=
/openembedded-core.git<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l1 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US"><span style=3D"mso-list:=
Ignore">-<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US">github.com/openembedded=
/meta-openembedded.git<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:18.0pt"><span lang=3D"EN-US"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">After that, a lot of packages w=
ere rebuilt (obviously), but everything seemed to work, excluding the last =
step:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">NOTE: Executing buildhistory_ge=
t_image_installed ...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">DEBUG: Executing shell function=
 buildhistory_get_image_installed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">DEBUG: Shell function buildhist=
ory_get_image_installed finished<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">NOTE: Executing: ldconfig -/&#8=
230;/mymachine -poky-linux-gnueabi/mymachine-image/1.0-r0/rootfs-c new -v<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: No kernel-abiversion fil=
e found (/&#8230;/pkgdata/kernel-depmod/kernel-abiversion), cannot run depm=
od, aborting<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">DEBUG: Python function do_rootf=
s finished<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: Function failed: do_root=
fs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I already verified that a compl=
etely &#8220;vanilla&#8221; setup from these repositories (i.e. source oe-i=
nit-build-env into empty directory, then bitbake core-image-minimal) does i=
ndeed complete.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The problem is re-introduced as=
 soon as I do not build with MACHINE ?=3D &#8220;beaglebone&#8221; but with=
 my own machine configuration. Naturally I compared the configurations with=
out finding anything too suspicious.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So, before I go into any furthe=
r lengths about my machine configuration: Are there any general hints why t=
he &#8220;kernel-abiversion&#8221; file might go missing after migrating fr=
om 1.7 to 1.8?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">KR and TIA,<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Jan<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_ce604c0c1a1d4131a72119dbecb97ab2ASTROEX1Bensbergde_--
