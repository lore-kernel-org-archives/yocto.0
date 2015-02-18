Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9268AE00757; Wed, 18 Feb 2015 05:55:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6EC4E0034E
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 05:55:00 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AjgFAESZ5FSHCzIm/2dsb2JhbABbgkMhIlJewC6FTIJPAoEdQwEBAQEBAXyEDgEBAxIbXgEVFVYmAQQbGogNAaoUhH+idwEKAQEBAR2PTINOgRQFhV6JZZAkg36ILCKCAR2BUIIzfwEBAQ
X-IronPort-AV: E=Sophos;i="5.09,602,1418101200"; d="scan'208,217";a="91782008"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by de307622-de-outbound.net.avaya.com with ESMTP;
	18 Feb 2015 08:54:58 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC02.global.avaya.com) ([135.64.58.12])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	18 Feb 2015 08:54:57 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC02.global.avaya.com ([135.64.58.12]) with mapi id
	14.03.0174.001; Wed, 18 Feb 2015 14:54:55 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Error while building x264 for FreeScale 
Thread-Index: AdBLgngdb19kw5arQOSzbwaRHm7M2A==
Date: Wed, 18 Feb 2015 13:54:55 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A353B60@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.45]
MIME-Version: 1.0
Subject: Error while building x264 for FreeScale
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
X-List-Received-Date: Wed, 18 Feb 2015 13:55:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3A353B60AZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3A353B60AZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I was trying to build x264 for FreeScale PowerPc and it getting failed with=
 below error log

Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| No working C compiler found.

When I check the config.log file it reports below error

Failed commandline was:
--------------------------------------------------
powerpc-fsl-linux-gcc  -m32 -mhard-float -mcpu=3De5500 --sysroot=3D<sysroot=
 dir> conftest.c  -  O2 -pipe -g -feliminate-unused-debug-types -Wall -I. -=
I$(SRCPATH) -sysroot=3D<sysroot dir>  - maltivec -mabi=3Daltivec   -Wl,-O1 =
-Wl,--hash-style=3Dgnu -Wl,--as-needed --sysroot=3D/home/vmprodev/QorIQ-SDK=
-V1.7-20141218-yocto/build_t1040rdb_release/tmp/sysroots/       t1040rdb -l=
m -o conftest
conftest.c:1:0: error: AltiVec not supported in this target
  int main () {  return 0; }
  ^
--------------------------------------------------
Failed program was:
--------------------------------------------------
int main () {  return 0; }
--------------------------------------------------
DIED: No working C compiler found.

So any thoughts how to fix this issue.

Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3A353B60AZFFEXMB01globa_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
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
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I was trying to build x264 for FreeScale PowerPc and=
 it getting failed with below error log<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Log data follows:<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing python function sysroot_cleanssta=
te<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Python function sysroot_cleansstate finishe=
d<o:p></o:p></p>
<p class=3D"MsoNormal">| DEBUG: Executing shell function do_configure<o:p><=
/o:p></p>
<p class=3D"MsoNormal">| No working C compiler found.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When I check the config.log file it reports below er=
ror<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Failed commandline was:<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------------------------------<o=
:p></o:p></p>
<p class=3D"MsoNormal">powerpc-fsl-linux-gcc&nbsp; -m32 -mhard-float -mcpu=
=3De5500 --sysroot=3D&lt;sysroot dir&gt; conftest.c&nbsp; -&nbsp; O2 -pipe =
-g -feliminate-unused-debug-types -Wall -I. -I$(SRCPATH) &#8211;sysroot=3D&=
lt;sysroot dir&gt; &nbsp;- maltivec -mabi=3Daltivec&nbsp;&nbsp; -Wl,-O1 -Wl=
,--hash-style=3Dgnu
 -Wl,--as-needed --sysroot=3D/home/vmprodev/QorIQ-SDK-V1.7-20141218-yocto/b=
uild_t1040rdb_release/tmp/sysroots/&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; t10=
40rdb -lm -o conftest<o:p></o:p></p>
<p class=3D"MsoNormal">conftest.c:1:0: error: AltiVec not supported in this=
 target<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; int main () {&nbsp; return 0; }<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp; ^<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------------------------------<o=
:p></o:p></p>
<p class=3D"MsoNormal">Failed program was:<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------------------------------<o=
:p></o:p></p>
<p class=3D"MsoNormal">int main () {&nbsp; return 0; }<o:p></o:p></p>
<p class=3D"MsoNormal">--------------------------------------------------<o=
:p></o:p></p>
<p class=3D"MsoNormal">DIED: No working C compiler found.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So any thoughts how to fix this issue.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Abhinav<o:p></o:p></p>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3A353B60AZFFEXMB01globa_--
