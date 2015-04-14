Return-Path: <Neil.Wu@emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC8DDE00952; Mon, 13 Apr 2015 20:16:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [68.232.130.217 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 Apr 2015 20:16:06 PDT
Received: from esa1.emerson-outbound.iphmx.com
	(esa1.emerson-outbound.iphmx.com [68.232.130.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89425E00930
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 20:16:06 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.11,573,1422900000"; d="scan'208,217";a="6790284"
Received: from usstlz-pinfez04.extemr.org ([144.191.128.188])
	by esa1.emerson-outbound.iphmx.com with ESMTP/TLS/AES128-SHA;
	14 Apr 2015 09:15:04 +0600
Received: from USSTLZ-PMSG010.emrsn.org (10.16.72.192) by
	USSTLZ-PINFEZ04.extemr.org (10.16.8.77) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Tue, 14 Apr 2015 03:14:58 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.105]) by
	USSTLZ-PMSG010.emrsn.org ([169.254.2.18]) with mapi id 14.03.0158.001;
	Tue, 14 Apr 2015 03:14:58 +0000
From: <Neil.Wu@Emerson.com>
To: <yocto@yoctoproject.org>
Thread-Topic: The error of task do_validate_branches
Thread-Index: AdB2YS6DNiCnaSkLR/qpvaJFeTPhIw==
Date: Tue, 14 Apr 2015 03:14:57 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C8522E6EC4B2@USSTLZ-PMSG012.emrsn.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Subject: The error of task do_validate_branches
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
X-List-Received-Date: Tue, 14 Apr 2015 03:16:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3204FE6663E1F14CAF4CA6928E60C8522E6EC4B2USSTLZPMSG012em_"

--_000_3204FE6663E1F14CAF4CA6928E60C8522E6EC4B2USSTLZPMSG012em_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, all

I build the custom linux-yocto kernel, it appears the error as bellow :

ERROR: Function failed: do_validate_branches (log file is located at /home/=
ectrs/poky/coretexa8/tmp/work/am335x_evm-poky-linux-gnueabi/linux-yocto-tia=
m335x/3.12.10--SS-r0/temp/log.do_validate_branches.4899)
ERROR: Logfile of failure stored in: /home/ectrs/poky/coretexa8/tmp/work/am=
335x_evm-poky-linux-gnueabi/linux-yocto-tiam335x/3.12.10--SS-r0/temp/log.do=
_validate_branches.4899
Log data follows:
| DEBUG: Executing shell function do_validate_branches
| NOTE: custom recipe is being built, forcing SRCREV to INVALID
| NOTE: SRCREV validation skipped for AUTOREV or empty meta branch
| fatal: A branch named 'master-orig' already exists.
| fatal: ambiguous argument 'INVALID': unknown revision or path not in the =
working tree.
| Use '--' to separate paths from revisions, like this:
| 'git <command> [<revision>...] -- [<file>...]'
| WARNING: exit code 128 from a shell command.
| ERROR: Function failed: do_validate_branches (log file is located at /hom=
e/ectrs/poky/coretexa8/tmp/work/am335x_evm-poky-linux-gnueabi/linux-yocto-t=
iam335x/3.12.10--SS-r0/temp/log.do_validate_branches.4899)
ERROR: Task 69 (/home/ectrs/poky/meta-emerson-ecosys/recipes-kernel/linux/l=
inux-yocto-tiam335x_3.12.10.bb, do_validate_branches) failed with exit code=
 '1'

How to resolve this problem? if you know please help me.

Thanks
Neil

--_000_3204FE6663E1F14CAF4CA6928E60C8522E6EC4B2USSTLZPMSG012em_
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
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"Section1">
<p class=3D"MsoNormal">Hi, all<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I build the custom linux-yocto kernel, it appears th=
e error as bellow :<br>
<br>
<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:red">ERROR: Function failed: do=
_validate_branches (log file is located at /home/ectrs/poky/coretexa8/tmp/w=
ork/am335x_evm-poky-linux-gnueabi/linux-yocto-tiam335x/3.12.10--SS-r0/temp/=
log.do_validate_branches.4899)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">ERROR: Logfile of failure =
stored in: /home/ectrs/poky/coretexa8/tmp/work/am335x_evm-poky-linux-gnueab=
i/linux-yocto-tiam335x/3.12.10--SS-r0/temp/log.do_validate_branches.4899<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">Log data follows:<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">| DEBUG: Executing shell f=
unction do_validate_branches<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">| NOTE: custom recipe is b=
eing built, forcing SRCREV to INVALID<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">| NOTE: SRCREV validation =
skipped for AUTOREV or empty meta branch<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">| fatal: A branch named 'm=
aster-orig' already exists.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">| fatal: ambiguous argumen=
t 'INVALID': unknown revision or path not in the working tree.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">| Use '--' to separate pat=
hs from revisions, like this:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">| 'git &lt;command&gt; [&l=
t;revision&gt;...] -- [&lt;file&gt;...]'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">| WARNING: exit code 128 f=
rom a shell command.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">| ERROR: Function failed: =
do_validate_branches (log file is located at /home/ectrs/poky/coretexa8/tmp=
/work/am335x_evm-poky-linux-gnueabi/linux-yocto-tiam335x/3.12.10--SS-r0/tem=
p/log.do_validate_branches.4899)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:red">ERROR: Task 69 (/home/ectr=
s/poky/meta-emerson-ecosys/recipes-kernel/linux/linux-yocto-tiam335x_3.12.1=
0.bb, do_validate_branches) failed with exit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How to resolve this problem? if you know please help=
 me.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks <o:p></o:p></p>
<p class=3D"MsoNormal">Neil <o:p></o:p></p>
</div>
</body>
</html>

--_000_3204FE6663E1F14CAF4CA6928E60C8522E6EC4B2USSTLZPMSG012em_--
