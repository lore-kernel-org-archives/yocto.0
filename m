Return-Path: <knapp@ambibox.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F02F8E009A4; Sat,  2 Sep 2017 15:59:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,WEIRD_PORT autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [52.58.63.1 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from routemea1.hes.trendmicro.eu (routemea1.hes.trendmicro.eu
	[52.58.63.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC34DE009A4
	for <yocto@yoctoproject.org>; Sat,  2 Sep 2017 15:59:17 -0700 (PDT)
Received: from 0.0.0.0_hes.trendmicro.com (unknown [192.168.13.217])
	by routemea1.hes.trendmicro.eu (Postfix) with SMTP id A1100456064;
	Sat,  2 Sep 2017 22:59:16 +0000 (UTC)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (unknown
	[213.199.154.120])
	by relayemea3.hes.trendmicro.eu (Postfix) with ESMTPS id 777A958C046;
	Sat,  2 Sep 2017 22:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pho2risGmbHCoKG.onmicrosoft.com; s=selector1-ambibox-de;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=YS/TnsZs4jYQ5AyDs67QnChVlvAcCWr6tc6D5K0BoAA=;
	b=XoULeFSAyaEZk16jdHyvSHS2wvitXinvnhPD9JwzVjdoYp9EcyOiErzpHE2YQlAO/KoHUKzuK3W3vPXbUEWwEN1dBQ2OvA6Ak+wQVGb9XbWWL5sEQs18E3s71OB1g6e9/7qRi09+U/lX8Uspt/IioLycxDaeQ2Sl4a9ZtqEeL30=
Received: from HE1PR10MB0361.EURPRD10.PROD.OUTLOOK.COM (10.167.250.147) by
	HE1PR10MB0073.EURPRD10.PROD.OUTLOOK.COM (10.166.126.13) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.13.10; Sat, 2 Sep 2017 22:59:12 +0000
Received: from HE1PR10MB0361.EURPRD10.PROD.OUTLOOK.COM
	([fe80::6d26:ebc6:d0e:779c]) by HE1PR10MB0361.EURPRD10.PROD.OUTLOOK.COM
	([fe80::6d26:ebc6:d0e:779c%13]) with mapi id 15.20.0013.018;
	Sat, 2 Sep 2017 22:59:12 +0000
From: Fabian Knapp <knapp@ambibox.de>
To: ktreddy 70 <ktreddy70@gmail.com>
Thread-Topic: [yocto] yocto layer dependencies
Thread-Index: AQHTJBnubEEP2CLVQ06EvstB3Yp42KKh+85AgAAzzYCAAAZgUQ==
Date: Sat, 2 Sep 2017 22:59:12 +0000
Message-ID: <HE1PR10MB0361EAE90B544860F1D44956C3930@HE1PR10MB0361.EURPRD10.PROD.OUTLOOK.COM>
References: <CAKXGAjB9xNynnDpT3zXrZZNyc_x3ONxOrg1eGH_VZ4xuFqkjDA@mail.gmail.com>
	<HE1PR10MB03612D297AE804164131E10BC3930@HE1PR10MB0361.EURPRD10.PROD.OUTLOOK.COM>,
	<CAKXGAjBoCFr0ygfU3qtGWqfPC4JcHsvJ8syR6t6QLGLESib-UQ@mail.gmail.com>
In-Reply-To: <CAKXGAjBoCFr0ygfU3qtGWqfPC4JcHsvJ8syR6t6QLGLESib-UQ@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [40.68.254.90]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR10MB0073;
	6:bYMQmtmCk5UNQPOCKWX+lyu6q5frUOPnY7saMJPuYBRxEdT0NAOsnltIm9AxmVbCvcfT0vF0FqmIQ2H5OoTQTztKNphS8nTJ2GJFhxzu5ulB/QsEtbpD/qPjTKcoASEmdINaiA94ghISZm4nxH1O5ySZgsctgHVC1548q2xhKz9Fa3E7iq5EzDRU2Oz1J1RTCwcWSDfyYGz7oXFC93txjBdN+bkpZE9T6ncccX8ubd6ZmBUsFVEj3DLZpEjD5Otp47MeYNxiDtQnstxT5p/CGgp2lLdySlLii58wHrza7jSwA+2/RgxlRx1YyVjtP20cvV5urVJ/oea9liDDQRrt5w==;
	5:w4cJdLouXRe9W+aQcLOsJ0K3U5ZgiaYZDDYo9tl9F6bra1GCBIBrRVwD2xCcK8jNHolhx0LOBQNsUmEFfl/zRAEwJWtrDIlh81ec3mrqaTw2oppjXw5uroSXnH+gqr6kGM4S6+b+8CUZFjww6LttyQ==;
	24:lXecSgmonjqR74I+su8M7ZfZLbjyARVOIKWk/inINFoU2Hx/ceDvnlIllpmgOFJSV85bMnVZealkpUWQWLFA+uYHApNJQt2Mq1bSyq/Rsbw=;
	7:5pd807b8i2kXM4/iMapsUqT6GhKqzZ4vVOxqf7oagQFO+tsLwEw1mpbp+0kHyVAGxD6b+C6e7vu27QbDnwWBfONqzkKWivQHvhOfBlGQ44SFwOJNz7lPr0VSkhCgo/gqz3beNuH4s0XYj6bs13gBTteVUBnE2OzkiJ2Oa2UEp/Q9+ZK5T1a9gOPGWRGFxkL1QeogTNtsd2vWxdBKvclF7PR6i5rgoXykdxP+yBB+DGM=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 5d6041e3-db0a-430f-a93d-08d4f2563a6e
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(2017082002075)(300000503095)(300135400095)(2017052603199)(201703131423075)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:HE1PR10MB0073; 
x-ms-traffictypediagnostic: HE1PR10MB0073:
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=knapp@ambibox.de; 
x-exchange-antispam-report-test: UriScan:;
x-microsoft-antispam-prvs: <HE1PR10MB00737916541C0913114268C8C3930@HE1PR10MB0073.EURPRD10.PROD.OUTLOOK.COM>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(100000703101)(100105400095)(10201501046)(3002001)(93006095)(93001095)(6041248)(20161123560025)(20161123555025)(20161123562025)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(2016111802025)(20161123558100)(6043046)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HE1PR10MB0073; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HE1PR10MB0073; 
x-forefront-prvs: 04180B6720
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39830400002)(279900001)(629001)(377454003)(40764003)(174874002)(199003)(189002)(53474002)(24454002)(229853002)(76176999)(54356999)(50986999)(66066001)(6436002)(3280700002)(6506006)(81156014)(81166006)(25786009)(33656002)(8676002)(8936002)(2900100001)(101416001)(1411001)(19625305001)(75402003)(68736007)(86362001)(189998001)(53546010)(39060400002)(7736002)(74482002)(106356001)(478600001)(3846002)(5250100002)(105586002)(102836003)(6116002)(7696004)(305945005)(2950100002)(97736004)(53936002)(55016002)(6916009)(6246003)(236005)(9686003)(4326008)(14454004)(54896002)(6306002)(5660300001)(3660700001)(110136004)(74316002)(606006)(2906002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR10MB0073;
	H:HE1PR10MB0361.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: ambibox.de does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ambibox.de
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2017 22:59:12.5647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a41b53b7-6aea-46d7-8cc4-114287daa697
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR10MB0073
X-TMASE-Version: StarCloud-1.3-8.2.1006-23300.003
X-TMASE-Result: 10--12.767200-7.000000
X-TMASE-MatchedRID: EbKgecrU/lXM6Y1kYRz8++6FCiCmG1p4MyqyT9A8OkDavrd4wXzEmIu+
	xSCf3um/LIkdH3Ag2Zlod8pxNnEWkSLJOeXCYeI3d/kKa+wcBSra2/ktRQyXHSjRji+VdlqtAtN
	zxwbA/n/Y+bJ96GGgNU1rhQ5+QlI0XfI1WnQhGwuwucNx4BfFImW+EJyPsaq+zu1XSCENVQtqHI
	Mv7kmm1/sxJUe8tBwzVV4ZZmbE3Yy4pLI6MoPBuEYvSDWdWaRhqNGao17BgvlxtFjtYoD7X1fo3
	mvhQT2WYWmIaSiXIWhor4yxPAz7Wfa/bRHEsPI3TDoylMQmcK/hLW+nuKkjlsvtGOjz7OIyEeUp
	nQq0BojqGKjS6AJ+VLxygpRxo469Qa2sDHLkQ05nnK6mXN72m0nH6xM4WT4NpEYBIO560crniZu
	iwpS5h59FKCGd++IX2zNZ+bvs0+v8BlbXy+O/WuKYpwtG+wHVs2DGWvRdP/euONX6B1okSmSpu2
	vb1QC0Rwzi947lQbGm5RSBcxtoG8ogYxpm9PTbSM5qv6yAnja+vhfM2tGzNnhdGKCoOfPqUTx3A
	r1s4G2PaFHMfVTC4BRFJJyf5BJeyJ1gFgOMhOmW6ocpSC/N58LeaN9zSPdmxviq56ZjooD+0ELE
	DAb+/fP+VoFsczbSkfsCSQzT9Keg6ougKwKBRor76f+pGhhGoyTH9QQU0/uYGbxGyjf9GStKiRe
	5WCXa4R20pj4jpW9+3BndfXUhXQ==
X-TM-Deliver-Signature: 9EBBE21EBB11FE1907D5B0A0905A5E12
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto layer dependencies
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
X-List-Received-Date: Sat, 02 Sep 2017 22:59:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HE1PR10MB0361EAE90B544860F1D44956C3930HE1PR10MB0361EURP_"

--_000_HE1PR10MB0361EAE90B544860F1D44956C3930HE1PR10MB0361EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


One of the first bitbake steps is parsing of all available recipes. The err=
or says it: you do not have a recipe called petalinux (try bitbake petalinu=
x-image instead).

Same with openlte (try openlte-git).

I really recommend the yocto mega manual.

Fabian



Von: ktreddy 70
Gesendet: Sonntag, 3. September 00:36
Betreff: Re: [yocto] yocto layer dependencies
An: Fabian Knapp
Cc: yocto@yoctoproject.org


Hi,
Thank you,  issue got resolved after updating build/conf/bblayers.conf file=
,
Sorry to trouble you but now I am getting the following error what could be=
 the reason

zcu102/build$ bitbake petalinux
Loading cache: 100% |######################################################=
###########################################################################=
############| Time: 0:00:00
Loaded 3126 entries from dependency cache.
Parsing recipes: 100% |####################################################=
###########################################################################=
############| Time: 0:00:00
Parsing of 2368 .bb files complete (2366 cached, 2 parsed). 3127 targets, 2=
16 skipped, 0 masked, 0 errors.
WARNING: No recipes available for:
  /home/ktreddy/zcu102/sources/poky/../meta-petalinux/recipes-extended/imag=
es/xen-image-minimal.bbappend
  /home/ktreddy/zcu102/sources/poky/../meta-petalinux/recipes-extended/xen/=
xen_4.8.0.bbappend
ERROR: Nothing PROVIDES 'petalinux'. Close matches:
  petalinux-image
  pptp-linux

Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

zcu102/build$ bitbake openlte
Parsing recipes: 100% |####################################################=
###########################################################################=
############| Time: 0:00:51
Parsing of 2368 .bb files complete (0 cached, 2368 parsed). 3127 targets, 2=
16 skipped, 0 masked, 0 errors.
WARNING: No recipes available for:
  /home/ktreddy/zcu102/sources/poky/../meta-petalinux/recipes-extended/imag=
es/xen-image-minimal.bbappend
  /home/ktreddy/zcu102/sources/poky/../meta-petalinux/recipes-extended/xen/=
xen_4.8.0.bbappend
ERROR: Nothing PROVIDES 'openlte'. Close matches:
  openl2tp
  openlte-git
  openct

Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

On Sat, Sep 2, 2017 at 12:34 PM, Fabian Knapp <knapp@ambibox.de<mailto:knap=
p@ambibox.de>> wrote:
Do you have configured /meta-openembedded/meta-qt4/ in your bblayers.conf (=
build/conf/bblayers.conf)?


Fabian

Von: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org> =
[mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.or=
g>] Im Auftrag von ktreddy 70
Gesendet: Samstag, 2. September 2017 20:30
An: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Betreff: [yocto] yocto layer dependencies

I am trying to set up yocto build environment for openlte, meta-sdr has mos=
t of the openlte depends
I am getting following error when I try to build sdr,


/build$ bitbake sdr
Loading cache: 100% |######################################################=
###########################################################################=
###########| Time: 0:00:00
Loaded 1642 entries from dependency cache.
ERROR: ParseError at /home/ktreddy/zcu102/sources/poky/../meta-openembedded=
/meta-sdr/recipes-applications/gqrx/gqrx_git.bb:8<http://gqrx_git.bb:8/>: C=
ould not inherit file classes/qt4x11.bbclass


I do have meta-qt4 under meta-openembedded layer  as below.

zcu102/sources$ ls meta-openembedded/meta-qt4/classes/
qmake2.bbclass  qmake_base.bbclass  qt4e.bbclass  qt4x11.bbclass


could you please help me on why am I getting this error ?
How can I make one layer visible to another layer ?
Ex:  How can I make meta-sdr visible to openlte ? I mean how can I say to o=
penlte that the dependency recipes are available under meta-sdr ?

if new recipes are available for a layer how can I get those on to my build=
 environment ?

Thanks for your help.




--_000_HE1PR10MB0361EAE90B544860F1D44956C3930HE1PR10MB0361EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
One of the first bitbake steps is parsing of all available recipes. The err=
or says it: you do not have a recipe called petalinux (try bitbake petalinu=
x-image instead).<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Same with openlte (try openlte-git).<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
I really recommend the yocto mega manual.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Fabian<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<br>
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Von: ktreddy 70<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Gesendet: Sonntag, 3. September 00:36<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Betreff: Re: [yocto] yocto layer dependencies<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
An: Fabian Knapp<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Cc: yocto@yoctoproject.org<br>
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Hi, <br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Thank you, &nbsp;issue got resolved after updating build/conf/bblayers.conf=
 file,<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Sorry to trouble you but now I am getting the following error what could be=
 the reason<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
zcu102/build$&nbsp;<b>bitbake petalinux</b><br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Loading cache: 100% |######################################################=
###########################################################################=
############| Time: 0:00:00<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Loaded 3126 entries from dependency cache.<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Parsing recipes: 100% |####################################################=
###########################################################################=
############| Time: 0:00:00<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Parsing of 2368 .bb files complete (2366 cached, 2 parsed). 3127 targets, 2=
16 skipped, 0 masked, 0 errors.<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<font color=3D"#ff0000">WARNING: No recipes available for:</font><br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<font color=3D"#ff0000">&nbsp; /home/ktreddy/zcu102/sources/poky/../meta-pe=
talinux/recipes-extended/images/xen-image-minimal.bbappend</font><br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<font color=3D"#ff0000">&nbsp; /home/ktreddy/zcu102/sources/poky/../meta-pe=
talinux/recipes-extended/xen/xen_4.8.0.bbappend</font><br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<font color=3D"#ff0000">ERROR: Nothing PROVIDES 'petalinux'. Close matches<=
/font>:<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp; petalinux-image<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp; pptp-linux<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Summary: There was 1 WARNING message shown.<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
zcu102/build$&nbsp;<b>bitbake openlte</b><br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Parsing recipes: 100% |####################################################=
###########################################################################=
############| Time: 0:00:51<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Parsing of 2368 .bb files complete (0 cached, 2368 parsed). 3127 targets, 2=
16 skipped, 0 masked, 0 errors.<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<font color=3D"#ff0000">WARNING: No recipes available for:</font><br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<font color=3D"#ff0000">&nbsp; /home/ktreddy/zcu102/sources/poky/../meta-pe=
talinux/recipes-extended/images/xen-image-minimal.bbappend</font><br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<font color=3D"#ff0000">&nbsp; /home/ktreddy/zcu102/sources/poky/../meta-pe=
talinux/recipes-extended/xen/xen_4.8.0.bbappend</font><br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<font color=3D"#ff0000">ERROR: Nothing PROVIDES 'openlte'. Close matches:</=
font><br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp; openl2tp<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp; openlte-git<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp; openct<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Summary: There was 1 WARNING message shown.<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
On Sat, Sep 2, 2017 at 12:34 PM, Fabian Knapp &lt;<a href=3D"mailto:knapp@a=
mbibox.de">knapp@ambibox.de</a>&gt; wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Do you have configured /meta-openembedded/meta-qt4/ in your bblayers.conf (=
build/conf/bblayers.conf)?<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Fabian<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<b>Von:</b> <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces=
@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.=
org">yocto-bounces@yoctoproject.org</a>]
<b>Im Auftrag von </b>ktreddy 70<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<b>Gesendet:</b> Samstag, 2. September 2017 20:30<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<b>An:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<b>Betreff:</b> [yocto] yocto layer dependencies<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
I am trying to set up yocto build environment for openlte, meta-sdr has mos=
t of the openlte depends<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
I am getting following error when I try to build sdr,&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
/build$ bitbake sdr<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Loading cache: 100% |######################################################=
###########################################################################=
###########| Time: 0:00:00<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Loaded 1642 entries from dependency cache.<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
ERROR: ParseError at /home/ktreddy/zcu102/sources/poky/../meta-openembedded=
/meta-sdr/recipes-applications/gqrx/<a href=3D"http://gqrx_git.bb:8/">gqrx_=
git.bb:8</a>: Could not inherit file classes/qt4x11.bbclass<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
I do have meta-qt4 under meta-openembedded layer&nbsp; as below.<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
zcu102/sources$<b>&nbsp;ls&nbsp;</b>meta-openembedded/meta-qt4/classes/<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
qmake2.bbclass &nbsp;qmake_base.bbclass &nbsp;qt4e.bbclass &nbsp;<b>qt4x11.=
bbclass</b><br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
could you please help me on why am I getting this error ?<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
How can I make one layer visible to another layer ?<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Ex: &nbsp;How can I make meta-sdr visible to openlte ? I mean how can I say=
 to openlte that the dependency recipes are available under meta-sdr ?<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
if new recipes are available for a layer how can I get those on to my build=
 environment ?<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
&nbsp;<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
Thanks for your help.<br>
</div>
</blockquote>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; background-color: white;">
<br>
<br>
<br>
</div>
</body>
</html>

--_000_HE1PR10MB0361EAE90B544860F1D44956C3930HE1PR10MB0361EURP_--
