Return-Path: <Mark_Schnell@cree.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47EFEE00EAC; Wed, 17 Aug 2016 06:49:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [67.231.157.149 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1752 seconds by postgrey-1.32 at yocto-www;
	Wed, 17 Aug 2016 06:49:04 PDT
Received: from mx0a-00193a01.pphosted.com (mx0b-00193a01.pphosted.com
	[67.231.157.149])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A97CE00EA1
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 06:49:04 -0700 (PDT)
Received: from pps.filterd (m0063797.ppops.net [127.0.0.1])
	by mx0a-00193a01.pphosted.com (8.16.0.17/8.16.0.17) with SMTP id
	u7HDI5h9009575
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 06:19:51 -0700
Received: from scdht01.cree.com ([8.42.18.10])
	by mx0a-00193a01.pphosted.com with ESMTP id 24t2194vbj-1
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 06:19:50 -0700
Received: from SCDEXVS01.cree.com ([10.1.10.118]) by SCDHT01.cree.com ([::1])
	with mapi; Wed, 17 Aug 2016 09:19:50 -0400
From: Mark Schnell <Mark_Schnell@cree.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 17 Aug 2016 09:19:49 -0400
Thread-Topic: meta-oracle-java][BUG-REPORT
Thread-Index: AdH4igg/AMSHUgORTyu8z9X+XIBZaA==
Message-ID: <23A9A04933719643AB17AC8E235C8A9A024345E303E4@SCDEXVS01.cree.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Proofpoint-Virus-Version: vendor=nai engine=5600 definitions=5800
	signatures=585085
X-Proofpoint-Spam-Reason: safe
X-Mailman-Approved-At: Fri, 19 Aug 2016 08:56:23 -0700
Subject: meta-oracle-java][BUG-REPORT
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
X-List-Received-Date: Wed, 17 Aug 2016 13:49:08 -0000
X-Groupsio-MsgNum: 31555
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_23A9A04933719643AB17AC8E235C8A9A024345E303E4SCDEXVS01cr_";
	type="multipart/alternative"

--_004_23A9A04933719643AB17AC8E235C8A9A024345E303E4SCDEXVS01cr_
Content-Type: multipart/alternative;
	boundary="_000_23A9A04933719643AB17AC8E235C8A9A024345E303E4SCDEXVS01cr_"

--_000_23A9A04933719643AB17AC8E235C8A9A024345E303E4SCDEXVS01cr_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Good day;

Short version:
[cid:image001.png@01D1F868.812C33E0]
The ARM architecture for the meta-oracle-java layer still points to Java v7=
u60.

Long version:
First off, I'm a newbie to the Yocto so be sure you turn on your filters. ;=
-)

I'm trying to add the meta-oracle-java layer to a plain vanilla meta-raspbe=
rrypi layer. After several attempts, false starts and failures; I believe t=
he I have determined the problem.  While the i586 & x64-64 architectures po=
int to Java v8u91, build 14; the ARM architecture points to Java v7u60, bui=
ld 19.

[mschnell@YoctoBuildHost oracle-java]$ pwd
/home/mschnell/build-rpi/meta-oracle-java/recipes-devtools/oracle-java
[mschnell@YoctoBuildHost oracle-java]$ ls -Al
total 40
-rw-rw-r--. 1 mschnell mschnell  342 Aug 16 21:14 oracle-jse-ejre-arm-vfp-h=
flt-client-headless.inc
-rw-rw-r--. 1 mschnell mschnell  866 Aug 16 20:50 oracle-jse-ejre.inc
-rw-rw-r--. 1 mschnell mschnell 1246 Aug 16 20:50 oracle-jse.inc
-rw-rw-r--. 1 mschnell mschnell  369 Aug 16 20:50 oracle-jse-jdk-i586_1.8.0=
.bb
-rw-rw-r--. 1 mschnell mschnell 1158 Aug 16 20:50 oracle-jse-jdk.inc
-rw-rw-r--. 1 mschnell mschnell  370 Aug 16 20:50 oracle-jse-jdk-x86-64_1.8=
.0.bb
-rw-rw-r--. 1 mschnell mschnell  589 Aug 16 20:50 oracle-jse-jre_1.8.0.bb
-rw-rw-r--. 1 mschnell mschnell  334 Aug 16 20:50 oracle-jse-jre-i586.inc
-rw-rw-r--. 1 mschnell mschnell  657 Aug 16 20:50 oracle-jse-jre.inc
-rw-rw-r--. 1 mschnell mschnell  332 Aug 16 20:50 oracle-jse-jre-x86-64.inc
[mschnell@YoctoBuildHost oracle-java]$ grep "SRC_URI =3D" *
oracle-jse-ejre-arm-vfp-hflt-client-headless.inc:SRC_URI =3D "http://downlo=
ad.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBER}/ejre-7u${PV_UPD=
ATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.ta=
r.gz"
oracle-jse-jdk-i586_1.8.0.bb:SRC_URI =3D "http://download.oracle.com/otn-pu=
b/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-8u${PV_UPDATE}-linux-i586.ta=
r.gz"
oracle-jse-jdk-x86-64_1.8.0.bb:SRC_URI =3D "http://download.oracle.com/otn-=
pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-8u${PV_UPDATE}-linux-x64.t=
ar.gz"
oracle-jse-jre-i586.inc:SRC_URI =3D "http://download.oracle.com/otn-pub/jav=
a/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jre-8u${PV_UPDATE}-linux-i586.tar.gz"
oracle-jse-jre-x86-64.inc:SRC_URI =3D "http://download.oracle.com/otn-pub/j=
ava/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jre-8u${PV_UPDATE}-linux-x64.tar.gz=
"
[mschnell@YoctoBuildHost oracle-java]$ grep "PV_UPDATE =3D" *
oracle-jse-ejre-arm-vfp-hflt-client-headless.inc:PV_UPDATE =3D "60"
oracle-jse-jdk-i586_1.8.0.bb:PV_UPDATE =3D "91"
oracle-jse-jdk-x86-64_1.8.0.bb:PV_UPDATE =3D "91"
oracle-jse-jre-i586.inc:PV_UPDATE =3D "91"
oracle-jse-jre-x86-64.inc:PV_UPDATE =3D "91"
[mschnell@YoctoBuildHost oracle-java]$ grep "BUILD_NUMBER =3D" *
oracle-jse-ejre-arm-vfp-hflt-client-headless.inc:BUILD_NUMBER =3D "19"
oracle-jse-jdk-i586_1.8.0.bb:BUILD_NUMBER =3D "14"
oracle-jse-jdk-x86-64_1.8.0.bb:BUILD_NUMBER =3D "14"
oracle-jse-jre-i586.inc:BUILD_NUMBER =3D "14"
oracle-jse-jre-x86-64.inc:BUILD_NUMBER =3D "14"

I will continue to research a patch (while learning the Yocto build environ=
ment); but being that I'm a newbie, it will likely take me a while.


Cheers...
--
-- I would like mornings better if they started later in the day. --
--  Mark Schnell   --   +1-919-407-4327   --   mschnell@cree.com  --


________________________________
This e-mail message, including any attachments and previous email messages =
sent with it, contains CONFIDENTIAL and PROPRIETARY information of Cree, In=
c. or its subsidiaries and may be legally PRIVILEGED. You may not use, disc=
lose, reproduce or distribute such information without Cree's authorization=
. If you have received this message in error, please notify the sender imme=
diately and permanently delete the original message, its attachments and an=
y copies thereof.

--_000_23A9A04933719643AB17AC8E235C8A9A024345E303E4SCDEXVS01cr_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"2050" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Good day;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Short version:<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b><img width=3D"333" height=3D"37" id=3D"Picture_x0=
020_1" src=3D"cid:image001.png@01D1F868.812C33E0"><o:p></o:p></b></p>
<p class=3D"MsoNormal">The ARM architecture for the <i>meta-oracle-java</i>=
 layer still points to Java v7u60.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Long version:<o:p></o:p></b></p>
<p class=3D"MsoNormal">First off, I&#8217;m a newbie to the Yocto so be sur=
e you turn on your filters. ;-)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m trying to add the <i>meta-oracle-java</i> =
layer to a plain vanilla
<i>meta-raspberrypi</i> layer. After several attempts, false starts and fai=
lures; I believe the I have determined the problem.&nbsp; While the i586 &a=
mp; x64-64 architectures point to Java v8u91, build 14; the ARM architectur=
e points to Java v7u60, build 19.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>[mschnell@YoctoBuildHost oracle-java]$ pwd<o:p></=
o:p></b></p>
<p class=3D"MsoNormal">/home/mschnell/build-rpi/meta-oracle-java/recipes-de=
vtools/oracle-java<o:p></o:p></p>
<p class=3D"MsoNormal"><b>[mschnell@YoctoBuildHost oracle-java]$ ls -Al<o:p=
></o:p></b></p>
<p class=3D"MsoNormal">total 40<o:p></o:p></p>
<p class=3D"MsoNormal">-rw-rw-r--. 1 mschnell mschnell&nbsp; 342 Aug 16 21:=
14 oracle-jse-ejre-arm-vfp-hflt-client-headless.inc<o:p></o:p></p>
<p class=3D"MsoNormal">-rw-rw-r--. 1 mschnell mschnell&nbsp; 866 Aug 16 20:=
50 oracle-jse-ejre.inc<o:p></o:p></p>
<p class=3D"MsoNormal">-rw-rw-r--. 1 mschnell mschnell 1246 Aug 16 20:50 or=
acle-jse.inc<o:p></o:p></p>
<p class=3D"MsoNormal">-rw-rw-r--. 1 mschnell mschnell&nbsp; 369 Aug 16 20:=
50 oracle-jse-jdk-i586_1.8.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">-rw-rw-r--. 1 mschnell mschnell 1158 Aug 16 20:50 or=
acle-jse-jdk.inc<o:p></o:p></p>
<p class=3D"MsoNormal">-rw-rw-r--. 1 mschnell mschnell&nbsp; 370 Aug 16 20:=
50 oracle-jse-jdk-x86-64_1.8.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">-rw-rw-r--. 1 mschnell mschnell&nbsp; 589 Aug 16 20:=
50 oracle-jse-jre_1.8.0.bb<o:p></o:p></p>
<p class=3D"MsoNormal">-rw-rw-r--. 1 mschnell mschnell&nbsp; 334 Aug 16 20:=
50 oracle-jse-jre-i586.inc<o:p></o:p></p>
<p class=3D"MsoNormal">-rw-rw-r--. 1 mschnell mschnell&nbsp; 657 Aug 16 20:=
50 oracle-jse-jre.inc<o:p></o:p></p>
<p class=3D"MsoNormal">-rw-rw-r--. 1 mschnell mschnell&nbsp; 332 Aug 16 20:=
50 oracle-jse-jre-x86-64.inc<o:p></o:p></p>
<p class=3D"MsoNormal"><b>[mschnell@YoctoBuildHost oracle-java]$ grep &quot=
;SRC_URI =3D&quot; *<o:p></o:p></b></p>
<p class=3D"MsoNormal">oracle-jse-ejre-arm-vfp-hflt-client-headless.inc:SRC=
_URI =3D &quot;http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${B=
UILD_NUMBER}/<b><span style=3D"color:red">ejre-7</span></b>u${PV_UPDATE}-fc=
s-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz&qu=
ot;<o:p></o:p></p>
<p class=3D"MsoNormal">oracle-jse-jdk-i586_1.8.0.bb:SRC_URI =3D &quot;http:=
//download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-=
8u${PV_UPDATE}-linux-i586.tar.gz&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">oracle-jse-jdk-x86-64_1.8.0.bb:SRC_URI =3D &quot;htt=
p://download.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jd=
k-8u${PV_UPDATE}-linux-x64.tar.gz&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">oracle-jse-jre-i586.inc:SRC_URI =3D &quot;http://dow=
nload.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jre-8u${P=
V_UPDATE}-linux-i586.tar.gz&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">oracle-jse-jre-x86-64.inc:SRC_URI =3D &quot;http://d=
ownload.oracle.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jre-8u$=
{PV_UPDATE}-linux-x64.tar.gz&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><b>[mschnell@YoctoBuildHost oracle-java]$ grep &quot=
;PV_UPDATE =3D&quot; *<o:p></o:p></b></p>
<p class=3D"MsoNormal">oracle-jse-ejre-arm-vfp-hflt-client-headless.inc:PV_=
UPDATE =3D
<b><span style=3D"color:red">&quot;60&quot;</span></b><o:p></o:p></p>
<p class=3D"MsoNormal">oracle-jse-jdk-i586_1.8.0.bb:PV_UPDATE =3D &quot;91&=
quot;<o:p></o:p></p>
<p class=3D"MsoNormal">oracle-jse-jdk-x86-64_1.8.0.bb:PV_UPDATE =3D &quot;9=
1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">oracle-jse-jre-i586.inc:PV_UPDATE =3D &quot;91&quot;=
<o:p></o:p></p>
<p class=3D"MsoNormal">oracle-jse-jre-x86-64.inc:PV_UPDATE =3D &quot;91&quo=
t;<b><o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>[mschnell@YoctoBuildHost oracle-java]$ grep &quot=
;BUILD_NUMBER =3D&quot; *<o:p></o:p></b></p>
<p class=3D"MsoNormal">oracle-jse-ejre-arm-vfp-hflt-client-headless.inc:BUI=
LD_NUMBER =3D
<b><span style=3D"color:red">&quot;19&quot;</span></b><o:p></o:p></p>
<p class=3D"MsoNormal">oracle-jse-jdk-i586_1.8.0.bb:BUILD_NUMBER =3D &quot;=
14&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">oracle-jse-jdk-x86-64_1.8.0.bb:BUILD_NUMBER =3D &quo=
t;14&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">oracle-jse-jre-i586.inc:BUILD_NUMBER =3D &quot;14&qu=
ot;<o:p></o:p></p>
<p class=3D"MsoNormal">oracle-jse-jre-x86-64.inc:BUILD_NUMBER =3D &quot;14&=
quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I will continue to research a patch (while learning =
the Yocto build environment); but being that I&#8217;m a newbie, it will li=
kely take me a while.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cheers&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;">--<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;">-- I would like mornings better if they started later in t=
he day. --<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Co=
urier New&quot;">--&nbsp; Mark Schnell&nbsp;&nbsp; --&nbsp;&nbsp; &#43;1-91=
9-407-4327&nbsp;&nbsp; --&nbsp;&nbsp; mschnell@cree.com&nbsp; --<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1">This e-mail message, includi=
ng any attachments and previous email messages sent with it, contains CONFI=
DENTIAL and PROPRIETARY information of Cree, Inc. or its subsidiaries and m=
ay be legally PRIVILEGED. You may not
 use, disclose, reproduce or distribute such information without Cree's aut=
horization. If you have received this message in error, please notify the s=
ender immediately and permanently delete the original message, its attachme=
nts and any copies thereof.<br>
</font>
</body>
</html>

--_000_23A9A04933719643AB17AC8E235C8A9A024345E303E4SCDEXVS01cr_--

--_004_23A9A04933719643AB17AC8E235C8A9A024345E303E4SCDEXVS01cr_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=3510;
	creation-date="Wed, 17 Aug 2016 13:19:49 GMT";
	modification-date="Wed, 17 Aug 2016 13:19:49 GMT"
Content-ID: <image001.png@01D1F868.812C33E0>
Content-Transfer-Encoding: base64

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

--_004_23A9A04933719643AB17AC8E235C8A9A024345E303E4SCDEXVS01cr_--
