Return-Path: <alexander.haenel-baas@sieb-meyer.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE4C9E00902; Thu, 22 Jan 2015 02:01:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.sieb-meyer.de (smnotes1.sieb-meyer.de [213.252.170.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D24C0E0089B
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 02:00:55 -0800 (PST)
Received: from SMEXCHANGE01.siebmeyer.org ([::1]) by
	SMExchange01.siebmeyer.org ([::1]) with mapi id 14.02.0387.000;
	Thu, 22 Jan 2015 11:00:52 +0100
From: =?iso-8859-1?Q?H=E4nel-Baas=2C_Alexander?=
	<alexander.haenel-baas@sieb-meyer.de>
To: "ting.liu@freescale.com" <ting.liu@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Ls1021a how i include nfs-utils correcty
Thread-Index: AdA1dfJ/H2aszlLzTiOKAJL+/s+rewAsdfdQAABJCUA=
Date: Thu, 22 Jan 2015 10:00:51 +0000
Message-ID: <9BA84827B30CBE4996725F98F7DC9123428FB26D@SMExchange01.siebmeyer.org>
References: <9BA84827B30CBE4996725F98F7DC9123428FB05D@SMExchange01.siebmeyer.org>
	<CY1PR0301MB11945F556F071058D14A65F893490@CY1PR0301MB1194.namprd03.prod.outlook.com>
In-Reply-To: <CY1PR0301MB11945F556F071058D14A65F893490@CY1PR0301MB1194.namprd03.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.11.207]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
Subject: Re: Ls1021a how i include nfs-utils correcty
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
X-List-Received-Date: Thu, 22 Jan 2015 10:01:04 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_9BA84827B30CBE4996725F98F7DC9123428FB26DSMExchange01sie_"

--_000_9BA84827B30CBE4996725F98F7DC9123428FB26DSMExchange01sie_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi ting

Thank you for your reply.

Yes, the link are ok
lrwxrwxrwx    1 root     root            21 Jan 22 07:59 mount -> /bin/moun=
t.util-linux

but I found out that the helper program under /sbin are not exist.

I don't know how I changed util-linux mount to busybox mount applet.

Yes I try to used hob.
Alex

Von: ting.liu@freescale.com [mailto:ting.liu@freescale.com]
Gesendet: Donnerstag, 22. Januar 2015 10:48
An: H=E4nel-Baas, Alexander; yocto@yoctoproject.org
Betreff: RE: Ls1021a how i include nfs-utils correcty



From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org] On Behalf Of H?nel-Baas, Alexander
Sent: Wednesday, January 21, 2015 8:31 PM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] Ls1021a how i include nfs-utils correcty

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

[Liu Ting-B28495] check if your mount is linked to mount.util-linux: bin/mo=
unt -> /bin/mount.util-linux
try to use the mount applet provided by busybox or mount.nfs provided by nf=
s-utils.

And right in /sbin are no nfs helper.

So i start yocto select my machine (ls1021atwr), the image recipes (lsl-ima=
ge-core) press the "edit image recipe" button, the "All recipes" button
And search for nfs and then I included the nfs-utils manually by activate t=
he checkbox. Then I press the "Build packages" button.
Then yocto print "Building packages..." then shows "Step 2 of 2"
and I'm wondering because in the Included Packages  nfs-utils are not shown=
!!!

[Liu Ting-B28495] are you using hob?
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


--_000_9BA84827B30CBE4996725F98F7DC9123428FB26DSMExchange01sie_
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
	font-family:"Calibri","sans-serif";}
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
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.SprechblasentextZchn
	{mso-style-name:"Sprechblasentext Zchn";
	mso-style-priority:99;
	mso-style-link:Sprechblasentext;
	font-family:"Tahoma","sans-serif";}
p.BalloonText, li.BalloonText, div.BalloonText
	{mso-style-name:"Balloon Text";
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.E-MailFormatvorlage21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.E-MailFormatvorlage22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.E-MailFormatvorlage23
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi ting<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Thank y=
ou for your reply.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Yes, th=
e link are ok<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">lrwxrwx=
rwx&nbsp;&nbsp;&nbsp; 1 root&nbsp;&nbsp;&nbsp;&nbsp; root&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 21 Jan 22 07:59 mount -&gt=
; /bin/mount.util-linux<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">but I f=
ound out that the helper program under /sbin are not exist.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">I don&#=
8217;t know how I changed util-linux mount to busybox mount applet.<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Yes I t=
ry to used hob.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">Alex<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">Von:</span></b><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> ting.liu@=
freescale.com [mailto:ting.liu@freescale.com]
<br>
<b>Gesendet:</b> Donnerstag, 22. Januar 2015 10:48<br>
<b>An:</b> H=E4nel-Baas, Alexander; yocto@yoctoproject.org<br>
<b>Betreff:</b> RE: Ls1021a how i include nfs-utils correcty<o:p></o:p></sp=
an></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">&nbsp;<=
/span><span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">&nbsp;<=
/span><span lang=3D"EN-US"><o:p></o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoprojec=
t.org</a> [<a href=3D"mailto:yocto-bounces@yoctoproject.org">mailto:yocto-b=
ounces@yoctoproject.org</a>]
<b>On Behalf Of </b>H?nel-Baas, Alexander<br>
<b>Sent:</b> Wednesday, January 21, 2015 8:31 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
<b>Subject:</b> [yocto] Ls1021a how i include nfs-utils correcty</span><spa=
n lang=3D"EN-US"><o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal">Hi<span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal">&nbsp;<span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I work with the Layerscape 1021=
a ,that comes with yocto, i can create the image, dtb und rootfs and start =
my target.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">But I cannot mount a nfs direct=
ory via &#8220;mount -t nfs&#8221;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">&nbsp;<=
/span><span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-US" style=3D"color:#1F497D">[=
Liu Ting-B28495] check if your mount is linked to mount.util-linux: bin/mou=
nt -&gt; /bin/mount.util-linux
</span></i></b><span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-US" style=3D"color:#1F497D">t=
ry to use the mount applet provided by busybox or mount.nfs provided by nfs=
-utils.</span></i></b><span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">&nbsp;<=
/span><span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">And right in /sbin are no nfs h=
elper.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
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
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#1F497D">&nbsp;<=
/span><span lang=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><i><span lang=3D"EN-US" style=3D"color:#1F497D">[=
Liu Ting-B28495] are you using hob?</span></i></b><span lang=3D"EN-US"><o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So I go to the &#8220;all packa=
ge tab&#8221; an include the nfs-utils again.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">And finally I build the image.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Yocto creates a new image, that=
 can boot, but it has no changes. No nfs-utils are included!<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The I press the edit recipes bu=
tton and look under includet recipies/all recipies and my before selected n=
fs-utils are NOT included.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My question are:<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">What is going wrong?<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">How I added the nfs-utils corre=
ctly?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alexander<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal">&nbsp;<span lang=3D"EN-US"><o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_9BA84827B30CBE4996725F98F7DC9123428FB26DSMExchange01sie_--
