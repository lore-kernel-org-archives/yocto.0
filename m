Return-Path: <Neil.Wu@Emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 121AFE00848; Mon, 15 Sep 2014 01:49:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [144.191.128.190 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 66 seconds by postgrey-1.32 at yocto-www;
	Mon, 15 Sep 2014 01:49:11 PDT
Received: from USSTLZ-PINFEZ06.extemr.org (usstlz-pinfez06.extemr.org
	[144.191.128.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95615E00746
	for <yocto@yoctoproject.org>; Mon, 15 Sep 2014 01:49:11 -0700 (PDT)
Received: from USSTLZ-PMSG008.emrsn.org (10.16.72.190) by
	USSTLZ-PINFEZ06.extemr.org (10.16.8.79) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Mon, 15 Sep 2014 08:48:03 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.186]) by
	USSTLZ-PMSG008.emrsn.org ([169.254.3.80]) with mapi id 14.03.0158.001;
	Mon, 15 Sep 2014 08:48:03 +0000
From: <Neil.Wu@Emerson.com>
To: <yocto@yoctoproject.org>
Thread-Topic: create_image.tar fail
Thread-Index: Ac/QwcFOPo0Bg5rkSSK4jS9YNrymzg==
Date: Mon, 15 Sep 2014 08:48:02 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C85215B7EF55@USSTLZ-PMSG012.emrsn.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Subject: create_image.tar fail
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
X-List-Received-Date: Mon, 15 Sep 2014 08:49:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3204FE6663E1F14CAF4CA6928E60C85215B7EF55USSTLZPMSG012em_"

--_000_3204FE6663E1F14CAF4CA6928E60C85215B7EF55USSTLZPMSG012em_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello ,
I meet one problem like following  when I compiling Yocto project 1.6.1.

create_image.ext3 ...
NOTE: Running image creation script for tar: /home/etcrs/poky-daisy-11.0.1/=
build/tmp/work/qemux86-poky-linux/core-image-sato/1.0-r0/temp/create_image.=
tar ...
ERROR: Error: The image creation script '/home/etcrs/poky-daisy-11.0.1/buil=
d/tmp/work/qemux86-poky-linux/core-image-sato/1.0-r0/temp/create_image.tar'=
 returned 1:
..........
bzip2: invalid option -- 'k'
BusyBox v1.21.1 (Ubuntu 1:1.21.0-1ubuntu1) multi-call binary.

Usage: bzip2 [OPTIONS] [FILE]...

Compress FILEs (or stdin) with bzip2 algorithm

            -1..9   Compression level
            -d        Decompress
            -c         Write to stdout
            -f         Force

WARNING: exit code 1 from a shell command.

DEBUG: Python function do_rootfs finished
ERROR: Function failed: do_rootfs

How to resolve this problem ?  If you know ,please tell me.
Thanks very much.


Thank you&Best regards
Neil Wu


--_000_3204FE6663E1F14CAF4CA6928E60C85215B7EF55USSTLZPMSG012em_
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
<p class=3D"MsoNormal">Hello ,<o:p></o:p></p>
<p class=3D"MsoNormal">I meet one problem like following &nbsp;when I compi=
ling Yocto project 1.6.1.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626">cr=
eate_image.ext3 ...<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626">NO=
TE: Running image creation script for tar: /home/etcrs/poky-daisy-11.0.1/bu=
ild/tmp/work/qemux86-poky-linux/core-image-sato/1.0-r0/temp/create_image.ta=
r ...<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:red">ERROR:=
 Error: The image creation script '/home/etcrs/poky-daisy-11.0.1/build/tmp/=
work/qemux86-poky-linux/core-image-sato/1.0-r0/temp/create_image.tar' retur=
ned 1:<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626">&#=
8230;&#8230;&#8230;.<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626">bz=
ip2: invalid option -- 'k'<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626">Bu=
syBox v1.21.1 (Ubuntu 1:1.21.0-1ubuntu1) multi-call binary.<o:p></o:p></spa=
n></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626"><o=
:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626">Us=
age: bzip2 [OPTIONS] [FILE]...<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626"><o=
:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626">Co=
mpress FILEs (or stdin) with bzip2 algorithm<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626"><o=
:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -1..9&nbsp=
;&nbsp; Compression level<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -d&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Decompress<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -c&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Write to stdout<o:p></o:p></span><=
/b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626">&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -f&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Force<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626"><o=
:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626">WA=
RNING: exit code 1 from a shell command.<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:#262626"><o=
:p>&nbsp;</o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:red">DEBUG:=
 Python function do_rootfs finished<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;color:red">ERROR:=
 Function failed: do_rootfs<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How to resolve this problem ?&nbsp; If you know ,ple=
ase tell me.<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks very much.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you&amp;Best regards<o:p></o:p></p>
<p class=3D"MsoNormal">Neil Wu<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_3204FE6663E1F14CAF4CA6928E60C85215B7EF55USSTLZPMSG012em_--
