Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45B8AE00BC1; Thu, 15 Dec 2016 10:57:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.70 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 31072 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Dec 2016 10:56:58 PST
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0070.outbound.protection.outlook.com [104.47.38.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0148E0081A
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 10:56:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=ZApodDhvJVtO2qvkddNeA2sz1J2oJYaP+RXHJ0DcNbk=;
	b=aNEIRVnBKF5/1skzBdqz9Nk5m8gfR4kwd9R7RbFgF0Kw3JAcSZGE6L2MMHKnu6koHleWNCqvKarm/pKTdalnttc+NTBKXZW0lRJVdrkloSrhhgUJxF/BeSi0wRtM7BQ11XgfAtW0z+x8LyXoy8KU7iPZg4sNfBubaInv5tsKNeo=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1595.prod.exchangelabs.com (10.163.139.139) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.761.9; Thu, 15 Dec 2016 07:30:12 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0771.014; Thu, 15 Dec 2016 07:30:13 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: live" image: iso and ext4 artifacts
Thread-Index: AQHSVqUSkkMn1Fqn0E+/ccxtXNbIRw==
Date: Thu, 15 Dec 2016 07:30:12 +0000
Message-ID: <CY1PR0101MB15941E53F918A2D5BD56915BD79D0@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 304ff2b0-a945-4248-4aaf-08d424bc352d
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:CY1PR0101MB1595; 
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1595;
	7:ODgGUlTVmavmdjetX6pz7a0XDVtwLII2PrMT4etbCRPDhffTTS8lol9MZtTU9E82KN5pyRbDoF/jmvWMeYi2PgRs1cABkSrBa7y39hmdKU73eKEMQ53yqvDVDpxN+MiEpBhjdYQjWwXwxpSMgAoiXmRhYurU2GaPfA8qwXdkB0cLeKcxAwlf4UrqQPPi1LyewPfOVDCOxFDGsXMr2ee78lmAE+O20cBqnRKzfdw4yW7gPOT2atkw9ZBguHyn6ZN1FDmFB3Vf2VFiFWT1AlifncJcTHjsoFA7jIyVl9KKeAG6WSICPE6cBp8ZQMyzkXWVRzRSUNbVTmwTeV7TO9Ar0JzQSCh81AJVS7BFsV6CN2B0+IkNFRk+1QEPrct76swVrlXVLlJnM7mxMEtIaMgMnCvXPjFnnYm4SAJOp1qCuPtnUHw5vc3U7sDPrj3RYbO9xnMrIdAKHDD4Zv6c7nlpKw==;
	23:rqUSg52HRR+d9odZmNmLTVA6CpkPN5NZAwpS5xqEKjzz+gnuYbfbickoIuHEqwcHyddCjcm0CxDcrjQ3VBBUgioGqaVOs9KUg468DZkN12F/YyRpdE+/caNXYdgBF04YiyzApYuvBWDar39wyTRUZA==;
	23:bLddqqJE+dyNJcRvl+Tzu2JgiElK81XpwGNMds/50MOMRXs6eX/xAdYGQnnOckMtwAbp0VI5m16/vpe5RDEkLKRHc4TB/VHuAfNbbh7WK58jX8FUvucnkNJLPvUDjSqZEPV20IZkjwkhWA1sC6CcyA==;
	23:PnzgP1cuKnaUb0COm1I4iTIrnEPuFp5TbqyDxMEHoX0tReOq21cererIbRUsLu8zvX7drc89dSozQlJPpR9xmfFdqVnpa2KlEpnlJ72AnOO5uOR6R1azbljdz6Q71Wz21+ncnE85Sj8uuUYmDMqnqQ==
x-microsoft-antispam-prvs: <CY1PR0101MB1595C3D2D4C179F45803708CD79D0@CY1PR0101MB1595.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123555025)(20161123560025)(20161123562025)(20161123564025)(6072148);
	SRVR:CY1PR0101MB1595; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1595; 
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39450400003)(199003)(189002)(501624003)(68736007)(8676002)(38730400001)(101416001)(450100001)(1730700003)(6916009)(66066001)(33656002)(74316002)(7696004)(86362001)(9686002)(2501003)(3660700001)(6436002)(110136003)(92566002)(25786008)(81166006)(2900100001)(6606003)(81156014)(19627405001)(122556002)(5660300001)(3846002)(6506006)(5640700002)(2351001)(107886002)(77096006)(54356999)(3280700002)(50986999)(8936002)(7736002)(105586002)(97736004)(106116001)(106356001)(102836003)(2906002)(189998001)(6116002)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1595;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2016 07:30:12.9223 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1595
X-OriginatorOrg: uievolution.com
Subject: live" image: iso and ext4 artifacts
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
X-List-Received-Date: Thu, 15 Dec 2016 18:57:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB15941E53F918A2D5BD56915BD79D0CY1PR0101MB1594_"

--_000_CY1PR0101MB15941E53F918A2D5BD56915BD79D0CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yocto.

I am trying x86-64 BSP image (based on jethro version).
It has following root filesystem type, and it generats xxxx.hddimg file tha=
t I am using.

> IMAGE_FSTYPES =3D "live"

The issue is that in addition to xxxx.hddimg, it produces following image f=
iles and it sometimes cause lack of disk space error on my build PC.

> 2422489088 xxxx-intel-corei7-64-20161215004421.hddimg
> 2402287616 xxxx-intel-corei7-64-20161215004421.iso
> 2368578560 xxxx-intel-corei7-64-20161215004421.rootfs.ext4

I do not need xxx.iso and xxxx.ext4 files as final output, though I underst=
and that xxxx.ext4 file may have been used to produce xxx.hddimg file.

I think "live" image type is special since I do not have xxxx.live file but=
 the live-image class may be generating such extra images files (so I canno=
t just specify hddimg as IMAGE_FSTYPES).

I have the similar issue with the other types of BSP (e.g. I only need xxxx=
.sdcard image, but I have other image types), but to begin with, I want to =
reduce sized files that I do not need in x86-64 builds.

Highly appreciate if you have any advice.
(I can manually remove xxxx.iso and xxxx.ext4 files when the build is compl=
eted, but they exists during the build so I also will meed lack of disk spa=
ce error in such attempt).


--_000_CY1PR0101MB15941E53F918A2D5BD56915BD79D0CY1PR0101MB1594_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p></p>
<div>Hello Yocto.<br>
<br>
I am trying x86-64 BSP image (based on jethro version).<br>
It has following root filesystem type, and it generats xxxx.hddimg file tha=
t I am using.<br>
<br>
&gt; IMAGE_FSTYPES =3D &quot;live&quot;<br>
<br>
The issue is that in addition to xxxx.hddimg, it produces following image f=
iles and it sometimes cause lack of disk space error on my build PC.<br>
<br>
&gt; 2422489088 xxxx-intel-corei7-64-20161215004421.hddimg<br>
&gt; 2402287616 xxxx-intel-corei7-64-20161215004421.iso<br>
&gt; 2368578560 xxxx-intel-corei7-64-20161215004421.rootfs.ext4<br>
<br>
I do not need xxx.iso and xxxx.ext4 files as final output, though I underst=
and that xxxx.ext4 file may have been used to produce xxx.hddimg file.<br>
<br>
I think &quot;live&quot; image type is special since I do not have xxxx.liv=
e file but the live-image class may be generating such extra images files (=
so I cannot just specify hddimg as IMAGE_FSTYPES).<br>
<br>
I have the similar issue with the other types of BSP (e.g. I only need xxxx=
.sdcard image, but I have other image types), but to begin with, I want to =
reduce sized files that I do not need in x86-64 builds.<br>
<br>
Highly appreciate if you have any advice.<br>
(I can manually remove xxxx.iso and xxxx.ext4 files when the build is compl=
eted, but they exists during the build so I also will meed lack of disk spa=
ce error in such attempt).</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_CY1PR0101MB15941E53F918A2D5BD56915BD79D0CY1PR0101MB1594_--
