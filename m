Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63FB8E00AC5; Mon, 20 Aug 2018 07:21:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [91.90.150.23 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1489 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Aug 2018 07:20:58 PDT
Received: from s2023.ppsmtp.net (s2023.ppsmtp.net [91.90.150.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A733EE00848
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 07:20:58 -0700 (PDT)
Received: from pps.filterd (s2023.ppsmtp.net [127.0.0.1])
	by s2023.ppsmtp.net (8.16.0.22/8.16.0.22) with SMTP id w7KDoNPM023333
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 15:56:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : mime-version : content-type; s=pps;
	bh=JI16YIcxzYpTOrwtMQjYxWLjIKm6jJX1XgIZICC+uiI=;
	b=K5lkiyrf1hRZfgEi6+iKZheUr3QcTK95VrtblxbL+2D/RsbJTTHZxmp/nHacAIer2Gm8
	hLHLRmfTujzYbD4ocAAtp7j2plECmLnyAxauwh5rRqJ/kPXf6kNN1fLkmRZS3VOFAEnM
	cZSoyFPZj99dqCrIb6wF+5GdElUpDujvJ7pmY075yMl5MWIggyS2GaBMCXlqrN/p3dop
	CEJ1HN4/PCmN8fMy5GIvuYHvyMfo+Hy0vgz4OkZ5ofGflPYJ+L0VhG2E2ieL3B8iAdzm
	fbdjjqwyvUDwD/cQeOrtV3/qcvLzLEqsqGLhWay9gqxZNlJFvGralLY7zcZCUBLJbb7j
	6g== 
Received: from deesdmz226.dmz.es.de.ifm (mail26.ifm.com [194.156.152.226])
	by s2023.ppsmtp.net with ESMTP id 2kx9hgacpt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 15:56:08 +0200
Received: from deesdmz226.dmz.es.de.ifm (localhost.localdomain [127.0.0.1])
	by deesdmz226.dmz.es.de.ifm (Postfix) with ESMTP id DE544703862
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 15:56:07 +0200 (CEST)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: bitbake firefox using meta-browser layer
Thread-Index: AdQ4jR4X/t2DA6ibTMGXMEG00u03Dw==
Date: Mon, 20 Aug 2018 13:56:06 +0000
Message-ID: <0e7ab86ac1dc4ef2a81f178ff2f54d92@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.96]
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.2.1013-24042.006
X-TM-AS-Result: No-15.439500-5.000000-10
X-TMASE-MatchedRID: 5DoLu8zZM2p5yhP+9izTu9tkEpZdBqoNJizcFpTcRGd+YesuCgkiXCGZ
	6VVOVYeWhXNzJizxIm9AO3PG9B+7rsvTk9bUe4rih2VzUlo4HVNH1Hzr6SvYsEjINjnv2/BMQga
	1/hkhDNeKbvt4sraFIPGKYM8RTOt1F5sBykYYv94D2WXLXdz+Ae9KnaK64e2ixSZxKZrfThMFR7
	uo2zDLCDCxME/sAP0i8nukOA4JDCIg7RdVtlOThJ3iEJrvFJmhvtVce6w5+K/KY//WmIj/oegYN
	LLnK4fdSnO0VsPfYDyTkkLVg4gL4p4PKMTQaQGUQ4r9bxJdsVs026H7nOZLrxSX1u8BLtZAT0UA
	jD15q/InBVqc12IAEFEF6pJbmFWtuLpSqHhvu3jKxN1fPBv34REB3boGtIzC/pBf0BH+EMDv/72
	zC4hJFVhUDZOPhwqI54mbosKUuYfCKxdd3mKUa2erpxpZwg4L/AZW18vjv1psmSfP7d/dpboUy6
	O85O1KMAvmWkZ7QVPoHftLjxLTHX9eCf0RtQJbWCjDJRYeAZ2H7D1bP/FcOhHyswgJ7SqQ8zGz6
	5yndkzJLhr/DX0y76OzLgjJhC8IcBTC9SlEjKp6a7qHolmGuZkShYcLpGH9BL+V9lD389E/uAMu
	IS3/V5hT889iimDCn0mxkGL/hd/37mDw9KvUHly6ccWnLzE/Qap/k5Sc19BCI7pNLiSjfeRqQAx
	bWD9+rdZLelE6wFvr4Ukqz3sOObfAwLakUNypOlxBO2IcOBYAaeXQMs6mcUzjR3Ie3+62gx4NQ8
	UHkgZ9ueFiE4w1/Id9TmRIVHyV9n5FR0XBGqKb+KwHjBEiP2kmn1T59dSOgzr0Vxgn+ENoBmTSw
	RxjXg==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--15.439500-5.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.2.1013-24042.006
x-tm-snts-smtp: 6246D496F4C1148C90774980188C939EC8278DFDCE9E07143A52C9C7A34CA5422
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.18486.x86_64 COMPUMAIL Date:
	20180820135607Z
X-Proofpoint-ID: SID=2kx9hgacpt QID=2kx9hgacpt-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-08-20_04:, , signatures=0
Subject: bitbake firefox using meta-browser layer
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
X-List-Received-Date: Mon, 20 Aug 2018 14:21:01 -0000
X-Groupsio-MsgNum: 42201
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_0e7ab86ac1dc4ef2a81f178ff2f54d92ifmcom_";
	type="multipart/alternative"

--_004_0e7ab86ac1dc4ef2a81f178ff2f54d92ifmcom_
Content-Type: multipart/alternative;
	boundary="_000_0e7ab86ac1dc4ef2a81f178ff2f54d92ifmcom_"

--_000_0e7ab86ac1dc4ef2a81f178ff2f54d92ifmcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I was trying to compile the Firefox browser for a custom embedded device. B=
ut it is falling giving the following error:

cd /home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firef=
ox/52.9.0esr-r0/firefox-52.9.0esr/firefox-build-dir
| /home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefo=
x/52.9.0esr-r0/firefox-52.9.0esr/configure --target=3Daarch64-pdm3-linux --=
host=3Dx86_64-linux --with-toolchain-prefix=3Daarch64-pdm3-linux- --build=
=3Dx86_64-linux --prefix=3D/usr
| Reexecuting in the virtualenv
| Adding configure options from /home/iepl/work/yocto_build/poky/build/tmp/=
work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/mozconfig
|   --enable-application=3Dbrowser
|   --target=3Daarch64-pdm3-linux
|   --prefix=3D/usr
|   --enable-application=3Dbrowser
|   --enable-official-branding
|   --disable-elf-hack
|   --disable-gold
|   --disable-strip
|   --disable-install-strip
|   --with-system-nss
|   --with-system-nspr
|   --with-system-zlib
|   --with-system-bz2
|   --with-system-libevent
|   --with-system-libvpx
|   --with-system-icu
|   --enable-system-ffi
|   --enable-system-pixman
|   --enable-startup-notification
|   --enable-pulseaudio
|   --disable-tests
|   --disable-necko-wifi
|   --disable-gconf
|   --disable-crashreporter
|   --disable-updater
|   --disable-debug-symbols
| checking for a shell... /home/iepl/work/yocto_build/poky/build/tmp/hostto=
ols/sh
| checking for host system type... x86_64-pc-linux-gnu
| checking for target system type... aarch64-pdm3-linux-gnu
| Traceback (most recent call last):
|   File "/home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linu=
x/firefox/52.9.0esr-r0/firefox-52.9.0esr/configure.py", line 107, in <modul=
e>
|     sys.exit(main(sys.argv))
|   File "/home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linu=
x/firefox/52.9.0esr-r0/firefox-52.9.0esr/configure.py", line 26, in main
|     sandbox.run(os.path.join(os.path.dirname(__file__), 'moz.configure'))
|   File "/home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linu=
x/firefox/52.9.0esr-r0/firefox-52.9.0esr/python/mozbuild/mozbuild/configure=
/__init__.py", line 359, in run
|     raise InvalidOptionError('Unknown option: %s' % without_value)
| mozbuild.configure.options.InvalidOptionError: Unknown option: --build
| *** Fix above errors and then restart with\
|                "make -f client.mk build"
| client.mk:375: recipe for target 'configure' failed
| make: *** [configure] Error 1
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at /home/iepl/w=
ork/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0=
/temp/log.do_configure.5847)
ERROR: Task (/home/iepl/work/yocto_build/meta-browser/recipes-browser/firef=
ox/firefox_52.9.0esr.bb:do_configure) failed with exit code '1'

Can anybody provide me a solution or at least a  hint, so that I can move f=
orward.

Best Regards
Kamal Pandey
Junior Software Engineer
[ifm_logo_sqrs]ifm engineering pvt. ltd.
Survey No. 1/10/16, 3rd floor, Above SBI, Bavdhan Branch, N.D.A. Road, Bavd=
han, Pune, India - 411021 | Web: www.ifm.com<http://www.ifm.com/> | Phone: =
+91-20-22951910 Extn:215 | CIN: U29213PN2010FTC13676


--_000_0e7ab86ac1dc4ef2a81f178ff2f54d92ifmcom_
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
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-IN" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I was trying to compile the Firefox browser for a cu=
stom embedded device. But it is falling giving the following error:<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">cd /home/iepl/work/yocto_build/poky/build/tmp/work/a=
arch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0esr/firefox-build-dir<=
o:p></o:p></p>
<p class=3D"MsoNormal">| /home/iepl/work/yocto_build/poky/build/tmp/work/aa=
rch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0esr/configure --target=
=3Daarch64-pdm3-linux --host=3Dx86_64-linux --with-toolchain-prefix=3Daarch=
64-pdm3-linux- --build=3Dx86_64-linux --prefix=3D/usr<o:p></o:p></p>
<p class=3D"MsoNormal">| Reexecuting in the virtualenv<o:p></o:p></p>
<p class=3D"MsoNormal">| Adding configure options from /home/iepl/work/yoct=
o_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/mozconf=
ig<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --enable-application=3Dbrowser<o:p></o=
:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --target=3Daarch64-pdm3-linux<o:p></o:=
p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --prefix=3D/usr<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --enable-application=3Dbrowser<o:p></o=
:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --enable-official-branding<o:p></o:p><=
/p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --disable-elf-hack<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --disable-gold<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --disable-strip<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --disable-install-strip<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --with-system-nss<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --with-system-nspr<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --with-system-zlib<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --with-system-bz2<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --with-system-libevent<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --with-system-libvpx<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --with-system-icu<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --enable-system-ffi<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --enable-system-pixman<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --enable-startup-notification<o:p></o:=
p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --enable-pulseaudio<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --disable-tests<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --disable-necko-wifi<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --disable-gconf<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --disable-crashreporter<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --disable-updater<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; --disable-debug-symbols<o:p></o:p></p>
<p class=3D"MsoNormal">| checking for a shell... /home/iepl/work/yocto_buil=
d/poky/build/tmp/hosttools/sh<o:p></o:p></p>
<p class=3D"MsoNormal">| checking for host system type... x86_64-pc-linux-g=
nu<o:p></o:p></p>
<p class=3D"MsoNormal">| checking for target system type... aarch64-pdm3-li=
nux-gnu<o:p></o:p></p>
<p class=3D"MsoNormal">| Traceback (most recent call last):<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/iepl/work/yocto_build=
/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0=
esr/configure.py&quot;, line 107, in &lt;module&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; sys.exit(main(sys.argv))<o=
:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/iepl/work/yocto_build=
/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0=
esr/configure.py&quot;, line 26, in main<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; sandbox.run(os.path.join(o=
s.path.dirname(__file__), 'moz.configure'))<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/iepl/work/yocto_build=
/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0=
esr/python/mozbuild/mozbuild/configure/__init__.py&quot;, line 359, in run<=
o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; raise InvalidOptionError('=
Unknown option: %s' % without_value)<o:p></o:p></p>
<p class=3D"MsoNormal">| mozbuild.configure.options.InvalidOptionError: Unk=
nown option: --build<o:p></o:p></p>
<p class=3D"MsoNormal">| *** Fix above errors and then restart with\<o:p></=
o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;make -f client.mk build&quot;=
<o:p></o:p></p>
<p class=3D"MsoNormal">| client.mk:375: recipe for target 'configure' faile=
d<o:p></o:p></p>
<p class=3D"MsoNormal">| make: *** [configure] Error 1<o:p></o:p></p>
<p class=3D"MsoNormal">| ERROR: oe_runmake failed<o:p></o:p></p>
<p class=3D"MsoNormal">| WARNING: exit code 1 from a shell command.<o:p></o=
:p></p>
<p class=3D"MsoNormal">| ERROR: Function failed: do_configure (log file is =
located at /home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-lin=
ux/firefox/52.9.0esr-r0/temp/log.do_configure.5847)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task (/home/iepl/work/yocto_build/meta-browse=
r/recipes-browser/firefox/firefox_52.9.0esr.bb:do_configure) failed with ex=
it code '1'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can anybody provide me a solution or at least a&nbsp=
; hint, so that I can move forward.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;co=
lor:black;mso-fareast-language:EN-IN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;co=
lor:black;mso-fareast-language:EN-IN">Best Regards
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;co=
lor:black;mso-fareast-language:EN-IN">Kamal Pandey<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span lang=3D"EN-US" s=
tyle=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;co=
lor:black;mso-fareast-language:EN-IN">Junior Software Engineer</span><span =
lang=3D"EN-US" style=3D"color:black;mso-fareast-language:EN-IN"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"color:b=
lack;mso-fareast-language:EN-IN"><img width=3D"32" height=3D"32" style=3D"w=
idth:.3333in;height:.3333in" id=3D"Picture_x0020_1" src=3D"cid:image001.png=
@01D438BB.7223DDE0" alt=3D"ifm_logo_sqrs"></span><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;color:=
black;mso-fareast-language:EN-IN">ifm
 engineering pvt. ltd.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-f=
amily:&quot;Trebuchet MS&quot;,sans-serif;color:black;mso-fareast-language:=
EN-IN">Survey No. 1/10/16, 3rd floor, Above SBI, Bavdhan Branch, N.D.A. Roa=
d, Bavdhan, Pune, India - 411021 | Web:
</span><span lang=3D"EN-US" style=3D"mso-fareast-language:EN-IN"><a href=3D=
"http://www.ifm.com/"><span style=3D"font-size:8.0pt;font-family:&quot;Treb=
uchet MS&quot;,sans-serif;color:black">www.ifm.com</span></a></span><span l=
ang=3D"EN-US" style=3D"font-size:8.0pt;font-family:&quot;Trebuchet MS&quot;=
,sans-serif;color:black;mso-fareast-language:EN-IN">
 | Phone: &#43;91-20-22951910 Extn:215 | CIN: U29213PN2010FTC13676</span><s=
pan style=3D"mso-fareast-language:EN-IN"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_0e7ab86ac1dc4ef2a81f178ff2f54d92ifmcom_--

--_004_0e7ab86ac1dc4ef2a81f178ff2f54d92ifmcom_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=1601;
	creation-date="Mon, 20 Aug 2018 13:56:05 GMT";
	modification-date="Mon, 20 Aug 2018 13:56:05 GMT"
Content-ID: <image001.png@01D438BB.7223DDE0>
Content-Transfer-Encoding: base64

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
RK5CYII=

--_004_0e7ab86ac1dc4ef2a81f178ff2f54d92ifmcom_--
