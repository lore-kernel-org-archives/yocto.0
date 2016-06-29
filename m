Return-Path: <Virgil.Smith@flir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE4D3E00DC2; Wed, 29 Jun 2016 15:05:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.0.64.244 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from east-edge.flir.com (east-edge.flir.com [208.0.64.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 361C3E00DB0
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 15:05:40 -0700 (PDT)
Received: from BOS-CH1.zone1.flir.net (10.128.150.52) by EAST-EDGE.flir.com
	(10.128.210.250) with Microsoft SMTP Server (TLS) id 14.3.279.2;
	Wed, 29 Jun 2016 18:07:21 -0400
Received: from BOS-MAIL1.zone1.flir.net ([169.254.1.139]) by
	BOS-CH1.zone1.flir.net ([10.128.150.52]) with mapi id 14.03.0279.002;
	Wed, 29 Jun 2016 18:05:38 -0400
From: "Smith, Virgil" <Virgil.Smith@flir.com>
To: Yocto Project <yocto@yoctoproject.org>
Thread-Topic: Fetch failure errors while building yocto
Thread-Index: AQHR0kDUP7eLHeYVAkOzezL3oTWH4aAA/5aQ
Date: Wed, 29 Jun 2016 22:05:37 +0000
Message-ID: <F14AEF751653024287138321000C846A011AC088BD@BOS-MAIL1.zone1.flir.net>
References: <MAXPR01MB0490BCF33B32D611E0A1AAC0EF230@MAXPR01MB0490.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MAXPR01MB0490BCF33B32D611E0A1AAC0EF230@MAXPR01MB0490.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.145.100.106]
MIME-Version: 1.0
Subject: Re: Fetch failure errors while building yocto
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
X-List-Received-Date: Wed, 29 Jun 2016 22:05:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F14AEF751653024287138321000C846A011AC088BDBOSMAIL1zone1_"

--_000_F14AEF751653024287138321000C846A011AC088BDBOSMAIL1zone1_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

See the Yocto Wiki Question "How do I create my own source download mirror?=
"
https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_create_my_own_sourc=
e_download_mirror_.3F

That does not answer why you are getting intermittent download errors, but =
the stark fact is that to some degree this must be expected (maybe not as m=
uch as you are seeing, but some...).

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Harinath maddelal
Sent: Wednesday, June 29, 2016 3:02 PM
To: Yocto Project <yocto@yoctoproject.org>
Subject: [yocto] Fetch failure errors while building yocto


Hi



While im trying to build yocto. Im facing some fetch failure errors. The sa=
me works fine sometimes but sometimes it fails giving the error as unable t=
o fetch.



When i try to download it using wget it works fine.


Build Configuration:
BB_VERSION        =3D "1.24.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-14.04"
TARGET_SYS        =3D "mipsel-poky-linux"
MACHINE           =3D "i7"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.7.3"
TUNE_FEATURES     =3D "o32 fpu-hard mips32r2"
TARGET_FPU        =3D ""
meta
meta-yocto
meta-yocto-bsp
meta-i7
meta-i7recepes
meta-mylayer
meta-dnsmask
meta-netifd
meta-lldpd
meta-relayd
meta-dhcpv6-linux
meta-json
meta-lua2
meta-libubox
meta-ustream-ssl
meta-ubus
meta-uci
meta-ipset2
meta-uclient
meta-rpc
meta-firewall
meta-uqmi         =3D "(nobranch):b38454c2e3a7a58f5397bb16d59e2b0aa71c4a94"
meta-alljoyn      =3D "master:e775bf1c287e10abf18ceae544a310cdefc24ed0"
meta-oic          =3D "(nobranch):b38454c2e3a7a58f5397bb16d59e2b0aa71c4a94"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: Failed to fetch URL http://download.oracle.com/berkeley-db/db-6.0.=
30.tar.gz, attempting MIRRORS if available
WARNING: Failed to fetch URL http://downloads.sourceforge.net/boost/boost_1=
_56_0.tar.bz2, attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output
ERROR: Function failed: Fetcher failure for URL: 'http://download.oracle.co=
m/berkeley-db/db-6.0.30.tar.gz'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/mi=
ps32r2el-poky-linux/db/6.0.30-r0/temp/log.do_fetch.20074
ERROR: Task 1792 (/home/harinathm/poky/meta/recipes-support/db/db_6.0.30.bb=
, do_fetch) failed with exit code '1'
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output
ERROR: Function failed: Fetcher failure for URL: 'http://downloads.sourcefo=
rge.net/boost/boost_1_56_0.tar.bz2'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/x8=
6_64-linux/bjam-native/1.56.0-r0/temp/log.do_fetch.20078
ERROR: Task 2575 (/home/harinathm/poky/meta/recipes-support/boost/bjam-nati=
ve_1.56.0.bb, do_fetch) failed with exit code '1'
WARNING: Failed to fetch URL http://download.oracle.com/berkeley-db/db-6.0.=
30.tar.gz, attempting MIRRORS if available
WARNING: Failed to fetch URL http://downloads.sourceforge.net/boost/boost_1=
_56_0.tar.bz2, attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output
ERROR: Function failed: Fetcher failure for URL: 'http://download.oracle.co=
m/berkeley-db/db-6.0.30.tar.gz'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/x8=
6_64-linux/db-native/6.0.30-r0/temp/log.do_fetch.20073
ERROR: Task 1234 (virtual:native:/home/harinathm/poky/meta/recipes-support/=
db/db_6.0.30.bb, do_fetch) failed with exit code '1'
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output
ERROR: Function failed: Fetcher failure for URL: 'http://downloads.sourcefo=
rge.net/boost/boost_1_56_0.tar.bz2'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/mi=
ps32r2el-poky-linux/boost/1.56.0-r0/temp/log.do_fetch.20075
ERROR: Task 1721 (/home/harinathm/poky/meta/recipes-support/boost/boost_1.5=
6.0.bb, do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2126 tasks of which 2122 didn't need to be r=
erun and 4 failed.


Can you please help me to fix this kind of fetch failure errors.


Thanks and Regards,
Harinath

________________________________

Notice to recipient: This email is meant for only the intended recipient of=
 the transmission, and may be a communication privileged by law, subject to=
 export control restrictions or that otherwise contains proprietary informa=
tion. If you receive this email by mistake, please notify us immediately by=
 replying to this message and then destroy it and do not review, disclose, =
copy or distribute it. Thank you in advance for your cooperation.

--_000_F14AEF751653024287138321000C846A011AC088BDBOSMAIL1zone1_
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
libri&quot;,sans-serif">See the Yocto Wiki Question &#8220;How do I create =
my own source download mirror?&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_=
do_I_create_my_own_source_download_mirror_.3F<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">That does not answer why you are getting intermitte=
nt download errors, but the stark fact is that to some degree this must be =
expected (maybe not as much as you are seeing,
 but some&#8230;).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> yocto-bounces@yoctoproject.org=
 [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Harinath maddelal<br>
<b>Sent:</b> Wednesday, June 29, 2016 3:02 PM<br>
<b>To:</b> Yocto Project &lt;yocto@yoctoproject.org&gt;<br>
<b>Subject:</b> [yocto] Fetch failure errors while building yocto<o:p></o:p=
></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div id=3D"divtagdefaultwrapper">
<p style=3D"background:white"><span style=3D"font-family:&quot;Calibri&quot=
;,sans-serif;color:black">Hi<o:p></o:p></span></p>
<p style=3D"background:white"><span style=3D"font-family:&quot;Calibri&quot=
;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p style=3D"background:white"><span style=3D"font-family:&quot;Calibri&quot=
;,sans-serif;color:black">While im trying to build yocto. Im facing some fe=
tch failure errors. The same works fine sometimes but sometimes it fails gi=
ving the error as unable to fetch.<o:p></o:p></span></p>
<p style=3D"background:white"><span style=3D"font-family:&quot;Calibri&quot=
;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>
<p style=3D"background:white"><span style=3D"font-family:&quot;Calibri&quot=
;,sans-serif;color:black">When i try to download it using wget it works fin=
e.<o:p></o:p></span></p>
<p style=3D"background:white"><span style=3D"font-family:&quot;Calibri&quot=
;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-famil=
y:&quot;Calibri&quot;,sans-serif;color:black">Build Configuration:<br>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.24.0&quot;=
<br>
BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-=
linux&quot;<br>
NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;Ubuntu-14.04&quot;<br>
TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;mipsel-poky-=
linux&quot;<br>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &qu=
ot;i7&quot;<br>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;poky&quot;<br>
DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;1.7.3&quot;<br>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;o32 fpu-hard mips32r2&quot;=
<br>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;&quot;<br>
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; &nbsp;<br>
meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-yocto-bsp&nbsp;&nbsp; &nbsp;<br>
meta-i7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-i7recepes&nbsp;&nbsp; &nbsp;<br>
meta-mylayer&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-dnsmask&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-netifd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-lldpd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-relayd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-dhcpv6-linux <br>
meta-json&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-lua2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-libubox&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-ustream-ssl &nbsp;<br>
meta-ubus&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-uci&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-ipset2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-uclient&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-rpc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-firewall&nbsp;&nbsp;&nbsp; &nbsp;<br>
meta-uqmi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;(nobran=
ch):b38454c2e3a7a58f5397bb16d59e2b0aa71c4a94&quot;<br>
meta-alljoyn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;master:e775bf1c287e10a=
bf18ceae544a310cdefc24ed0&quot;<br>
meta-oic&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;(n=
obranch):b38454c2e3a7a58f5397bb16d59e2b0aa71c4a94&quot;<br>
<br>
NOTE: Preparing runqueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
WARNING: Failed to fetch URL <a href=3D"http://download.oracle.com/berkeley=
-db/db-6.0.30.tar.gz">
http://download.oracle.com/berkeley-db/db-6.0.30.tar.gz</a>, attempting MIR=
RORS if available<br>
WARNING: Failed to fetch URL <a href=3D"http://downloads.sourceforge.net/bo=
ost/boost_1_56_0.tar.bz2">
http://downloads.sourceforge.net/boost/boost_1_56_0.tar.bz2</a>, attempting=
 MIRRORS if available<br>
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output<br=
>
ERROR: Function failed: Fetcher failure for URL: 'http://download.oracle.co=
m/berkeley-db/db-6.0.30.tar.gz'. Unable to fetch URL from any source.<br>
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/mi=
ps32r2el-poky-linux/db/6.0.30-r0/temp/log.do_fetch.20074<br>
ERROR: Task 1792 (/home/harinathm/poky/meta/recipes-support/db/db_6.0.30.bb=
, do_fetch) failed with exit code '1'<br>
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output<br=
>
ERROR: Function failed: Fetcher failure for URL: 'http://downloads.sourcefo=
rge.net/boost/boost_1_56_0.tar.bz2'. Unable to fetch URL from any source.<b=
r>
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/x8=
6_64-linux/bjam-native/1.56.0-r0/temp/log.do_fetch.20078<br>
ERROR: Task 2575 (/home/harinathm/poky/meta/recipes-support/boost/bjam-nati=
ve_1.56.0.bb, do_fetch) failed with exit code '1'<br>
WARNING: Failed to fetch URL <a href=3D"http://download.oracle.com/berkeley=
-db/db-6.0.30.tar.gz">
http://download.oracle.com/berkeley-db/db-6.0.30.tar.gz</a>, attempting MIR=
RORS if available<br>
WARNING: Failed to fetch URL <a href=3D"http://downloads.sourceforge.net/bo=
ost/boost_1_56_0.tar.bz2">
http://downloads.sourceforge.net/boost/boost_1_56_0.tar.bz2</a>, attempting=
 MIRRORS if available<br>
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output<br=
>
ERROR: Function failed: Fetcher failure for URL: 'http://download.oracle.co=
m/berkeley-db/db-6.0.30.tar.gz'. Unable to fetch URL from any source.<br>
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/x8=
6_64-linux/db-native/6.0.30-r0/temp/log.do_fetch.20073<br>
ERROR: Task 1234 (virtual:native:/home/harinathm/poky/meta/recipes-support/=
db/db_6.0.30.bb, do_fetch) failed with exit code '1'<br>
ERROR: Fetcher failure: Fetch command failed with exit code 4, no output<br=
>
ERROR: Function failed: Fetcher failure for URL: 'http://downloads.sourcefo=
rge.net/boost/boost_1_56_0.tar.bz2'. Unable to fetch URL from any source.<b=
r>
ERROR: Logfile of failure stored in: /home/harinathm/poky/build/tmp/work/mi=
ps32r2el-poky-linux/boost/1.56.0-r0/temp/log.do_fetch.20075<br>
ERROR: Task 1721 (/home/harinathm/poky/meta/recipes-support/boost/boost_1.5=
6.0.bb, do_fetch) failed with exit code '1'<br>
NOTE: Tasks Summary: Attempted 2126 tasks of which 2122 didn't need to be r=
erun and 4 failed.<br>
<br>
<br>
Can you please help me to fix this kind of fetch failure errors.<o:p></o:p>=
</span></p>
</div>
<p style=3D"background:white"><span style=3D"font-family:&quot;Calibri&quot=
;,sans-serif;color:black"><o:p>&nbsp;</o:p></span></p>
<div id=3D"Signature">
<div name=3D"divtagdefaultwrapper">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;background:white"><spa=
n style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:black">Thanks a=
nd Regards,<br>
Harinath<o:p></o:p></span></p>
</div>
</div>
</div>
</div>
<br>
<hr>
<font face=3D"Verdana" color=3D"Gray" size=3D"1"><br>
Notice to recipient: This email is meant for only the intended recipient of=
 the transmission, and may be a communication privileged by law, subject to=
 export control restrictions or that otherwise contains proprietary informa=
tion. If you receive this email
 by mistake, please notify us immediately by replying to this message and t=
hen destroy it and do not review, disclose, copy or distribute it. Thank yo=
u in advance for your cooperation.<br>
</font>
</body>
</html>

--_000_F14AEF751653024287138321000C846A011AC088BDBOSMAIL1zone1_--
