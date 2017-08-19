Return-Path: <knapp@ambibox.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10AE2E00C96; Sat, 19 Aug 2017 10:20:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [52.58.63.60 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 563 seconds by postgrey-1.32 at yocto-www;
	Sat, 19 Aug 2017 10:20:40 PDT
Received: from rfoutemea2.hes.trendmicro.eu (rfoutemea2.hes.trendmicro.eu
	[52.58.63.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54E36E00948
	for <yocto@yoctoproject.org>; Sat, 19 Aug 2017 10:20:40 -0700 (PDT)
Received: from 0.0.0.0_hes.trendmicro.com (unknown [192.168.12.149])
	by rfoutemea2.hes.trendmicro.eu (Postfix) with ESMTPS id 3ECAC5A8386
	for <yocto@yoctoproject.org>; Sat, 19 Aug 2017 17:11:18 +0000 (UTC)
Received: from 0.0.0.0_hes.trendmicro.com (unknown [192.168.14.215])
	by routemea3.hes.trendmicro.eu (Postfix) with SMTP id CFF8D45605B
	for <yocto@yoctoproject.org>; Sat, 19 Aug 2017 17:11:16 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (unknown
	[213.199.154.178])
	by relayemea3.hes.trendmicro.eu (Postfix) with ESMTPS id 3306258C054
	for <yocto@yoctoproject.org>; Sat, 19 Aug 2017 17:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pho2risGmbHCoKG.onmicrosoft.com; s=selector1-ambibox-de;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=7f7wAnRx6vfO0beMJs4EecHGbokz0/9ie/my52RHCkw=;
	b=mydan2elzmqiEE0ModQEC9orumkMnwkWNUVPg/iB9RWZpYzjL+jaUp/RRQXPevKKusVdaHMFyRDYpEnrGXZ3hvyd9RyQ1Ro8pLzXpoZw0BykVNdesLWaP6r1cjAfw87jEgqmhrF9/I2g72iYmGuSikY/Y/p8G5Ym0OhmE1yIlSQ=
Received: from HE1PR10MB0361.EURPRD10.PROD.OUTLOOK.COM (10.167.250.147) by
	HE1PR10MB0459.EURPRD10.PROD.OUTLOOK.COM (10.167.251.23) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.1.1362.18; Sat, 19 Aug 2017 17:11:14 +0000
Received: from HE1PR10MB0361.EURPRD10.PROD.OUTLOOK.COM
	([fe80::fc1a:110a:fd55:fb70]) by
	HE1PR10MB0361.EURPRD10.PROD.OUTLOOK.COM
	([fe80::fc1a:110a:fd55:fb70%13]) with mapi id 15.01.1362.019;
	Sat, 19 Aug 2017 17:11:14 +0000
From: Fabian Knapp <knapp@ambibox.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: raw copy lots of files to rootfs via recipe
Thread-Index: AdMZDYfgEf/9KZWsR/2j+dPHP6u6eA==
Date: Sat, 19 Aug 2017 17:11:13 +0000
Message-ID: <HE1PR10MB0361BD38AEF95892C9F42822C3810@HE1PR10MB0361.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=knapp@ambibox.de; 
x-originating-ip: [93.243.17.67]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR10MB0459;
	6:D4KwGF2D0d/bZIW8VOcsNhlmHRwfoD6sQWxU2UelcSONY1B9wT5UB6cl2Q9dtkqgNM6GMAR3yMyx/RWoJUrRZ9PGsXxSDvD59PX21k1ajguzJYlIKmtoofCqLkoepGII4OKMRPNzguxGrbvwVsMoX8rrhE/xnW1btUx/kG3s4Z1aosbgj1KNPLTGdTqituPpTrtUzj8kXNI5m4zf6g0Ob20tpMm6vLyv+E2Aik4JL7GwFsnpFxpUTTCF4ZnZguikKAgtkJHXgQOnMex5ozoulg28vXdI6rbDV5Wr/eGBhVbepNgNR/ZWL95b4VJiO7hia9P7D1peaxrcGglpkoLbGQ==;
	5:fVJnC2fBb4fU3RlGZR90lF2rk2OrU0DN+7ZuGbDCavU/UF7cGIFsaihirPF2BsIVi1/NPIkqIt3Kk+SwxAEJtziUqEWcMWzsFEh/Xx9uSaeO0oZA0VjLm2kKMNb2NyqthhZBu3q5qT0gnLh5IOtaGw==;
	24:jSrBc2AFFzlPlQs7/2UuetadWaOy1fKT1DwFHwtJ7mblRFdJx3iyc7YVImgTQ617hNpnmKvzZ/7ZOhQmztK8+fdwQV1BPyivYD9k5WfJYk4=;
	7:vuf/cnGRUls1ZAIFqZ42iBlk1dYNDeK0DmmxEv6qnWp1gNRkPEUKmVIElx83VuCj8EVg643Jf8w/NENEVp9oCRlwPwKrXyEMIU+bnRHcenEwRfIOwY1J1i1TNbT9GnBHL5uHcLiAFzlqjRnHARR4ga1EFGrafEAQmRC9oqHLrlY5enw5y0HFbdgTHCsHp/69qb2eVAbm2iCyvGyUCmRFxWqHe0KtrQNkMb4Vs/rzP+8=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 060866aa-5f9f-4c96-25ea-08d4e7254bf2
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(2017082002075)(300000503095)(300135400095)(2017052603031)(201703131423075)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:HE1PR10MB0459; 
x-ms-traffictypediagnostic: HE1PR10MB0459:
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-microsoft-antispam-prvs: <HE1PR10MB04593C60B94EB9779F4A186EC3810@HE1PR10MB0459.EURPRD10.PROD.OUTLOOK.COM>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(100000703101)(100105400095)(93006095)(93001095)(10201501046)(3002001)(6041248)(2016111802025)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123562025)(20161123560025)(20161123555025)(20161123558100)(6043046)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HE1PR10MB0459; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HE1PR10MB0459; 
x-forefront-prvs: 04041A2886
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39830400002)(189002)(199003)(6506006)(81166006)(74316002)(1730700003)(110136004)(5660300001)(5630700001)(81156014)(6916009)(5640700003)(55016002)(8676002)(5250100002)(54896002)(6436002)(6306002)(9686003)(2906002)(478600001)(68736007)(3660700001)(74482002)(25786009)(53936002)(3280700002)(2900100001)(86362001)(33656002)(106356001)(7736002)(2351001)(14454004)(8936002)(66066001)(97736004)(7696004)(75402003)(101416001)(2501003)(54356999)(50986999)(189998001)(790700001)(102836003)(3846002)(105586002)(6116002)(19627235001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR10MB0459;
	H:HE1PR10MB0361.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: ambibox.de does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ambibox.de
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2017 17:11:13.6142 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a41b53b7-6aea-46d7-8cc4-114287daa697
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR10MB0459
X-TMASE-Version: StarCloud-1.3-8.2.1006-23270.000
X-TMASE-Result: 10--19.327100-7.000000
X-TMASE-MatchedRID: NZHPueotO25JY8kK4KRv3uQoIU4rAATMW1eClGWYNyhV4NNhO4IbDMSu
	IdwPS9np1ZwM0TffdF7q7gSTVPcPG3//aC4gn5TY/Sl5cYQQGW+DddlymG7iS0rRZP/NcCCSizr
	FpWHTBvcEdWbTGHnxVjwu4/5s6Qxa3eMXZ9Vw93MMH4SsGvRsA1qvZZ9/gpIhpRezBf/GshLUGg
	7QVcvSyO4M3H5OTuYLIE9ITYPIT1lcvC4hPS8YXiI9MxSOQ6CSLVEjAx3HjK6k7BPGf466/guVM
	ctAPCgtu7C4hieFwVKAMuqetGVeto1kLJo+k6Ny0C1sQRfQzEEj80Za3RRg8JhrR3mErHT8UPcy
	U6xwRCw9LMzAgBmjDDgJy4lOU/hBYv5aLrqmzGc=
X-TM-Deliver-Signature: CCEEACAA3F887C8E1D5280BEA4C1495F
Subject: raw copy lots of files to rootfs via recipe
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
X-List-Received-Date: Sat, 19 Aug 2017 17:20:42 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_HE1PR10MB0361BD38AEF95892C9F42822C3810HE1PR10MB0361EURP_"

--_000_HE1PR10MB0361BD38AEF95892C9F42822C3810HE1PR10MB0361EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have to copy a complete file structure to my rootfs which also contains .=
sh and .js files Makefiles and so on. However, I only want to "raw" copy th=
ese files to /xyz to my rootfs.
I tried to cp -r via do_install() and added the files to my FILES_${PN} but=
 I get an error: 'no package provides /usr/local/bin/node-bench' that indic=
ates that this is not a raw copy as wanted.

In a next step I tried the ROOTFS_POSTPROCESS_COMMAND. However, I was not e=
ven able to create a simple txt file in /etc with this.

It would be very nice if someone could provide me a recipe example for raw =
copy of files (for morty).

Thank you,

Fabian

--_000_HE1PR10MB0361BD38AEF95892C9F42822C3810HE1PR10MB0361EURP_
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have to copy a complete file structure to my rootf=
s which also contains .sh and .js files Makefiles and so on. However, I onl=
y want to &#8222;raw&#8220; copy these files to /xyz to my rootfs.<br>
I tried to cp -r via do_install() and added the files to my FILES_${PN} but=
 I get an error: &#8218;no package provides /usr/local/bin/node-bench&#8216=
; that indicates that this is not a raw copy as wanted.<br>
<br>
In a next step I tried the ROOTFS_POSTPROCESS_COMMAND. However, I was not e=
ven able to create a simple txt file in /etc with this.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It would be very nice if someone could provide me a =
recipe example for raw copy of files (for morty).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Fabian<o:p></o:p></p>
</div>
</body>
</html>

--_000_HE1PR10MB0361BD38AEF95892C9F42822C3810HE1PR10MB0361EURP_--
