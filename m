Return-Path: <Thomas.Moore2@atk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 361F9E0083A; Mon, 26 Jan 2015 14:23:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mx-mn.atk.com (mx-mn.atk.com [192.107.248.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D2B5E00836
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 14:23:14 -0800 (PST)
Received: from unknown (HELO UT40SVEH4.atk.com) ([146.168.70.141])
	by mx-mn.atk.com with ESMTP; 26 Jan 2015 16:15:08 -0600
Received: from UT40SVCWEM001.atk.com ([169.254.4.192]) by UT40SVEH4.atk.com
	([146.168.70.141]) with mapi id 14.03.0174.001;
	Mon, 26 Jan 2015 15:23:13 -0700
From: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>
To: Jim Abernathy <jfabernathy@outlook.com>
Thread-Topic: [yocto] adding all the pieces of WiFi to core-image-minimal
Thread-Index: AQHQNzHOBXOT+dvbvEumcsdhxTNa8JzObX0AgARxsICAAAWRAIAAGw4AgAAHQ4CAAATJgIAAOJKAgAAPuQD//4uoAIAAezgA//+KzmCAAIG/gP//jmCQAA7IaoAADdaVIA==
Date: Mon, 26 Jan 2015 22:23:12 +0000
Message-ID: <7B6FE55CD594D7478CED8A39DF3BFC0A5E73FE0D@UT40SVCWEM001.atk.com>
References: <BAY169-W3CF94A018FE9CEDCFDA90AE360@phx.gbl>,
	<54C286DC.2030708@mlbassoc.com>,
	<BLU436-SMTP223FC22BD6C5BBA26D4AC67AE350@phx.gbl>,
	<54C645E4.9090801@mlbassoc.com>,
	<BLU436-SMTP61151140DD0DF27EB64FC4AE350@phx.gbl>,
	<54C662AD.5070209@mlbassoc.com>,
	<BLU436-SMTP2158922E8CB275AC5BEC8FDAE350@phx.gbl>,
	<BLU437-SMTP87D0A5E6ADCA0CE3EDCE83AE350@phx.gbl>,
	<B99A39DA-A006-4E48-BDFF-9E9FB49CF11F@keylevel.com>,
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E73ED7A@UT40SVCWEM001.atk.com>,
	<BLU437-SMTP1667751EFD409D5161CADCAE350@phx.gbl>,
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E73FDA7@UT40SVCWEM001.atk.com>,
	<BAY169-W5745C4E1B4E3F2071FB66AAE350@phx.gbl>,
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E73FDDB@UT40SVCWEM001.atk.com>
	<BAY169-W852BAB9A641A6AC4CE5E43AE350@phx.gbl>
In-Reply-To: <BAY169-W852BAB9A641A6AC4CE5E43AE350@phx.gbl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.99.32.35]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: adding all the pieces of WiFi to core-image-minimal
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
X-List-Received-Date: Mon, 26 Jan 2015 22:23:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E73FE0DUT40SVCWEM001at_"

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E73FE0DUT40SVCWEM001at_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

core-image-base installs packagegroup-base-extended, whereas core-image-min=
imal doesn't. packagegroup-base-extended adds things like kernel modules an=
d other package groups that you'll want for a more full-featured system.

Thomas

From: Jim Abernathy [mailto:jfabernathy@outlook.com]
Sent: Monday, January 26, 2015 3:54 PM
To: Moore, Thomas (FtWorth)
Cc: Chris Tapp; yocto@yoctoproject.org; Gary Thomas
Subject: RE: [yocto] adding all the pieces of WiFi to core-image-minimal


________________________________
From: Thomas.Moore2@ATK.COM
To: jfabernathy@outlook.com
CC: opensource@keylevel.com; yocto@yoctoproject.org; gary@mlbassoc.com
Subject: RE: [yocto] adding all the pieces of WiFi to core-image-minimal
Date: Mon, 26 Jan 2015 21:51:47 +0000
Looks like you also need to add ipv4 to the DISTRO_FEATURES:

DISTRO_FEATURES +=3D "ipv4 wifi"

Might be worth trying.

Thomas

I'll test with it, but why core-image-base vs. core-image-minimal?

Jim A
From: Jim Abernathy [mailto:jfabernathy@outlook.com]
Sent: Monday, January 26, 2015 3:38 PM
To: Moore, Thomas (FtWorth)
Cc: Chris Tapp; yocto@yoctoproject.org; Gary Thomas
Subject: RE: [yocto] adding all the pieces of WiFi to core-image-minimal


> From: Thomas.Moore2@ATK.COM
> To: jfabernathy@outlook.com
> CC: opensource@keylevel.com; yocto@yoctoproject.org; gary@mlbassoc.com
> Subject: RE: [yocto] adding all the pieces of WiFi to core-image-minimal
> Date: Mon, 26 Jan 2015 21:04:54 +0000
>
> For now, I'd just get everything working with the local.conf:
>
> DISTRO_FEATURES +=3D "wifi"
>
> bitbake core-image-base
>
> Ultimately, you may want to make a custom machine and distro config and i=
ncorporate all of the things you've specified in local.conf in those config=
s. For example, I have a system that's an intel-based single-board computer=
 with several expansion cards. I've created a machine configuration to defi=
ne the basic hardware components (features, drivers, etc). I've also create=
d a custom distro because we prefer system over systemv and to include some=
 other non-machine specific packages. Finally, I've created a custom image =
that includes some other extras.
>
> The power of local.conf is nice, but it's a little tricky transitioning f=
rom that to more of a BSP approach like I described above because most peop=
le just say to add it to your local.conf, but that's not really how it shou=
ld be done at the end. Think global variables vs classes.
>
> P.S. Never edit anything in the poky folder. If you want to modify an exi=
sting recipe, create a new layer with a bbappend and modify away.
>
> Thomas
>
>
I tried just adding DISTRO_FEATURES +=3D "wifi" to the local.conf and bitba=
king core-image-base, but I got a lot of errors:

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'glibc'
ERROR: glibc was skipped: missing required distro feature 'ipv4' (not in DI=
STRO_FEATURES)
ERROR: Required build target 'core-image-base' has no buildable providers.
Missing or unbuildable dependency chain was: ['core-image-base', 'glibc']

So I got it working with core-image-minimal as I mentioned earlier just bef=
ore your reply.

> -----Original Message-----
> From: James Abernathy [mailto:jfabernathy@outlook.com]<mailto:[mailto:jfa=
bernathy@outlook.com]>
> Sent: Monday, January 26, 2015 2:53 PM
> To: Moore, Thomas (FtWorth)
> Cc: Chris Tapp; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>; Ga=
ry Thomas
> Subject: Re: [yocto] adding all the pieces of WiFi to core-image-minimal
>
>
> > On Jan 26, 2015, at 3:36 PM, Moore, Thomas (FtWorth) <Thomas.Moore2@ATK=
.COM<mailto:Thomas.Moore2@ATK.COM>> wrote:
> >
> > Try building core-image-base or adding packagegroup-base-extended to yo=
ur IMAGE_INSTALL. This should add the modules and firmware.
> >
> > core-image-minimal is just that and only includes just enough to boot t=
he system.
> >
> > P.S. if you add "wifi" to your DISTRO_FEATURES, then packagegroup-base-=
wifi should automatically get added to the image. Checkout meta/recipes-cor=
e/packagegroups/packagegroup-base.bb to see how that works.
> >
> > Thomas
> >
>
> Interesting! are we talking about doing this in the local.conf? or are we=
 talking about modifying existing recipes? I'd like to do this cleanly and =
not mess up what's in the default files. Maybe create my own layer??
>
> Jim A
>
> > From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.=
org>
> > [mailto:yocto-bounces@yoctoproject.org]<mailto:[mailto:yocto-bounces@yo=
ctoproject.org]> On Behalf Of Chris Tapp
> > Sent: Monday, January 26, 2015 2:28 PM
> > To: James Abernathy
> > Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>; Gary Thomas
> > Subject: Re: [yocto] adding all the pieces of WiFi to
> > core-image-minimal
> >
> >
> > On 26 Jan 2015, at 19:31, James Abernathy <jfabernathy@outlook.com<mail=
to:jfabernathy@outlook.com>> wrote:
> >
> >
> > I get a clean build when I add: CORE_IMAGE_EXTRA_INSTALL +=3D " package=
group-base-wifi"
> >
> > However, I have no wireless drivers. I must have to add something to ad=
d the drivers and firmware to the kernel. Not sure what though.
> >
> > I'm not an expert here, but I think that adding kernel-modules and linu=
x-firmware to your extra_install should give you what you need.
> >
> >
> > Jim A
> >
> > On Jan 26, 2015, at 11:09 AM, James Abernathy <jfabernathy@outlook.com<=
mailto:jfabernathy@outlook.com>> wrote:
> >
> >
> > On Jan 26, 2015, at 10:52 AM, Gary Thomas <gary@mlbassoc.com<mailto:gar=
y@mlbassoc.com>> wrote:
> >
> > On 2015-01-26 08:26, James Abernathy wrote:
> >
> >
> >
> > On Jan 26, 2015, at 8:49 AM, Gary Thomas <gary@mlbassoc.com <mailto:gar=
y@mlbassoc.com<mailto:gary@mlbassoc.com%20%3cmailto:gary@mlbassoc.com>>> wr=
ote:
> >
> > On 2015-01-26 06:29, James Abernathy wrote:
> >
> >
> >
> > On Jan 23, 2015, at 12:37 PM, Gary Thomas <gary@mlbassoc.com <mailto:ga=
ry@mlbassoc.com<mailto:gary@mlbassoc.com%20%3cmailto:gary@mlbassoc.com>>> w=
rote:
> >
> > On 2015-01-23 10:24, Jim Abernathy wrote:
> >
> > I'm starting a project mostly for self-education. I have already done
> > the project using Ubuntu Server 14.04 using a Intel NUC and a Pandaboar=
d as targets. Now I want to see how easy it is to move it to Yocto.
> >
> > Starting with the NUC, I can boot Dizzy 1.7.1 core-image-minimal and
> > core-image-sato, both built with bitbake and not the prebuilt images. H=
owever, core-image-minimal doesn't have WiFi and core-image-sato does, but =
I don't need all the GUI stuff. It's a headless application.
> >
> > So what is recommended; eliminating the GUI from sato or adding wifi
> > and wpa-supplicant, etc to minimal?? Also any pointers to how to do the=
 adding/subtracting would be most helpful.
> >
> > Once this is working all I have to do is put apache-tomcat, and openjdk=
-7-jre, then my application.
> >
> > We use just iw & wpa-supplicant and set up the configuration files
> > manually (e.g. the wpa-supplicant configurations).
> >
> > Could you help with a little more details. What I envision is adding
> > an append statement of some kind to local.conf to load in the wireless =
related files to core-image-minimal, same with openjdk-7-jre and tomcat7, b=
ut my first efforts have generated some unintelligible error for me. So tha=
t's why I'm looking for direction on where to start with this.
> >
> > What was the error you got? I'll bet it was for 'iw' which is a
> > package from meta-oe, so you'll need to add that layer
> >
> > Once you've added the meta-oe layer, you should be able to put this
> > line in your local.conf:
> > CORE_IMAGE_EXTRA_INSTALL +=3D " iw wpa-supplicant"
> > Okay, what I don't get is the fact that without any additional layers,
> > bitbake core-image-sato builds all the WiFi features I need. bitbake co=
re-image-minimal does not. So I'm thinking that there is some CORE_IMAGE_EX=
TRA_INSTALL statement that can just add what is needed without extra layers=
.
> >
> > I guess it just doesn't make sense to me right now.
> >
> > Try using
> > CORE_IMAGE_EXTRA_INSTALL +=3D " packagegroup-base-wifi"
> > which will bring in 'wireless-tools' and 'wpa-supplicant'.
> >
> > I prefer 'iw' to 'wireless-tools' as it is newer and [IMO] simpler to
> > use.
> > Thanks, I found that I can clean build with just the wpa-supplicant add=
ed and I'm hoping that will bring in the wifi drivers. If it does, all I wa=
nt to do is edit the /etc/interfaces file with the Static IP of the wlan0, =
the static IP of the eth0 and the wpa-xxx for the WKPA2_PSK information.
> >
> > Do I really need the tools? I don't need CLI commands to change any net=
work parameters later.
> >
> > Jim A
> >
> >
> > --
> > ------------------------------------------------------------
> > Gary Thomas | Consulting for the
> > MLB Associates | Embedded world
> > ------------------------------------------------------------
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> >
> > Chris Tapp
> > opensource@keylevel.com<mailto:opensource@keylevel.com>
> > www.keylevel.com<http://www.keylevel.com>
> >
> > ----
> > You can tell you're getting older when your car insurance gets real che=
ap!
> >
>

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E73FE0DUT40SVCWEM001at_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
p.ecxmsonormal, li.ecxmsonormal, div.ecxmsonormal
	{mso-style-name:ecxmsonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.ecxmsoacetate, li.ecxmsoacetate, div.ecxmsoacetate
	{mso-style-name:ecxmsoacetate;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.ecxmsochpdefault, li.ecxmsochpdefault, div.ecxmsochpdefault
	{mso-style-name:ecxmsochpdefault;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.ecxmsohyperlink
	{mso-style-name:ecxmsohyperlink;}
span.ecxmsohyperlinkfollowed
	{mso-style-name:ecxmsohyperlinkfollowed;}
span.ecxemailstyle18
	{mso-style-name:ecxemailstyle18;}
span.ecxballoontextchar
	{mso-style-name:ecxballoontextchar;}
p.ecxmsonormal1, li.ecxmsonormal1, div.ecxmsonormal1
	{mso-style-name:ecxmsonormal1;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.ecxmsohyperlink1
	{mso-style-name:ecxmsohyperlink1;
	color:blue;
	text-decoration:underline;}
span.ecxmsohyperlinkfollowed1
	{mso-style-name:ecxmsohyperlinkfollowed1;
	color:purple;
	text-decoration:underline;}
p.ecxmsoacetate1, li.ecxmsoacetate1, div.ecxmsoacetate1
	{mso-style-name:ecxmsoacetate1;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.ecxemailstyle181
	{mso-style-name:ecxemailstyle181;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.ecxballoontextchar1
	{mso-style-name:ecxballoontextchar1;
	font-family:"Tahoma","sans-serif";}
p.ecxmsochpdefault1, li.ecxmsochpdefault1, div.ecxmsochpdefault1
	{mso-style-name:ecxmsochpdefault1;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:10.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle32
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">core-image-base installs =
packagegroup-base-extended, whereas core-image-minimal doesn&#8217;t. packa=
gegroup-base-extended adds things like kernel modules and other
 package groups that you&#8217;ll want for a more full-featured system.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thomas</span><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;=
;color:#1F497D"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Jim Aber=
nathy [mailto:jfabernathy@outlook.com]
<br>
<b>Sent:</b> Monday, January 26, 2015 3:54 PM<br>
<b>To:</b> Moore, Thomas (FtWorth)<br>
<b>Cc:</b> Chris Tapp; yocto@yoctoproject.org; Gary Thomas<br>
<b>Subject:</b> RE: [yocto] adding all the pieces of WiFi to core-image-min=
imal<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">
<hr size=3D"2" width=3D"100%" align=3D"center" id=3D"stopSpelling">
</span></div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;">From: Thomas.Moore2@ATK.C=
OM<br>
To: jfabernathy@outlook.com<br>
CC: opensource@keylevel.com; yocto@yoctoproject.org; gary@mlbassoc.com<br>
Subject: RE: [yocto] adding all the pieces of WiFi to core-image-minimal<br=
>
Date: Mon, 26 Jan 2015 21:51:47 &#43;0000<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Looks like you also need =
to add ipv4 to the DISTRO_FEATURES:</span><span style=3D"font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;</span><span style=
=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">DISTRO_FEATURES &#43;=3D =
&quot;ipv4 wifi&quot;</span><span style=3D"font-family:&quot;Calibri&quot;,=
&quot;sans-serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;</span><span style=
=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Might be worth trying.</s=
pan><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;</span><span style=
=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></sp=
an></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thomas</span><span style=
=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></sp=
an></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp;</span><span style=
=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I'll test with it, but wh=
y core-image-base vs. core-image-minimal?</span><span style=3D"font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F=
497D">Jim A</span><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans=
-serif&quot;"><o:p></o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Jim Aber=
nathy [mailto:jfabernathy@outlook.com]
<br>
<b>Sent:</b> Monday, January 26, 2015 3:38 PM<br>
<b>To:</b> Moore, Thomas (FtWorth)<br>
<b>Cc:</b> Chris Tapp; yocto@yoctoproject.org; Gary Thomas<br>
<b>Subject:</b> RE: [yocto] adding all the pieces of WiFi to core-image-min=
imal</span><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&=
quot;"><o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;">&nbsp;<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,&quot=
;sans-serif&quot;">&gt; From: Thomas.Moore2@ATK.COM<br>
&gt; To: jfabernathy@outlook.com<br>
&gt; CC: opensource@keylevel.com; yocto@yoctoproject.org; gary@mlbassoc.com=
<br>
&gt; Subject: RE: [yocto] adding all the pieces of WiFi to core-image-minim=
al<br>
&gt; Date: Mon, 26 Jan 2015 21:04:54 &#43;0000<br>
&gt; <br>
&gt; For now, I'd just get everything working with the local.conf:<br>
&gt; <br>
&gt; DISTRO_FEATURES &#43;=3D &quot;wifi&quot;<br>
&gt; <br>
&gt; bitbake core-image-base<br>
&gt; <br>
&gt; Ultimately, you may want to make a custom machine and distro config an=
d incorporate all of the things you've specified in local.conf in those con=
figs. For example, I have a system that's an intel-based single-board compu=
ter with several expansion cards. I've
 created a machine configuration to define the basic hardware components (f=
eatures, drivers, etc). I've also created a custom distro because we prefer=
 system over systemv and to include some other non-machine specific package=
s. Finally, I've created a custom
 image that includes some other extras.<br>
&gt; <br>
&gt; The power of local.conf is nice, but it's a little tricky transitionin=
g from that to more of a BSP approach like I described above because most p=
eople just say to add it to your local.conf, but that's not really how it s=
hould be done at the end. Think global
 variables vs classes.<br>
&gt; <br>
&gt; P.S. Never edit anything in the poky folder. If you want to modify an =
existing recipe, create a new layer with a bbappend and modify away.<br>
&gt; <br>
&gt; Thomas<br>
&gt; <br>
&gt; <br>
I tried just adding DISTRO_FEATURES &#43;=3D &quot;wifi&quot; to the local.=
conf and bitbaking core-image-base, but I got a lot of errors:<br>
<br>
NOTE: Resolving any missing task queue dependencies<br>
ERROR: Nothing PROVIDES 'glibc'<br>
ERROR: glibc was skipped: missing required distro feature 'ipv4' (not in DI=
STRO_FEATURES)<br>
ERROR: Required build target 'core-image-base' has no buildable providers.<=
br>
Missing or unbuildable dependency chain was: ['core-image-base', 'glibc']<b=
r>
<br>
So I got it working with core-image-minimal as I mentioned earlier just bef=
ore your reply.<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: James Abernathy <a href=3D"mailto:[mailto:jfabernathy@outlook.co=
m]">[mailto:jfabernathy@outlook.com]</a>
<br>
&gt; Sent: Monday, January 26, 2015 2:53 PM<br>
&gt; To: Moore, Thomas (FtWorth)<br>
&gt; Cc: Chris Tapp; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctop=
roject.org</a>; Gary Thomas<br>
&gt; Subject: Re: [yocto] adding all the pieces of WiFi to core-image-minim=
al<br>
&gt; <br>
&gt; <br>
&gt; &gt; On Jan 26, 2015, at 3:36 PM, Moore, Thomas (FtWorth) &lt;<a href=
=3D"mailto:Thomas.Moore2@ATK.COM">Thomas.Moore2@ATK.COM</a>&gt; wrote:<br>
&gt; &gt; <br>
&gt; &gt; Try building core-image-base or adding packagegroup-base-extended=
 to your IMAGE_INSTALL. This should add the modules and firmware.<br>
&gt; &gt; <br>
&gt; &gt; core-image-minimal is just that and only includes just enough to =
boot the system.<br>
&gt; &gt; <br>
&gt; &gt; P.S. if you add &quot;wifi&quot; to your DISTRO_FEATURES, then pa=
ckagegroup-base-wifi should automatically get added to the image. Checkout =
meta/recipes-core/packagegroups/packagegroup-base.bb to see how that works.=
<br>
&gt; &gt; <br>
&gt; &gt; Thomas<br>
&gt; &gt; <br>
&gt; <br>
&gt; Interesting! are we talking about doing this in the local.conf? or are=
 we talking about modifying existing recipes? I'd like to do this cleanly a=
nd not mess up what's in the default files. Maybe create my own layer??<br>
&gt; <br>
&gt; Jim A<br>
&gt; <br>
&gt; &gt; From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bou=
nces@yoctoproject.org</a>
<br>
&gt; &gt; <a href=3D"mailto:[mailto:yocto-bounces@yoctoproject.org]">[mailt=
o:yocto-bounces@yoctoproject.org]</a> On Behalf Of Chris Tapp<br>
&gt; &gt; Sent: Monday, January 26, 2015 2:28 PM<br>
&gt; &gt; To: James Abernathy<br>
&gt; &gt; Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>; Gary Thomas<br>
&gt; &gt; Subject: Re: [yocto] adding all the pieces of WiFi to <br>
&gt; &gt; core-image-minimal<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; On 26 Jan 2015, at 19:31, James Abernathy &lt;<a href=3D"mailto:j=
fabernathy@outlook.com">jfabernathy@outlook.com</a>&gt; wrote:<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; I get a clean build when I add: CORE_IMAGE_EXTRA_INSTALL &#43;=3D=
 &quot; packagegroup-base-wifi&quot;<br>
&gt; &gt; <br>
&gt; &gt; However, I have no wireless drivers. I must have to add something=
 to add the drivers and firmware to the kernel. Not sure what though.<br>
&gt; &gt; <br>
&gt; &gt; I'm not an expert here, but I think that adding kernel-modules an=
d linux-firmware to your extra_install should give you what you need.<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; Jim A<br>
&gt; &gt; <br>
&gt; &gt; On Jan 26, 2015, at 11:09 AM, James Abernathy &lt;<a href=3D"mail=
to:jfabernathy@outlook.com">jfabernathy@outlook.com</a>&gt; wrote:<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; On Jan 26, 2015, at 10:52 AM, Gary Thomas &lt;<a href=3D"mailto:g=
ary@mlbassoc.com">gary@mlbassoc.com</a>&gt; wrote:<br>
&gt; &gt; <br>
&gt; &gt; On 2015-01-26 08:26, James Abernathy wrote:<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; On Jan 26, 2015, at 8:49 AM, Gary Thomas &lt;<a href=3D"mailto:ga=
ry@mlbassoc.com%20%3cmailto:gary@mlbassoc.com">gary@mlbassoc.com &lt;mailto=
:gary@mlbassoc.com</a>&gt;&gt; wrote:<br>
&gt; &gt; <br>
&gt; &gt; On 2015-01-26 06:29, James Abernathy wrote:<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; On Jan 23, 2015, at 12:37 PM, Gary Thomas &lt;<a href=3D"mailto:g=
ary@mlbassoc.com%20%3cmailto:gary@mlbassoc.com">gary@mlbassoc.com &lt;mailt=
o:gary@mlbassoc.com</a>&gt;&gt; wrote:<br>
&gt; &gt; <br>
&gt; &gt; On 2015-01-23 10:24, Jim Abernathy wrote:<br>
&gt; &gt; <br>
&gt; &gt; I'm starting a project mostly for self-education. I have already =
done <br>
&gt; &gt; the project using Ubuntu Server 14.04 using a Intel NUC and a Pan=
daboard as targets. Now I want to see how easy it is to move it to Yocto.<b=
r>
&gt; &gt; <br>
&gt; &gt; Starting with the NUC, I can boot Dizzy 1.7.1 core-image-minimal =
and <br>
&gt; &gt; core-image-sato, both built with bitbake and not the prebuilt ima=
ges. However, core-image-minimal doesn't have WiFi and core-image-sato does=
, but I don't need all the GUI stuff. It's a headless application.<br>
&gt; &gt; <br>
&gt; &gt; So what is recommended; eliminating the GUI from sato or adding w=
ifi <br>
&gt; &gt; and wpa-supplicant, etc to minimal?? Also any pointers to how to =
do the adding/subtracting would be most helpful.<br>
&gt; &gt; <br>
&gt; &gt; Once this is working all I have to do is put apache-tomcat, and o=
penjdk-7-jre, then my application.<br>
&gt; &gt; <br>
&gt; &gt; We use just iw &amp; wpa-supplicant and set up the configuration =
files <br>
&gt; &gt; manually (e.g. the wpa-supplicant configurations).<br>
&gt; &gt; <br>
&gt; &gt; Could you help with a little more details. What I envision is add=
ing <br>
&gt; &gt; an append statement of some kind to local.conf to load in the wir=
eless related files to core-image-minimal, same with openjdk-7-jre and tomc=
at7, but my first efforts have generated some unintelligible error for me. =
So that's why I'm looking for direction
 on where to start with this.<br>
&gt; &gt; <br>
&gt; &gt; What was the error you got? I'll bet it was for 'iw' which is a <=
br>
&gt; &gt; package from meta-oe, so you'll need to add that layer<br>
&gt; &gt; <br>
&gt; &gt; Once you've added the meta-oe layer, you should be able to put th=
is <br>
&gt; &gt; line in your local.conf:<br>
&gt; &gt; CORE_IMAGE_EXTRA_INSTALL &#43;=3D &quot; iw wpa-supplicant&quot;<=
br>
&gt; &gt; Okay, what I don't get is the fact that without any additional la=
yers, <br>
&gt; &gt; bitbake core-image-sato builds all the WiFi features I need. bitb=
ake core-image-minimal does not. So I'm thinking that there is some CORE_IM=
AGE_EXTRA_INSTALL statement that can just add what is needed without extra =
layers.<br>
&gt; &gt; <br>
&gt; &gt; I guess it just doesn't make sense to me right now.<br>
&gt; &gt; <br>
&gt; &gt; Try using<br>
&gt; &gt; CORE_IMAGE_EXTRA_INSTALL &#43;=3D &quot; packagegroup-base-wifi&q=
uot;<br>
&gt; &gt; which will bring in 'wireless-tools' and 'wpa-supplicant'.<br>
&gt; &gt; <br>
&gt; &gt; I prefer 'iw' to 'wireless-tools' as it is newer and [IMO] simple=
r to <br>
&gt; &gt; use.<br>
&gt; &gt; Thanks, I found that I can clean build with just the wpa-supplica=
nt added and I'm hoping that will bring in the wifi drivers. If it does, al=
l I want to do is edit the /etc/interfaces file with the Static IP of the w=
lan0, the static IP of the eth0 and the
 wpa-xxx for the WKPA2_PSK information. <br>
&gt; &gt; <br>
&gt; &gt; Do I really need the tools? I don't need CLI commands to change a=
ny network parameters later.<br>
&gt; &gt; <br>
&gt; &gt; Jim A<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; --<br>
&gt; &gt; ------------------------------------------------------------<br>
&gt; &gt; Gary Thomas | Consulting for the<br>
&gt; &gt; MLB Associates | Embedded world<br>
&gt; &gt; ------------------------------------------------------------<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &gt; <br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &gt; <br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &gt; <br>
&gt; &gt; --<br>
&gt; &gt; <br>
&gt; &gt; Chris Tapp<br>
&gt; &gt; <a href=3D"mailto:opensource@keylevel.com">opensource@keylevel.co=
m</a><br>
&gt; &gt; <a href=3D"http://www.keylevel.com" target=3D"_blank">www.keyleve=
l.com</a><br>
&gt; &gt; <br>
&gt; &gt; ----<br>
&gt; &gt; You can tell you're getting older when your car insurance gets re=
al cheap!<br>
&gt; &gt; <br>
&gt; <o:p></o:p></span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_7B6FE55CD594D7478CED8A39DF3BFC0A5E73FE0DUT40SVCWEM001at_--
