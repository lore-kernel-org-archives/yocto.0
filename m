Return-Path: <hgovind@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B442CE00D57; Wed, 12 Oct 2016 18:09:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.142.89 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 12 Oct 2016 18:09:32 PDT
Received: from alln-iport-2.cisco.com (alln-iport-2.cisco.com [173.37.142.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08226E00C82
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 18:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=14710; q=dns/txt;
	s=iport; t=1476320972; x=1477530572;
	h=from:to:subject:date:message-id:mime-version;
	bh=SMgXrM0TyRXYVoxC08+QBv02YyIuS5L4xAXXtxXllG8=;
	b=CDk1SpY0mxFoRlzfniXZbjR3nt4PG/ontoGRsxOYGlvhB1AJwgN26gRw
	a28YV8+z9bPtDj39vpUZX8gBI+4Hohra8muBhMkdZA7tTAgUtbUpDgDgO
	SytcOTP2d3qN6jZ156zHxfZUlKivxX2zZDWbYUmKh2OSRX2cYmS0bGzDS E=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0D/AQBI3v5X/5xdJa1cHAEBBAEBCgEBg?=
	=?us-ascii?q?wc1AQEBAQEdV4EDjS2mJIUUggqIHTgUAQIBAQEBAQEBXhwLhGgtXgGBAB8HAQQ?=
	=?us-ascii?q?biEimYpxzAQEBAQYBAQEBAQEihj2OXh0FiDWHQ4oKAY91gXWEZ4kgkHcBHjYaN?=
	=?us-ascii?q?oRkiFaBAAEBAQ?=
X-IronPort-AV: E=Sophos;i="5.31,338,1473120000"; 
	d="scan'208,217";a="333539118"
Received: from rcdn-core-5.cisco.com ([173.37.93.156])
	by alln-iport-2.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Oct 2016 01:08:12 +0000
Received: from XCH-RTP-002.cisco.com (xch-rtp-002.cisco.com [64.101.220.142])
	by rcdn-core-5.cisco.com (8.14.5/8.14.5) with ESMTP id u9D18CpJ030121
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 01:08:12 GMT
Received: from xch-rtp-003.cisco.com (64.101.220.143) by XCH-RTP-002.cisco.com
	(64.101.220.142) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Wed, 12 Oct 2016 21:08:11 -0400
Received: from xch-rtp-003.cisco.com ([64.101.220.143]) by
	XCH-RTP-003.cisco.com ([64.101.220.143]) with mapi id 15.00.1210.000;
	Wed, 12 Oct 2016 21:08:11 -0400
From: "Harshal Govind (hgovind)" <hgovind@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: building uclibc based image for arm
Thread-Index: AdIk7kCpcQmT3ppAQ8q/CckET7JCDw==
Date: Thu, 13 Oct 2016 01:08:11 +0000
Message-ID: <354bb7fd02a644249f3422a333f3f0ec@XCH-RTP-003.cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.41.58.30]
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 14 Oct 2016 08:47:18 -0700
Subject: building uclibc based image for arm
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
X-List-Received-Date: Thu, 13 Oct 2016 01:09:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_354bb7fd02a644249f3422a333f3f0ecXCHRTP003ciscocom_"

--_000_354bb7fd02a644249f3422a333f3f0ecXCHRTP003ciscocom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,


I am trying build uclibc based image. But getting following error.
Note:

-          I am using yocto-1.7.2

-          Set TCLIBC ?=3D "uclibc" in distro/defaultsetup.conf

-          Building for arm

# bitbake core-image-minimal

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_install (log file is located at /home/hgovind/pr=
ojects/temp/test-sdk/ap-sdk/yp_ap/tmp/work/armv7a-vfp-neon-poky-linux-uclib=
ceabi/glibc-locale/2.20-r0/temp/log.do_install.29445)
ERROR: Logfile of failure stored in: /home/hgovind/projects/temp/test-sdk/a=
p-sdk/yp_ap/tmp/work/armv7a-vfp-neon-poky-linux-uclibceabi/glibc-locale/2.2=
0-r0/temp/log.do_install.29445
Log data follows:
| DEBUG: Executing shell function do_install
| ls: cannot access /home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/s=
ysroots/ap3k-lxc/usr/include/glibc-locale-internal-armv7a-vfp-neon-poky-lin=
ux-uclibceabi//usr/bin: No such file or directory
| ls: cannot access /home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/s=
ysroots/ap3k-lxc/usr/include/glibc-locale-internal-armv7a-vfp-neon-poky-lin=
ux-uclibceabi//usr/lib/locale: No such file or directory
| cp: cannot stat '/home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/sy=
sroots/ap3k-lxc/usr/include/glibc-locale-internal-armv7a-vfp-neon-poky-linu=
x-uclibceabi/SUPPORTED': No such file or directory
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_install (log file is located at /home/hgovind/=
projects/temp/test-sdk/ap-sdk/yp_ap/tmp/work/armv7a-vfp-neon-poky-linux-ucl=
ibceabi/glibc-locale/2.20-r0/temp/log.do_install.29445)
ERROR: Task 1094 (/home/hgovind/projects/temp/test-sdk/ap-sdk/sys/yocto-1.7=
/poky-dizzy-12.0.2/meta/recipes-core/glibc/glibc-locale_2.20.bb, do_install=
) failed with exit code '1'
NOTE: Tasks Summary: Attempted 780 tasks of which 703 didn't need to be rer=
un and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/hgovind/projects/temp/test-sdk/ap-sdk/sys/yocto-1.7/poky-dizzy-12.0=
.2/meta/recipes-core/glibc/glibc-locale_2.20.bb, do_install
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


Could you please let me know if I am following correct steps to create ucli=
bc based image?


--_000_354bb7fd02a644249f3422a333f3f0ecXCHRTP003ciscocom_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Lucida Console";
	panose-1:2 11 6 9 4 5 4 2 2 4;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
/* List Definitions */
@list l0
	{mso-list-id:980380665;
	mso-list-type:hybrid;
	mso-list-template-ids:1220564630 1431082464 67698691 67698693 67698689 676=
98691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:4;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.25in;
	text-indent:-.25in;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.75in;
	text-indent:-.25in;
	font-family:Wingdings;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying build uclibc based image. But getting fo=
llowing error.<o:p></o:p></p>
<p class=3D"MsoNormal">Note:<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span><![endif]>I am using yocto-1.7.2<o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span><![endif]><span style=3D"font-size:9.0pt;font-family:&quot;Lu=
cida Console&quot;">Set TCLIBC ?=3D &quot;uclibc&quot; in distro/defaultset=
up.conf</span><o:p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"margin-left:.75in;text-indent:-.25in=
;mso-list:l0 level1 lfo1">
<![if !supportLists]><span style=3D"mso-list:Ignore">-<span style=3D"font:7=
.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
</span></span><![endif]><span style=3D"font-size:9.0pt;font-family:&quot;Lu=
cida Console&quot;">Building for arm</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Luc=
ida Console&quot;"># bitbake core-image-minimal</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span style=3D"font=
-size:9.0pt;font-family:&quot;Lucida Console&quot;">NOTE</span></b><span st=
yle=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">: Preparing =
runqueue<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span style=3D"font=
-size:9.0pt;font-family:&quot;Lucida Console&quot;">NOTE</span></b><span st=
yle=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">: Executing =
SetScene Tasks<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span style=3D"font=
-size:9.0pt;font-family:&quot;Lucida Console&quot;">NOTE</span></b><span st=
yle=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">: Executing =
RunQueue Tasks<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;;color:#FF4040">ERROR</span>=
<span style=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">:
<span style=3D"color:#BF0000">Function failed: do_install (log file is loca=
ted at /home/hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/work/armv7a-vf=
p-neon-poky-linux-uclibceabi/glibc-locale/2.20-r0/temp/log.do_install.29445=
)<o:p></o:p></span></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;;color:#FF4040">ERROR</span>=
<span style=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">:
<span style=3D"color:#BF0000">Logfile of failure stored in: /home/hgovind/p=
rojects/temp/test-sdk/ap-sdk/yp_ap/tmp/work/armv7a-vfp-neon-poky-linux-ucli=
bceabi/glibc-locale/2.20-r0/temp/log.do_install.29445<o:p></o:p></span></sp=
an></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">Log data follows:<o:p></o:=
p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| DEBUG: Executing shell f=
unction do_install<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| ls: cannot access /home/=
hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/sysroots/ap3k-lxc/usr/inclu=
de/glibc-locale-internal-armv7a-vfp-neon-poky-linux-uclibceabi//usr/bin:
 No such file or directory<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| ls: cannot access /home/=
hgovind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/sysroots/ap3k-lxc/usr/inclu=
de/glibc-locale-internal-armv7a-vfp-neon-poky-linux-uclibceabi//usr/lib/loc=
ale:
 No such file or directory<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| cp: cannot stat '/home/h=
govind/projects/temp/test-sdk/ap-sdk/yp_ap/tmp/sysroots/ap3k-lxc/usr/includ=
e/glibc-locale-internal-armv7a-vfp-neon-poky-linux-uclibceabi/SUPPORTED':
 No such file or directory<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| WARNING: exit code 1 fro=
m a shell command.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| ERROR: Function failed: =
do_install (log file is located at /home/hgovind/projects/temp/test-sdk/ap-=
sdk/yp_ap/tmp/work/armv7a-vfp-neon-poky-linux-uclibceabi/glibc-locale/2.20-=
r0/temp/log.do_install.29445)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;;color:#FF4040">ERROR</span>=
<span style=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">:
<span style=3D"color:#BF0000">Task 1094 (/home/hgovind/projects/temp/test-s=
dk/ap-sdk/sys/yocto-1.7/poky-dizzy-12.0.2/meta/recipes-core/glibc/glibc-loc=
ale_2.20.bb, do_install) failed with exit code '1'<o:p></o:p></span></span>=
</p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span style=3D"font=
-size:9.0pt;font-family:&quot;Lucida Console&quot;">NOTE</span></b><span st=
yle=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">: Tasks Summ=
ary: Attempted 780 tasks of which 703 didn't need to be rerun
 and 1 failed.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">Waiting for 0 running task=
s to finish:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">Summary: 1 task failed:<o:=
p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">&nbsp; /home/hgovind/proje=
cts/temp/test-sdk/ap-sdk/sys/yocto-1.7/poky-dizzy-12.0.2/meta/recipes-core/=
glibc/glibc-locale_2.20.bb, do_install<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">Summary: There was 1 ERROR=
 message shown, returning a non-zero exit code.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Could you please let me know if I am following corre=
ct steps to create uclibc based image?<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_354bb7fd02a644249f3422a333f3f0ecXCHRTP003ciscocom_--
