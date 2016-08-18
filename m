Return-Path: <Mark_Schnell@cree.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F05CE00D8F; Thu, 18 Aug 2016 10:55:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HEXHASH_WORD,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [67.231.157.149 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from mx0a-00193a01.pphosted.com (mx0b-00193a01.pphosted.com
	[67.231.157.149])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D824E00D69
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2016 10:55:48 -0700 (PDT)
Received: from pps.filterd (m0063797.ppops.net [127.0.0.1])
	by mx0a-00193a01.pphosted.com (8.16.0.17/8.16.0.17) with SMTP id
	u7IHrMID006430
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2016 10:55:47 -0700
Received: from scdht04.cree.com ([8.42.18.10])
	by mx0a-00193a01.pphosted.com with ESMTP id 24t21979t4-1
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2016 10:55:46 -0700
Received: from SCDEXVS01.cree.com ([10.1.10.118]) by SCDHT04.cree.com ([::1])
	with mapi; Thu, 18 Aug 2016 13:55:46 -0400
From: Mark Schnell <Mark_Schnell@cree.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 18 Aug 2016 13:55:46 -0400
Thread-Topic: meta-oracle-java on meta-raspberrypi
Thread-Index: AdH5eb75X9lhuFSHT6iOhDXVdBT/hQ==
Message-ID: <23A9A04933719643AB17AC8E235C8A9A024345E3058A@SCDEXVS01.cree.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Proofpoint-Virus-Version: vendor=nai engine=5600 definitions=5800
	signatures=585085
X-Proofpoint-Spam-Reason: safe
X-Mailman-Approved-At: Fri, 19 Aug 2016 08:56:23 -0700
Subject: meta-oracle-java on meta-raspberrypi
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
X-List-Received-Date: Thu, 18 Aug 2016 17:55:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_23A9A04933719643AB17AC8E235C8A9A024345E3058ASCDEXVS01cr_"

--_000_23A9A04933719643AB17AC8E235C8A9A024345E3058ASCDEXVS01cr_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Good day all;

Short version:
I'm trying to add the meta-oracle-java layer to a working, plain vanilla me=
ta-raspberrypi layer build. Unfortunately, I'm not having any success. Any =
guidance, suggestions or pointers would be most appreciated.

Long version:
First off, I'm a complete newbie to the Yocto ecosystem so please turn on y=
our filters and be gentle.  ;-)

***** Step 1 *****
I have successfully config-ed, built and run on RPi2 HW a plain vanilla met=
a-raspberrypi layer build using the guidance from...
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/about/
adjusted the default conf/local.conf to contain...
MACHINE ?=3D "raspberrypi2"
INHERIT +=3D "rm_work"
used the command...
> bitbake rpi-hwup-image
and the following conf/bblayer.conf file...
<SOF>
# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION =3D "6"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
  /home/mschnell/poky/meta \
  /home/mschnell/poky/meta-yocto \
  /home/mschnell/poky/meta-yocto-bsp \
  /home/mschnell/build-rpi/meta-raspberrypi \
  "
BBLAYERS_NON_REMOVABLE ?=3D " \
  /home/mschnell/poky/meta \
  /home/mschnell/poky/meta-yocto \
  "
<EOF>

***** Step 2 *****
However, when I add the meta-oracle-java layer to the conf/bblayers.conf fi=
le using guidance from...
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java/about/
adjusting the default conf/local.conf to contain...
LICENSE_FLAGS_WHITELIST +=3D "oracle_java"
PACKAGE_CLASSES =3D "package_deb"
and the following modified conf/bblayer.conf file...
<SOF>
# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION =3D "6"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
  /home/mschnell/poky/meta \
  /home/mschnell/poky/meta-yocto \
  /home/mschnell/poky/meta-yocto-bsp \
  /home/mschnell/build-rpi/meta-raspberrypi \
  /home/mschnell/build-rpi/meta-oracle-java \
  "
BBLAYERS_NON_REMOVABLE ?=3D " \
  /home/mschnell/poky/meta \
  /home/mschnell/poky/meta-yocto \
  "
<EOF>
The bake...
> bitbake rpi-hwup-image

Build Configuration:
BB_VERSION        =3D "1.28.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "CentOS-Linux-7.2.1511"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "raspberrypi2"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "2.0.2"
TUNE_FEATURES     =3D "arm armv7a vfp thumb neon callconvention-hard vfpv4 =
cortexa7"
TARGET_FPU        =3D "vfp-vfpv4-neon"
meta
meta-yocto
meta-yocto-bsp    =3D "jethro:40376446904ae3529be41737fed9a0b650ed167d"
meta-raspberrypi  =3D "jethro:f2cff839f52a6e6211337fc45c7c3eabf0fac113"
meta-oracle-java  =3D "master:f44365f02b283c3fb362dc99e2e996d3f11e356e"
...results in an image file does _not_ have any java components in it. :(


***** Step 3 *****
In an attempt to determine that was happening I looked over the logs in...
> grep -i java tmp/log/cooker/raspberrypi2/20160818154951.log
There I noticed that there was one and only one 'java' string in the whole =
log file...
meta-oracle-java  =3D "master:f44365f02b283c3fb362dc99e2e996d3f11e356e"
...and _that_ certainly didn't seem right.  I was expecting a bunch of java=
, jdk and jre strings in the downloaded file names in the logs.

So I decided to try and build _just_ the meta-oracle-java layer via...
> bitbuild oracle-jse-jre
...and ah HA!  Error messages....
ERROR: Fetcher failure for URL: 'http://download.oracle.com/otn/java/ejre/7=
u60-b19/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.ta=
r.gz'. Checksum mismatch!
File: '/home/mschnell/build-rpi/downloads/ejre-7u60-fcs-b19-linux-arm-vfp-h=
flt-client_headless-07_may_2014.tar.gz' has md5 checksum fe0826ca8ca01c88ca=
af5db3ad9f84a5 when b9b8f598b0a7f49e4d221f16ba25c6c0 was expected
File: '/home/mschnell/build-rpi/downloads/ejre-7u60-fcs-b19-linux-arm-vfp-h=
flt-client_headless-07_may_2014.tar.gz' has sha256 checksum 24d885d535739a6=
b7b54e153919fbbce932a344f5ca3ee5a86b01ac775085863 when ed061060011d88efe556=
3c2949c00993db85db17ab94f18a78713007a2b90faf was expected
If this change is expected (e.g. you have upgraded to a new version without=
 updating the checksums) then you can use these lines within the recipe:
SRC_URI[md5sum] =3D "fe0826ca8ca01c88caaf5db3ad9f84a5"
SRC_URI[sha256sum] =3D "24d885d535739a6b7b54e153919fbbce932a344f5ca3ee5a86b=
01ac775085863"
Otherwise you should retry the download and/or check with upstream to deter=
mine if the file has become corrupted or otherwise unexpectedly modified.

ERROR: Function failed: Fetcher failure for URL: 'http://download.oracle.co=
m/otn/java/ejre/7u60-b19/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headle=
ss-07_may_2014.tar.gz'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/mschnell/build-rpi/tmp/work/cort=
exa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/oracle-jse-jre/1.8.0-u60r0/temp/lo=
g.do_fetch.30643
ERROR: Task 4 (/home/mschnell/build-rpi/meta-oracle-java/recipes-devtools/o=
racle-java/oracle-jse-jre_1.8.0.bb, do_fetch) failed with exit code '1'

***** Step 4 *****
OK. Looking thru the recipes in meta-oracle-java:
> cd meta-oracle-java/recipes-devtools/oracle-java
I don't see an *arm*.bb file (although I'm not sure that I should. But ther=
e are *i586*.bb and *x86_64*.bb file.)
> ls
oracle-jse-jre-x86-64.inc
oracle-jse-jre.inc
oracle-jse-jre-i586.inc
oracle-jse-jre_1.8.0.bb
oracle-jse-jdk-x86-64_1.8.0.bb
oracle-jse-jdk.inc
oracle-jse-jdk-i586_1.8.0.bb
oracle-jse.inc
oracle-jse-ejre.inc
oracle-jse-ejre-arm-vfp-hflt-client-headless.inc
And the "architecture sensitive" parts of the .inc files seem to be pointin=
g to different Java version.
> grep "SRC_URI =3D" *
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
> grep "PV_UPDATE =3D" *
oracle-jse-ejre-arm-vfp-hflt-client-headless.inc:PV_UPDATE =3D "60"
oracle-jse-jdk-i586_1.8.0.bb:PV_UPDATE =3D "91"
oracle-jse-jdk-x86-64_1.8.0.bb:PV_UPDATE =3D "91"
oracle-jse-jre-i586.inc:PV_UPDATE =3D "91"
oracle-jse-jre-x86-64.inc:PV_UPDATE =3D "91"
> grep "BUILD_NUMBER =3D" *
oracle-jse-ejre-arm-vfp-hflt-client-headless.inc:BUILD_NUMBER =3D "19"
oracle-jse-jdk-i586_1.8.0.bb:BUILD_NUMBER =3D "14"
oracle-jse-jdk-x86-64_1.8.0.bb:BUILD_NUMBER =3D "14"
oracle-jse-jre-i586.inc:BUILD_NUMBER =3D "14"
oracle-jse-jre-x86-64.inc:BUILD_NUMBER =3D "14"

To my uneducated eye it seems that, although the meta-oracle-java layer pur=
ports to be at Java 8u91 build 14; this only seems to be the case for the i=
586 and x86_64 architectures and not for the ARM, which is at Java 7u60 bui=
ld 19.

I've been trying to update the ARM architecture to support Java v8u91 in th=
e meta-oracle-java recipes, but have not yet been successful.


Bottom line:
I'm looking for anyone that has successfully added the meta-oracle-java lay=
er to meta-raspberrypi.  Or, barring that, any ideas, suggestions or guidan=
ce for this wandering newbie.


Cheers....
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

--_000_23A9A04933719643AB17AC8E235C8A9A024345E3058ASCDEXVS01cr_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Cambria;
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Good day all;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Short version:<o:p></o:p></b></p>
<p class=3D"MsoNormal">I&#8217;m trying to add the <i>meta-oracle-java</i> =
layer to a working, plain vanilla
<i>meta-raspberrypi</i> layer build. Unfortunately, I&#8217;m not having an=
y success. Any guidance, suggestions or pointers would be most appreciated.=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Long version:<o:p></o:p></b></p>
<p class=3D"MsoNormal">First off, I&#8217;m a complete newbie to the Yocto =
ecosystem so please turn on your filters and be gentle. &nbsp;;-)<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>***** Step 1 *****<o:p></o:p></b></p>
<p class=3D"MsoNormal">I have successfully config-ed, built and run on RPi2=
 HW a plain vanilla
<i>meta-raspberrypi</i> layer build using the guidance from&#8230;<o:p></o:=
p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b>&gt; </b><b><span styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">ht=
tp://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/about/<o:p></o:p><=
/span></b></p>
<p class=3D"MsoNormal">adjusted the default conf/local.conf to contain&#823=
0;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">MACHINE ?=3D &quo=
t;raspberrypi2&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">INHERIT &#43;=3D =
&quot;rm_work&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal">used the command&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&gt;
<span style=3D"color:#0070C0">bitbake rpi-hwup-image</span></span><span sty=
le=3D"color:#0070C0"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal">and the following conf/bblayer.conf file&#8230;<o:p>=
</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&lt;SOF&gt;<o:p></o:p></p=
>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0"># LAYER_CONF_VERS=
ION is increased each time build/conf/bblayers.conf<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0"># changes incompa=
tibly<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">LCONF_VERSION =3D=
 &quot;6&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0"><o:p>&nbsp;</o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">BBPATH =3D &quot;=
${TOPDIR}&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">BBFILES ?=3D &quo=
t;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0"><o:p>&nbsp;</o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">BBLAYERS ?=3D &qu=
ot; \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; /home/msch=
nell/poky/meta \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; /home/msch=
nell/poky/meta-yocto \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; /home/msch=
nell/poky/meta-yocto-bsp \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; /home/msch=
nell/build-rpi/meta-raspberrypi \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; &quot;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">BBLAYERS_NON_REMO=
VABLE ?=3D &quot; \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; /home/msch=
nell/poky/meta \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; /home/msch=
nell/poky/meta-yocto \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; &quot;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&lt;EOF&gt;<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>***** Step 2 *****<o:p></o:p></b></p>
<p class=3D"MsoNormal">However, when I add the meta-oracle-java layer to th=
e conf/bblayers.conf file using guidance from&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b>&gt; </b><b><span styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">ht=
tp://git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java/about/</span></b><=
b><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"><o:p=
></o:p></span></b></p>
<p class=3D"MsoNormal">adjusting the default conf/local.conf to contain&#82=
30;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">LICENSE_FLAGS_WHI=
TELIST &#43;=3D &quot;oracle_java&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">PACKAGE_CLASSES =
=3D &quot;package_deb&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal">and the following modified conf/bblayer.conf file&#8=
230;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&lt;SOF&gt;<o:p></o:p></p=
>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0"># LAYER_CONF_VERS=
ION is increased each time build/conf/bblayers.conf<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0"># changes incompa=
tibly<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">LCONF_VERSION =3D=
 &quot;6&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0"><o:p>&nbsp;</o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">BBPATH =3D &quot;=
${TOPDIR}&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">BBFILES ?=3D &quo=
t;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0"><o:p>&nbsp;</o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">BBLAYERS ?=3D &qu=
ot; \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; /home/msch=
nell/poky/meta \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; /home/msch=
nell/poky/meta-yocto \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; /home/msch=
nell/poky/meta-yocto-bsp \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; /home/msch=
nell/build-rpi/meta-raspberrypi \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:red">&nbsp; /home/mschnell=
/build-rpi/meta-oracle-java \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; &quot;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">BBLAYERS_NON_REMO=
VABLE ?=3D &quot; \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; /home/msch=
nell/poky/meta \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; /home/msch=
nell/poky/meta-yocto \<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">&nbsp; &quot;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&lt;EOF&gt;<o:p></o:p></p=
>
<p class=3D"MsoNormal">The bake&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b>&gt; </b><b><span styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">bi=
tbake rpi-hwup-image</span></b><b><span style=3D"font-size:10.0pt;font-fami=
ly:&quot;Courier New&quot;"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
9.0pt;font-family:&quot;Courier New&quot;;color:#0070C0"><o:p>&nbsp;</o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">Build Configurati=
on:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">BB_VERSION&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.28.0&quot;<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">BUILD_SYS&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-linux&quot;<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">NATIVELSBSTRING&n=
bsp;&nbsp; =3D &quot;CentOS-Linux-7.2.1511&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">TARGET_SYS&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm-poky-linux-gnueabi&quot;<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">MACHINE&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;raspberrypi2&q=
uot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">DISTRO&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;poky&quot=
;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">DISTRO_VERSION&nb=
sp;&nbsp;&nbsp; =3D &quot;2.0.2&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">TUNE_FEATURES&nbs=
p;&nbsp;&nbsp;&nbsp; =3D &quot;arm armv7a vfp thumb neon callconvention-har=
d vfpv4 cortexa7&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">TARGET_FPU&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;vfp-vfpv4-neon&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">meta<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">meta-yocto<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">meta-yocto-bsp&nb=
sp;&nbsp;&nbsp; =3D &quot;jethro:40376446904ae3529be41737fed9a0b650ed167d&q=
uot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">meta-raspberrypi&=
nbsp; =3D &quot;jethro:f2cff839f52a6e6211337fc45c7c3eabf0fac113&quot;<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">meta-oracle-java&=
nbsp; =3D &quot;master:f44365f02b283c3fb362dc99e2e996d3f11e356e&quot;<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal">&#8230;results in an image file does _<i>not</i>_ ha=
ve any java components in it.
<span style=3D"font-family:Wingdings">L</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>***** Step 3 *****<o:p></o:p></b></p>
<p class=3D"MsoNormal">In an attempt to determine that was happening I look=
ed over the logs in&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b>&gt; </b><b><span styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">gr=
ep -i java tmp/log/cooker/raspberrypi2/20160818154951.log</span></b><b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"><o:p></o:p=
></span></b></p>
<p class=3D"MsoNormal">There I noticed that there was one and only one &#82=
16;java&#8217; string in the whole log file&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">meta-oracle-java&=
nbsp; =3D &quot;master:f44365f02b283c3fb362dc99e2e996d3f11e356e&quot;</span=
><span style=3D"color:#0070C0"><o:p></o:p></span></p>
<p class=3D"MsoNormal">&#8230;and _<i>that_</i> certainly didn&#8217;t seem=
 right.&nbsp; I was expecting a bunch of
<i>java</i>, <i>jdk</i> and <i>jre</i> strings in the downloaded file names=
 in the logs.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So I decided to try and build _<i>just</i>_ the meta=
-oracle-java layer via&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b>&gt; </b><b><span styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">bi=
tbuild oracle-jse-jre</span></b><b><span style=3D"font-size:10.0pt;font-fam=
ily:&quot;Courier New&quot;"><o:p></o:p></span></b></p>
<p class=3D"MsoNormal">&#8230;and ah HA!&nbsp; Error messages&#8230;.<o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">ERROR: Fetcher fa=
ilure for URL: 'http://download.oracle.com/otn/java/ejre/7u60-b19/ejre-7u60=
-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz'.
 Checksum mismatch!<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">File: '/home/msch=
nell/build-rpi/downloads/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headle=
ss-07_may_2014.tar.gz' has md5 checksum fe0826ca8ca01c88caaf5db3ad9f84a5
 when b9b8f598b0a7f49e4d221f16ba25c6c0 was expected<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">File: '/home/msch=
nell/build-rpi/downloads/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headle=
ss-07_may_2014.tar.gz' has sha256 checksum 24d885d535739a6b7b54e153919fbbce=
932a344f5ca3ee5a86b01ac775085863
 when ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf was =
expected<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">If this change is=
 expected (e.g. you have upgraded to a new version without updating the che=
cksums) then you can use these lines within the
 recipe:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">SRC_URI[md5sum] =
=3D &quot;fe0826ca8ca01c88caaf5db3ad9f84a5&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">SRC_URI[sha256sum=
] =3D &quot;24d885d535739a6b7b54e153919fbbce932a344f5ca3ee5a86b01ac77508586=
3&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">Otherwise you sho=
uld retry the download and/or check with upstream to determine if the file =
has become corrupted or otherwise unexpectedly modified.<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0"><o:p>&nbsp;</o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">ERROR: Function f=
ailed: Fetcher failure for URL: 'http://download.oracle.com/otn/java/ejre/7=
u60-b19/ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.ta=
r.gz'.
 Unable to fetch URL from any source.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">ERROR: Logfile of=
 failure stored in: /home/mschnell/build-rpi/tmp/work/cortexa7hf-vfp-vfpv4-=
neon-poky-linux-gnueabi/oracle-jse-jre/1.8.0-u60r0/temp/log.do_fetch.30643<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">ERROR: Task 4 (/h=
ome/mschnell/build-rpi/meta-oracle-java/recipes-devtools/oracle-java/oracle=
-jse-jre_1.8.0.bb, do_fetch) failed with exit code
 '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>***** Step 4 *****<o:p></o:p></b></p>
<p class=3D"MsoNormal">OK. Looking thru the recipes in <i>meta-oracle-java<=
/i>:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b>&gt; </b><b><span styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">cd=
 meta-oracle-java/recipes-devtools/oracle-java<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Cambria&quot;,&quot=
;serif&quot;">I don&#8217;t see an *arm*.bb file (although I&#8217;m not su=
re that I should. But there are *i586*.bb and *x86_64*.bb file.)<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Courier New&quot;">&gt;
<span style=3D"color:#0070C0">ls</span><o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">oracle-jse-jre-x8=
6-64.inc<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">oracle-jse-jre.in=
c<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">oracle-jse-jre-i5=
86.inc<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">oracle-jse-jre_1.=
8.0.bb<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">oracle-jse-jdk-x8=
6-64_1.8.0.bb<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">oracle-jse-jdk.in=
c<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">oracle-jse-jdk-i5=
86_1.8.0.bb<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">oracle-jse.inc<o:=
p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">oracle-jse-ejre.i=
nc<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;;color:#0070C0">oracle-jse-ejre-a=
rm-vfp-hflt-client-headless.inc<o:p></o:p></span></p>
<p class=3D"MsoNormal">And the &#8220;architecture sensitive&#8221; parts o=
f the .inc files seem to be pointing to different Java version.<o:p></o:p><=
/p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">&gt; <b><span style=3D"co=
lor:#0070C0">grep &quot;SRC_URI =3D&quot; *</span></b><b><o:p></o:p></b></p=
>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#007=
0C0">oracle-jse-ejre-arm-vfp-hflt-client-headless.inc:SRC_URI =3D &quot;htt=
p://download.oracle.com/otn/java/</span><b><span style=3D"color:red">ejre/7=
u</span></b><span style=3D"color:#0070C0">${PV_UPDATE}-b${BUILD_NUMBER}/</s=
pan><b><span style=3D"color:red">ejre-7</span></b><b><span style=3D"color:r=
ed">u</span></b><span style=3D"color:#0070C0">${PV_UPDATE}-fcs-b${BUILD_NUM=
BER}-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz&quot;<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#007=
0C0">oracle-jse-jdk-i586_1.8.0.bb:SRC_URI =3D &quot;http://download.oracle.=
com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-8u${PV_UPDATE}-lin=
ux-i586.tar.gz&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#007=
0C0">oracle-jse-jdk-x86-64_1.8.0.bb:SRC_URI =3D &quot;http://download.oracl=
e.com/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jdk-8u${PV_UPDATE}-l=
inux-x64.tar.gz&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#007=
0C0">oracle-jse-jre-i586.inc:SRC_URI =3D &quot;http://download.oracle.com/o=
tn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jre-8u${PV_UPDATE}-linux-i5=
86.tar.gz&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#007=
0C0">oracle-jse-jre-x86-64.inc:SRC_URI =3D &quot;http://download.oracle.com=
/otn-pub/java/jdk/8u${PV_UPDATE}-b${BUILD_NUMBER}/jre-8u${PV_UPDATE}-linux-=
x64.tar.gz&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b>&gt; <span style=3D"co=
lor:#0070C0">grep &quot;PV_UPDATE =3D&quot; *</span><o:p></o:p></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#007=
0C0">oracle-jse-ejre-arm-vfp-hflt-client-headless.inc:PV_UPDATE =3D</span><=
span style=3D"color:red">
<b>&quot;60&quot;</b></span><span style=3D"color:#0070C0"><o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#007=
0C0">oracle-jse-jdk-i586_1.8.0.bb:PV_UPDATE =3D &quot;91&quot;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#007=
0C0">oracle-jse-jdk-x86-64_1.8.0.bb:PV_UPDATE =3D &quot;91&quot;<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#007=
0C0">oracle-jse-jre-i586.inc:PV_UPDATE =3D &quot;91&quot;<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#007=
0C0">oracle-jse-jre-x86-64.inc:PV_UPDATE =3D &quot;91&quot;<b><o:p></o:p></=
b></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><b>&gt; <span style=3D"co=
lor:#0070C0">grep &quot;BUILD_NUMBER =3D&quot; *</span><o:p></o:p></b></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#007=
0C0">oracle-jse-ejre-arm-vfp-hflt-client-headless.inc:BUILD_NUMBER =3D
</span><b><span style=3D"color:red">&quot;19&quot;</span></b><span style=3D=
"color:#0070C0"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#007=
0C0">oracle-jse-jdk-i586_1.8.0.bb:BUILD_NUMBER =3D &quot;14&quot;<o:p></o:p=
></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#007=
0C0">oracle-jse-jdk-x86-64_1.8.0.bb:BUILD_NUMBER =3D &quot;14&quot;<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#007=
0C0">oracle-jse-jre-i586.inc:BUILD_NUMBER =3D &quot;14&quot;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"color:#007=
0C0">oracle-jse-jre-x86-64.inc:BUILD_NUMBER =3D &quot;14&quot;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">To my uneducated eye it seems that, although the <i>=
meta-oracle-java</i> layer purports to be at Java 8u91 build 14; this only =
seems to be the case for the i586 and x86_64 architectures and not for the =
ARM, which is at Java 7u60 build 19.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve been trying to update the ARM architectur=
e to support Java v8u91 in the
<i>meta-oracle-java</i> recipes, but have not yet been successful.<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Bottom line:<o:p></o:p></b></p>
<p class=3D"MsoNormal">I&#8217;m looking for anyone that has successfully a=
dded the <i>meta-oracle-java</i> layer to
<i>meta-raspberrypi</i>.&nbsp; Or, barring that, any ideas, suggestions or =
guidance for this wandering newbie.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Cheers&#8230;.<o:p></o:p></p>
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

--_000_23A9A04933719643AB17AC8E235C8A9A024345E3058ASCDEXVS01cr_--
