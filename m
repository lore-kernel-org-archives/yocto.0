Return-Path: <Swapna.Gurumani@microchip.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D675E00C3A; Mon, 31 Oct 2016 18:18:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [198.175.253.38 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Mon, 31 Oct 2016 18:18:21 PDT
Received: from email.microchip.com (exsmtp02.microchip.com [198.175.253.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AB44E00C19
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 18:18:21 -0700 (PDT)
Received: from CHN-SV-EXMX05.mchp-main.com ([fe80::88ec:a5e:b3b2:e58]) by
	CHN-SV-EXCH02.mchp-main.com ([fe80::bcb7:e7aa:881b:31e%15]) with mapi
	id 14.03.0181.006; Mon, 31 Oct 2016 18:17:17 -0700
From: <Swapna.Gurumani@microchip.com>
To: <yocto@yoctoproject.org>
Thread-Topic: how to copy a tar file to Root file system
Thread-Index: AdIz3RmoIOKxDAIqRCm8SCX7sc6E+w==
Date: Tue, 1 Nov 2016 01:17:18 +0000
Message-ID: <061E8AE63BCA5A41B92BC90F19C8225237AE71B6@CHN-SV-EXMX05.mchp-main.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.215.90]
MIME-Version: 1.0
Subject: how to copy a tar file to Root file system
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
X-List-Received-Date: Tue, 01 Nov 2016 01:18:22 -0000
X-Groupsio-MsgNum: 32725
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_061E8AE63BCA5A41B92BC90F19C8225237AE71B6CHNSVEXMX05mchp_"

--_004_061E8AE63BCA5A41B92BC90F19C8225237AE71B6CHNSVEXMX05mchp_
Content-Type: multipart/alternative;
	boundary="_000_061E8AE63BCA5A41B92BC90F19C8225237AE71B6CHNSVEXMX05mchp_"

--_000_061E8AE63BCA5A41B92BC90F19C8225237AE71B6CHNSVEXMX05mchp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, I have a tar file on my local drive and I want to untar this and copy i=
t to my rootfilesystem image.
Please find attached the .bb recipe I am using.
When I run bitbake for this recipe, my build breaks with the following erro=
r:
ERROR: crank-1.0-r0 do_install: Function failed: do_install (log file is lo=
cate at /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa=
5hf-neonpoky-linux-gnueabi/crank/1.0-r0/temp/log.do_install.16738)
ERROR: Logfile of failure stored in: /home/swapna/workspace/work/yocto/poky=
/buid-atmel/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/crank/1.0-r0/temp/l=
og.do_intall.16738
Log data follows:
| DEBUG: Executing shell function do_install
| make: *** No rule to make target 'install'.  Stop.
| WARNING: /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cort=
exa5f-neon-poky-linux-gnueabi/crank/1.0-r0/temp/run.do_install.16738:1 exit=
 2 from make INSTALL_ROOT=3D/home/swapna/workspace/work/yocto/poky/build-at=
mel/tmp/work/crtexa5hf-neon-poky-linux-gnueabi/crank/1.0-r0/image install'
| ERROR: Function failed: do_install (log file is located at /home/swapna/w=
orksace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf-neon-poky-linux-gnu=
eabi/crak/1.0-r0/temp/log.do_install.16738)
ERROR: Task 1095 (/home/swapna/workspace/work/yocto/meta-atmel/qt5-layer/re=
cipe-qt/apps/crank_1.0.bb, do_install) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3563 tasks of which 3562 didn't need to be r=
erunand 1 failed.
No currently running tasks (3056 of 4701)

Summary: 1 task failed:
  /home/swapna/workspace/work/yocto/meta-atmel/qt5-layer/recipes-qt/apps/cr=
ank_.0.bb, do_install
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.



Can someone help me in fixing the .bb recipe?
Regards
Swapna

--_000_061E8AE63BCA5A41B92BC90F19C8225237AE71B6CHNSVEXMX05mchp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi, I have a tar file on my local drive and I want t=
o untar this and copy it to my rootfilesystem image.<o:p></o:p></p>
<p class=3D"MsoNormal">Please find attached the .bb recipe I am using.<o:p>=
</o:p></p>
<p class=3D"MsoNormal">When I run bitbake for this recipe, my build breaks =
with the following error:<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: crank-1.0-r0 do_install: Function failed: do_=
install (log file is locate at /home/swapna/workspace/work/yocto/poky/build=
-atmel/tmp/work/cortexa5hf-neonpoky-linux-gnueabi/crank/1.0-r0/temp/log.do_=
install.16738)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /home/swapna/wo=
rkspace/work/yocto/poky/buid-atmel/tmp/work/cortexa5hf-neon-poky-linux-gnue=
abi/crank/1.0-r0/temp/log.do_intall.16738<o:p></o:p></p>
<p class=3D"MsoNormal">Log data follows:<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing shell function do_install<o:p></o=
:p></p>
<p class=3D"MsoNormal">| make: *** No rule to make target 'install'.&nbsp; =
Stop.<o:p></o:p></p>
<p class=3D"MsoNormal">| WARNING: /home/swapna/workspace/work/yocto/poky/bu=
ild-atmel/tmp/work/cortexa5f-neon-poky-linux-gnueabi/crank/1.0-r0/temp/run.=
do_install.16738:1 exit 2 from make INSTALL_ROOT=3D/home/swapna/workspace/w=
ork/yocto/poky/build-atmel/tmp/work/crtexa5hf-neon-poky-linux-gnueabi/crank=
/1.0-r0/image
 install'<o:p></o:p></p>
<p class=3D"MsoNormal">| ERROR: Function failed: do_install (log file is lo=
cated at /home/swapna/worksace/work/yocto/poky/build-atmel/tmp/work/cortexa=
5hf-neon-poky-linux-gnueabi/crak/1.0-r0/temp/log.do_install.16738)<o:p></o:=
p></p>
<p class=3D"MsoNormal">ERROR: Task 1095 (/home/swapna/workspace/work/yocto/=
meta-atmel/qt5-layer/recipe-qt/apps/crank_1.0.bb, do_install) failed with e=
xit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 3563 tasks of which 3=
562 didn't need to be rerunand 1 failed.<o:p></o:p></p>
<p class=3D"MsoNormal">No currently running tasks (3056 of 4701)<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: 1 task failed:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; /home/swapna/workspace/work/yocto/meta-atmel/=
qt5-layer/recipes-qt/apps/crank_.0.bb, do_install<o:p></o:p></p>
<p class=3D"MsoNormal">Summary: There was 1 WARNING message shown.<o:p></o:=
p></p>
<p class=3D"MsoNormal">Summary: There was 1 ERROR message shown, returning =
a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can someone help me in fixing the .bb recipe? <o:p><=
/o:p></p>
<p class=3D"MsoNormal">Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Swapna<o:p></o:p></p>
</div>
</body>
</html>

--_000_061E8AE63BCA5A41B92BC90F19C8225237AE71B6CHNSVEXMX05mchp_--

--_004_061E8AE63BCA5A41B92BC90F19C8225237AE71B6CHNSVEXMX05mchp_
Content-Type: application/octet-stream; name="crank_1.0.bb"
Content-Description: crank_1.0.bb
Content-Disposition: attachment; filename="crank_1.0.bb"; size=941;
	creation-date="Mon, 31 Oct 2016 23:45:20 GMT";
	modification-date="Mon, 31 Oct 2016 23:45:20 GMT"
Content-Transfer-Encoding: base64

REVTQ1JJUFRJT04gPSAiQ3JhbmsgaG9tZSBhdXRvbWF0aW9uIGRlbW8iCkxJQ0VOU0UgPSAiTUlU
IgpMSUNfRklMRVNfQ0hLU1VNID0gImZpbGU6Ly8ke0NPUkVCQVNFfS9MSUNFTlNFO21kNT00ZDky
Y2QzNzNhYmRhMzkzN2MyYmM0N2ZiYzQ5ZDY5MCBcCiAgICAgICAgICAgICAgICAgICAgZmlsZTov
LyR7Q09SRUJBU0V9L21ldGEvQ09QWUlORy5NSVQ7bWQ1PTNkYTljZmJjYjc4OGM4MGEwMzg0MzYx
YjRkZTIwNDIwIgoKUEFDS0FHRVMgPSAiJHtQTn0iCgpQUiA9ICJyMiIKCkRFUEVORFMgPSAicXRi
YXNlIHF0cXVpY2sxIgppbmhlcml0IHFtYWtlNQoKU1JDX1VSSSA9ICJmaWxlOi8vY3JhbmstViR7
UFZ9LnRhci5neiIKClMgPSAiJHtXT1JLRElSfS9jcmFuay1WJHtQVn0iCgppbmhlcml0IHBrZ2Nv
bmZpZwoKCkZJTEVTXyR7UE59ID0gIiBcCiAgL29wdC9jcmFuay9Ib21lLTgwMC8qIFwKICAvb3B0
L2NyYW5rL0xhdW5jaGVyMjAxNl9Tb2Z0d2FyZVJlbmRlcmVyLyogXAogIC9vcHQvY3JhbmsvbGlu
dXgtc2FtYTVkLWFybWxlLWZiZGV2LW9iai8qIFwKICAvb3B0L2NyYW5rL21lZF9kZW1vXzIwMTYv
KiBcCiAgL29wdC9jcmFuay9XYXNoaW5nTWFjaGluZV9WMi8qIFwKICAvb3B0L2NyYW5rL2NsZWFy
X2J1ZmZlcnMgXAogIC9vcHQvY3JhbmsvbGF5ZXItZW5hYmxlIFwKICAvb3B0L2NyYW5rL1JFQURN
RS50eHQgXAogIC9vcHQvY3JhbmsvcnVuX2hhLnNoIFwKICAvb3B0L2NyYW5rL3J1bnNiLnNoIFwK
ICAvb3B0L2NyYW5rL3J1bnNiLTQ4MC5zaCBcCiAgL29wdC9jcmFuay9zYl9sYXVuY2guc2ggXAog
IC9vcHQvY3Jhbmsvc2JkZW1vLnNoIFwKICAKIgoKCmRvX2luc3RhbGwoKSB7CiAgICAgICAgbWFr
ZSBJTlNUQUxMX1JPT1Q9JHtEfSBpbnN0YWxsCiAgICAgICAgaW5zdGFsbCAtbSAwNzU1ICR7Qn0v
Y3JhbmsgJHtEfS9vcHQvY3JhbmsvCgoKfQoKCgo=

--_004_061E8AE63BCA5A41B92BC90F19C8225237AE71B6CHNSVEXMX05mchp_--
