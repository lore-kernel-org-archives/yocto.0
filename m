Return-Path: <Vinothkumar.Eswaran@de.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D3E4E00956; Mon, 18 Sep 2017 08:52:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [139.15.243.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from imta22.fe.bosch.de (imta22.fe.bosch.de [139.15.243.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBF17E00851
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 08:52:22 -0700 (PDT)
Received: from smtp6-v.fe.bosch.de (imta23.fe.bosch.de [139.15.243.227])
	by imta22.fe.bosch.de (Postfix) with ESMTP id 7F14484057F
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 17:52:01 +0200 (CEST)
Received: from vsmta12.fe.internet.bosch.com (unknown [10.4.98.52])
	by imta23.fe.bosch.de (Postfix) with ESMTP id DAE231580219
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 17:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=de.bosch.com;
	s=2015-01-21; t=1505749893;
	bh=ZithvqcT4VBgAmsAIKl68JW0tWrLBxRfzZw0UhpllJ0=; l=10;
	h=From:From:Reply-To:Sender;
	b=q9eaTfS+Xed7+kWG4B7zdy98v9XtFEqmtVRkpGu9RVqUZIyAo5EPmfG2flTXdbcVe
	dT9eXM3w0PsqKBRC4F4AJHC5KXCrCdZJAGeo37Zva0QSZG9RmOWYB/jTuyflsUvDKE
	tsGlC3S3DlMKhBZzGlLgGNE2FMQ9UypixauWlwls=
Received: from FE-MBX1036.de.bosch.com (vsgw22.fe.internet.bosch.com
	[10.4.98.11])
	by vsmta12.fe.internet.bosch.com (Postfix) with ESMTP id 64D651B804B7
	for <yocto@yoctoproject.org>; Mon, 18 Sep 2017 17:52:19 +0200 (CEST)
Received: from FE-MBX2015.de.bosch.com (10.3.231.21) by
	FE-MBX1036.de.bosch.com (10.3.230.112) with Microsoft SMTP Server (TLS)
	id 15.0.1236.3; Mon, 18 Sep 2017 17:52:19 +0200
Received: from FE-MBX2014.de.bosch.com (10.3.231.20) by
	FE-MBX2015.de.bosch.com (10.3.231.21) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1034.26; Mon, 18 Sep 2017 17:52:19 +0200
Received: from FE-MBX2014.de.bosch.com ([fe80::d909:5d48:6bde:c74a]) by
	FE-MBX2014.de.bosch.com ([fe80::d909:5d48:6bde:c74a%7]) with mapi id
	15.01.1034.026; Mon, 18 Sep 2017 17:52:19 +0200
From: "Eswaran Vinothkumar (BEG/PJ-IOT-EL)" <Vinothkumar.Eswaran@de.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Error messages building WIC image 
Thread-Index: AdMwldQJbQB+ZZaZQg6e3cQaplTjeA==
Date: Mon, 18 Sep 2017 15:52:18 +0000
Message-ID: <9082b1858dda4304999ba4e2ceacad5e@de.bosch.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.42.242.21]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.1.0.1062-23336.005
X-TMASE-MatchedRID: 184eL58vR16WHmpvkeKJB2zBijri5+RVJNroBaGZ+LWYoidDrWJoA3bk
	pdDhAgYmEjKassOBOWaoSqyT+rtq4+VrSePh61Q584dsinZ5e1iUi9wB9gmcSt0+e6PndIlfFIC
	vJhXEzsePfYVn+I6za9xNVussY5rwIDV2A6Nq0YZ8qY334HYDD1s6zQ0JZ6KT1NXN+/AQKHmor+
	J0IWcGXDba6gSbbjl+QVYK+bzrDzjSxemNC+0f0BuurbgYp+HQ6r+5bPPauHf5N0o2THGRZKgFX
	2xz5NjH4j4lr4Wn4RisEFKef8ZUxqf50/sZyNUdupDIC9422DozH3zWWApNw8UHrS+uh4tthQH+
	YspUfFp2+AZuxakJy1x59CtgmyHsWcbhowRxPdO2FK5J1KhC+9VYleRFiu07myiLZetSf8mVHVx
	P1hp9BbiYaGWkqQOejoczmuoPCq3sJrLiKn793Tyh4sjfBRXEJnL5thJXFKbjhEOqKLaiu3HVQP
	MVI3IT
Subject: Error messages building WIC image
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
X-List-Received-Date: Mon, 18 Sep 2017 15:52:25 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_9082b1858dda4304999ba4e2ceacad5edeboschcom_"

--_000_9082b1858dda4304999ba4e2ceacad5edeboschcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

When I tried building a WIC image , I am seeing the following error message=
s.

WARNING: /home/evk1206/Projects/prj_compulab/sources/meta-alen/recipes-kern=
el/linux/linux-iot_4.9.39.bb.do_compile is tainted from a forced run       =
                                       | ETA:  0:00:05
Initialising tasks: 100% |#################################################=
###########################################################################=
#######################################| Time: 0:00:09
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen=
/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value cha=
nged from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d=
17e. The metadata is not deterministic and this needs to be fixed.
WARNING: iot-eval-image-1.0-r0 do_rootfs: The license listed Firmware-ti-co=
nnectivity was not in the licenses collected for recipe wl18xx-bluetooth
ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen=
/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value cha=
nged from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d=
17e. The metadata is not deterministic and this needs to be fixed.
ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen=
/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value cha=
nged from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d=
17e. The metadata is not deterministic and this needs to be fixed.
ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen=
/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value cha=
nged from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d=
17e. The metadata is not deterministic and this needs to be fixed.
ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen=
/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value cha=
nged from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d=
17e. The metadata is not deterministic and this needs to be fixed.
ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen=
/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value cha=
nged from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d=
17e. The metadata is not deterministic and this needs to be fixed.
ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen=
/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value cha=
nged from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d=
17e. The metadata is not deterministic and this needs to be fixed.
ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen=
/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value cha=
nged from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d=
17e. The metadata is not deterministic and this needs to be fixed.
ERROR: iot-eval-image-1.0-r0 do_image_wic: Taskhash mismatch d04ed8e44344c0=
9b715faf7f046a2943 versus 8b6b18a1996ba1c6af0fc8b285e5e4b7 for /home/evk120=
6/Projects/prj_compulab/sources/meta-alen/recipes-core/images/iot-eval-imag=
e.bb.do_image_wic
ERROR: Taskhash mismatch d04ed8e44344c09b715faf7f046a2943 versus 8b6b18a199=
6ba1c6af0fc8b285e5e4b7 for /home/evk1206/Projects/prj_compulab/sources/meta=
-alen/recipes-core/images/iot-eval-image.bb.do_image_wic
ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen=
/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value cha=
nged from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d=
17e. The metadata is not deterministic and this needs to be fixed.
ERROR: When reparsing /home/evk1206/Projects/prj_compulab/sources/meta-alen=
/recipes-core/images/iot-eval-image.bb.do_image_wic, the basehash value cha=
nged from f06fa95389abbf5cea813cfcd6ca3806 to b2ae7ed9b5aa329328f6fb57d934d=
17e. The metadata is not deterministic and this needs to be fixed.
NOTE: Tasks Summary: Attempted 3759 tasks of which 3718 didn't need to be r=
erun and all succeeded.

I could also see the WIC image being successfully created. May I know how t=
o solve this issue, as printing these messages during build results in wron=
g interpretation.

Mit freundlichen Gr=FC=DFen / Best regards

Vinothkumar Eswaran
BEG-PT/PJ-IOT1




--_000_9082b1858dda4304999ba4e2ceacad5edeboschcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">When I tried building a WIC image , I am seeing the f=
ollowing error messages.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">WARNING: /home/evk1206/Projects/prj_compulab/sources/=
meta-alen/recipes-kernel/linux/linux-iot_4.9.39.bb.do_compile is tainted fr=
om a forced run&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 | ETA:&nbsp; 0:00:05<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Initialising tasks: 100% |###########################=
###########################################################################=
#############################################################|
 Time: 0:00:09<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">NOTE: Executing SetScene Tasks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">NOTE: Executing RunQueue Tasks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">ERROR: When reparsing /home/evk1206/Projects/prj_comp=
ulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, =
the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806
 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and=
 this needs to be fixed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">WARNING: iot-eval-image-1.0-r0 do_rootfs: The license=
 listed Firmware-ti-connectivity was not in the licenses collected for reci=
pe wl18xx-bluetooth<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">ERROR: When reparsing /home/evk1206/Projects/prj_comp=
ulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, =
the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806
 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and=
 this needs to be fixed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">ERROR: When reparsing /home/evk1206/Projects/prj_comp=
ulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, =
the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806
 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and=
 this needs to be fixed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">ERROR: When reparsing /home/evk1206/Projects/prj_comp=
ulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, =
the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806
 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and=
 this needs to be fixed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">ERROR: When reparsing /home/evk1206/Projects/prj_comp=
ulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, =
the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806
 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and=
 this needs to be fixed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">ERROR: When reparsing /home/evk1206/Projects/prj_comp=
ulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, =
the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806
 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and=
 this needs to be fixed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">ERROR: When reparsing /home/evk1206/Projects/prj_comp=
ulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, =
the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806
 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and=
 this needs to be fixed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">ERROR: When reparsing /home/evk1206/Projects/prj_comp=
ulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, =
the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806
 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and=
 this needs to be fixed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">ERROR: iot-eval-image-1.0-r0 do_image_wic: Taskhash m=
ismatch d04ed8e44344c09b715faf7f046a2943 versus 8b6b18a1996ba1c6af0fc8b285e=
5e4b7 for /home/evk1206/Projects/prj_compulab/sources/meta-alen/recipes-cor=
e/images/iot-eval-image.bb.do_image_wic<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">ERROR: Taskhash mismatch d04ed8e44344c09b715faf7f046a=
2943 versus 8b6b18a1996ba1c6af0fc8b285e5e4b7 for /home/evk1206/Projects/prj=
_compulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_=
wic<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">ERROR: When reparsing /home/evk1206/Projects/prj_comp=
ulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, =
the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806
 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and=
 this needs to be fixed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">ERROR: When reparsing /home/evk1206/Projects/prj_comp=
ulab/sources/meta-alen/recipes-core/images/iot-eval-image.bb.do_image_wic, =
the basehash value changed from f06fa95389abbf5cea813cfcd6ca3806
 to b2ae7ed9b5aa329328f6fb57d934d17e. The metadata is not deterministic and=
 this needs to be fixed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">NOTE: Tasks Summary: Attempted 3759 tasks of which 37=
18 didn't need to be rerun and all succeeded.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I could also see the WIC image being successfully cre=
ated. May I know how to solve this issue, as printing these messages during=
 build results in wrong interpretation.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;color:black">Mit freundlichen Gr=FC=DFen /=
 Best regards
<br>
<br>
<b>Vinothkumar Eswaran<br>
BEG-PT/PJ-IOT1<br>
</b><br>
</span><span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-se=
rif;color:black"><br>
<br>
</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_9082b1858dda4304999ba4e2ceacad5edeboschcom_--
