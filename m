Return-Path: <vincent.daanen@orthotaxy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BBBCE00E7B; Tue, 13 Mar 2018 03:57:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.114 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0114.outbound.protection.outlook.com [104.47.2.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 791BAE0097D
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2018 03:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orthotaxy.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=BpvhGFuiSsTRxzbk3IO89Yn0MTY+0QzCuN+6Am6bXLM=;
	b=E9moqz+T/sWjVZrGd1JGUySZ8FXEuS2SFBdjwarUJRN3F43jcEKJLKxCoQWYYfSvt1WhEYNv6fXNHCKYyAngU8SjmdQUS1to4OhC/b+awmplR6pA5KCbPvcUB3yibYdzOCz8MozMXmwI/qD0X1Lv9vhmGczpJ6UvMd+VK8WMvL8=
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM (10.175.180.135) by
	VI1P192MB0239.EURP192.PROD.OUTLOOK.COM (10.175.181.14) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.567.14; Tue, 13 Mar 2018 08:25:25 +0000
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::b85b:37d9:45a2:c505]) by VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::b85b:37d9:45a2:c505%18]) with mapi id 15.20.0567.018;
	Tue, 13 Mar 2018 08:25:25 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Integrating Ixxat SocketCAN Drivers in image
Thread-Index: AdO6o+WXuY7Q3R80RE2YA/w2Z8Lm+w==
Date: Tue, 13 Mar 2018 08:25:25 +0000
Message-ID: <VI1P192MB014332173605EA7FD51C62B08DD20@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=vincent.daanen@orthotaxy.com; 
x-originating-ip: [152.77.102.34]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1P192MB0239;
	7:HU3ci/33GLoABU0voT8uGV/yKaZrCEhEFRyGh1Elj7K7W8QsQ7P9xPITD7KnHoq6PmN5Z5gGdOCygWkSyIvYOtPfSG81EIYV5p3udgl0jP7E23OKvpQN1FYhNwEknSdgyw3Wh4zJOkgv6HH8+Rq7kxYLpFt9WEbvQzal4O6Cwmc71QP9atDR8W3NCVnqN5wSSgkkHuoM9eBPfa/V2O9DRve3azuzbr1c4dM66BKagdL7TMlJkxGZtcR45KCG3FaN
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 1c66ef35-f0db-495a-4e36-08d588bbf8a7
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(3008032)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0239; 
x-ms-traffictypediagnostic: VI1P192MB0239:
x-microsoft-antispam-prvs: <VI1P192MB0239D04C0C5B09ADAFD124C78DD20@VI1P192MB0239.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(28532068793085)(186554780618531)(21748063052155); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(10201501046)(3231221)(944501244)(52105095)(6041310)(20161123564045)(20161123562045)(20161123560045)(2016111802025)(20161123558120)(6043046)(6072148)(201708071742011);
	SRVR:VI1P192MB0239; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0239; 
x-forefront-prvs: 0610D16BBE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(39830400003)(346002)(366004)(39380400002)(376002)(199004)(189003)(8558605004)(9686003)(478600001)(14454004)(86362001)(3280700002)(316002)(99286004)(966005)(790700001)(186003)(6116002)(2351001)(7696005)(3660700001)(106356001)(5660300001)(3846002)(74316002)(6436002)(26005)(7736002)(2501003)(68736007)(5630700001)(97736004)(66066001)(2900100001)(6506007)(2906002)(105586002)(54896002)(81156014)(236005)(6306002)(55016002)(25786009)(6916009)(1730700003)(81166006)(9326002)(8676002)(59450400001)(606006)(102836004)(8936002)(33656002)(5250100002)(53936002)(5640700003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P192MB0239;
	H:VI1P192MB0143.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: orthotaxy.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: ByJ/+qqiDcMLMWqZQcWS8A+nZ4l2fRzMS1AGLoG9FJESDwDEKNUPQ36hMBErb/TBxy7uplKIowYbsrNOrSweOh+djcp1UUc5WyMdddxf2XysIOEo73rU/kFHVFvVug/ubaRjWpGwaPi6AfkA9Aa6ygYiBhIfNjvskf/dvM3gmoAz69IyWCAG2c7KVjzweGGvro7fa7uhlmULQK+UE2pM5QJ35ApeZfwaS74eIYoHfcR9sCPNXEyMIQTnVEojIwqSHt4pDo6QCkPBO7ozHnvwUZMBuVF/Uh9q0B8gPNRJZRIxG2VGY9Sd4EW7Tlm5icFZOfAekKCLgz6vPn/CSkBfSg==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: orthotaxy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c66ef35-f0db-495a-4e36-08d588bbf8a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2018 08:25:25.3362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c838133-9c42-4d53-8cbc-7a36ef5279a7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0239
Subject: Integrating Ixxat SocketCAN Drivers in image
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
X-List-Received-Date: Tue, 13 Mar 2018 10:57:33 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_VI1P192MB014332173605EA7FD51C62B08DD20VI1P192MB0143EURP_"

--_000_VI1P192MB014332173605EA7FD51C62B08DD20VI1P192MB0143EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have to integrate Ixxat SocketCAN driver in the image which will run our =
system.

The organisation of the files is the following
                Yocto/MyCompany/meta-myCompany/recipes-candriver/ixxat-sock=
etcan
This directory contains the file ixxat-socketcan.bb.
The content of this file is the following
SUMMARY =3D "..."
LICENSE =3D "CLOSED"
SRC_URI=3D https://www.ixxat.com/docs/librariesprovider8/default-document-l=
ibrary/downloads/other-drivers/socketcan.zip
SRC_URI[sha256sum] =3D <... >  (the sha256 sum is correct)
S=3D"${WORKDIR}"

The problems I run into are the following:
Although the recipe is found (it appears in the output of bitbake-layer sho=
w-recipe), and that the file is processed by bitbake (if I intentionally ad=
d a typo, the build breaks), it seems to not be processed (the zip file is =
not downloaded) when I invoke bitbake core-image-minimal..

When I invoke bitbake -b ixxat-socketcan, it fails with the following outpu=
t (sorry for the formatting of the text)

ERROR: ixxat-socketcan-1.0-r0 do_unpack: Unpack failure for URL: 'https://w=
ww.ixxat.com/docs/librariesprovider8/default-document-library/downloads/oth=
er-drivers/socketcan.zip'. Unpack command PATH=3D"/home/rd-otx/yocto/RCU_Yo=
cto/build-firstBoot/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/rd-ot=
x/yocto/sources/poky/scripts:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/t=
mp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/recipe-sysroot-native/=
usr/bin/x86_64-poky-linux:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/=
work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/recipe-sysroot/usr/bin/cr=
ossscripts:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/work/qemux86_64=
-poky-linux/ixxat-socketcan/1.0-r0/recipe-sysroot-native/usr/sbin:/home/rd-=
otx/yocto/RCU_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-so=
cketcan/1.0-r0/recipe-sysroot-native/usr/bin:/home/rd-otx/yocto/RCU_Yocto/b=
uild-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/recipe=
-sysroot-native/sbin:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/work/=
qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/recipe-sysroot-native/bin:/hom=
e/rd-otx/yocto/sources/poky-rocko-18.0.1/bitbake/bin:/home/rd-otx/yocto/RCU=
_Yocto/build-firstBoot/tmp/hosttools" unzip -q -o '/home/rd-otx/yocto/RCU_Y=
octo/build-firstBoot/downloads/socketcan.zip' failed with return value 127
ERROR: ixxat-socketcan-1.0-r0 do_unpack: Function failed: base_do_unpack
ERROR: Logfile of failure stored in: /home/rd-otx/yocto/RCU_Yocto/build-fir=
stBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/temp/log.do_un=
pack.16493
ERROR: ixxat-socketcan-1.0-r0 do_make_scripts: Function failed: do_make_scr=
ipts (log file is located at /home/rd-otx/yocto/RCU_Yocto/build-firstBoot/t=
mp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/temp/log.do_make_scrip=
ts.16494)
ERROR: Task (/home/rd-otx/yocto/RCU_Yocto/meta-OtxLayer/recipes-candriver/i=
xxat-socketcan/ixxat-socketcan.bb:do_unpack) failed with exit code '1'
ERROR: Logfile of failure stored in: /home/rd-otx/yocto/RCU_Yocto/build-fir=
stBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/temp/log.do_ma=
ke_scripts.16494

                I found on the net that the first error is sometimes due to=
 the fact that the archive file is corrupted but this is not the case. I co=
uld unpack the file manually using unzip .

Can someone point me to information or help me to figure out what's wrong ?=
?

Thanks

Vincent


--------------------------------------------------------------------
Vincent Daanen, PhD - System Integration Director

>>>>  New Phone Number +33 (0) 4 76 54 95 22

Orthotaxy
5 avenue du Grand Sablon
38700 La Tronche


--_000_VI1P192MB014332173605EA7FD51C62B08DD20VI1P192MB0143EURP_
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
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
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
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">I have to integrate Ixxat SocketCAN driver in the image wh=
ich will run our system.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">The organisation of the files is the following<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Yocto/MyCompany/meta-myCompany/recipes-can=
driver/ixxat-socketcan<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">This directory contains the file ixxat-socketcan.bb.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">The content of this file is the following<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">SUMMARY =3D &#8220;&#8230;&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">LICENSE =3D &#8220;CLOSED&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">SRC_URI=3D
<a href=3D"https://www.ixxat.com/docs/librariesprovider8/default-document-l=
ibrary/downloads/other-drivers/socketcan.zip">
https://www.ixxat.com/docs/librariesprovider8/default-document-library/down=
loads/other-drivers/socketcan.zip</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">SRC_URI[sha256sum] =3D &laquo;&#8230;&nbsp;&raquo;&nbsp; (=
the sha256 sum is correct)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">S=3D&#8221;${WORKDIR}&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">The problems I run into are the following:<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">Although the recipe is found (it appears in the output of =
bitbake-layer show-recipe), and that the file is processed by bitbake (if I=
 intentionally add a typo, the build breaks),
 it seems to not be processed (the zip file is not downloaded) when I invok=
e bitbake core-image-minimal..
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">When I invoke bitbake -b ixxat-socketcan, it fails with th=
e following output (sorry for the formatting of the text)
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">ERROR: ixxat-socketcan-1.0-r0 do_unpack: Unpack failure fo=
r URL: 'https://www.ixxat.com/docs/librariesprovider8/default-document-libr=
ary/downloads/other-drivers/socketcan.zip'. Unpack
 command PATH=3D&quot;/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/sysr=
oots-uninative/x86_64-linux/usr/bin:/home/rd-otx/yocto/sources/poky/scripts=
:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-linu=
x/ixxat-socketcan/1.0-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/h=
ome/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-linux/i=
xxat-socketcan/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/home/rd-otx/yoct=
o/RCU_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/=
1.0-r0/recipe-sysroot-native/usr/sbin:/home/rd-otx/yocto/RCU_Yocto/build-fi=
rstBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/recipe-sysroo=
t-native/usr/bin:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/work/qemu=
x86_64-poky-linux/ixxat-socketcan/1.0-r0/recipe-sysroot-native/sbin:/home/r=
d-otx/yocto/RCU_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-=
socketcan/1.0-r0/recipe-sysroot-native/bin:/home/rd-otx/yocto/sources/poky-=
rocko-18.0.1/bitbake/bin:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/h=
osttools&quot;
 unzip -q -o '/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/downloads/socket=
can.zip' failed with return value 127<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">ERROR: ixxat-socketcan-1.0-r0 do_unpack: Function failed: =
base_do_unpack<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">ERROR: Logfile of failure stored in: /home/rd-otx/yocto/RC=
U_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-=
r0/temp/log.do_unpack.16493<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">ERROR: ixxat-socketcan-1.0-r0 do_make_scripts: Function fa=
iled: do_make_scripts (log file is located at /home/rd-otx/yocto/RCU_Yocto/=
build-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/temp/=
log.do_make_scripts.16494)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">ERROR: Task (/home/rd-otx/yocto/RCU_Yocto/meta-OtxLayer/re=
cipes-candriver/ixxat-socketcan/ixxat-socketcan.bb:do_unpack) failed with e=
xit code '1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">ERROR: Logfile of failure stored in: /home/rd-otx/yocto/RC=
U_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-=
r0/temp/log.do_make_scripts.16494<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I found on the net that the first error is=
 sometimes due to the fact that the archive file is corrupted but this is n=
ot the case. I could unpack the file manually
 using unzip .<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">Can someone point me to information or help me to figure o=
ut what&#8217;s wrong ??<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black">Vincent<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#222222;background:white;mso-fareast-language:EN-GB">------------=
--------------------------------------------------------<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:black;mso-fareast-language:EN-GB">Vincent Daanen, PhD &#8211; Sys=
tem Integration Director<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#222222;mso-fareast-language:EN-GB"><br>
</span><b><span lang=3D"FR" style=3D"font-size:12.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:red;mso-fareast-language:EN-GB">&gt;&gt;&gt;&gt;&=
nbsp; New Phone Number &#43;33 (0) 4 76 54 95 22<br>
<br>
</span></b><span lang=3D"FR" style=3D"font-family:&quot;Arial&quot;,sans-se=
rif;color:#222222;mso-fareast-language:EN-GB"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR" style=3D"font-family:&quot;Arial&q=
uot;,sans-serif;color:#222222;mso-fareast-language:EN-GB">Orthotaxy<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR" style=3D"font-family:&quot;Arial&q=
uot;,sans-serif;color:#222222;mso-fareast-language:EN-GB">5 avenue du Grand=
 Sablon<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR" style=3D"font-family:&quot;Arial&q=
uot;,sans-serif;color:#222222;mso-fareast-language:EN-GB">38700 La Tronche<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_VI1P192MB014332173605EA7FD51C62B08DD20VI1P192MB0143EURP_--
