Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64446E0045D
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 14:07:32 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Oct 2012 14:07:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,602,1344236400"; 
	d="scan'208,217";a="228914060"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga002.jf.intel.com with ESMTP; 17 Oct 2012 14:07:20 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.82]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.247]) with mapi id
	14.01.0355.002; Wed, 17 Oct 2012 14:07:20 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Rudolf Streif <rudolf.streif@linux.com>
Thread-Topic: [yocto] Requesting information on some variables
Thread-Index: Ac2sfKRdyc0rTfLZQFek7qOD0wY7zQAPla4AAA5X3RD//9U4gIAAb6TA
Date: Wed, 17 Oct 2012 21:07:20 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A86E2E@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A85CDB@ORSMSX101.amr.corp.intel.com>
	<8390795.VYneHzJZUd@helios>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A85D13@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-ovhd30EZ3R68R=o4=iWb5MJqZAAenwRo2yJg+_Tn1NTQ@mail.gmail.com>
In-Reply-To: <CA+gsK-ovhd30EZ3R68R=o4=iWb5MJqZAAenwRo2yJg+_Tn1NTQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Requesting information on some variables
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 17 Oct 2012 21:07:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A86E2EORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A86E2EORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Rudi,

Thanks for the added investigation here.  The original bug report listed CO=
MMON_FEATURES as an undocumented variable.  I see, however, that the variab=
le referred to by both you and Paul Eggleton is COMBINED_FEATURES.  I just =
did a grep through my entire poky tree, which had built out the core-image-=
minimal image for the qemux86 MACHINE and came up empty for "COMMON_FEATURE=
S" except where the string is part of other variables.  So, it appears ther=
e is no COMMON_FEATURES variable.

According to Paul, COMBINED_FEATURES is a list of features common to both M=
ACHINE_FEATURES and DISTRO_FEATURES.

It also seems that the lists presented in the documentation for both valid =
distro and machine options are not really finite lists.  I am trying to get=
 an answer to that.  But, the fact that you grep'ed out such a huge list of=
 DF below shows that they far exceed the 16 features listed in the document=
ation.  I'll update the preamble to the "Distro" and "Machine" sections in =
the reference manual when I get the real story on those lists.

I don't know the relationship between "features" and "packages"...  maybe i=
t is a one-to-one relationship.  But, there are some other variables that a=
ffect packages and features (according to the documentation) that are consi=
dered during the build.  These are the ones listed in the manual's glossary=
 section:


*         MACHINE_ESSENTIAL_EXTRA_RDEPENDS

*         MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS

*         MACHINE_EXTRA_RDEPENDS

*         MACHINE_EXTRA-RRECOMMENDS

*         DISTRO_EXTRA_RRECOMMENDS

*         DISTRO_FEATURES_BACKFILL

*         DISTRO_FEATURES_BACKFILL_CONSIDERED

*         MACHINE_FEATURES_BACKFILL

*         MACHINE_FEATURES_BACKFILL_CONSIDERED

I suspect that there is a DISTRO_EXTRA_RDEPENDS variable as well but I don'=
t have it in the manual (should be added if so).  Also, not sure if there a=
re variables for DISTRO_ESSENTIAL_EXTRA_RDEPENDS and DISTRO_ESSENTIAL_EXTRA=
_RRECOMMENDS.  If those really exist, then I need to add them as well.

Finally, the BACKFILL variables also contribute to the MACHINE_FEATURES and=
 DISTRO_FEATURES set.  It looks like *_FEATURES_BACKFILL, which is set in t=
he bitbake.conf file, is a way to make sure a feature is always included as=
 part of *_FEATURES. While *_BACKFILL_CONSIDERED is used in specific machin=
e configurations (<machine>.conf) to disable a particular feature when it a=
lso appears with *_FEATURES_BACKFILL.   So these variables add to the mix a=
lso.

I have emails out asking questions and am trying to fully understand it mys=
elf.

Thanks,
Scott


From: rstreif@linuxfoundation.org [mailto:rstreif@linuxfoundation.org] On B=
ehalf Of Rudolf Streif
Sent: Wednesday, October 17, 2012 1:16 PM
To: Rifenbark, Scott M
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Requesting information on some variables

Scott,

Thanks for addressing this confusing part. The list of DISTRO_FEATURES (DF)=
 and MACHINE_FEATURES (MF) in the documentation also does not seem to be co=
mplete. For instance, vfat is (at least the code in bitbake.conf that inter=
sects DF and MF suggests so) is a MF as well as a DF.

It also seems that any package is fair game for DF (which makes sense) but =
the documentation says "The items below are valid options for DISTRO_FEATUR=
ES<http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.htm=
l#var-DISTRO_FEATURES>:".

Some elaboration on the features would be great too. From the explanation i=
t is not obvious why ext2 is considered a DF as well as a MF. The same seem=
s to be the case with vfat (although not listed in the documentation). Othe=
r file systems e.g. ext3 etc. are purely considered DF.

Here are the variables from a build environment building for the Beagleboar=
d

bitbake core-image-minimal -e | grep MACHINE_FEATURES
MACHINE_FEATURES=3D"apm usbgadget usbhost vfat alsa"

bitbake core-image-minimal -e | grep DISTRO_FEATURES
DISTRO_FEATURES=3D"alsa argp bluetooth ext2 irda largefile pcmcia usbgadget=
 usbhost wifi xattr nfs zeroconf pci 3g x11 ipv4 ipv6 libc-backtrace libc-b=
ig-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt lib=
c-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc=
-ftraverse libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big lib=
c-locales libc-locale-code libc-memusage libc-nis libc-nsswitch libc-rcmd l=
ibc-rtld-debug libc-spawn libc-streams libc-sunrpc libc-utmp libc-utmpx lib=
c-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc =
libc-posix-wchar-io largefile opengl pulseaudio"

bitbake core-image-minimal -e | grep COMBINED_FEATURES
COMBINED_FEATURES=3D"alsa usbgadget usbhost"

CF seems to be an intersection of DF and MF.  If I remove usbgadget from MF=
 then CF will of course not contain it. DF will still have it. What actuall=
y does get included with the image? Is it DF - [list of all available machi=
ne features] + CF?

[list of all available machine features] is then the superset of MF that is=
 typically defined in a machine.conf file. That list must be implicit somew=
here in the classes/configuration files somewhere, possibly bitbake.conf.

That leads me to the next question. I have seen BSPs that include 'screen' =
into MF in their machine.conf files. That feature is also in the documentat=
ion. But it does not show up anywhere in DF or bitbake.conf etc.

Cheers,
Rudi

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A86E2EORSMSX101amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
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
code
	{mso-style-priority:99;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1468203209;
	mso-list-type:hybrid;
	mso-list-template-ids:-2060529374 67698689 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Symbol;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Rudi,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks for the added inve=
stigation here.&nbsp; The original bug report listed COMMON_FEATURES as an =
undocumented variable.&nbsp; I see, however, that the variable referred
 to by both you and Paul Eggleton is COMBINED_FEATURES.&nbsp; I just did a =
grep through my entire poky tree, which had built out the core-image-minima=
l image for the qemux86 MACHINE and came up empty for &#8220;COMMON_FEATURE=
S&#8221; except where the string is part of other
 variables.&nbsp; So, it appears there is no COMMON_FEATURES variable. <o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">According to Paul, COMBIN=
ED_FEATURES is a list of features common to both MACHINE_FEATURES and DISTR=
O_FEATURES.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">It also seems that the li=
sts presented in the documentation for both valid distro and machine option=
s are not really finite lists.&nbsp; I am trying to get an answer
 to that.&nbsp; But, the fact that you grep&#8217;ed out such a huge list o=
f DF below shows that they far exceed the 16 features listed in the documen=
tation.&nbsp; I&#8217;ll update the preamble to the &#8220;Distro&#8221; an=
d &#8220;Machine&#8221; sections in the reference manual when I get the rea=
l story
 on those lists.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I don&#8217;t know the re=
lationship between &#8220;features&#8221; and &#8220;packages&#8221;&#8230;=
 &nbsp;maybe it is a one-to-one relationship.&nbsp; But, there are some oth=
er variables that affect packages
 and features (according to the documentation) that are considered during t=
he build.&nbsp; These are the ones listed in the manual&#8217;s glossary se=
ction:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Sy=
mbol;color:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">MACHINE_ESSENTIAL=
_EXTRA_RDEPENDS<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Sy=
mbol;color:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">MACHINE_ESSENTIAL=
_EXTRA_RRECOMMENDS<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Sy=
mbol;color:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">MACHINE_EXTRA_RDE=
PENDS<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Sy=
mbol;color:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">MACHINE_EXTRA-RRE=
COMMENDS<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Sy=
mbol;color:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">DISTRO_EXTRA_RREC=
OMMENDS<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Sy=
mbol;color:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">DISTRO_FEATURES_B=
ACKFILL<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Sy=
mbol;color:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">DISTRO_FEATURES_B=
ACKFILL_CONSIDERED<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Sy=
mbol;color:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">MACHINE_FEATURES_=
BACKFILL<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:11.0pt;font-family:Sy=
mbol;color:#1F497D"><span style=3D"mso-list:Ignore">&middot;<span style=3D"=
font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">MACHINE_FEATURES_=
BACKFILL_CONSIDERED<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I suspect that there is a=
 DISTRO_EXTRA_RDEPENDS variable as well but I don&#8217;t have it in the ma=
nual (should be added if so).&nbsp; Also, not sure if there are variables
 for DISTRO_ESSENTIAL_EXTRA_RDEPENDS and DISTRO_ESSENTIAL_EXTRA_RRECOMMENDS=
.&nbsp; If those really exist, then I need to add them as well.<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Finally, the BACKFILL var=
iables also contribute to the MACHINE_FEATURES and DISTRO_FEATURES set.&nbs=
p; It looks like *_FEATURES_BACKFILL, which is set in the bitbake.conf
 file, is a way to make sure a feature is always included as part of *_FEAT=
URES. While *_BACKFILL_CONSIDERED is used in specific machine configuration=
s (&lt;machine&gt;.conf) to disable a particular feature when it also appea=
rs with *_FEATURES_BACKFILL. &nbsp;&nbsp;So these
 variables add to the mix also.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I have emails out asking =
questions and am trying to fully understand it myself.<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Scott
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> rstreif@=
linuxfoundation.org [mailto:rstreif@linuxfoundation.org]
<b>On Behalf Of </b>Rudolf Streif<br>
<b>Sent:</b> Wednesday, October 17, 2012 1:16 PM<br>
<b>To:</b> Rifenbark, Scott M<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Requesting information on some variables<o:p></=
o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Scott,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks for addressing this confusing part. The list =
of DISTRO_FEATURES (DF) and MACHINE_FEATURES (MF) in the documentation also=
 does not seem to be complete. For instance, vfat is (at least the code in =
bitbake.conf that intersects DF and
 MF suggests so) is a MF as well as a DF.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p class=3D"MsoNormal">It also seems that any package is fair game for DF (=
which makes sense) but the documentation says &quot;<span style=3D"font-fam=
ily:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#333333;background:white=
">The items below are valid options for&nbsp;</span><code><span style=3D"fo=
nt-size:10.0pt;color:#333333;background:white"><a href=3D"http://www.yoctop=
roject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html#var-DISTRO_FEATURE=
S" title=3D"DISTRO_FEATURES"><span style=3D"color:#444444">DISTRO_FEATURES<=
/span></a></span></code><span style=3D"font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;color:#333333;background:white">:&quot;.</span><o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Some elaboration on the features would be great too.=
 From the explanation it is not obvious why ext2 is considered a DF as well=
 as a MF. The same seems to be the case with vfat (although not listed in t=
he documentation). Other file systems
 e.g. ext3 etc. are purely considered DF.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here are the variables from a build environment buil=
ding for the Beagleboard<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">bitbake core-image-minimal -e | grep MACHINE_FEATURE=
S<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal">MACHINE_FEATURES=3D&quot;apm usbgadget usbhost vfat =
alsa&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">bitbake core-image-minimal -e | grep DISTRO_FEATURES=
<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">DISTRO_FEATURES=3D&quot;alsa argp bluetooth ext2 ird=
a largefile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g x11 ipv=
4 ipv6 libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets =
libc-charsets libc-crypt libc-crypt-ufc libc-db-aliases
 libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse libc-getlogin li=
bc-idn libc-inet-anl libc-libm libc-libm-big libc-locales libc-locale-code =
libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn l=
ibc-streams libc-sunrpc libc-utmp
 libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posi=
x-regexp-glibc libc-posix-wchar-io largefile opengl pulseaudio&quot;<o:p></=
o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">bitbake core-image-minimal -e | grep COMBINED_FEATUR=
ES<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">COMBINED_FEATURES=3D&quot;alsa usbgadget usbhost&quo=
t;<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">CF seems to be an intersection of DF and MF. &nbsp;I=
f I remove usbgadget from MF then CF will of course not contain it. DF will=
 still have it.&nbsp;What actually does get included with the image? Is it =
DF - [list of all available machine features]
 &#43; CF?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">[list of all available machine features] is then the=
 superset of MF that is typically defined in a machine.conf file. That list=
 must be implicit somewhere in the classes/configuration files somewhere, p=
ossibly bitbake.conf.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">That leads me to the next question. I have seen BSPs=
 that include 'screen' into MF in their machine.conf files. That feature is=
 also in the documentation. But it does not show up anywhere in DF or bitba=
ke.conf etc.<o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cheers,<o:p></o:p></p>
<p class=3D"MsoNormal">Rudi<o:p></o:p></p>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237946A86E2EORSMSX101amrcor_--
