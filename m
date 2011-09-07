Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61653E01254
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2011 16:19:43 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 07 Sep 2011 16:19:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,347,1312182000"; d="scan'208,217";a="50243333"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 07 Sep 2011 16:19:41 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 7 Sep 2011 16:19:41 -0700
Received: from orsmsx502.amr.corp.intel.com ([10.22.226.210]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Wed, 7 Sep 2011 16:19:40 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 7 Sep 2011 16:19:36 -0700
Thread-Topic: build fails if poky-extras added to bblayers.conf
Thread-Index: AcxttJvVZdMZIxvhRqq/Bd470u2g4g==
Message-ID: <4BD43A85686FC34D819098DB1C3999D90188AF5AF4@orsmsx502.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-puzzleid: {A19B41E5-257E-4EA7-A67D-C168B16B3794}
x-cr-hashedpuzzle: AcX4 BhBL CvOt DBXx FBMa FQsj FVVt Fmdw GBb+ G1eH Hh1R
	Jq3W KF/8 KkbW K26g
	Lm1t; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {A19B41E5-257E-4EA7-A67D-C168B16B3794};
	awBpAHMAaABvAHIAZQAuAGsALgBiAG8AZABrAGUAQABpAG4AdABlAGwALgBjAG8AbQA=;
	Wed, 07 Sep 2011 23:19:36 GMT;
	YgB1AGkAbABkACAAZgBhAGkAbABzACAAaQBmACAAcABvAGsAeQAtAGUAeAB0AHIAYQBzACAAYQBkAGQAZQBkACAAdABvACAAYgBiAGwAYQB5AGUAcgBzAC4AYwBvAG4AZgA=
acceptlanguage: en-US
MIME-Version: 1.0
Subject: build fails if poky-extras added to bblayers.conf
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
X-List-Received-Date: Wed, 07 Sep 2011 23:19:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4BD43A85686FC34D819098DB1C3999D90188AF5AF4orsmsx502amrc_"

--_000_4BD43A85686FC34D819098DB1C3999D90188AF5AF4orsmsx502amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

We get a strange build error all of sudden today.  We did not change any fi=
les, just started a fresh build and it failed at the very beginning.

If I remove poky-extras/meta-kernel-dev the build works fine though.

Below is the error message.  Could any one let me know what could be the is=
sue?

Pseudo is not present but is required, building this first before the main =
build
ERROR: Failure expanding variable SRCPV, expression was ${@bb.fetch2.get_sr=
crev(d)} which triggered exception FetchError: Fetcher failure for URL: 'No=
ne'. Fetch command export HOME=3D"/home/kishore"; export SSH_AGENT_PID=3D"1=
692"; export SSH_AUTH_SOCK=3D"/tmp/keyring-EQAQTf/ssh"; export no_proxy=3D"=
localhost,127.0.0.0/8,*.local"; export https_proxy=3D"https://proxy.sc.inte=
l.com:911/"; export ftp_proxy=3D"http://proxy.sc.intel.com:911/"; export ht=
tp_proxy=3D"http://proxy.sc.intel.com:911/"; export GIT_CONFIG=3D"/usr/loca=
l/src/crf/yocto/buildcrfrtqat4/tmp/sysroots/x86_64-linux/usr/etc/gitconfig"=
; export GIT_PROXY_COMMAND=3D"/usr/local/bin/git-proxy"; export PATH=3D"/us=
r/local/src/crf/yocto/buildcrfrtqat4/tmp/sysroots/x86_64-linux/usr/bin/x86_=
64-poky-linux:/usr/local/src/crf/yocto/buildcrfrtqat4/tmp/sysroots/crystalf=
orest/usr/bin/crossscripts:/usr/local/src/crf/yocto/buildcrfrtqat4/tmp/sysr=
oots/x86_64-linux/usr/sbin:/usr/local/src/crf/yocto/buildcrfrtqat4/tmp/sysr=
oots/x86_64-linux/usr/bin:/usr/local/src/crf/yocto/buildcrfrtqat4/tmp/sysro=
ots/x86_64-linux/sbin:/usr/local/src/crf/yocto/buildcrfrtqat4/tmp/sysroots/=
x86_64-linux//bin:/usr/local/src/crf/yocto/bitbake/bin/:/usr/local/src/crf/=
yocto/scripts:/usr/local/src/crf/yocto/bitbake/bin/:/usr/local/src/crf/yoct=
o/scripts:/usr/local/src/crf/yocto/bitbake/bin/:/usr/local/sbin:/usr/local/=
bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/src/crf/yocto/scrip=
ts"; git ls-remote git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/l=
inux-2.6.git master failed with signal 128, output:
nc: read failed (0/10): Broken pipe
fatal: The remote end hung up unexpectedly

ERROR: Command execution failed: Exited with 1

Thanks
Kishore.

--_000_4BD43A85686FC34D819098DB1C3999D90188AF5AF4orsmsx502amrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal style=3D'text-au=
tospace:none'><span style=3D'font-size:10.0pt;font-family:"Courier New"'>Hi=
 All,<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:non=
e'><span style=3D'font-size:10.0pt;font-family:"Courier New"'><o:p>&nbsp;</=
o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span sty=
le=3D'font-size:10.0pt;font-family:"Courier New"'>We get a strange build er=
ror all of sudden today.&nbsp; We did not change any files, just started a =
fresh build and it failed at the very beginning.&nbsp; <o:p></o:p></span></=
p><p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-si=
ze:10.0pt;font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size:10.0pt;=
font-family:"Courier New"'>If I remove poky-extras/meta-kernel-dev the buil=
d works fine though.<o:p></o:p></span></p><p class=3DMsoNormal style=3D'tex=
t-autospace:none'><span style=3D'font-size:10.0pt;font-family:"Courier New"=
'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:=
none'><span style=3D'font-size:10.0pt;font-family:"Courier New"'>Below is t=
he error message.&nbsp; Could any one let me know what could be the issue?<=
o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><sp=
an style=3D'font-size:10.0pt;font-family:"Courier New"'><o:p>&nbsp;</o:p></=
span></p><p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'=
font-size:10.0pt;font-family:"Courier New"'>Pseudo is not present but is re=
quired, building this first before the main build<o:p></o:p></span></p><p c=
lass=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size:10.=
0pt;font-family:"Courier New"'>ERROR: Failure expanding variable SRCPV, exp=
ression was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchErro=
r: Fetcher failure for URL: 'None'. Fetch command export HOME=3D&quot;/home=
/kishore&quot;; export SSH_AGENT_PID=3D&quot;1692&quot;; export SSH_AUTH_SO=
CK=3D&quot;/tmp/keyring-EQAQTf/ssh&quot;; export no_proxy=3D&quot;localhost=
,127.0.0.0/8,*.local&quot;; export https_proxy=3D&quot;https://proxy.sc.int=
el.com:911/&quot;; export ftp_proxy=3D&quot;http://proxy.sc.intel.com:911/&=
quot;; export http_proxy=3D&quot;http://proxy.sc.intel.com:911/&quot;; expo=
rt GIT_CONFIG=3D&quot;/usr/local/src/crf/yocto/buildcrfrtqat4/tmp/sysroots/=
x86_64-linux/usr/etc/gitconfig&quot;; export GIT_PROXY_COMMAND=3D&quot;/usr=
/local/bin/git-proxy&quot;; export PATH=3D&quot;/usr/local/src/crf/yocto/bu=
ildcrfrtqat4/tmp/sysroots/x86_64-linux/usr/bin/x86_64-poky-linux:/usr/local=
/src/crf/yocto/buildcrfrtqat4/tmp/sysroots/crystalforest/usr/bin/crossscrip=
ts:/usr/local/src/crf/yocto/buildcrfrtqat4/tmp/sysroots/x86_64-linux/usr/sb=
in:/usr/local/src/crf/yocto/buildcrfrtqat4/tmp/sysroots/x86_64-linux/usr/bi=
n:/usr/local/src/crf/yocto/buildcrfrtqat4/tmp/sysroots/x86_64-linux/sbin:/u=
sr/local/src/crf/yocto/buildcrfrtqat4/tmp/sysroots/x86_64-linux//bin:/usr/l=
ocal/src/crf/yocto/bitbake/bin/:/usr/local/src/crf/yocto/scripts:/usr/local=
/src/crf/yocto/bitbake/bin/:/usr/local/src/crf/yocto/scripts:/usr/local/src=
/crf/yocto/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/=
sbin:/bin:/usr/games:/usr/local/src/crf/yocto/scripts&quot;; git ls-remote =
git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux-2.6.git master=
 failed with signal 128, output:<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'font-size:10.0pt;font-family:"=
Courier New"'>nc: read failed (0/10): Broken pipe<o:p></o:p></span></p><p c=
lass=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size:10.=
0pt;font-family:"Courier New"'>fatal: The remote end hung up unexpectedly<o=
:p></o:p></span></p><p class=3DMsoNormal style=3D'text-autospace:none'><spa=
n style=3D'font-size:10.0pt;font-family:"Courier New"'><o:p>&nbsp;</o:p></s=
pan></p><p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'f=
ont-size:10.0pt;font-family:"Courier New"'>ERROR: Command execution failed:=
 Exited with 1<o:p></o:p></span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p><=
/p><p class=3DMsoNormal>Thanks<o:p></o:p></p><p class=3DMsoNormal>Kishore.<=
o:p></o:p></p></div></body></html>=

--_000_4BD43A85686FC34D819098DB1C3999D90188AF5AF4orsmsx502amrc_--
