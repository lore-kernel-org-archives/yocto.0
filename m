Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F008E00731
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2011 10:36:38 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Sep 2011 10:36:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,346,1312182000"; d="scan'208,217";a="48980670"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 07 Sep 2011 10:36:22 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 7 Sep 2011 10:36:22 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.19]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.165]) with mapi id
	14.01.0323.003; Wed, 7 Sep 2011 10:36:21 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Brian Duffy <brduffy@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Fwd:  HOB failure
Thread-Index: AQHMbYO0cGA2cJ9zVUK0qnrgRSkCMJVCLM4w
Date: Wed, 7 Sep 2011 17:36:21 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16E6EA58@ORSMSX101.amr.corp.intel.com>
References: <CAHrDPkpb38_1KwKi35v2cteF5LFmPeF_pfPz5E-2JUw6o-ge2Q@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C16E6E9CB@ORSMSX101.amr.corp.intel.com>
	<CAHrDPkrtx6BTFSxFX2QPiS4uavVWgbxmuKF0O79reN+ztvsx2Q@mail.gmail.com>
	<CAHrDPkqw6eNEiNiFtZrW2RtA4qmp41fdwiHs8dvQW+Kcmpg7AA@mail.gmail.com>
In-Reply-To: <CAHrDPkqw6eNEiNiFtZrW2RtA4qmp41fdwiHs8dvQW+Kcmpg7AA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: HOB failure
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
X-List-Received-Date: Wed, 07 Sep 2011 17:36:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C16E6EA58ORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C16E6EA58ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

OK, somehow you have issue writing oe-beta/build, which I'm not quite sure =
why.  But to work around the issue with hob, do the same as what you did wh=
en you built core-image-minimal.  First, do "source oe-init-build-env  ~/my=
-build", which will setup your bitbake env and swith dir to ~/my-build.  Th=
en do hob.  Please don't make any directory changes between these 2 steps.



Thanks,

Jessica



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Brian Duffy
Sent: Wednesday, September 07, 2011 10:29 AM
To: yocto@yoctoproject.org
Subject: [yocto] Fwd: HOB failure





---------- Forwarded message ----------
From: Brian Duffy <brduffy@gmail.com<mailto:brduffy@gmail.com>>
Date: Wed, Sep 7, 2011 at 1:26 PM
Subject: Re: [yocto] HOB failure
To: "Zhang, Jessica" <jessica.zhang@intel.com<mailto:jessica.zhang@intel.co=
m>>


Hi Jessica,



I already built core-image-minimal last night. I am able to run it in the e=
mulator as long as I run

run oe-init-build-env first. That complains that it can't write to "oe-beta=
/build" and recommends I pass it a path to my own build directory. When bui=
lding the image I passed it "~/my-build" which worked fine. Then when I wen=
t to run the emulator I found that certain env variables were not set so I =
ran it again but did not provide a path parameter. It fails with the same e=
rror but the environment variables work well enough after that to run the e=
mulator from the ~/my-build directory. Anyway, that is what I am doing befo=
re I run hob and you saw the error I am getting. Any suggestions.



thnx



Brian



On Wed, Sep 7, 2011 at 12:24 PM, Zhang, Jessica <jessica.zhang@intel.com<ma=
ilto:jessica.zhang@intel.com>> wrote:

Hi Brian,



Were you able to build any image using the same build tree, can you do a qu=
ick "bitbake core-image-minimal" instead of doing hob, seems you have some =
environment setup issue.



Thanks,

Jessica



From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of Brian Duffy
Sent: Wednesday, September 07, 2011 9:11 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] HOB failure



Hi,



I'm having trouble running hob ...



[brian@brduffy-PC my-build]$ hob

You had no conf/hob.local.conf file. An initial version of this configurati=
on

file has therefore been created for you. This file will be used to store an=
y

configuration values you set in hob.



Pseudo is not present but is required, building this first before the main =
build

Loading cache: 100% |###########################################| ETA:  00:=
00:00

Loaded 1029 entries from dependency cache.



OE Build Configuration:

BB_VERSION        =3D "1.13.3"

TARGET_ARCH       =3D "i586"

TARGET_OS         =3D "linux"

MACHINE           =3D "qemux86"

DISTRO            =3D "poky"

DISTRO_VERSION    =3D "1.0+snapshot-20110907"

TUNE_FEATURES     =3D "m32 i586"

TARGET_FPU        =3D ""

meta

meta-yocto        =3D "<unknown>:<unknown>"



NOTE: Resolving any missing task queue dependencies

NOTE: Preparing runqueue

NOTE: Executing SetScene Tasks

NOTE: Executing RunQueue Tasks

NOTE: Tasks Summary: Attempted 70 tasks of which 70 didn't need to be rerun=
 and 0 failed.

/home/brian/oe-beta/scripts/bitbake: line 73: /home/brian/oe-beta/build/pse=
udodone: Permission denied

cat: /home/brian/oe-beta/build/pseudodone: No such file or directory

/home/brian/oe-beta/scripts/bitbake: line 82: /pseudo: No such file or dire=
ctory

[brian@brduffy-PC my-build]$



Do I just have a permission problem?



--
Duff







--
Duff







--
Duff


--_000_C6510F6D410BB64A8C15398EDC6B847C16E6EA58ORSMSX101amrcor_
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
span.EmailStyle17
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">OK, somehow you have issu=
e writing oe-beta/build, which I&#8217;m not quite sure why.&nbsp; But to w=
ork around the issue with hob, do the same as what you did when you
 built core-image-minimal.&nbsp; First, do &#8220;source oe-init-build-env =
&nbsp;~/my-build&#8221;, which will setup your bitbake env and swith dir to=
 ~/my-build.&nbsp; Then do hob.&nbsp; Please don&#8217;t make any directory=
 changes between these 2 steps.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Brian Duffy<br>
<b>Sent:</b> Wednesday, September 07, 2011 10:29 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Fwd: HOB failure<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">---------- Forwarded message ----------<br>
From: <b>Brian Duffy</b> &lt;<a href=3D"mailto:brduffy@gmail.com">brduffy@g=
mail.com</a>&gt;<br>
Date: Wed, Sep 7, 2011 at 1:26 PM<br>
Subject: Re: [yocto] HOB failure<br>
To: &quot;Zhang, Jessica&quot; &lt;<a href=3D"mailto:jessica.zhang@intel.co=
m">jessica.zhang@intel.com</a>&gt;<br>
<br>
<br>
Hi Jessica,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I already built core-image-minimal last night. I am =
able to run it in the emulator as long as I run&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">run oe-init-build-env first. That complains that it =
can't write to &quot;oe-beta/build&quot; and recommends I pass it a path to=
 my own build directory. When building the image I passed it &quot;~/my-bui=
ld&quot; which worked fine. Then when I went to run the
 emulator I found that certain env variables were not set so I ran it again=
 but did not provide a path parameter. It fails with the same error but the=
 environment variables work well enough after that to run the emulator from=
 the ~/my-build directory. Anyway,
 that is what I am doing before I run hob and you saw the error I am gettin=
g. Any suggestions.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">thnx<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Brian<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Wed, Sep 7, 2011 at 12:24 PM, Zhang, Jessica &lt;=
<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@=
intel.com</a>&gt; wrote:<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;color:#1F497D">Hi Brian,</span><o:=
p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;color:#1F497D">&nbsp;</span><o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;color:#1F497D">Were you able to bu=
ild any image using the same build tree, can you do a quick &#8220;bitbake =
core-image-minimal&#8221; instead of doing hob, seems
 you have some environment setup issue.</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;color:#1F497D">&nbsp;</span><o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;color:#1F497D">Thanks,</span><o:p>=
</o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;color:#1F497D">Jessica</span><o:p>=
</o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;color:#1F497D">&nbsp;</span><o:p><=
/o:p></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:10.0pt">From:</span></b><span style=3D=
"font-size:10.0pt">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Brian Duffy<br>
<b>Sent:</b> Wednesday, September 07, 2011 9:11 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] HOB failure</span><o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Hi,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I'm having trouble running hob ...<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">[brian@brduffy-PC my-build]$ hob<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">You had no conf/hob.local.conf file. An initial version of this co=
nfiguration<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">file has therefore been created for you. This file will be used to=
 store any<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">configuration values you set in hob.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Pseudo is not present but is required, building this first before =
the main build<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Loading cache: 100% |###########################################| =
ETA: &nbsp;00:00:00<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Loaded 1029 entries from dependency cache.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">OE Build Configuration:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;1.13.3&quot;<o:p><=
/o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">TARGET_ARCH &nbsp; &nbsp; &nbsp; =3D &quot;i586&quot;<o:p></o:p></=
p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">TARGET_OS &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;linux&quot;<o:p></=
o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;qemux86&quot;=
<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;poky&quo=
t;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">DISTRO_VERSION &nbsp; &nbsp;=3D &quot;1.0&#43;snapshot-20110907&qu=
ot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">TUNE_FEATURES &nbsp; &nbsp; =3D &quot;m32 i586&quot;<o:p></o:p></p=
>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;&quot;<o:p></o:p><=
/p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<o:p></o:p></=
p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">meta-yocto &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;&lt;unknown&gt;:&l=
t;unknown&gt;&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">NOTE: Resolving any missing task queue dependencies<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">NOTE: Preparing runqueue<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">NOTE: Executing SetScene Tasks<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">NOTE: Executing RunQueue Tasks<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">NOTE: Tasks Summary: Attempted 70 tasks of which 70 didn't need to=
 be rerun and 0 failed.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">/home/brian/oe-beta/scripts/bitbake: line 73: /home/brian/oe-beta/=
build/pseudodone: Permission denied<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">cat: /home/brian/oe-beta/build/pseudodone: No such file or directo=
ry<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">/home/brian/oe-beta/scripts/bitbake: line 82: /pseudo: No such fil=
e or directory<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">[brian@brduffy-PC my-build]$&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Do I just have a permission problem?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">--
<br>
Duff<o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><br>
<br clear=3D"all">
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#888888">-- <br>
Duff</span><o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><br>
<br clear=3D"all">
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p class=3D"MsoNormal">-- <br>
Duff<o:p></o:p></p>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C16E6EA58ORSMSX101amrcor_--
