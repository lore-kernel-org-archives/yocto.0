Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70C1DE00CC5; Fri,  9 Sep 2016 04:48:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.51 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0051.outbound.protection.outlook.com [104.47.32.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8828E00CBC
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 04:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=U9LQ3OU78p6XWLCy9gFpTHZc00PPE63kp8hSPfK5bQE=;
	b=3Ch2azcUk4uBLt5psWOJaQs/oraZEYmRrgbU//g1QPLE79mOWNKYpCE/0VcANjvQaJboNQofP8vzYSXcfztMZw/JxNbXaSS4vZDwp1SQ5K1edKIKSYBFr7P1nD9xx0i7uAlBng+PPbPTINyRJgRMfZyluWIml/6YFjjmLiEBaJk=
Received: from BLUPR0101MB1586.prod.exchangelabs.com (10.163.119.13) by
	BLUPR0101MB1586.prod.exchangelabs.com (10.163.119.13) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.609.9; Fri, 9 Sep 2016 11:33:03 +0000
Received: from BLUPR0101MB1586.prod.exchangelabs.com ([10.163.119.13]) by
	BLUPR0101MB1586.prod.exchangelabs.com ([10.163.119.13]) with mapi id
	15.01.0609.016; Fri, 9 Sep 2016 11:33:03 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ac_cv_sizeof_long size definition by SDK
Thread-Index: AQHSCo3tMep/f59FTUGurMdvGu1AVw==
Date: Fri, 9 Sep 2016 11:33:03 +0000
Message-ID: <BLUPR0101MB1586CBD9B1FAC1B7B8AB6EA7D7FA0@BLUPR0101MB1586.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: ff274b05-e33d-4926-ed01-08d3d8a50ff1
x-microsoft-exchange-diagnostics: 1; BLUPR0101MB1586;
	6:neb4kF+kSQWcJsbGPMh49i4kHDN+5w4T355fTs32iWwIeBrHCRlClWcC3FH/GrM416qsZq+G5wpBMMmn2CK8kdeakwUY5rWC9nnkyDtS/x0LZwEfpnNTLinAyGt+8JYdQh6mcoKmh/usI0wKYliB9d2jvKd34XT/MN1nGIEBWkEKc+HHCRcFy6d/tx8YZWWMUivMYZZE91ZgCEZCDJekcbQtipgitG8M+dgbxAM/mwiVAZnTeyvm6RhbodJHZyIcaadTOKmTBo4fx8bKvFv+cB5QtnUh4+cMSmasx+rF1S0=;
	5:8TmDo1A+QwawIc1Fz9om5WrI/uoMcXRhENeGxRbpaoY3L3wqBG9tCA0I/ZyBf2fSmA6hmp6oGpvWGiEOH8efLUNElBUrrgXgl1sdaoW2wZuYODtcjv2iVCkjXAcJfCcFtUbFGPsYq8ae56MJK+fBnQ==;
	24:A5vcwH5BFieWzg61S+tk9YpZcZb8/luaMiFGHEDVlWPdtHxsA41vww4oianWvFcMfGLWZcTJ7s5bUw63FQ37mx4x39fdsDnsqZln1S6rAa8=;
	7:7CsFUS2KoiayviYeAKqZ1PaiQs1gSu5ZOteyNoXiF2ln44+WitnyBA1d8R7voMsrgpMpQqUtSJy0qBMu98O3Ff6eqJ1GravX59/67AiYNKwDGGj9H0o3lqKQ1+uCEn9dapoXH2fjeXA690FvBkprwFF0czkAe2Yy1yxy1soB67ug5yUoBwFrGaCL6GLkpYRQVfnIZajRDEaobEe2uBJnrc2TQ/cPik4k93SmWrOiCbHPM+NjJGysK7IyqS0HIiF0
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR0101MB1586;
x-microsoft-antispam-prvs: <BLUPR0101MB15862B2E3E65E38B63630A7FD7FA0@BLUPR0101MB1586.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:BLUPR0101MB1586; BCL:0; PCL:0; RULEID:;
	SRVR:BLUPR0101MB1586; 
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(189002)(189998001)(19627405001)(54356999)(450100001)(11100500001)(2900100001)(10400500002)(122556002)(33656002)(8676002)(5002640100001)(1730700003)(81156014)(9686002)(5640700001)(74316002)(81166006)(77096005)(7846002)(5660300001)(106116001)(68736007)(8936002)(107886002)(110136002)(6116002)(66066001)(101416001)(7736002)(105586002)(7696004)(2351001)(87936001)(2906002)(16236675004)(3660700001)(106356001)(229853001)(19625215002)(3846002)(92566002)(86362001)(2501003)(3280700002)(97736004)(102836003)(586003)(50986999);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR0101MB1586;
	H:BLUPR0101MB1586.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2016 11:33:03.6447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0101MB1586
Subject: ac_cv_sizeof_long size definition by SDK
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
X-List-Received-Date: Fri, 09 Sep 2016 11:48:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR0101MB1586CBD9B1FAC1B7B8AB6EA7D7FA0BLUPR0101MB1586_"

--_000_BLUPR0101MB1586CBD9B1FAC1B7B8AB6EA7D7FA0BLUPR0101MB1586_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, Yocto.


I am now puzzled by this variable ste in $CONFIG_SITE setup file in Yocto-g=
enerated SDK.


I generated x86_64 host, arm (32bit) target SDK.

And if I invoke $CC (arm-poky-linux-gnueabi-gcc), using this SDK, sizeof (l=
ong) is 4 (long =3D int)


However, if I look into $CONFIG_SITE's definition of ac_cv_sizeof_long, it =
is defined as '8'.

I feel this is strange since if this cached configure data is for the targe=
t (and cross-compiling), this value should be 4, to match the above (arm-po=
ky-linux-gnueabi-gcc) result.

(I think this part of the cache is being copied from poky/meta/site/x86_64-=
linux, )


This is causing break if I build autotool based program using the SDK.


Am I doing mis-use of SDK here?



--_000_BLUPR0101MB1586CBD9B1FAC1B7B8AB6EA7D7FA0BLUPR0101MB1586_
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
<p>Hello, Yocto.</p>
<p><br>
</p>
<p>I am now puzzled by this variable ste in $CONFIG_SITE setup file in Yoct=
o-generated&nbsp;SDK.&nbsp;</p>
<p><span style=3D"font-size: 12pt;"><br>
</span></p>
<p><span style=3D"font-size: 12pt;">I generated x86_64 host, arm (</span><s=
pan style=3D"font-size: 12pt;">32bit) target SDK.</span><br>
</p>
<p></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
And if I&nbsp;invoke $CC (arm-poky-linux-gnueabi-gcc), using this SDK,&nbsp=
;sizeof (long) is 4 (long =3D int)</p>
<div><br>
</div>
<p>However,&nbsp;<span style=3D"font-size: 12pt;">if I look into $CONFIG_SI=
TE's definition of ac_cv_sizeof_long, it is defined as '8'.</span></p>
<p></p>
<p><span style=3D"font-size: 12pt;">I feel this is strange since if this ca=
ched&nbsp;</span><span style=3D"font-size: 12pt;">configure data is for the=
 target (and cross-compiling), this value should be 4, to match the above (=
</span>arm-poky-linux-gnueabi-gcc<span style=3D"font-size: 12pt;">)&nbsp;</=
span><span style=3D"font-size: 12pt;">result.</span><br>
</p>
<p>(<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quo=
t;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quo=
t;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size=
: 16px;">I think this part of the cache is being&nbsp;</span><span style=3D=
"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoj=
i&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&=
quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">copied
 from poky/meta/site/x86_64-linux,&nbsp;</span>)</p>
<p><br>
</p>
<p>This is causing break if I build autotool based program using the SDK.</=
p>
<p><br>
</p>
<p>Am I doing mis-use of SDK here?</p>
<p><br>
</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_BLUPR0101MB1586CBD9B1FAC1B7B8AB6EA7D7FA0BLUPR0101MB1586_--
