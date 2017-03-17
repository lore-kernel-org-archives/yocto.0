Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5705E0052B; Fri, 17 Mar 2017 04:41:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.45 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0045.outbound.protection.outlook.com [104.47.34.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ED0BE003C1
	for <yocto@yoctoproject.org>; Fri, 17 Mar 2017 04:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=GcawQRn4tpgUYkPFejNTyVYpyfAiiCkAXyatLA5uEuk=;
	b=mSyrbXBV2JrbJon3QKwBgU2Cty9Gi2MMu2yL2wSrKC8SXc5Lj6OIeT5PzrQ6N+PFTkEPsPkfJJYV7hBN10K8P2c9fkFLEeaJ1iMC1/Hn2vDChwNwZjzT8hRmOcc56VZdsKEJ4PKdfk4K/2I9d5dBGi5xa0sVD2XUa4JNpDrTxws=
Received: from MWHPR0101MB2957.prod.exchangelabs.com (10.174.165.138) by
	MWHPR0101MB2959.prod.exchangelabs.com (10.174.165.140) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.947.12; Fri, 17 Mar 2017 10:08:39 +0000
Received: from MWHPR0101MB2957.prod.exchangelabs.com ([10.174.165.138]) by
	MWHPR0101MB2957.prod.exchangelabs.com ([10.174.165.138]) with mapi id
	15.01.0947.022; Fri, 17 Mar 2017 10:08:39 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: epiphany for wayland only environemnt?
Thread-Index: AQHSnwWFGr1M3A16BkuR59gRdd4CEg==
Date: Fri, 17 Mar 2017 10:08:39 +0000
Message-ID: <MWHPR0101MB29577CA8CFDD7DD137A0D290B6390@MWHPR0101MB2957.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
x-originating-ip: [118.238.252.194]
x-ms-office365-filtering-correlation-id: 3ab98e0d-cdb7-4d7b-a3f5-08d46d1d957f
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:MWHPR0101MB2959; 
x-microsoft-exchange-diagnostics: 1; MWHPR0101MB2959;
	7:onl2GLkK1x+YTgrQaY8tSvqaVxEl64z0DqpyeWHlDOlqsi8ujmYTex9XHI4F5KMRstRJgAIHEzBwgsGQEyhyT7hYjxWaueO2Il1NqjgCxLTwTpN0QtS8EoLKInHPOs3c2UzpHdZn89gnSYfRXj1rvE5MqUfRGnk5u64nk0rywCby1Hpi6f6wk7xJ1RILIeHCrAkarmH/dBFt284YHBPiSv2In1rX2r2W55R9oo5EBz3IZys5U3AP216PDfbEphfaFMaw7KmoM9rkLB8qUR6Clw+MLC4u6L55ajKNYx8BXFyIBxUmrRI0ZZyEVYZInkk+yqdwes1tNgqKmf16hkbToA==
x-microsoft-antispam-prvs: <MWHPR0101MB29594F8BD7FA63EC91A7EC9EB6390@MWHPR0101MB2959.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6041248)(20161123558025)(20161123562025)(20161123560025)(20161123564025)(20161123555025)(6072148);
	SRVR:MWHPR0101MB2959; BCL:0; PCL:0; RULEID:;
	SRVR:MWHPR0101MB2959; 
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39450400003)(122556002)(74316002)(54896002)(81166006)(6916009)(19627405001)(3660700001)(50986999)(8936002)(7696004)(2501003)(5660300001)(33656002)(6606003)(54356999)(8676002)(1730700003)(86362001)(66066001)(189998001)(554214002)(53936002)(2900100001)(77096006)(38730400002)(110136004)(6506006)(7736002)(3280700002)(6436002)(9686003)(5640700003)(3846002)(102836003)(25786008)(2906002)(6116002)(99286003)(2351001)(55016002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR0101MB2959;
	H:MWHPR0101MB2957.prod.exchangelabs.com; FPR:; SPF:None; MLV:sfv;
	LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2017 10:08:39.3060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0101MB2959
Subject: epiphany for wayland only environemnt?
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
X-List-Received-Date: Fri, 17 Mar 2017 11:41:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR0101MB29577CA8CFDD7DD137A0D290B6390MWHPR0101MB2957_"

--_000_MWHPR0101MB29577CA8CFDD7DD137A0D290B6390MWHPR0101MB2957_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, Yocto.


I have looked into recipes index, etc. but I so far I could not figure out =
clear answer, so if you have status on this, I highly appreciate.


I am looking for a web browser that can (without much effort) be built and =
run on Yocto based environment, with wayland-only window system (without x1=
1 libraries).


i.e. if such Yocto recipe already exist, it would be a great help.

I can see midori, epiphay, or other browser 'should run' on wayland environ=
ment, but it seems they rely graphics libraries that still depends on x11 a=
nd in Yocto recipes x11 DISTRO_FEATURES is being set as requirement for the=
m.


Is this still the situation on latest master or morty branches.

If there is an attempt for the similar?


--_000_MWHPR0101MB29577CA8CFDD7DD137A0D290B6390MWHPR0101MB2957_
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
<p>Hello, Yocto.</p>
<p><br>
</p>
<p>I have looked into recipes index, etc. but I so far I could not figure o=
ut clear answer, so if you have status on this, I highly appreciate.</p>
<p><br>
</p>
<p>I am looking for a web browser that can (without much effort) be built a=
nd run on Yocto based environment, with wayland-only window system (without=
 x11 libraries).</p>
<p><br>
</p>
<p>i.e. if such Yocto recipe already exist, it would be a great help.</p>
<p>I can see midori, epiphay, or other browser 'should run' on wayland envi=
ronment, but it seems they rely graphics libraries that still depends on x1=
1 and in Yocto recipes x11 DISTRO_FEATURES is being set as requirement for =
them.</p>
<p><br>
</p>
<p>Is this still the situation on latest master or morty branches.</p>
<p>If there is an attempt for the similar?</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_MWHPR0101MB29577CA8CFDD7DD137A0D290B6390MWHPR0101MB2957_--
