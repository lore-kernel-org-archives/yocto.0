Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5620EE00731
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2011 09:24:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Sep 2011 09:24:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208,217";a="46109295"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 07 Sep 2011 09:24:10 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 7 Sep 2011 09:24:09 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.19]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.122]) with mapi id
	14.01.0323.003; Wed, 7 Sep 2011 09:24:09 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Brian Duffy <brduffy@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] HOB failure
Thread-Index: AQHMbXi7F29osTlz7UGki8LNQEes25VCGc3A
Date: Wed, 7 Sep 2011 16:24:09 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16E6E9CB@ORSMSX101.amr.corp.intel.com>
References: <CAHrDPkpb38_1KwKi35v2cteF5LFmPeF_pfPz5E-2JUw6o-ge2Q@mail.gmail.com>
In-Reply-To: <CAHrDPkpb38_1KwKi35v2cteF5LFmPeF_pfPz5E-2JUw6o-ge2Q@mail.gmail.com>
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
X-List-Received-Date: Wed, 07 Sep 2011 16:24:10 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C16E6E9CBORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C16E6E9CBORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Brian,



Were you able to build any image using the same build tree, can you do a qu=
ick "bitbake core-image-minimal" instead of doing hob, seems you have some =
environment setup issue.



Thanks,

Jessica



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Brian Duffy
Sent: Wednesday, September 07, 2011 9:11 AM
To: yocto@yoctoproject.org
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


--_000_C6510F6D410BB64A8C15398EDC6B847C16E6E9CBORSMSX101amrcor_
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
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Brian,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Were you able to build an=
y image using the same build tree, can you do a quick &#8220;bitbake core-i=
mage-minimal&#8221; instead of doing hob, seems you have some environment
 setup issue.<o:p></o:p></span></p>
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
<b>Sent:</b> Wednesday, September 07, 2011 9:11 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] HOB failure<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I'm having trouble running hob ...<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">[brian@brduffy-PC my-build]$ hob<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">You had no conf/hob.local.conf file. An initial vers=
ion of this configuration<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">file has therefore been created for you. This file w=
ill be used to store any<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">configuration values you set in hob.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Pseudo is not present but is required, building this=
 first before the main build<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Loading cache: 100% |###############################=
############| ETA: &nbsp;00:00:00<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Loaded 1029 entries from dependency cache.<o:p></o:p=
></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">OE Build Configuration:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;1.13=
.3&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">TARGET_ARCH &nbsp; &nbsp; &nbsp; =3D &quot;i586&quot=
;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">TARGET_OS &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;linu=
x&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot=
;qemux86&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D =
&quot;poky&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">DISTRO_VERSION &nbsp; &nbsp;=3D &quot;1.0&#43;snapsh=
ot-20110907&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">TUNE_FEATURES &nbsp; &nbsp; =3D &quot;m32 i586&quot;=
<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;&quo=
t;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">meta-yocto &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;&lt;=
unknown&gt;:&lt;unknown&gt;&quot;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">NOTE: Resolving any missing task queue dependencies<=
o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">NOTE: Preparing runqueue<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">NOTE: Executing SetScene Tasks<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">NOTE: Executing RunQueue Tasks<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 70 tasks of which 70 =
didn't need to be rerun and 0 failed.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">/home/brian/oe-beta/scripts/bitbake: line 73: /home/=
brian/oe-beta/build/pseudodone: Permission denied<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">cat: /home/brian/oe-beta/build/pseudodone: No such f=
ile or directory<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">/home/brian/oe-beta/scripts/bitbake: line 82: /pseud=
o: No such file or directory<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">[brian@brduffy-PC my-build]$&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Do I just have a permission problem?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p class=3D"MsoNormal">-- <br>
Duff<o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C16E6E9CBORSMSX101amrcor_--
