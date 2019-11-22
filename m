Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6513.1574429872524032614
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 05:37:56 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@ifm.com header.s=pps header.b=zgssNfFA;
 spf=fail (domain: ifm.com, ip: 140.211.169.56, mailfrom: kamal.pandey@ifm.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7330E00BB5; Fri, 22 Nov 2019 05:37:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [91.90.150.80 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1695 seconds by postgrey-1.32 at yocto-www; Fri, 22 Nov 2019 05:37:49 PST
Received: from s2080.ppsmtp.net (s2080.ppsmtp.net [91.90.150.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08B72E00A9A
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2019 05:37:49 -0800 (PST)
Received: from pps.filterd (s2080.ppsmtp.net [127.0.0.1])
	by s2080.ppsmtp.net (8.16.0.27/8.16.0.27) with SMTP id xAMD8Osi017129
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2019 14:09:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com; h=from : to : subject :
 date : message-id : mime-version : content-type; s=pps;
 bh=LUF5DbNyS2VSHGJmenG3VV+68TV9LQO8F9c0WlIMSN4=;
 b=zgssNfFAgcI3InVd9j7tQ59C+7ttWYMLFFwlYas3zrDiA1LStaDRpn6zFZR7i7EZbIxi
 fCHTHNKxFdzZjyNd3N1lnkoxVpFvofn4eop2eq6sllSO1sZPBVNr7J+jaJ1YZ/1gYy3y
 vyvHonAvNE7UgXm2Yg+uJtN/qzoywp3871+uNb2095M5h2xHJ20sxp67mg0YlLI+t/3l
 Gs6CfZOkalD09tfKsj2M28qu2Cn/6lCJkTahrddsbttCSzZ0Syy2P1Tb9ekJYVDu4HsI
 Di4ugRG8rcz2wYzcnqOA3zTKE333McHTi5j+16zslOQ35XNAqr/9Fv0tqOmMFaRwAwEE Dg== 
Received: from deesdmz226.dmz.es.de.ifm (mail26.ifm.com [194.156.152.226])
	by s2080.ppsmtp.net with ESMTP id 2wdqrvbghr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2019 14:09:33 +0100
Received: from deesdmz226.dmz.es.de.ifm (localhost.localdomain [127.0.0.1])
	by deesdmz226.dmz.es.de.ifm (Postfix) with ESMTP id DC5C3703856
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2019 14:09:32 +0100 (CET)
From: "kamal pandey" <kamal.pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Regarding esdk build error error
Thread-Topic: Regarding esdk build error error
Thread-Index: AdWhNLwquUZgry4CQUqvHb5nusIMKA==
Date: Fri, 22 Nov 2019 13:09:20 +0000
Message-ID: <1aeed09a83af40cb8d07801567d3bc14@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.94]
X-TM-AS-Product-Ver: SMEX-12.5.0.2039-8.5.1020-25058.007
X-TM-AS-Result: No-21.253700-5.000000-10
X-TMASE-MatchedRID: bho5G9zErimMl+8vxKB9T+W9J5hJgRQsRDIePNhxjQp65yXsx03DxO+P
	mftbFr5Lcgg5XwDP6GMtMWKNQFviV7zcY1SfTOSvB0c2kG7Gs6jMqev3OPqHcRLf1vz7ecPHFPD
	BkzH87467I5aeKVVjnoFHACWsU4r15e6oBw0mel9Nq5/Y+tFvW34JYJwdJw4T+nlefiwGml+SN5
	t8Lx0BlrlFLYp4Dg2+ne5o1ye7TJNpt0p5Gy2a+mFdfLBMkul89eu/O7xbKnR2ugWlXLnD6bg1x
	ZVpHEW+qMlm1+4tGhT3WQ9OipOPPD13WcdbGR6QCLQsumV/5S8uszU67KeD1wzvg1/q1MH25TL6
	apB3DsoyNg/2RUKcT7CiODxH42wUVHgNee60Sg+cxB01DrjF9xfbPFE2GHrVR9PBe5SQbhCOJmp
	FkiF2w8CXvTLIV1Xw9TqroYxZtD7fEVvwXlyVJPVY7U3NX8Jgnghuxea6bsZ0PA/ki2kI7LnqJN
	XIccKryd44Sucb673niZuiwpS5hx6kTThkAlz/gRTWSf0X8xmOz/LLJUcaHsmqrXFLFjsW6aX8T
	YIrj1uFZCZln65Hjr+9aYYmK0YhTAvAYK7U1zNFH6oTiImwh4ZS+fz1TDISe7ijHq7g9obtlVVS
	1CM0MNl9DHcHloy40AAj4Lcjr8VlP5MblRjjHmhQCsqhuTNi1ViV5EWK7TubKItl61J/yc8943o
	c3p3s50uNBT3t7RbgBQgR5erAmouSE4o9kUbbj+dhVbkVw4FlY7WsDsIcD6gUJlM0xSGs
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--21.253700-5.000000
X-TMASE-Version: SMEX-12.5.0.2039-8.5.1020-25058.007
X-TM-SNTS-SMTP: 
	64864C337BC9C529314C69549681F2C1F5275C6F4646EDF37CE7C2D70A11B1AD2002:9
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.19367.x86_64 COMPUMAIL Date: 20191122130932Z
X-Proofpoint-ID: SID=2wdqrvbghr QID=2wdqrvbghr-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-11-22_02:,,
 signatures=0
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1aeed09a83af40cb8d07801567d3bc14ifmcom_"

--_000_1aeed09a83af40cb8d07801567d3bc14ifmcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I tried building extended SDK using the command $bitbake  <custom-core-imag=
e>  -c populate_sdk_ext,  but got errors which are as follows:

ERROR: Task xilinx-r5-bsp.do_fetch attempted to execute unexpectedly
ERROR: Task xilinx-r5-bsp.do_prepare_recipe_sysroot attempted to execute un=
expectedly
ERROR: Task xilinx-r5-bsp.do_unpack attempted to execute unexpectedly
ERROR: Task xilinx-r5-bsp.do_patch attempted to execute unexpectedly
ERROR: Task xilinx-r5-bsp.do_create_yaml attempted to execute unexpectedly
ERROR: Task xilinx-r5-bsp.do_configure attempted to execute unexpectedly
ERROR: Task xilinx-r5-bsp.do_compile attempted to execute unexpectedly
ERROR: Task layer-r5-firmware.do_fetch attempted to execute unexpectedly
ERROR: Task xilinx-r5-bsp.do_deploy attempted to execute unexpectedly and s=
hould have been setscened
ERROR: Task layer-r5-firmware.do_unpack attempted to execute unexpectedly
ERROR: Task layer-r5-firmware.do_patch attempted to execute unexpectedly
ERROR: Task xilinx-r5-bsp.do_populate_sysroot attempted to execute unexpect=
edly and should have been setscened
ERROR: Task layer-r5-firmware.do_prepare_recipe_sysroot attempted to execut=
e unexpectedly
ERROR: Task layer-r5-firmware.do_configure attempted to execute unexpectedl=
y
ERROR: Task layer-r5-firmware.do_compile attempted to execute unexpectedly
ERROR: Task layer-r5-firmware.do_deploy attempted to execute unexpectedly a=
nd should have been setscened
ERROR: Task xilinx-r5-bsp.do_package attempted to execute unexpectedly and =
should have been setscened
ERROR: Task xilinx-bootbin.do_prepare_recipe_sysroot attempted to execute u=
nexpectedly
ERROR: Task xilinx-bootbin.do_configure attempted to execute unexpectedly
ERROR: Task xilinx-bootbin.do_compile attempted to execute unexpectedly
ERROR: Task xilinx-bootbin.do_install attempted to execute unexpectedly
ERROR: Task xilinx-bootbin.do_package attempted to execute unexpectedly and=
 should have been setscened
ERROR: Task xilinx-r5-bsp.do_packagedata attempted to execute unexpectedly =
and should have been setscened
ERROR: Task xilinx-bootbin.do_packagedata attempted to execute unexpectedly=
 and should have been setscened
ERROR: Task xilinx-r5-bsp.do_package_write_rpm attempted to execute unexpec=
tedly and should have been setscened
ERROR: Task xilinx-bootbin.do_populate_sysroot attempted to execute unexpec=
tedly and should have been setscened
ERROR: Task xilinx-bootbin.do_deploy attempted to execute unexpectedly and =
should have been setscened
ERROR: Task xilinx-bootbin.do_package_qa attempted to execute unexpectedly =
and should have been setscened
ERROR: Task xilinx-r5-bsp.do_package_qa attempted to execute unexpectedly a=
nd should have been setscened
ERROR: Task xilinx-bootbin.do_package_write_rpm attempted to execute unexpe=
ctedly and should have been setscened
ERROR: Task layer-r5-firmware.do_populate_sysroot attempted to execute unex=
pectedly and should have been setscened
NOTE: Tasks Summary: Attempted 6604 tasks of which 6604 didn't need to be r=
erun and all succeeded.

Summary: There was 1 WARNING message shown.
Summary: There were 31 ERROR messages shown, returning a non-zero exit code=
.
----------

NOTE: "attempted to execute unexpectedly and should have been setscened" er=
rors indicate this may be caused by missing sstate artifacts that were like=
ly produced in earlier builds, but have been subsequently deleted for some =
reason.

ERROR: core-image-special-custom3-1.0-r0 do_populate_sdk_ext: Function fail=
ed: copy_buildsystem
ERROR: Logfile of failure stored in: /home/iepl007/yocto_build/build_dir/tm=
p/work/custom3_zynqmp-custom3-linux/core-image-special-custom3/1.0-r0/temp/=
log.do_populate_sdk_ext.31041
ERROR: Task (/home/iepl007/yocto_build/poky/../meta-custom3-dev/meta-layer-=
custom3/recipes-core/images/core-image-special-custom3.bb:do_populate_sdk_e=
xt) failed with exit code '1'

Please suggest me how to fix this issue. Also if I want to make a sdk from =
the beginning i.e cleaning previous build and creating new one. What steps =
do I need to follow.
I am seeing the sstate-cache entries for above mentioned packages. How come=
 it is not picking them.

Thanks and regards
Kamal Pandey



--_000_1aeed09a83af40cb8d07801567d3bc14ifmcom_
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
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
<p class=3D"MsoNormal">I tried building extended SDK using the command $bit=
bake&nbsp; &lt;custom-core-image&gt;&nbsp; -c populate_sdk_ext,&nbsp; but g=
ot errors which are as follows:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-r5-bsp.do_fetch attempted to exec=
ute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-r5-bsp.do_prepare_recipe_sysroot =
attempted to execute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-r5-bsp.do_unpack attempted to exe=
cute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-r5-bsp.do_patch attempted to exec=
ute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-r5-bsp.do_create_yaml attempted t=
o execute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-r5-bsp.do_configure attempted to =
execute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-r5-bsp.do_compile attempted to ex=
ecute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task layer-r5-firmware.do_fetch attempted to =
execute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-r5-bsp.do_deploy attempted to exe=
cute unexpectedly and should have been setscened<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task layer-r5-firmware.do_unpack attempted to=
 execute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task layer-r5-firmware.do_patch attempted to =
execute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-r5-bsp.do_populate_sysroot attemp=
ted to execute unexpectedly and should have been setscened<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task layer-r5-firmware.do_prepare_recipe_sysr=
oot attempted to execute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task layer-r5-firmware.do_configure attempted=
 to execute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task layer-r5-firmware.do_compile attempted t=
o execute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task layer-r5-firmware.do_deploy attempted to=
 execute unexpectedly and should have been setscened<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-r5-bsp.do_package attempted to ex=
ecute unexpectedly and should have been setscened<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-bootbin.do_prepare_recipe_sysroot=
 attempted to execute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-bootbin.do_configure attempted to=
 execute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-bootbin.do_compile attempted to e=
xecute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-bootbin.do_install attempted to e=
xecute unexpectedly<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-bootbin.do_package attempted to e=
xecute unexpectedly and should have been setscened<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-r5-bsp.do_packagedata attempted t=
o execute unexpectedly and should have been setscened<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-bootbin.do_packagedata attempted =
to execute unexpectedly and should have been setscened<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-r5-bsp.do_package_write_rpm attem=
pted to execute unexpectedly and should have been setscened<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-bootbin.do_populate_sysroot attem=
pted to execute unexpectedly and should have been setscened<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-bootbin.do_deploy attempted to ex=
ecute unexpectedly and should have been setscened<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-bootbin.do_package_qa attempted t=
o execute unexpectedly and should have been setscened<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-r5-bsp.do_package_qa attempted to=
 execute unexpectedly and should have been setscened<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task xilinx-bootbin.do_package_write_rpm atte=
mpted to execute unexpectedly and should have been setscened<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task layer-r5-firmware.do_populate_sysroot at=
tempted to execute unexpectedly and should have been setscened<o:p></o:p></=
p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 6604 tasks of which 6=
604 didn't need to be rerun and all succeeded.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: There was 1 WARNING message shown.<o:p></o:=
p></p>
<p class=3D"MsoNormal">Summary: There were 31 ERROR messages shown, returni=
ng a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal">----------<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">NOTE: &quot;attempted to execute unexpectedly and sh=
ould have been setscened&quot; errors indicate this may be caused by missin=
g sstate artifacts that were likely produced in earlier builds, but have be=
en subsequently deleted for some reason.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: core-image-special-custom3-1.0-r0 do_populate=
_sdk_ext: Function failed: copy_buildsystem<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /home/iepl007/y=
octo_build/build_dir/tmp/work/custom3_zynqmp-custom3-linux/core-image-speci=
al-custom3/1.0-r0/temp/log.do_populate_sdk_ext.31041<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task (/home/iepl007/yocto_build/poky/../meta-=
custom3-dev/meta-layer-custom3/recipes-core/images/core-image-special-custo=
m3.bb:do_populate_sdk_ext) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please suggest me how to fix this issue. Also if I w=
ant to make a sdk from the beginning i.e cleaning previous build and creati=
ng new one. What steps do I need to follow.<o:p></o:p></p>
<p class=3D"MsoNormal">I am seeing the sstate-cache entries for above menti=
oned packages. How come it is not picking them.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks and regards<o:p></o:p></p>
<p class=3D"MsoNormal">Kamal Pandey<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_1aeed09a83af40cb8d07801567d3bc14ifmcom_--
