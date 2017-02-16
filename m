Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7440E00A0A; Wed, 15 Feb 2017 18:35:41 -0800 (PST)
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
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0070.outbound.protection.outlook.com [104.47.38.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB979E00A37
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=LFw6T5iMBfG855NZEGr2nN6wXek6RARD+Yd6Gax79sw=;
	b=YqnRuGhpnXb4UBXaR137g7pq0IfgVMogYJfC13yVCs1xCb/TcYZkG8yVfntSzb0vl+1QiiVgTJFoV9u3mn9qHO/54uu33Gn1jxxtwofq4b6g6qXgxM8p2zJZTvjG/xC3RLU+X0NCLb/sGBmTbKNPd39bAoSh+jJJSxjC54WXYpM=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2955.prod.exchangelabs.com (10.174.181.145) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.888.16; Thu, 16 Feb 2017 02:35:27 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.0888.029; Thu, 16 Feb 2017 02:35:27 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: meta-efl build?
Thread-Index: AQHSh/x4PscFjZx9aUG9Qro60Dsqtg==
Date: Thu, 16 Feb 2017 02:35:26 +0000
Message-ID: <DM5PR0101MB295324100DA9294101797F66B65A0@DM5PR0101MB2953.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [25.171.161.132]
x-ms-office365-filtering-correlation-id: 0f77e718-fe3f-4aca-977a-08d456147790
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DM5PR0101MB2955; 
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2955;
	7:eRrTfPuo/8GzFvJCuoJ3WyYVkfKGUFznyVABRV9U+mMEZKGKdWGZDvQYql6LDcAZczIrL8Nh4NlB1akjgWpBGbHdTf56Hr5B6eMttSqJbXjeSR+z0sR3Di8uN0sWKtIgBUMNKsEf71OeY5CSQTAcUsBjJScooTRBBxy66okZilfLqwCF/M4znkCoIKKljkmwShs0vXf2BhBmsvS1OJ2aUiV9430pY760R6mY8HQsN5muVChXQW0aD8igCi5CPYcLG5a9OQPwozGLrdZoHfGH+r4D3mtcDG1ewNHhNhCSEqHfHo+bm0M+X8oPhLol2vtuDxRvFA6hFKBr5eadrO5yGg==
x-microsoft-antispam-prvs: <DM5PR0101MB29552BF90C81F62353AAF026B65A0@DM5PR0101MB2955.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123558025)(20161123560025)(20161123562025)(20161123564025)(20161123555025)(6072148);
	SRVR:DM5PR0101MB2955; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2955; 
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(39450400003)(199003)(189002)(2906002)(5640700003)(74316002)(81166006)(81156014)(606005)(8936002)(3280700002)(54896002)(55016002)(6306002)(189998001)(86362001)(6436002)(25786008)(99286003)(8676002)(66066001)(101416001)(1730700003)(6116002)(7736002)(7906003)(102836003)(389900002)(3480700004)(92566002)(38730400002)(2501003)(3660700001)(97736004)(3846002)(110136004)(2900100001)(68736007)(2351001)(19627405001)(54356999)(53936002)(33656002)(50986999)(450100001)(122556002)(6506006)(5660300001)(6916009)(106356001)(236005)(7696004)(106116001)(77096006)(105586002)(9686003)(6606003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2955;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2017 02:35:26.8719 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2955
Subject: meta-efl build?
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
X-List-Received-Date: Thu, 16 Feb 2017 02:35:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB295324100DA9294101797F66B65A0DM5PR0101MB2953_"

--_000_DM5PR0101MB295324100DA9294101797F66B65A0DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, Yocto.


I am trying to build EFL on top of my mayland environment (krogoth based).

I thought it would be easy since there is meta-openembedded/meta-efl recipe=
s, but now I am stuck.


Specifically, I am experiencing x11 dependency (the recipes erquire x11 to =
be in DISTRO_FEATURES here and elsewhere), but for my target I am settting =
wayland only, no x11.

(e.g. it says it needs libxcb, etc.)


Is it normal and I am failing to configure it properly?


I found below, but it does not talk much about the build errors I am facing=
, and if the targets I am specifying is correct, etc.


https://www.enlightenment.org/distros/yocto-start


If you are aware of any previous attempt, or, guide that I just overlooked =
for my laziness - I highly appreciate your pointers.


--_000_DM5PR0101MB295324100DA9294101797F66B65A0DM5PR0101MB2953_
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
<p>I am trying to build EFL on top of my mayland environment (krogoth based=
).</p>
<p>I thought it would be easy since there is meta-openembedded/meta-efl rec=
ipes, but now I am stuck.</p>
<p><br>
</p>
<p>Specifically, I am experiencing x11 dependency (the recipes erquire x11 =
to be in DISTRO_FEATURES here and elsewhere), but for my target I am settti=
ng wayland only, no x11.</p>
<p>(e.g. it says it needs libxcb, etc.)</p>
<p><br>
</p>
<p>Is it normal and I am failing to configure it properly?</p>
<p><br>
</p>
<p>I found below, but it does not talk much about the build errors I am fac=
ing, and if the targets I am specifying is correct, etc.</p>
<p><br>
</p>
<p><a href=3D"https://www.enlightenment.org/distros/yocto-start" class=3D"O=
WAAutoLink" id=3D"LPlnk169623" previewremoved=3D"true">https://www.enlighte=
nment.org/distros/yocto-start</a><br>
<br>
</p>
<p>If you are aware of any previous attempt, or, guide that I just overlook=
ed for my laziness - I highly appreciate your pointers.</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_DM5PR0101MB295324100DA9294101797F66B65A0DM5PR0101MB2953_--
