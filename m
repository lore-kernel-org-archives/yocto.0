Return-Path: <alexander.haenel-baas@sieb-meyer.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B658E008E5; Wed, 21 Jan 2015 04:32:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 70 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Jan 2015 04:32:06 PST
Received: from mail.sieb-meyer.de (smnotes1.sieb-meyer.de [213.252.170.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A096E00894
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 04:32:06 -0800 (PST)
Received: from SMEXCHANGE01.siebmeyer.org ([::1]) by
	SMExchange01.siebmeyer.org ([::1]) with mapi id 14.02.0387.000;
	Wed, 21 Jan 2015 13:30:48 +0100
From: =?iso-8859-1?Q?H=E4nel-Baas=2C_Alexander?=
	<alexander.haenel-baas@sieb-meyer.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Ls1021a how i include nfs-utils correcty
Thread-Index: AdA1dfJ/H2aszlLzTiOKAJL+/s+rew==
Date: Wed, 21 Jan 2015 12:30:47 +0000
Message-ID: <9BA84827B30CBE4996725F98F7DC9123428FB05D@SMExchange01.siebmeyer.org>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.11.207]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
Subject: Ls1021a how i include nfs-utils correcty
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
X-List-Received-Date: Wed, 21 Jan 2015 12:32:10 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_9BA84827B30CBE4996725F98F7DC9123428FB05DSMExchange01sie_"

--_000_9BA84827B30CBE4996725F98F7DC9123428FB05DSMExchange01sie_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi

I work with the Layerscape 1021a ,that comes with yocto, i can create the i=
mage, dtb und rootfs and start my target.
But I cannot mount a nfs directory via "mount -t nfs".

The Error message say:
"mount: wrong fs type, bad option, bad superblock on 172.16.17.63:/home/sm/=
myExport,
       missing codepage or helper program, or other error
       (for several filesystems (e.g. nfs, cifs) you might
       need a /sbin/mount.<type> helper program)
       In some cases useful info is found in syslog - try
       dmesg | tail or so."

And right in /sbin are no nfs helper.

So i start yocto select my machine (ls1021atwr), the image recipes (lsl-ima=
ge-core) press the "edit image recipe" button, the "All recipes" button
And search for nfs and then I included the nfs-utils manually by activate t=
he checkbox. Then I press the "Build packages" button.
Then yocto print "Building packages..." then shows "Step 2 of 2"
and I'm wondering because in the Included Packages  nfs-utils are not shown=
!!!

So I go to the "all package tab" an include the nfs-utils again.
And finally I build the image.
Yocto creates a new image, that can boot, but it has no changes. No nfs-uti=
ls are included!

The I press the edit recipes button and look under includet recipies/all re=
cipies and my before selected nfs-utils are NOT included.


My question are:
What is going wrong?
How I added the nfs-utils correctly?

Best regards
                Alexander


--_000_9BA84827B30CBE4996725F98F7DC9123428FB05DSMExchange01sie_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Sprechblasentext Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.SprechblasentextZchn
	{mso-style-name:"Sprechblasentext Zchn";
	mso-style-priority:99;
	mso-style-link:Sprechblasentext;
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I work with the Layerscape 1021=
a ,that comes with yocto, i can create the image, dtb und rootfs and start =
my target.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">But I cannot mount a nfs direct=
ory via &#8220;mount -t nfs&#8221;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The Error message say:<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8220;mount: wrong fs type, ba=
d option, bad superblock on 172.16.17.63:/home/sm/myExport,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; missing codepage or helper program, or other error<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; (for several filesystems (e.g. nfs, cifs) you might<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; need a /sbin/mount.&lt;type&gt; helper program)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; In some cases useful info is found in syslog - try<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; dmesg | tail or so.&#8221; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">And right in /sbin are no nfs h=
elper.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So i start yocto select my mach=
ine (ls1021atwr), the image recipes (lsl-image-core) press the &#8220;edit =
image recipe&#8221; button, the &#8220;All recipes&#8221; button<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">And search for nfs and then I i=
ncluded the nfs-utils manually by activate the checkbox. Then I press the &=
#8220;Build packages&#8221; button.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Then yocto print &#8220;Buildin=
g packages&#8230;&#8221; then shows &#8220;Step 2 of 2&#8221;<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">and I&#8217;m wondering because=
 in the Included Packages &nbsp;nfs-utils are not shown!!!
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So I go to the &#8220;all packa=
ge tab&#8221; an include the nfs-utils again.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">And finally I build the image.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Yocto creates a new image, that=
 can boot, but it has no changes. No nfs-utils are included!<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The I press the edit recipes bu=
tton and look under includet recipies/all recipies and my before selected n=
fs-utils are NOT included.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My question are:<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">What is going wrong?<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">How I added the nfs-utils corre=
ctly?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alexander</span=
><span style=3D"mso-fareast-language:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_9BA84827B30CBE4996725F98F7DC9123428FB05DSMExchange01sie_--
