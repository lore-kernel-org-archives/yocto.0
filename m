Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75392E00953; Fri,  7 Sep 2018 05:37:07 -0700 (PDT)
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
Received: from s2023.ppsmtp.net (s2023.ppsmtp.net [91.90.150.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4F31E0090C
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2018 05:37:04 -0700 (PDT)
Received: from pps.filterd (s2023.ppsmtp.net [127.0.0.1])
	by s2023.ppsmtp.net (8.16.0.22/8.16.0.22) with SMTP id w87CZdpq008553
	for <yocto@yoctoproject.org>; Fri, 7 Sep 2018 14:37:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : mime-version : content-type; s=pps;
	bh=tdpSCHzLqbspFs0py2EDAfTQ+vMFXBKvBkl6+yHIcwo=;
	b=ln3HF4M0+MO0gnByMHXHjmfsdVMp0S/C5dLhtMmJ62HHrBbLaQ1E+f4+TBxgOpnIOg3T
	9gYzQmmGNmWARfJfVWn1y64jAZif3WHGE0sKJn4v2M3aoirn7z7mvfUNO2BpNuYMYq7k
	KtJUhRC6NZqe5E6KZG0v+Yg5HfVkGChrTGdzlUmVM1yAZ3WN+o5F5W23iD0Z+CwCN8Ik
	PtggrYulq5PuPxC8D+/uOwQfwS9VIT8+ERkeHzz453j0FKaT266Il1TWEz88lCvgnQvW
	rLccfClLDxyGQathVB5hudDRqq/wG4017MTHX16RBBk9MSMGJ/qIAxgKywQsJBhmrFsv
	Mg== 
Received: from deesdmz226.dmz.es.de.ifm (mail26.ifm.com [194.156.152.226])
	by s2023.ppsmtp.net with ESMTP id 2mb752hb28-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Fri, 07 Sep 2018 14:37:03 +0200
Received: from deesdmz226.dmz.es.de.ifm (localhost.localdomain [127.0.0.1])
	by deesdmz226.dmz.es.de.ifm (Postfix) with ESMTP id BD299703844
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2018 14:37:02 +0200 (CEST)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: error while installing extended sdk 
Thread-Index: AdRGpSEluXTp7wgFR1Gs0HyllDRjMA==
Date: Fri, 7 Sep 2018 12:36:53 +0000
Message-ID: <cad7299daf914655a91d766e4c50e11e@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.96]
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.2.1013-24078.005
X-TM-AS-Result: No-18.939900-5.000000-10
X-TMASE-MatchedRID: LJ3dkFdK65ubbBKDJbfSHBB7F1lBAQWzs+A++/BnIBFPrt6zN5RT5+gY
	NLLnK4fdXAtGQOtannYm8WKyAzsrDS3+zMyhu9DHH5YQyOg71ZZAq6/y5AEOOk4K0IMk2m3Gz4/
	l3BUwtc1IQWOjNnlI6wdAvjibU7wCVrPDv0Ym1s3mAId+2bAQwt2+i8ybXdyVawV8+oOjgHU3a6
	+huLUpBSK2cbjwGBcWjH0itlSjPxVWUDeOJ3BUdcK1Ib9JAALx31asM/gsp2mpVUR0SvYtSozS8
	a3MSlYljJFbHTCWdQY+e1XsIHpeM6m/G7eYsFM7w2taljzThMbgYKfhtyF8a/HFoBcOsKezPZ95
	/IdkBPSlI8M5Ekwy4wFk6w4YcqmhSOWjYlTyoLGYcl4BgqVyk3G1ZiUO5FCl55TSoW/nwH457kF
	jOTI5Je+6vWQCjRtKlET/T7VXa5sOVaHFOAhc6tsfxZpQv2qMtPGelsKOu4ijC1E/zCEIr5oPjq
	d6oYckWHLKREIsGlhvp/zGg4oCLCoa6aKKy2ChZjQijgrFvzrVWJXkRYrtO2RinB1Mnjd9zz3je
	hzenezXyDm8Em/Q6iAHAopEd76vxUH0DuJ+Cwl6qGZt3sBHJk6xD2QHgJnP4VSDldX7fT9etSzx
	mx84Ug==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--18.939900-5.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.2.1013-24078.005
x-tm-snts-smtp: DF54DA7B730D93D2894F285F0D974BEBA0467EE74D232BAEDC27632713CD1B482
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.18486.x86_64 COMPUMAIL Date:
	20180907123702Z
X-Proofpoint-ID: SID=2mb752hb28 QID=2mb752hb28-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-09-07_07:, , signatures=0
Subject: error while installing extended sdk
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
X-List-Received-Date: Fri, 07 Sep 2018 12:37:07 -0000
X-Groupsio-MsgNum: 42406
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_cad7299daf914655a91d766e4c50e11eifmcom_";
	type="multipart/alternative"

--_004_cad7299daf914655a91d766e4c50e11eifmcom_
Content-Type: multipart/alternative;
	boundary="_000_cad7299daf914655a91d766e4c50e11eifmcom_"

--_000_cad7299daf914655a91d766e4c50e11eifmcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I was trying to create an extended SDK for my image. It was successfully cr=
eated, without any errors. But while installing the sdk I got a few warning=
s as shown below:
WARNING: The weston:do_fetch sig is computed to be b87adbcf88b1b506b444c099=
fad499f3, but the sig is locked to 3bf1dd4b3c15d444a4b15cd0e4c44f59 in SIGG=
EN_LOCKEDSIGS_t-aarch64
The weston:do_unpack sig is computed to be ddb8cc67d714bc33f8260581fa933ce1=
, but the sig is locked to 2b59dca41c70645ab73c6a6fc6210054 in SIGGEN_LOCKE=
DSIGS_t-aarch64
The weston:do_populate_lic sig is computed to be a46b0e6f8735528805144f19ab=
9c3511, but the sig is locked to 7e1757176bd889c18cd0e5f423149e8d in SIGGEN=
_LOCKEDSIGS_t-aarch64
The weston:do_configure sig is computed to be 5bf71ab53d26d6e531350c06f02c2=
319, but the sig is locked to 6c0a7295a257143610ca86020105b80a in SIGGEN_LO=
CKEDSIGS_t-aarch64
The weston:do_compile sig is computed to be ea519407dd4c25cfb7d15b99f0d3afe=
a, but the sig is locked to af49c954f1d0e31fddb47ad8a681c70c in SIGGEN_LOCK=
EDSIGS_t-aarch64
The weston:do_package sig is computed to be 8a15931568dcf12530de0601d4a69cb=
a, but the sig is locked to bc7f446278eb3efe981ead7857cdc460 in SIGGEN_LOCK=
EDSIGS_t-aarch64
The weston:do_package_write_rpm sig is computed to be 2fbacf175eaf34adb31e0=
4d9af6692c3, but the sig is locked to 7cb00a81b8d746a92be64cbbbf8d2c25 in S=
IGGEN_LOCKEDSIGS_t-aarch64
But the installation was completed without any errors. I checked the sysroo=
t/usr/bin directory inside the installed esdk and found Weston bin files we=
re not there.
Also while executing devtool command after source the env file I am getting=
 this error:
/home/kamal/work/wayland_esdk/sysroots/x86_64-pdm3sdk-linux/usr/bin/python3=
: line 5: /home/kamal/work/wayland_esdk/sysroots/x86_64-pdm3sdk-linux/usr/b=
in/python3.5.real: No such file or directory.
Although there is a file in that directory.
One thing to note that I am using python of anaconda not my system one.
Any leads will be appreciated.
Thanks

Best Regards
Kamal Pandey
Junior Software Engineer
[ifm_logo_sqrs]ifm engineering pvt. ltd.
Survey No. 1/10/16, 3rd floor, Above SBI, Bavdhan Branch, N.D.A. Road, Bavd=
han, Pune, India - 411021 | Web: www.ifm.com<http://www.ifm.com/> | Phone: =
+91-20-22951910 Extn:215 | CIN: U29213PN2010FTC13676


--_000_cad7299daf914655a91d766e4c50e11eifmcom_
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">I was trying to create an extended SDK for my image.=
 It was successfully created, without any errors. But while installing the =
sdk I got a few warnings as shown below:<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: The weston:do_fetch sig is computed to be b=
87adbcf88b1b506b444c099fad499f3, but the sig is locked to 3bf1dd4b3c15d444a=
4b15cd0e4c44f59 in SIGGEN_LOCKEDSIGS_t-aarch64<o:p></o:p></p>
<p class=3D"MsoNormal">The weston:do_unpack sig is computed to be ddb8cc67d=
714bc33f8260581fa933ce1, but the sig is locked to 2b59dca41c70645ab73c6a6fc=
6210054 in SIGGEN_LOCKEDSIGS_t-aarch64<o:p></o:p></p>
<p class=3D"MsoNormal">The weston:do_populate_lic sig is computed to be a46=
b0e6f8735528805144f19ab9c3511, but the sig is locked to 7e1757176bd889c18cd=
0e5f423149e8d in SIGGEN_LOCKEDSIGS_t-aarch64<o:p></o:p></p>
<p class=3D"MsoNormal">The weston:do_configure sig is computed to be 5bf71a=
b53d26d6e531350c06f02c2319, but the sig is locked to 6c0a7295a257143610ca86=
020105b80a in SIGGEN_LOCKEDSIGS_t-aarch64<o:p></o:p></p>
<p class=3D"MsoNormal">The weston:do_compile sig is computed to be ea519407=
dd4c25cfb7d15b99f0d3afea, but the sig is locked to af49c954f1d0e31fddb47ad8=
a681c70c in SIGGEN_LOCKEDSIGS_t-aarch64<o:p></o:p></p>
<p class=3D"MsoNormal">The weston:do_package sig is computed to be 8a159315=
68dcf12530de0601d4a69cba, but the sig is locked to bc7f446278eb3efe981ead78=
57cdc460 in SIGGEN_LOCKEDSIGS_t-aarch64<o:p></o:p></p>
<p class=3D"MsoNormal">The weston:do_package_write_rpm sig is computed to b=
e 2fbacf175eaf34adb31e04d9af6692c3, but the sig is locked to 7cb00a81b8d746=
a92be64cbbbf8d2c25 in SIGGEN_LOCKEDSIGS_t-aarch64<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">But the installation was completed without any error=
s. I checked the sysroot/usr/bin directory inside the installed esdk and fo=
und Weston bin files were not there.<o:p></o:p></p>
<p class=3D"MsoNormal">Also while executing devtool command after source th=
e env file I am getting this error:<o:p></o:p></p>
<p class=3D"MsoNormal">/home/kamal/work/wayland_esdk/sysroots/x86_64-pdm3sd=
k-linux/usr/bin/python3: line 5: /home/kamal/work/wayland_esdk/sysroots/x86=
_64-pdm3sdk-linux/usr/bin/python3.5.real: No such file or directory.<o:p></=
o:p></p>
<p class=3D"MsoNormal">Although there is a file in that directory.<o:p></o:=
p></p>
<p class=3D"MsoNormal">One thing to note that I am using python of anaconda=
 not my system one.<o:p></o:p></p>
<p class=3D"MsoNormal">Any leads will be appreciated.<o:p></o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
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
@01D446D3.90451FC0" alt=3D"ifm_logo_sqrs"></span><span lang=3D"EN-US" style=
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

--_000_cad7299daf914655a91d766e4c50e11eifmcom_--

--_004_cad7299daf914655a91d766e4c50e11eifmcom_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=1601;
	creation-date="Fri, 07 Sep 2018 12:36:52 GMT";
	modification-date="Fri, 07 Sep 2018 12:36:52 GMT"
Content-ID: <image001.png@01D446D3.90451FC0>
Content-Transfer-Encoding: base64

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
RK5CYII=

--_004_cad7299daf914655a91d766e4c50e11eifmcom_--
