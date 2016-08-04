Return-Path: <hgujulan@visteon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A73C1E00EC2; Thu,  4 Aug 2016 06:02:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.100 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3561 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 Aug 2016 06:02:55 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0100.outbound.protection.outlook.com [104.47.2.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0096FE00EBB
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2016 06:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=visteon.onmicrosoft.com; s=selector1-visteon-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=hqN42CDU1cJt8gxnKgqULM4o8hTk/mkv7yYZPHKESO8=;
	b=XCvhsJdWkBEUflKmGqe/eDs27dMwMYZ+ewQicKaSnDPe1HGE7XsdO0aHS1FqSa/TZogKyTyhHCnfQu0pvev0FNn+JPzRQ7sWSwBCdAkzWoA54n90kKb+v5l7su8yppq3wLvUuYYkh88gSJ2wohDMZs0QJbCjdedv/937UJ5XI40=
Received: from DB6PR0601MB2663.eurprd06.prod.outlook.com (10.168.82.16) by
	DB6PR0601MB2662.eurprd06.prod.outlook.com (10.168.82.15) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.549.15; Thu, 4 Aug 2016 07:28:58 +0000
Received: from DB6PR0601MB2663.eurprd06.prod.outlook.com ([10.168.82.16]) by
	DB6PR0601MB2663.eurprd06.prod.outlook.com ([10.168.82.16]) with mapi id
	15.01.0549.023; Thu, 4 Aug 2016 07:28:58 +0000
From: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Layer priorities & package selection
Thread-Index: AQHR7h/q2J3FbDJb2U6G/9E5iZmjBA==
Date: Thu, 4 Aug 2016 07:28:57 +0000
Message-ID: <DB6PR0601MB26639479A0DD3507DB733BF1CF070@DB6PR0601MB2663.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=hgujulan@visteon.com; 
x-originating-ip: [74.112.164.112]
x-ms-office365-filtering-correlation-id: 3ed08d02-86c3-4599-c816-08d3bc38ff95
x-microsoft-exchange-diagnostics: 1; DB6PR0601MB2662;
	6:NME4R10ItFEm6VqDTfuoCSjOdJ6XzngNU99rBPjZbhztY5TEM6ZVddRSKirLIo0LxBORkCYwVAAS4a9DgXNCi1ZWNYbGGJTD/k6+HgG5Fe3uW2AqoO0jP9mTr2ZOol9Gdet5Z8YjpQGakv+5+xTPRix7XpX2UoRNJewy73SO4APxzVwSOtaSvi6+0pEFHv9c7MxikQyqlvyd4m3xjoyA7TaYfhAjygF/dhBluy63af6KTEk/ZFF1UgR9ArLNGYHXdkgV87oX9QDQZvJciGz5nVbhw8FJzqdnSpzGdnI7unXXzFwZIeWiLH2t0ntSWjzJLDb6JyiPifff6tDBhJ55sg==;
	5:B9fKEQI2B8BBLjDpDhXsEc9rdZCTPHJinD6QQP5S+NSo2A9d4lBUGQ04BrrGrTlQkyu+csX1aui3LaTxQBtElOP3ZBEColkQBCicDbZxEaPfeZz/FaRxg9P/F0jl1jZ5gPOplcw7bYgBMNYAHzjCvg==;
	24:ZXHjfTuMs8IT40FvEQj9HZBZWvjEnORLwj65vCzEg1+4wRZV77l3Odn9kU6QTHaeFdTpCbUZOCuzJ0aumA3RSw3AEbkX7YDmkuAVffJ9tUA=;
	7:KyNttg+Nev2OuNKBNgJAapfQ/2kAydaMUjVqRoZ6+0idtyMdualBJiIFt/EqwNzNlOaNuEVy9RrO+vClwiFyVUmUSdqc+tAj/B337EZHSiSRdkxBHn4hYlK7PuuL9gNRT6MU6BxWu58Q5lvlJfRQ0+06jvWfAW6HoJ6I4L8Ee/V5XNTIvyGW1DQZ/fsDxUKvEtxPcOipjAg7oN8fI/Fe/6jxIYCfsHqEbkJ2Rq2/Ns/C0TXx3RFW2OlG7iOLPcIG
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0601MB2662;
x-microsoft-antispam-prvs: <DB6PR0601MB2662971A510F83D2898B412ECF070@DB6PR0601MB2662.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:DB6PR0601MB2662; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0601MB2662; 
x-forefront-prvs: 00246AB517
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(53754006)(189002)(199003)(10400500002)(68736007)(105586002)(9686002)(66066001)(92566002)(76576001)(8936002)(229853001)(7736002)(7846002)(7696003)(3660700001)(5640700001)(74316002)(19625215002)(2900100001)(101416001)(3280700002)(450100001)(97736004)(8676002)(77096005)(2906002)(33656002)(16236675004)(106356001)(1730700003)(110136002)(2351001)(107886002)(86362001)(6116002)(102836003)(3846002)(2501003)(19580405001)(189998001)(19627405001)(54356999)(50986999)(11100500001)(81166006)(586003)(122556002)(106116001)(5002640100001)(19580395003)(87936001)(81156014);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0601MB2662;
	H:DB6PR0601MB2663.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: visteon.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: visteon.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2016 07:28:57.9546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7a147aaf-01ec-498c-80a1-e34a8c63c548
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0601MB2662
Subject: Layer priorities & package selection
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
X-List-Received-Date: Thu, 04 Aug 2016 13:02:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0601MB26639479A0DD3507DB733BF1CF070DB6PR0601MB2663_"

--_000_DB6PR0601MB26639479A0DD3507DB733BF1CF070DB6PR0601MB2663_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello all,


We are having two yocto layers in our project. One is SoC specific layer an=
d the other is the meta-ivi. Now we have two packages provided by both thes=
e layers. wayland_1.9.0 & weston_1.9.0. We want both these packages from th=
e SoC specific layer and not the ones that are coming from meta-ivi. The re=
ason being that the SoC vendor has done some modifications for hw accelerat=
ion and stuff like that. Since meta-ivi is having higher priority( Priority=
: 7) than the SoC specific layer(Priority : 6) , naturally these packages a=
re provided by meta-ivi and not the Soc layer which we actually want.


How to modify the layer priority without touching the layer specific conf f=
ile ? Can we have a append to the layer conf file ?


meta-ivi:

[mailto:hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/m=
onarch-distribution/meta-ivi$]hgujulan@chipd010:~/project/monarch/release_t=
esting/monarch-1.2.0/monarch-distribution/meta-ivi$ find . -name "wayland*"
./meta-ivi/recipes-graphics/wayland
./meta-ivi/recipes-graphics/wayland/wayland_1.9.0.bb


[mailto:hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/m=
onarch-distribution/meta-ivi$]hgujulan@chipd010:~/project/monarch/release_t=
esting/monarch-1.2.0/monarch-distribution/meta-ivi$ find . -name "weston*"
./meta-ivi/recipes-graphics/wayland/weston
./meta-ivi/recipes-graphics/wayland/weston/weston.png
./meta-ivi/recipes-graphics/wayland/weston/weston.desktop
./meta-ivi/recipes-graphics/wayland/weston_1.9.0.bb
./meta-ivi/recipes-graphics/wayland/weston_1.9.0.bbappend
./meta-ivi-bsp/recipes-graphics/weston



meta-renesas:



[mailto:hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/m=
onarch-distribution/meta-renesas$]hgujulan@chipd010:~/project/monarch/relea=
se_testing/monarch-1.2.0/monarch-distribution/meta-renesas$ find . -name "w=
ayland*"
./meta-rcar-gen3/recipes-graphics/wayland
./meta-rcar-gen3/recipes-graphics/wayland/wayland_1.9.0.bb



[mailto:hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/m=
onarch-distribution/meta-renesas$]hgujulan@chipd010:~/project/monarch/relea=
se_testing/monarch-1.2.0/monarch-distribution/meta-renesas$ find . -name "w=
eston*"
./meta-rcar-gen3/recipes-graphics/wayland/weston.inc
./meta-rcar-gen3/recipes-graphics/wayland/weston-init.bbappend
./meta-rcar-gen3/recipes-graphics/wayland/weston
./meta-rcar-gen3/recipes-graphics/wayland/weston/weston.png
./meta-rcar-gen3/recipes-graphics/wayland/weston/weston.desktop
./meta-rcar-gen3/recipes-graphics/wayland/weston_%.bbappend
./meta-rcar-gen3/recipes-graphics/wayland/weston-init
./meta-rcar-gen3/recipes-graphics/wayland/weston-init/weston.service
./meta-rcar-gen3/recipes-graphics/wayland/weston_1.9.0.bb
./meta-rcar-gen3/recipes-graphics/wayland/weston_1.9.0.bbappend



Thanks & Regards,

Hari Prasath

--_000_DB6PR0601MB26639479A0DD3507DB733BF1CF070DB6PR0601MB2663_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hello all,</p>
<p><br>
</p>
<p>We are having two yocto layers in our project. One is SoC specific layer=
 and the other is the meta-ivi. Now we have two packages provided by both t=
hese layers. wayland_1.9.0 &amp; weston_1.9.0. We want both these packages =
from the SoC specific layer and not
 the ones that are coming from meta-ivi. The reason being that the SoC vend=
or has done some modifications for hw acceleration and stuff like that. Sin=
ce meta-ivi is having higher priority( Priority: 7) than the SoC specific l=
ayer(Priority : 6) , naturally these
 packages are provided by meta-ivi and not the Soc layer which we actually =
want.</p>
<p><br>
</p>
<p>How to modify the layer priority without touching the layer specific con=
f file ? Can we have a append to the layer conf file ?<br>
</p>
<p><br>
</p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
<br>
<u>meta-ivi:</u><br>
<br>
[mailto:hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/m=
onarch-distribution/meta-ivi$]hgujulan@chipd010:~/project/monarch/release_t=
esting/monarch-1.2.0/monarch-distribution/meta-ivi$ find . -name &quot;wayl=
and*&quot;<br>
./meta-ivi/recipes-graphics/wayland<br>
./meta-ivi/recipes-graphics/wayland/wayland_1.9.0.bb<br>
</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
<br>
</span></p>
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
[mailto:hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/m=
onarch-distribution/meta-ivi$]hgujulan@chipd010:~/project/monarch/release_t=
esting/monarch-1.2.0/monarch-distribution/meta-ivi$
 find . -name &quot;weston*&quot;<br>
./meta-ivi/recipes-graphics/wayland/weston<br>
./meta-ivi/recipes-graphics/wayland/weston/weston.png<br>
./meta-ivi/recipes-graphics/wayland/weston/weston.desktop<br>
./meta-ivi/recipes-graphics/wayland/weston_1.9.0.bb<br>
./meta-ivi/recipes-graphics/wayland/weston_1.9.0.bbappend<br>
./meta-ivi-bsp/recipes-graphics/weston</span> </p>
<p style=3D"background:white"><span style=3D"font-family:&quot;Calibri&quot=
;,sans-serif; color:black">&nbsp;</span></p>
<p style=3D"background:white"><u><span style=3D"font-family:&quot;Calibri&q=
uot;,sans-serif; color:black">meta-renesas:</span></u></p>
<p style=3D"background:white"><span style=3D"font-family:&quot;Calibri&quot=
;,sans-serif; color:black">&nbsp;</span></p>
<div>
<p class=3D"x_MsoNormal" style=3D"background:white"><span style=3D"font-fam=
ily:&quot;Calibri&quot;,sans-serif; color:black">[mailto:hgujulan@chipd010:=
~/project/monarch/release_testing/monarch-1.2.0/monarch-distribution/meta-r=
enesas$]hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/m=
onarch-distribution/meta-renesas$
 find . -name &quot;wayland*&quot;<br>
./meta-rcar-gen3/recipes-graphics/wayland<br>
./meta-rcar-gen3/recipes-graphics/wayland/wayland_1.9.0.bb</span></p>
</div>
<p style=3D"background:white"><span style=3D"font-family:&quot;Calibri&quot=
;,sans-serif; color:black">&nbsp;</span></p>
<div>
<p class=3D"x_MsoNormal" style=3D"background:white"><span style=3D"font-fam=
ily:&quot;Calibri&quot;,sans-serif; color:black">[mailto:hgujulan@chipd010:=
~/project/monarch/release_testing/monarch-1.2.0/monarch-distribution/meta-r=
enesas$]hgujulan@chipd010:~/project/monarch/release_testing/monarch-1.2.0/m=
onarch-distribution/meta-renesas$
 find . -name &quot;weston*&quot;<br>
./meta-rcar-gen3/recipes-graphics/wayland/weston.inc<br>
./meta-rcar-gen3/recipes-graphics/wayland/weston-init.bbappend<br>
./meta-rcar-gen3/recipes-graphics/wayland/weston<br>
./meta-rcar-gen3/recipes-graphics/wayland/weston/weston.png<br>
./meta-rcar-gen3/recipes-graphics/wayland/weston/weston.desktop<br>
./meta-rcar-gen3/recipes-graphics/wayland/weston_%.bbappend<br>
./meta-rcar-gen3/recipes-graphics/wayland/weston-init<br>
./meta-rcar-gen3/recipes-graphics/wayland/weston-init/weston.service<br>
./meta-rcar-gen3/recipes-graphics/wayland/weston_1.9.0.bb<br>
./meta-rcar-gen3/recipes-graphics/wayland/weston_1.9.0.bbappend</span></p>
</div>
<br>
<p></p>
<p><br>
</p>
<div id=3D"Signature">Thanks &amp; Regards,
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top:0px; margin-bottom:0px">Hari Prasath<br>
</p>
</div>
</div>
</div>
</body>
</html>

--_000_DB6PR0601MB26639479A0DD3507DB733BF1CF070DB6PR0601MB2663_--
