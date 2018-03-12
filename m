Return-Path: <vincent.daanen@orthotaxy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 032B7E00E0B; Mon, 12 Mar 2018 10:51:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.107 listed in list.dnswl.org]
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
	(mail-db5eur01on0107.outbound.protection.outlook.com [104.47.2.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B565E00A54
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 10:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orthotaxy.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=m4lpMOd9GCUcIW0K2XX3x3rJhuF4k56mYy+4glBMI2Q=;
	b=kQhFNPeYT0ZyGQ0WbPVQcR1MvWTCK5J6N05JW9bCqde79QxP9zc9T1M92qzJ/kueytbfvkBXwu/np2wr3di3L4zKVzFCTJThcr4GiqNFxErVddYHSP0D5wQopPsK0wTRxGksIvaVmWLq9KU4PD6ya0EpDCWCCHq/Oq3nInl+w04=
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM (10.175.180.135) by
	VI1P192MB0221.EURP192.PROD.OUTLOOK.COM (10.175.181.8) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.548.13; Mon, 12 Mar 2018 17:17:32 +0000
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::b85b:37d9:45a2:c505]) by VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::b85b:37d9:45a2:c505%18]) with mapi id 15.20.0567.018;
	Mon, 12 Mar 2018 17:17:32 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Integrating Ixxat SocketCAN Drivers in image
Thread-Index: AdO6CNVi4/py2ljCQuuK/XZexfOcbAAHSxla
Date: Mon, 12 Mar 2018 17:17:32 +0000
Message-ID: <VI1P192MB0143F0942F03C319878335FB8DD30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
References: <VI1P192MB014333E08E0D81CEC356A4958DD30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
In-Reply-To: <VI1P192MB014333E08E0D81CEC356A4958DD30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=vincent.daanen@orthotaxy.com; 
x-originating-ip: [13.69.77.72]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1P192MB0221;
	7:8pSvX4XpDydUk8tguAfn2Vxl4iBOjg6gTFettpscvjv9DXcHgw7zckfu3d2lt9txX9yVrh/k3QIfKSF88hAKCXMZT9/64aFyPK5OQS6lvyC+clCUqWGEP5DcoBZe6mg4uQVPFp61NLY11TpUmdeTNW+u+pFVCuXPwiJIGgcuSi/2pa43u/VU//1R4aC/EyvLQZlh9KqcBTuGfx9RwbbVBvHvwnHJ7pG9/NC6VQUiE97vVTg04/6d09mFKDzkI70p
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: b87477a8-efe0-4ae1-7d2f-08d5883d246b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(3008032)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0221; 
x-ms-traffictypediagnostic: VI1P192MB0221:
x-microsoft-antispam-prvs: <VI1P192MB02216D86C6139C4C1528529B8DD30@VI1P192MB0221.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(186554780618531);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(10201501046)(3231220)(944501244)(52105095)(6041310)(20161123564045)(20161123562045)(20161123560045)(20161123558120)(2016111802025)(6043046)(6072148)(201708071742011);
	SRVR:VI1P192MB0221; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0221; 
x-forefront-prvs: 06098A2863
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(39830400003)(39380400002)(346002)(366004)(376002)(189003)(199004)(105586002)(25786009)(8676002)(2900100001)(1730700003)(68736007)(8558605004)(106356001)(316002)(2351001)(86362001)(478600001)(55016002)(81166006)(6436002)(81156014)(99286004)(966005)(53936002)(76176011)(33656002)(54896002)(6306002)(2473003)(8936002)(7696005)(236005)(5640700003)(9686003)(14454004)(2950100002)(6916009)(229853002)(5250100002)(2501003)(6506007)(102836004)(2906002)(5660300001)(74316002)(6116002)(3846002)(606006)(3660700001)(97736004)(7736002)(3280700002)(186003)(66066001)(26005)(2940100002)(59450400001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P192MB0221;
	H:VI1P192MB0143.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: orthotaxy.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: Hn97hkvkTfLK94ktOXR90Cu9ool61n0bfiP1CuIIMHmI+40mauxuBkBS/CaJp2pfyQM90BsYinio+W/RkqHlY186peWuwbXqC/sHQEq1LeK4bnuXoCraKlUikZBm3zqpfPG3RLAovEE2Wo7V+dGcz46XTGQaIvC+s867GLhg/TC2rss94GCqiS6+GvTRk36JPja2OifNX7QUdbRS70UqwAoQcmVLag4w+lox8itXW64RanfAs1dsIB9YG2AMu7UmyFuNAMpELQFstcTfIi83V31St4qY/aepdcIdkBUX+mLo59HZ0BEX1FhdJCkRXwvnY5B9hbKdTcHg1W2u/wmNkA==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: orthotaxy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b87477a8-efe0-4ae1-7d2f-08d5883d246b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2018 17:17:32.7418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c838133-9c42-4d53-8cbc-7a36ef5279a7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0221
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
X-List-Received-Date: Mon, 12 Mar 2018 17:51:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1P192MB0143F0942F03C319878335FB8DD30VI1P192MB0143EURP_"

--_000_VI1P192MB0143F0942F03C319878335FB8DD30VI1P192MB0143EURP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

I have to integrate Ixxat SocketCAN driver in the image which will run our =
system.

The organisation of the files is the following
                Yocto/MyCompany/meta-myCompany/recipes-candriver/ixxat-sock=
etcan
This directory contains the file ixxat-socketcan.bb.
The content of this file is the following
SUMMARY =3D =93=85=94
LICENSE =3D =93CLOSED=94
SRC_URI=3D https://www.ixxat.com/docs/librariesprovider8/default-document-l=
ibrary/downloads/other-drivers/socketcan.zip
SRC_URI[sha256sum] =3D =AB=85 =BB  (the sha256 sum is correct)
S=3D=94${WORKDIR}=94

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

Can someone point me to information or help me to figure out what=92s wrong=
 ??

Thanks

Vincent




--_000_VI1P192MB0143F0942F03C319878335FB8DD30VI1P192MB0143EURP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Hi,<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
I have to integrate Ixxat SocketCAN driver in the image which will run our =
system.<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
The organisation of the files is the following<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; Yocto/MyCompany/meta-myCompany/recipes-candriver/ixxat-sock=
etcan<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
This directory contains the file ixxat-socketcan.bb.<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
The content of this file is the following<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
SUMMARY =3D =93=85=94<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
LICENSE =3D =93CLOSED=94<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
SRC_URI=3D <a href=3D"https://www.ixxat.com/docs/librariesprovider8/default=
-document-library/downloads/other-drivers/socketcan.zip">
https://www.ixxat.com/docs/librariesprovider8/default-document-library/down=
loads/other-drivers/socketcan.zip</a><br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
SRC_URI[sha256sum] =3D =AB=85&nbsp;=BB&nbsp; (the sha256 sum is correct)<br=
>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
S=3D=94${WORKDIR}=94<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
The problems I run into are the following:<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Although the recipe is found (it appears in the output of bitbake-layer sho=
w-recipe), and that the file is processed by bitbake (if I intentionally ad=
d a typo, the build breaks), it seems to not be processed (the zip file is =
not downloaded) when I invoke bitbake
 core-image-minimal.. <br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
When I invoke bitbake -b ixxat-socketcan, it fails with the following outpu=
t (sorry for the formatting of the text)
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
ERROR: ixxat-socketcan-1.0-r0 do_unpack: Unpack failure for URL: 'https://w=
ww.ixxat.com/docs/librariesprovider8/default-document-library/downloads/oth=
er-drivers/socketcan.zip'. Unpack command PATH=3D&quot;/home/rd-otx/yocto/R=
CU_Yocto/build-firstBoot/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/=
rd-otx/yocto/sources/poky/scripts:/home/rd-otx/yocto/RCU_Yocto/build-firstB=
oot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/recipe-sysroot-na=
tive/usr/bin/x86_64-poky-linux:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot=
/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/recipe-sysroot/usr/b=
in/crossscripts:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/work/qemux=
86_64-poky-linux/ixxat-socketcan/1.0-r0/recipe-sysroot-native/usr/sbin:/hom=
e/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/work/qemux86_64-poky-linux/ixx=
at-socketcan/1.0-r0/recipe-sysroot-native/usr/bin:/home/rd-otx/yocto/RCU_Yo=
cto/build-firstBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/r=
ecipe-sysroot-native/sbin:/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/tmp/=
work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/recipe-sysroot-native/bin=
:/home/rd-otx/yocto/sources/poky-rocko-18.0.1/bitbake/bin:/home/rd-otx/yoct=
o/RCU_Yocto/build-firstBoot/tmp/hosttools&quot;
 unzip -q -o '/home/rd-otx/yocto/RCU_Yocto/build-firstBoot/downloads/socket=
can.zip' failed with return value 127<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
ERROR: ixxat-socketcan-1.0-r0 do_unpack: Function failed: base_do_unpack<br=
>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
ERROR: Logfile of failure stored in: /home/rd-otx/yocto/RCU_Yocto/build-fir=
stBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/temp/log.do_un=
pack.16493<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
ERROR: ixxat-socketcan-1.0-r0 do_make_scripts: Function failed: do_make_scr=
ipts (log file is located at /home/rd-otx/yocto/RCU_Yocto/build-firstBoot/t=
mp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/temp/log.do_make_scrip=
ts.16494)<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
ERROR: Task (/home/rd-otx/yocto/RCU_Yocto/meta-OtxLayer/recipes-candriver/i=
xxat-socketcan/ixxat-socketcan.bb:do_unpack) failed with exit code '1'<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
ERROR: Logfile of failure stored in: /home/rd-otx/yocto/RCU_Yocto/build-fir=
stBoot/tmp/work/qemux86_64-poky-linux/ixxat-socketcan/1.0-r0/temp/log.do_ma=
ke_scripts.16494<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; I found on the net that the first error is sometimes due to=
 the fact that the archive file is corrupted but this is not the case. I co=
uld unpack the file manually using unzip .<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Can someone point me to information or help me to figure out what=92s wrong=
 ??<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Thanks<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Vincent<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
&nbsp;<br>
<br>
<br>
</div>
</body>
</html>

--_000_VI1P192MB0143F0942F03C319878335FB8DD30VI1P192MB0143EURP_--
