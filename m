Return-Path: <hao.h.li@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08577E00C0E; Fri, 27 Nov 2015 17:32:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43DDCE00ACF
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 17:32:18 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 27 Nov 2015 17:32:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,353,1444719600"; 
	d="scan'208,217";a="861468967"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by fmsmga002.fm.intel.com with ESMTP; 27 Nov 2015 17:32:09 -0800
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Fri, 27 Nov 2015 17:32:08 -0800
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	fmsmsx111.amr.corp.intel.com (10.18.116.5) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Fri, 27 Nov 2015 17:32:08 -0800
Received: from shsmsx103.ccr.corp.intel.com ([169.254.4.138]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.83]) with mapi id
	14.03.0248.002; Sat, 28 Nov 2015 09:32:06 +0800
From: "Li, Hao H" <hao.h.li@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Question about configure.ac:46: error: possibly undefined macro
Thread-Index: AdEpfIBVq92wIexVS+yoRUwULtHrKQ==
Date: Sat, 28 Nov 2015 01:32:06 +0000
Message-ID: <D1A08A646ADA264CBF20EA48083E88EE01DA3568@SHSMSX103.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Question about configure.ac:46: error: possibly undefined macro
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
X-List-Received-Date: Sat, 28 Nov 2015 01:32:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D1A08A646ADA264CBF20EA48083E88EE01DA3568SHSMSX103ccrcor_"

--_000_D1A08A646ADA264CBF20EA48083E88EE01DA3568SHSMSX103ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
When I follow the instructions from https://github.com/solettaproject/solet=
ta/wiki/MinnowBoard-MAX-Instructions to bitbake image
It will generate below error. I have already installed libtool etc.
My environment is Ubuntu 15.04 64bits, does anyone know how the problem is =
? Thanks!

autoreconf: running: /home/ssg/yocto/poky/build/tmp/sysroots/x86_64-linux/u=
sr/bin/autoconf --include=3D/home/ssg/yocto/poky/build/tmp/work/corei7-64-s=
mallos-linux/libmicrohttpd/0.9.43-r0/libmicrohttpd-0.9.43/m4/ --force
| configure.ac:46: error: possibly undefined macro: AC_MSG_CHECKING
|       If this token and others are legitimate, please use m4_pattern_allo=
w.
|       See the Autoconf documentation.
| configure.ac:63: error: possibly undefined macro: AC_MSG_RESULT
| configure.ac:77: error: possibly undefined macro: AS_IF
| configure.ac:110: error: possibly undefined macro: AC_LINK_IFELSE
| configure.ac:111: error: possibly undefined macro: AC_LANG_PROGRAM
| configure.ac:183: error: possibly undefined macro: AC_CHECK_HEADERS
| configure.ac:207: error: possibly undefined macro: AC_MSG_WARN
| configure.ac:592: error: possibly undefined macro: AC_CHECK_LIB
| autoreconf: /home/ssg/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/bin/=
autoconf failed with exit status: 1
| ERROR: autoreconf execution failed.
| ERROR: Function failed: do_configure (log file is located at /home/ssg/yo=
cto/poky/build/tmp/work/corei7-64-smallos-linux/libmicrohttpd/0.9.43-r0/tem=
p/log.do_configure.11963)
ERROR: Task 5 (/home/ssg/yocto/meta-soletta/recipes-modules/libmicrohttpd/l=
ibmicrohttpd_0.9.43.bb, do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 777 tasks of which 776 didn't need to be rer=
un and 1 failed.
No currently running tasks (634 of 785)


Li Hao
Best Regards
Email:hao.h.li@intel.com<mailto:hao.h.li@intel.com>

Software and Service Group
Intel Asia-Pacific Research & Development Ltd.
Tel: 86-21-61167039


--_000_D1A08A646ADA264CBF20EA48083E88EE01DA3568SHSMSX103ccrcor_
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
	{font-family:\5B8B\4F53;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\5B8B\4F53";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
	margin:1.0in 1.25in 1.0in 1.25in;}
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
<p class=3D"MsoNormal">Hi, <o:p></o:p></p>
<p class=3D"MsoNormal">When I follow the instructions from <a href=3D"https=
://github.com/solettaproject/soletta/wiki/MinnowBoard-MAX-Instructions">
https://github.com/solettaproject/soletta/wiki/MinnowBoard-MAX-Instructions=
</a> to bitbake image<o:p></o:p></p>
<p class=3D"MsoNormal">It will generate below error. I have already install=
ed libtool etc.<o:p></o:p></p>
<p class=3D"MsoNormal">My environment is Ubuntu 15.04 64bits, does anyone k=
now how the problem is ? Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">autoreconf: running: /home/ssg/yocto/poky/build/tmp/=
sysroots/x86_64-linux/usr/bin/autoconf --include=3D/home/ssg/yocto/poky/bui=
ld/tmp/work/corei7-64-smallos-linux/libmicrohttpd/0.9.43-r0/libmicrohttpd-0=
.9.43/m4/ --force<o:p></o:p></p>
<p class=3D"MsoNormal">| configure.ac:46: error: possibly undefined macro: =
AC_MSG_CHECKING<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; If this token =
and others are legitimate, please use m4_pattern_allow.<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; See the Autoco=
nf documentation.<o:p></o:p></p>
<p class=3D"MsoNormal">| configure.ac:63: error: possibly undefined macro: =
AC_MSG_RESULT<o:p></o:p></p>
<p class=3D"MsoNormal">| configure.ac:77: error: possibly undefined macro: =
AS_IF<o:p></o:p></p>
<p class=3D"MsoNormal">| configure.ac:110: error: possibly undefined macro:=
 AC_LINK_IFELSE<o:p></o:p></p>
<p class=3D"MsoNormal">| configure.ac:111: error: possibly undefined macro:=
 AC_LANG_PROGRAM<o:p></o:p></p>
<p class=3D"MsoNormal">| configure.ac:183: error: possibly undefined macro:=
 AC_CHECK_HEADERS<o:p></o:p></p>
<p class=3D"MsoNormal">| configure.ac:207: error: possibly undefined macro:=
 AC_MSG_WARN<o:p></o:p></p>
<p class=3D"MsoNormal">| configure.ac:592: error: possibly undefined macro:=
 AC_CHECK_LIB<o:p></o:p></p>
<p class=3D"MsoNormal">| autoreconf: /home/ssg/yocto/poky/build/tmp/sysroot=
s/x86_64-linux/usr/bin/autoconf failed with exit status: 1<o:p></o:p></p>
<p class=3D"MsoNormal">| ERROR: autoreconf execution failed.<o:p></o:p></p>
<p class=3D"MsoNormal">| ERROR: Function failed: do_configure (log file is =
located at /home/ssg/yocto/poky/build/tmp/work/corei7-64-smallos-linux/libm=
icrohttpd/0.9.43-r0/temp/log.do_configure.11963)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task 5 (/home/ssg/yocto/meta-soletta/recipes-=
modules/libmicrohttpd/libmicrohttpd_0.9.43.bb, do_configure) failed with ex=
it code '1'<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 777 tasks of which 77=
6 didn't need to be rerun and 1 failed.<o:p></o:p></p>
<p class=3D"MsoNormal">No currently running tasks (634 of 785)<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph;layout-grid-mode:char">
<span style=3D"font-size:12.0pt">Li Hao<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph;layout-grid-mode:char">
<span style=3D"font-size:12.0pt">Best Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph;layout-grid-mode:char">
<span style=3D"font-size:12.0pt">Email:<a href=3D"mailto:hao.h.li@intel.com=
" title=3D"mailto:hao.h.li@intel.comblocked::mailto:hao.h.li@intel.commailt=
o:hao.h.li@intel.com"><span style=3D"font-family:&quot;Times New Roman&quot=
;,serif;color:blue">hao.h.li@intel.com</span></a><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph;layout-grid-mode:char">
<span style=3D"font-size:12.0pt"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph;layout-grid-mode:char">
<span style=3D"font-size:12.0pt">Software and Service Group<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph;layout-grid-mode:char">
<span style=3D"font-size:12.0pt">Intel Asia-Pacific Research &amp; Developm=
ent Ltd.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify;text-justify:inter-ideog=
raph;layout-grid-mode:char">
<span style=3D"font-size:12.0pt">Tel: 86-21-61167039<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_D1A08A646ADA264CBF20EA48083E88EE01DA3568SHSMSX103ccrcor_--
