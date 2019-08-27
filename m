Return-Path: <j.behnke@schmidttechnology.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54FA2E00DF3; Tue, 27 Aug 2019 01:08:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.schmidttechnology.de (mail.schmidt-technology.co.uk
	[212.185.41.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70F4EE00DD5
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2019 01:08:11 -0700 (PDT)
Received: from ST04.sft.schmidt-feintechnik.de ([fe80::2989:544f:bde7:d994])
	by ST04.sft.schmidt-feintechnik.de ([fe80::2989:544f:bde7:d994%10])
	with mapi id 14.03.0468.000; Tue, 27 Aug 2019 10:08:09 +0200
From: "Behnke, Jochen" <j.behnke@schmidttechnology.de>
To: 'Randy MacLeod' <randy.macleod@windriver.com>
Thread-Topic: AW: [yocto] wic create - bad ownership of directories inside
	image
Thread-Index: AdVQ7HKa1+aWnPsGSzybgn4086sMuQCEZiQAAX7cr+AAPbBBAAB9FyKAADIXtOA=
Date: Tue, 27 Aug 2019 08:08:07 +0000
Message-ID: <55F1D5644E5E5A4493FCBE6156D13CD6AD951209@ST04.sft.schmidt-feintechnik.de>
References: <55F1D5644E5E5A4493FCBE6156D13CD6AD921671@ST04.sft.schmidt-feintechnik.de>
	<05840950-f052-714b-0aac-aa598f209a4c@windriver.com>
	<55F1D5644E5E5A4493FCBE6156D13CD6AD94AA0D@ST04.sft.schmidt-feintechnik.de>
	<229fa285-a92e-aa6b-4742-da8d21197163@windriver.com>
	<55F1D5644E5E5A4493FCBE6156D13CD6AD94EFA4@ST04.sft.schmidt-feintechnik.de>
In-Reply-To: <55F1D5644E5E5A4493FCBE6156D13CD6AD94EFA4@ST04.sft.schmidt-feintechnik.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.41.234]
MIME-Version: 1.0
Cc: "yocto Mailingliste \(yocto@yoctoproject.org\)" <yocto@yoctoproject.org>
Subject: Re: wic create - bad ownership of directories inside image
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
X-List-Received-Date: Tue, 27 Aug 2019 08:08:16 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_55F1D5644E5E5A4493FCBE6156D13CD6AD951209ST04sftschmidtf_"

--_000_55F1D5644E5E5A4493FCBE6156D13CD6AD951209ST04sftschmidtf_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Randy,

FYI
I created a completely new poky clone.
Then I set up a config for "genericx86" and built a core-image-minimal

Here are the results

1)    Using "thud" branch -> problem persisted

2)    Using "warrior" branch  --> problem solved


Regards
Jochen

Von: Behnke, Jochen
Gesendet: Montag, 26. August 2019 10:18
An: 'Randy MacLeod'
Betreff: AW: AW: [yocto] wic create - bad ownership of directories inside i=
mage

Hi Randy,

removing my core-image-minimal.bbappend does not change anything.
I still get the same behavior.

Here are my version
poky 2.6.1

$ bitbake -version
-> 1.40.0

The next step would be to upgrade my poky to the latest version.
Right now I can't do that, but I'll give it a try in the next few weeks.

Many thanks for your assistance.

Regards
Jochen

Von: Randy MacLeod [mailto:randy.macleod@windriver.com]
Gesendet: Samstag, 24. August 2019 00:21
An: Behnke, Jochen; yocto Mailingliste (yocto@yoctoproject.org)
Betreff: Re: AW: [yocto] wic create - bad ownership of directories inside i=
mage

On 8/22/19 11:23 AM, Behnke, Jochen wrote:
Hello Randy,

thanks for your reponse and sorry for my late reaction.

In order to test, if the problem can be reproduced reliably, I performed a =
clean rebuild as follows

$ source oe-init-build-env build-tca5-32
$ rm -rf tmp
$ rm -rf sstate-cache
$ bitbake core-image-minimal
$ wic create mkefidisk -e core-image-minmal

I then mounted the resulting image file "mkefidisk-201908221701-sda.direct"=
 using a loopback device (losetup)
Inside the Image all directories have UID/GID 1000/1000, which corresponds =
to my host user.
Files however have UID/GID 0/0.

Hi Jochen,

I'm not able to reproduce the error, see below (1).

What version of oe-core/bitbake are you using?

I'm using the latest master branches:

oe-core: 64f9fd2a1e quilt: added less to RDEPENDS list
bitbake:  28b3f0d8  runqueue: Optimise build_taskdepdata slightly



So the answer to your question is "yes I can reproduce the behavior".

One sidenote
- I am using an appended core-image-minimal not the default





What is the bbappend? Is it publicly clonable? What happens if you drop tha=
t addition?

../Randy



(1)

I followed your steps above and mounted my image as follows:

$ fdisk -l mkefidisk-201908230902-sda.direct
Disk mkefidisk-201908230902-sda.direct: 94.4 MiB, 98956288 bytes, 193274 se=
ctors
Units: sectors of 1 * 512 =3D 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: 1E5F9B4E-ED8A-4677-82CD-7B146807C145

Device                              Start    End Sectors  Size Type
mkefidisk-201908230902-sda.direct1   2048  51433   49386 24.1M Microsoft ba=
sic data
mkefidisk-201908230902-sda.direct2  53248 103127   49880 24.4M Linux filesy=
stem
mkefidisk-201908230902-sda.direct3 103128 193239   90112   44M Linux swap



# 53248*512 =3D 27262976

$ sudo mount -o loop,offset=3D27262976 ./mkefidisk-201908230902-sda.direct =
/mnt/loop

$ ls -l /mnt/loop/bin/busybox.nosuid
-rwxr-xr-x 1 root root 625296 Aug 23 11:45 /mnt/loop/bin/busybox.nosuid

$ ls -l /mnt/loop/usr | head -3
total 10
drwxr-xr-x 2 root root 3072 Aug 23 11:52 bin
drwxr-xr-x 2 root root 1024 Aug 23 11:29 games



../Randy
- In my other image I am using qt5 (v5.12)



Regards
Jochen

On 8/12/19 5:11 AM, Behnke, Jochen wrote:
> Hello,
>
> I am using poky 2.6.1 (thud) and create images using the wic utility.
>
> Recently I noticed that all directories contained in the created image
> are owned by UID 1000 and not by root. The files inside the image
> however are owned by root.
>
> The UID 1000 refers to my unprivileged user on the host system.
>
> Here is the command I use to create the image
>
> "wic create mkefidisk -e core-image-minimal"
>
> The images created by bitbake directly (.tar.bz2, .hddimg) are correct
> so this seems to be a wic related problem.
>
> Does anybody have a solution for this?

Hi Jochen,

No and I've never seen this particular extreme symptom.

There is a known, generally rare bug:
    Bug 12434 - pseudo: Incorrect UID/GID in packaged files
    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12434
but that usually shows up when building.

You could check you build logs for the generic stings from:

    glibc-locale-2.26: glibc-locale:
    /glibc-binary-localedata-en-gb/usr/lib/locale/en_GB/LC_MEASUREMENT
    is owned by uid 3004, which is the same as the user running bitbake.
    This may be due to host contamination [host-user-contaminated]


Is your issue 100% reproducible?

../Randy


>
> Many thanks in advance, any hint is appreciated.
>
> Regards
>
> Jochen
>
> <gfidisc.SID=3D010500000000000515000000993c4a7a4675257c8b2de024250d0000>
>
>
> __________________________________
> *SCHMIDT Technology GmbH*
> Feldbergstrasse 1
> 78112 St. Georgen/Germany
> Telefon +49 (0) 77 24 / 89 90
> Fax +49 (0) 77 24 / 89 91 01
> info@schmidttechnology.de<mailto:info@schmidttechnology.de> <mailto:info@=
schmidttechnology.de>
> http://www.schmidttechnology.de
>
> USt-Id Nr. DE 811725105 =B7 Registergericht Freiburg HRB 600 755
> Geschaeftsfuehrung: Oliver Schmidt, Stephan Schmidt
>
> <gfidisc.SID=3D010500000000000515000000993c4a7a4675257c8b2de024250d0000>
>
>
>


--
# Randy MacLeod
# Wind River Linux



--

# Randy MacLeod

# Wind River Linux

--_000_55F1D5644E5E5A4493FCBE6156D13CD6AD951209ST04sftschmidtf_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
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
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:Consolas;
	color:black;}
p.emailquote, li.emailquote, div.emailquote
	{mso-style-name:emailquote;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:1.0pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
span.E-MailFormatvorlage22
	{mso-style-type:personal;
	font-family:"Arial","sans-serif";
	color:#1F497D;}
span.E-MailFormatvorlage23
	{mso-style-type:personal-reply;
	font-family:"Arial","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1441796584;
	mso-list-type:hybrid;
	mso-list-template-ids:1920525086 67567633 67567641 67567643 67567631 67567=
641 67567643 67567631 67567641 67567643;}
@list l0:level1
	{mso-level-text:"%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
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
<body bgcolor=3D"white" lang=3D"DE" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Randy,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">FYI<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">I created a =
completely new poky clone.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">Then I set u=
p a config for &#8220;genericx86&#8221; and built a core-image-minimal<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">Here are the=
 results<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US" style=3D"font-size:11.0p=
t;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D"><span=
 style=3D"mso-list:Ignore">1)<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US" style=3D"font-size:11.0=
pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">Usin=
g &#8220;thud&#8221; branch -&gt; problem persisted<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1"><![if !supportLists]><span lang=3D"EN-US" style=3D"font-size:11.0p=
t;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D"><span=
 style=3D"mso-list:Ignore">2)<span style=3D"font:7.0pt &quot;Times New Roma=
n&quot;">&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span lang=3D"EN-US" style=3D"font-size:11.0=
pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">Usin=
g &#8220;warrior&#8221; branch &nbsp;</span><span lang=3D"EN-US" style=3D"f=
ont-size:11.0pt;font-family:Wingdings;color:#1F497D">=E0</span><span lang=
=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;;color:#1F497D">
 problem solved<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;<=
/o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">Jochen<o:p><=
/o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">Von:</span></b><span=
 style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&=
quot;;color:windowtext"> Behnke, Jochen
<br>
<b>Gesendet:</b> Montag, 26. August 2019 10:18<br>
<b>An:</b> 'Randy MacLeod'<br>
<b>Betreff:</b> AW: AW: [yocto] wic create - bad ownership of directories i=
nside image<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Randy,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">removing my =
core-image-minimal.bbappend does not change anything.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">I still get =
the same behavior.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">Here are my =
version<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">poky 2.6.1
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">$ bitbake &#=
8211;version<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">-&gt; 1.40.0=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">The next ste=
p would be to upgrade my poky to the latest version.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">Right now I =
can&#8217;t do that, but I&#8217;ll give it a try in the next few weeks.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;<=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">Many thanks =
for your assistance.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;<=
/o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#1F497D">Jochen<o:p><=
/o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">Von:</span></b><span=
 style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&=
quot;;color:windowtext"> Randy MacLeod [mailto:randy.macleod@windriver.com]
<br>
<b>Gesendet:</b> Samstag, 24. August 2019 00:21<br>
<b>An:</b> Behnke, Jochen; yocto Mailingliste (yocto@yoctoproject.org)<br>
<b>Betreff:</b> Re: AW: [yocto] wic create - bad ownership of directories i=
nside image<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On 8/22/19 11:23 AM, Behnke, Jochen wrote:<o:p></o:p=
></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal"><a name=3D"BM_BEGIN"></a><span style=3D"font-size:10=
.0pt">Hello Randy,<br>
<br>
thanks for your reponse and sorry for my late reaction.<br>
<br>
In order to test, if the problem can be reproduced reliably, I performed a =
clean rebuild as follows<br>
<br>
$ source oe-init-build-env build-tca5-32<br>
$ rm -rf tmp<br>
$ rm -rf sstate-cache<br>
$ bitbake core-image-minimal<br>
$ wic create mkefidisk -e core-image-minmal<br>
<br>
I then mounted the resulting image file &quot;mkefidisk-201908221701-sda.di=
rect&quot; using a loopback device (losetup)<br>
Inside the Image all directories have UID/GID 1000/1000, which corresponds =
to my host user.<br>
Files however have UID/GID 0/0.</span><o:p></o:p></p>
</div>
</blockquote>
<p>Hi Jochen,<o:p></o:p></p>
<p>I'm not able to reproduce the error, see below (1).<o:p></o:p></p>
<p>What version of oe-core/bitbake are you using?<o:p></o:p></p>
<p>I'm using the latest master branches:<o:p></o:p></p>
<p style=3D"margin-bottom:12.0pt">oe-core: 64f9fd2a1e quilt: added less to =
RDEPENDS list<br>
bitbake:&nbsp; 28b3f0d8&nbsp; runqueue: Optimise build_taskdepdata slightly=
<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt"><br>
So the answer to your question is &quot;yes I can reproduce the behavior&qu=
ot;.<br>
<br>
One sidenote<br>
- I am using an appended core-image-minimal not the default</span><o:p></o:=
p></p>
</div>
</blockquote>
<p><o:p>&nbsp;</o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>What is the bbappend? Is it publicly clonable? What happens if you drop =
that addition?<o:p></o:p></p>
<p>../Randy<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>(1)<o:p></o:p></p>
<p>I followed your steps above and mounted my image as follows:<o:p></o:p><=
/p>
<p>$ fdisk -l mkefidisk-201908230902-sda.direct<br>
Disk mkefidisk-201908230902-sda.direct: 94.4 MiB, 98956288 bytes, 193274 se=
ctors<br>
Units: sectors of 1 * 512 =3D 512 bytes<br>
Sector size (logical/physical): 512 bytes / 512 bytes<br>
I/O size (minimum/optimal): 512 bytes / 512 bytes<br>
Disklabel type: gpt<br>
Disk identifier: 1E5F9B4E-ED8A-4677-82CD-7B146807C145<br>
<br>
Device&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start&nbsp;&nbsp;&nbsp; End Sectors&nbsp; Si=
ze Type<br>
mkefidisk-201908230902-sda.direct1&nbsp;&nbsp; 2048&nbsp; 51433&nbsp;&nbsp;=
 49386 24.1M Microsoft basic data<br>
mkefidisk-201908230902-sda.direct2&nbsp; 53248 103127&nbsp;&nbsp; 49880 24.=
4M Linux filesystem<br>
mkefidisk-201908230902-sda.direct3 103128 193239&nbsp;&nbsp; 90112&nbsp;&nb=
sp; 44M Linux swap<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p># 53248*512 =3D 27262976<o:p></o:p></p>
<p>$ sudo mount -o loop,offset=3D27262976 ./mkefidisk-201908230902-sda.dire=
ct /mnt/loop<o:p></o:p></p>
<p>$ ls -l /mnt/loop/bin/busybox.nosuid <br>
-rwxr-xr-x 1 root root 625296 Aug 23 11:45 /mnt/loop/bin/busybox.nosuid<o:p=
></o:p></p>
<p>$ ls -l /mnt/loop/usr | head -3<br>
total 10<br>
drwxr-xr-x 2 root root 3072 Aug 23 11:52 bin<br>
drwxr-xr-x 2 root root 1024 Aug 23 11:29 games<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>../Randy<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt">- In my other image=
 I am using qt5 (v5.12)<br>
<br>
<br>
<br>
Regards<br>
Jochen<br>
<br>
On 8/12/19 5:11 AM, Behnke, Jochen wrote:<br>
&gt; Hello,<br>
&gt; <br>
&gt; I am using poky 2.6.1 (thud) and create images using the wic utility.<=
br>
&gt; <br>
&gt; Recently I noticed that all directories contained in the created image=
 <br>
&gt; are owned by UID 1000 and not by root. The files inside the image <br>
&gt; however are owned by root.<br>
&gt; <br>
&gt; The UID 1000 refers to my unprivileged user on the host system.<br>
&gt; <br>
&gt; Here is the command I use to create the image<br>
&gt; <br>
&gt; &#8220;wic create mkefidisk &#8211;e core-image-minimal&#8221;<br>
&gt; <br>
&gt; The images created by bitbake directly (.tar.bz2, .hddimg) are correct=
 <br>
&gt; so this seems to be a wic related problem.<br>
&gt; <br>
&gt; Does anybody have a solution for this?<br>
<br>
Hi Jochen,<br>
<br>
No and I've never seen this particular extreme symptom.<br>
<br>
There is a known, generally rare bug:<br>
&nbsp;&nbsp;&nbsp; Bug 12434 - pseudo: Incorrect UID/GID in packaged files<=
br>
&nbsp;&nbsp;&nbsp; <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cg=
i?id=3D12434">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12434</a>=
<br>
but that usually shows up when building.<br>
<br>
You could check you build logs for the generic stings from:<br>
<br>
&nbsp;&nbsp;&nbsp; glibc-locale-2.26: glibc-locale:<br>
&nbsp;&nbsp;&nbsp; /glibc-binary-localedata-en-gb/usr/lib/locale/en_GB/LC_M=
EASUREMENT<br>
&nbsp;&nbsp;&nbsp; is owned by uid 3004, which is the same as the user runn=
ing bitbake.<br>
&nbsp;&nbsp;&nbsp; This may be due to host contamination [host-user-contami=
nated]<br>
<br>
<br>
Is your issue 100% reproducible?<br>
<br>
../Randy<br>
<br>
<br>
&gt; <br>
&gt; Many thanks in advance, any hint is appreciated.<br>
&gt; <br>
&gt; Regards<br>
&gt; <br>
&gt; Jochen<br>
&gt; <br>
&gt; &lt;gfidisc.SID=3D010500000000000515000000993c4a7a4675257c8b2de024250d=
0000&gt;<br>
&gt; <br>
&gt; <br>
&gt; __________________________________<br>
&gt; *SCHMIDT Technology GmbH*<br>
&gt; Feldbergstrasse 1<br>
&gt; 78112 St. Georgen/Germany<br>
&gt; Telefon &#43;49 (0) 77 24 / 89 90<br>
&gt; Fax &#43;49 (0) 77 24 / 89 91 01<br>
&gt; <a href=3D"mailto:info@schmidttechnology.de">info@schmidttechnology.de=
</a> &lt;<a href=3D"mailto:info@schmidttechnology.de">mailto:info@schmidtte=
chnology.de</a>&gt;<br>
&gt; <a href=3D"http://www.schmidttechnology.de">http://www.schmidttechnolo=
gy.de</a><br>
&gt; <br>
&gt; USt-Id Nr. DE 811725105 =B7 Registergericht Freiburg HRB 600 755<br>
&gt; Geschaeftsfuehrung: Oliver Schmidt, Stephan Schmidt<br>
&gt; <br>
&gt; &lt;gfidisc.SID=3D010500000000000515000000993c4a7a4675257c8b2de024250d=
0000&gt;<br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
-- <br>
# Randy MacLeod<br>
# Wind River Linux</span><o:p></o:p></p>
</div>
</blockquote>
<p><o:p>&nbsp;</o:p></p>
<pre>-- <o:p></o:p></pre>
<pre># Randy MacLeod<o:p></o:p></pre>
<pre># Wind River Linux<o:p></o:p></pre>
</div>
</div>
</div>
</body>
</html>

--_000_55F1D5644E5E5A4493FCBE6156D13CD6AD951209ST04sftschmidtf_--
