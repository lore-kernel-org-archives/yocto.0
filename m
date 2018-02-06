Return-Path: <hgovind@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09EB8E00E4F; Mon,  5 Feb 2018 16:47:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI,SPF_HELO_PASS,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.142.88 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
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
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 Feb 2018 16:47:48 PST
Received: from alln-iport-1.cisco.com (alln-iport-1.cisco.com [173.37.142.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA914E00CF1
	for <yocto@yoctoproject.org>; Mon,  5 Feb 2018 16:47:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=24571; q=dns/txt;
	s=iport; t=1517878068; x=1519087668;
	h=from:to:cc:subject:date:message-id:mime-version;
	bh=pOuUM9qo3AlMuPCG0g1y5lsRCZ9qBJGcYdnZU3rmiKo=;
	b=N2q3YOnJDABWL/ElKAzNd6fw9k+MN5rPfvu3PSXa/8iKRYwPZPYLI905
	ktk7KesAV5izBSNMbQXX/Hg+ziqw2qcHLeNYkclyVqtfV8AZoyEFWs+aJ
	5kYbXcWxHF7nN2x6DLKelTgRl1smiCP6c0tvGP7T7/qpxfSTHr8/4Gt0X 4=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0C2AAAD+nha/4YNJK1dGQEBAQEBAQEBA?=
	=?us-ascii?q?QEBAQcBAQEBAYJZeGZwKAqNf44wmUqCGAobhSCCT1QYAQEBAQEBAQECayiFV0w?=
	=?us-ascii?q?SARomQBcPAQQODYlJZL4DiHyBeAEBAQEBAQEBAQEBAQEBAQEBAQEBAR2EaoIVg?=
	=?us-ascii?q?VeEYIF/hBeFPgWKX4lbj2sCiBeNT4InZ4U/i3OXSQIRGQGBOwEfOYFQcBWDAwm?=
	=?us-ascii?q?EbniOCoEXAQEB?=
X-IronPort-AV: E=Sophos;i="5.46,467,1511827200"; d="scan'208,217";a="66750632"
Received: from alln-core-12.cisco.com ([173.36.13.134])
	by alln-iport-1.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Feb 2018 00:46:45 +0000
Received: from XCH-RTP-001.cisco.com (xch-rtp-001.cisco.com [64.101.220.141])
	by alln-core-12.cisco.com (8.14.5/8.14.5) with ESMTP id
	w160kjpI012840
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 6 Feb 2018 00:46:45 GMT
Received: from xch-rtp-003.cisco.com (64.101.220.143) by XCH-RTP-001.cisco.com
	(64.101.220.141) with Microsoft SMTP Server (TLS) id 15.0.1320.4;
	Mon, 5 Feb 2018 19:46:44 -0500
Received: from xch-rtp-003.cisco.com ([64.101.220.143]) by
	XCH-RTP-003.cisco.com ([64.101.220.143]) with mapi id 15.00.1320.000;
	Mon, 5 Feb 2018 19:46:44 -0500
From: "Harshal Govind (hgovind)" <hgovind@cisco.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [Yocto] Building openjdk for ppc(PPC464)
Thread-Index: AdOe0avPOLRhk+eeT0e8WO1L0Jx6rg==
Date: Tue, 6 Feb 2018 00:46:44 +0000
Message-ID: <16a874cb7f20497595a7957943015fa4@XCH-RTP-003.cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.156.154.34]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Building openjdk for ppc(PPC464)
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
X-List-Received-Date: Tue, 06 Feb 2018 00:47:52 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_16a874cb7f20497595a7957943015fa4XCHRTP003ciscocom_"

--_000_16a874cb7f20497595a7957943015fa4XCHRTP003ciscocom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

HI Raj,

I am building a yocto project for my target platform which is PowerPC archi=
tecture and machine is PPC464. While building the target image, I am facing=
 following two issues.


1.       Building openjdk
I am building the openjdk-8 and openjre-8 for PowerPC (PPC464) with yocto-2=
.1.1 and getting this error:

| + echo /home/hgovind/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp=
/work/464-poky-linux/openjre-8/102b14-r0/build/hotspot/linux_ppc_compiler2/=
product
| make[5]: *** No rule to make target '/home/hgovind/projects/test-sdk/ie4k=
-yocto-2.1/iox-sdk-core/yp/tmp/work/464-poky-linux/openjre-8/102b14-r0/jdk8=
u-bf0932d3e0f8/hotspot/make/linux/makefiles/.make'.  Stop.
| /home/hgovind/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/work/4=
64-poky-linux/openjre-8/102b14-r0/jdk8u-bf0932d3e0f8/hotspot/make/linux/Mak=
efile:297: recipe for target 'product' failed
| make[4]: *** [product] Error 2
| Makefile:230: recipe for target 'generic_build2' failed
| make[3]: *** [generic_build2] Error 2
| Makefile:177: recipe for target 'product' failed
| make[2]: *** [product] Error 2
| make[1]: *** [/home/hgovind/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core=
/yp/tmp/work/464-poky-linux/openjre-8/102b14-r0/build/hotspot/_hotspot.time=
stamp] Error 2
| HotspotWrapper.gmk:44: recipe for target '/home/hgovind/projects/test-sdk=
/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/work/464-poky-linux/openjre-8/102b14-r0=
/build/hotspot/_hotspot.timestamp' failed
| /home/hgovind/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/work/4=
64-poky-linux/openjre-8/102b14-r0/jdk8u-bf0932d3e0f8//make/Main.gmk:108: re=
cipe for target 'hotspot-only' failed
| make: *** [hotspot-only] Error 2
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (log file is located at /home/hgovind/=
projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/work/464-poky-linux/op=
enjre-8/102b14-r0/temp/log.do_compile.4023)

Is this issue observed before? Is openjdk and Openjre tested for powerpc in=
 yocto? Please let me know if you need full log file for reference


2.       Building gobject-introspection

so /home/hgovind/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/sysro=
ots/ie4k-lxc/usr/lib/libpcre.so -lpthread /home/hgovind/projects/test-sdk/i=
e4k-yocto-2.1/iox-sdk-core/yp/tmp/sysroots/ie4k-lxc/usr/lib/libffi.so -pthr=
ead
| Invalid instruction
| NIP f67d93f8   LR f67c9ee8 CTR 00000001 XER 00000008 CPU#0
| MSR 00006040 HID0 00000000  HF 00006000 idx 0
| TB 00593997 2551198052011780
| GPR00 00000000f67c115c 00000000f6ffc910 0000000000000000 00000000f67dbdb0
| GPR04 0000000000000000 0000000000000000 0000000069203d3d 0000000009824250
| GPR08 0000000000000000 0000000010002260 00000000f67d7d6c 0000000000000000
| GPR12 0000000028000882 0000000000000000 00000000f67db438 0000000000000000
| GPR16 0000000000000000 00000000f67db468 00000000f6ffc978 00000000f6ffca28
| GPR20 0000000000000000 00000000f67fd310 00000000f6ffcf58 00000000f67dbdb0
| GPR24 0000000020000000 00000000f67dbdb0 0000000000000000 00000000f67fd310
| GPR28 0000000000000000 0000000000000000 00000000f67fdff0 00000000f6ffc960
| CR 24000484  [ E  G  -  -  -  G  L  G  ]             RES ffffffff
| FPR00 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR04 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR08 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR12 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR16 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR20 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR24 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPR28 0000000000000000 0000000000000000 0000000000000000 0000000000000000
| FPSCR 00000000
| qemu: uncaught target signal 4 (Illegal instruction) - core dumped
| Illegal instruction (core dumped)
| If the above error message is about missing .so libraries, then setting u=
p GIR_EXTRA_LIBS_PATH in the recipe should help.
| (typically like this: GIR_EXTRA_LIBS_PATH=3D"${B}/something/.libs" )
| Command '['/home/hgovind/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp=
/tmp/work/464-poky-linux/gobject-introspection/1.46.0-r0/build/g-ir-scanner=
-qemuwrapper', '/home/hgovind/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core=
/yp/tmp/work/464-poky-linux/gobject-introspection/1.46.0-r0/build/tmp-intro=
spectELxvx9/GLib-2.0', '--introspect-dump=3D/home/hgovind/projects/test-sdk=
/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/work/464-poky-linux/gobject-introspecti=
on/1.46.0-r0/build/tmp-introspectELxvx9/functions.txt,/home/hgovind/project=
s/test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/work/464-poky-linux/gobject-i=
ntrospection/1.46.0-r0/build/tmp-introspectELxvx9/dump.xml']' returned non-=
zero exit status 1
| make[2]: *** [GLib-2.0.gir] Error 1
| make[2]: Leaving directory `/home/hgovind/projects/test-sdk/ie4k-yocto-2.=
1/iox-sdk-core/yp/tmp/work/464-poky-linux/gobject-introspection/1.46.0-r0/b=
uild'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory `/home/hgovind/projects/test-sdk/ie4k-yocto-2.=
1/iox-sdk-core/yp/tmp/work/464-poky-linux/gobject-introspection/1.46.0-r0/b=
uild'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (log file is located at /home/hgovind/=
projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/work/464-poky-linux/go=
bject-introspection/1.46.0-r0/temp/log.do_compile.16778)

Here Yocto tries to build a target binary in qemu environment which is fail=
ing with the error 'illigal instruction' .
Is there necessity to use the emulation(qemu) to build a target binary or c=
an we enable the cross compilation?



Thanks,
Harshal




--_000_16a874cb7f20497595a7957943015fa4XCHRTP003ciscocom_
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
	{mso-list-id:868493147;
	mso-list-type:hybrid;
	mso-list-template-ids:1307899266 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
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
<p class=3D"MsoNormal">HI Raj,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am building a yocto project for my target platform=
 which is PowerPC architecture and machine is PPC464. While building the ta=
rget image, I am facing following two issues.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><b><span style=3D"mso-list:Ignore">1.<span sty=
le=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;
</span></span></b><![endif]><b>Building openjdk<o:p></o:p></b></p>
<p class=3D"MsoNormal">I am building the openjdk-8 and openjre-8 for PowerP=
C (PPC464) with yocto-2.1.1 and getting this error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| &#43; echo /home/hgovind=
/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/work/464-poky-linux/o=
penjre-8/102b14-r0/build/hotspot/linux_ppc_compiler2/product<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| make[5]: *** No rule to =
make target '/home/hgovind/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp=
/tmp/work/464-poky-linux/openjre-8/102b14-r0/jdk8u-bf0932d3e0f8/hotspot/mak=
e/linux/makefiles/.make'.&nbsp;
 Stop.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| /home/hgovind/projects/t=
est-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/work/464-poky-linux/openjre-8/10=
2b14-r0/jdk8u-bf0932d3e0f8/hotspot/make/linux/Makefile:297:
 recipe for target 'product' failed<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| make[4]: *** [product] E=
rror 2<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| Makefile:230: recipe for=
 target 'generic_build2' failed<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| make[3]: *** [generic_bu=
ild2] Error 2<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| Makefile:177: recipe for=
 target 'product' failed<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| make[2]: *** [product] E=
rror 2<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| make[1]: *** [/home/hgov=
ind/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/work/464-poky-linu=
x/openjre-8/102b14-r0/build/hotspot/_hotspot.timestamp]
 Error 2<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| HotspotWrapper.gmk:44: r=
ecipe for target '/home/hgovind/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-co=
re/yp/tmp/work/464-poky-linux/openjre-8/102b14-r0/build/hotspot/_hotspot.ti=
mestamp'
 failed<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| /home/hgovind/projects/t=
est-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/work/464-poky-linux/openjre-8/10=
2b14-r0/jdk8u-bf0932d3e0f8//make/Main.gmk:108: recipe
 for target 'hotspot-only' failed<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| make: *** [hotspot-only]=
 Error 2<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| ERROR: oe_runmake failed=
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| ERROR: Function failed: =
do_compile (log file is located at /home/hgovind/projects/test-sdk/ie4k-yoc=
to-2.1/iox-sdk-core/yp/tmp/work/464-poky-linux/openjre-8/102b14-r0/temp/log=
.do_compile.4023)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this issue observed before? Is openjdk and Openjr=
e tested for powerpc in yocto? Please let me know if you need full log file=
 for reference
<b><o:p></o:p></b></p>
<p class=3D"MsoNormal"><b><o:p>&nbsp;</o:p></b></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><b><span style=3D"mso-list:Ignore">2.<span sty=
le=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;
</span></span></b><![endif]><b>Building gobject-introspection<o:p></o:p></b=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">so /home/hgovind/projects/=
test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/sysroots/ie4k-lxc/usr/lib/libpc=
re.so -lpthread /home/hgovind/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core=
/yp/tmp/sysroots/ie4k-lxc/usr/lib/libffi.so
 -pthread<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| Invalid instruction<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| NIP f67d93f8&nbsp;&nbsp;=
 LR f67c9ee8 CTR 00000001 XER 00000008 CPU#0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| MSR 00006040 HID0 000000=
00&nbsp; HF 00006000 idx 0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| TB 00593997 255119805201=
1780<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| GPR00 00000000f67c115c 0=
0000000f6ffc910 0000000000000000 00000000f67dbdb0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| GPR04 0000000000000000 0=
000000000000000 0000000069203d3d 0000000009824250<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| GPR08 0000000000000000 0=
000000010002260 00000000f67d7d6c 0000000000000000<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| GPR12 0000000028000882 0=
000000000000000 00000000f67db438 0000000000000000<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| GPR16 0000000000000000 0=
0000000f67db468 00000000f6ffc978 00000000f6ffca28<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| GPR20 0000000000000000 0=
0000000f67fd310 00000000f6ffcf58 00000000f67dbdb0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| GPR24 0000000020000000 0=
0000000f67dbdb0 0000000000000000 00000000f67fd310<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| GPR28 0000000000000000 0=
000000000000000 00000000f67fdff0 00000000f6ffc960<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| CR 24000484&nbsp; [ E&nb=
sp; G&nbsp; -&nbsp; -&nbsp; -&nbsp; G&nbsp; L&nbsp; G&nbsp; ]&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RES ffffffff<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| FPR00 0000000000000000 0=
000000000000000 0000000000000000 0000000000000000<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| FPR04 0000000000000000 0=
000000000000000 0000000000000000 0000000000000000<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| FPR08 0000000000000000 0=
000000000000000 0000000000000000 0000000000000000<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| FPR12 0000000000000000 0=
000000000000000 0000000000000000 0000000000000000<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| FPR16 0000000000000000 0=
000000000000000 0000000000000000 0000000000000000<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| FPR20 0000000000000000 0=
000000000000000 0000000000000000 0000000000000000<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| FPR24 0000000000000000 0=
000000000000000 0000000000000000 0000000000000000<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| FPR28 0000000000000000 0=
000000000000000 0000000000000000 0000000000000000<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| FPSCR 00000000<o:p></o:p=
></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| qemu: uncaught target si=
gnal 4 (Illegal instruction) - core dumped<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| Illegal instruction (cor=
e dumped)<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| If the above error messa=
ge is about missing .so libraries, then setting up GIR_EXTRA_LIBS_PATH in t=
he recipe should help.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| (typically like this: GI=
R_EXTRA_LIBS_PATH=3D&quot;${B}/something/.libs&quot; )<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| Command '['/home/hgovind=
/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/work/464-poky-linux/g=
object-introspection/1.46.0-r0/build/g-ir-scanner-qemuwrapper',
 '/home/hgovind/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/work/4=
64-poky-linux/gobject-introspection/1.46.0-r0/build/tmp-introspectELxvx9/GL=
ib-2.0', '--introspect-dump=3D/home/hgovind/projects/test-sdk/ie4k-yocto-2.=
1/iox-sdk-core/yp/tmp/work/464-poky-linux/gobject-introspection/1.46.0-r0/b=
uild/tmp-introspectELxvx9/functions.txt,/home/hgovind/projects/test-sdk/ie4=
k-yocto-2.1/iox-sdk-core/yp/tmp/work/464-poky-linux/gobject-introspection/1=
.46.0-r0/build/tmp-introspectELxvx9/dump.xml']'
 returned non-zero exit status 1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| make[2]: *** [GLib-2.0.g=
ir] Error 1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| make[2]: Leaving directo=
ry `/home/hgovind/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/work=
/464-poky-linux/gobject-introspection/1.46.0-r0/build'<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| make[1]: *** [all-recurs=
ive] Error 1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| make[1]: Leaving directo=
ry `/home/hgovind/projects/test-sdk/ie4k-yocto-2.1/iox-sdk-core/yp/tmp/work=
/464-poky-linux/gobject-introspection/1.46.0-r0/build'<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| make: *** [all] Error 2<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| ERROR: oe_runmake failed=
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">| ERROR: Function failed: =
do_compile (log file is located at /home/hgovind/projects/test-sdk/ie4k-yoc=
to-2.1/iox-sdk-core/yp/tmp/work/464-poky-linux/gobject-introspection/1.46.0=
-r0/temp/log.do_compile.16778)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here Yocto tries to build a target binary in qemu en=
vironment which is failing with the error &#8216;illigal instruction&#8217;=
 .<o:p></o:p></p>
<p class=3D"MsoNormal">Is there necessity to use the emulation(qemu) to bui=
ld a target binary or can we enable the cross compilation?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Harshal &nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_16a874cb7f20497595a7957943015fa4XCHRTP003ciscocom_--
