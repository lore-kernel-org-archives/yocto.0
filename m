Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36EDDE00A64; Sat, 25 Mar 2017 04:04:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.55 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0055.outbound.protection.outlook.com [104.47.36.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 904E1E00874
	for <yocto@yoctoproject.org>; Sat, 25 Mar 2017 04:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=rDl9zJCTTSm0a0Ahh9TL0rOvbqUSnmANNuz00dGAsuM=;
	b=IP88IFTBqSL9g47JZcsO3A24jRzn77D7uGmUhNCiQqYj74WfeOgr61r4aBaExd07/H/y4CgdUq0DIoTe0ecPrcVq6NO+4r6xk1SN0ASmdiwGhk4HCX5mUSm03prOYc+nEnIYp5AJBnGBnz4JuiGvTe70ZBKqSXBdBr/r+xe1EKI=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.961.17; Sat, 25 Mar 2017 09:30:52 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.0961.020; Sat, 25 Mar 2017 09:30:52 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: a cmake recipe with subdirectories?
Thread-Index: AQHSpUp+j5Ww1//BTk2bUGpZ9cNgBQ==
Date: Sat, 25 Mar 2017 09:30:52 +0000
Message-ID: <DM5PR0101MB295343520E0A2F13415210F8B6310@DM5PR0101MB2953.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
x-originating-ip: [118.238.252.194]
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2953;
	7:Dlnii7LyS6Q4nKUDTJSIuyZsn0tn25jQlXG+jhGdzTaF2Y0gL1mEUZidYBkWeGWftDl9SgqCFlhniqgBfQgEmOQLvGpvGLD9/pi5kq99AvvsluflIfqIFKqO9qEk4r5yHs/ssoKsA+zeiF2BIlWJ8xrHhcr1YP6xtoBtrefVPnYa+HhntOtK2pVjOlfJtGQ2cbVFhhqGM6MF4MFpcLQpL9EfN6c9m1PHCp/Z4vynk+r+uThBaygxT17jOCE9+JHfUYayVz3ON2mDXZrzapLKV7y3WaiySVTpcmgE51JZpBUU2tu9XyMKYPwIYbwaMipMd/JTgIEdcO7v+Py9ugGdJg==
x-ms-office365-filtering-correlation-id: a9f3503c-1692-4ad0-41e1-08d47361a16c
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001)(2017030254075);
	SRVR:DM5PR0101MB2953; 
x-microsoft-antispam-prvs: <DM5PR0101MB29531E54721DE97D6E6EF1A4B6310@DM5PR0101MB2953.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123558025)(20161123562025)(20161123564025)(20161123555025)(20161123560025)(6072148);
	SRVR:DM5PR0101MB2953; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2953; 
x-forefront-prvs: 025796F161
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39450400003)(54896002)(33656002)(99286003)(5640700003)(66066001)(7696004)(74316002)(81166006)(6506006)(2351001)(86362001)(5660300001)(38730400002)(3846002)(6606003)(55016002)(110136004)(102836003)(3660700001)(6116002)(2501003)(54356999)(50986999)(19627405001)(8936002)(77096006)(1730700003)(2906002)(2900100001)(9686003)(53936002)(7736002)(6436002)(8676002)(3280700002)(189998001)(122556002)(25786009);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2953;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None; MLV:sfv;
	LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2017 09:30:52.0839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2953
Subject: a cmake recipe with subdirectories?
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
X-List-Received-Date: Sat, 25 Mar 2017 11:04:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB295343520E0A2F13415210F8B6310DM5PR0101MB2953_"

--_000_DM5PR0101MB295343520E0A2F13415210F8B6310DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, Yocto.
I wonder which is the common / recommended way of preparing a recipe for th=
e following project?

I have a source tree with 2 subdirectories A, B.
Both A and B are cmake based source trees - each has CMakeLists.txt file of=
 its own.
Then, when I build I would:

- checkout sync source for A and B
- build A (cd A; cmake; make)
- build B (cd ../B; cmake; make)

Where, build A produces headers and libraries to be used when building B.

Since this is rather a single software package, I want to make one Yhocto r=
ecipe that do the above A build and B build.

But looking into what cmake.bbclass does, it just configure against one CMa=
keList.txt and build tree?

I think writing two recipes for A and B, I can build them individually, but=
 if I can I want to avoid it since it involves unpacking the same source tr=
ee twice, in two recipes.
(though, it will be somehow cached in bitbake procedure and it is not a com=
plete duplicate..)

Any suggestion / coment is highly appreciated.



--_000_DM5PR0101MB295343520E0A2F13415210F8B6310DM5PR0101MB2953_
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
<div><span style=3D"font-size: 12pt;">Hello, Yocto.</span><br>
</div>
<div>I wonder which is the common / recommended way of preparing a recipe f=
or the following project?</div>
<div><br>
</div>
<div>I have a source tree with 2 subdirectories A, B.</div>
<div>Both A and B are cmake based source trees - each has CMakeLists.txt fi=
le of its own.</div>
<div>Then, when I build I would:</div>
<div><br>
</div>
<div>- checkout sync source for A and B</div>
<div>- build A (cd A; cmake; make)</div>
<div>- build B (cd ../B; cmake; make)</div>
<div><br>
</div>
<div>Where, build A produces headers and libraries to be used when building=
 B.</div>
<div><br>
</div>
<div>Since this is rather a single software package, I want to make one Yho=
cto recipe that do the above A build and B build.</div>
<div><br>
</div>
<div>But looking into what cmake.bbclass does, it just configure against on=
e CMakeList.txt and build tree?</div>
<div><br>
</div>
<div>I think writing two recipes for A and B, I can build them individually=
, but if I can I want to avoid it since it involves unpacking the same sour=
ce tree twice, in two recipes.</div>
<div>(though, it will be somehow cached in bitbake procedure and it is not =
a complete duplicate..)</div>
<div><br>
</div>
<div>Any suggestion / coment is highly appreciated.</div>
<div><br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_DM5PR0101MB295343520E0A2F13415210F8B6310DM5PR0101MB2953_--
