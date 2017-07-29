Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37646E00D6D; Fri, 28 Jul 2017 22:27:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.37.64 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 5519 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Jul 2017 22:27:21 PDT
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0064.outbound.protection.outlook.com
	[104.47.37.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6BA6E00BF6
	for <yocto@yoctoproject.org>; Fri, 28 Jul 2017 22:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=MqW3ZkGNZwC8CBx9bkpFiJWiizBY2fn4yN1L1qgFx0c=;
	b=gfOqM2j8Vm805HB6RiUVLxdH/2+ly2kByQzdTqXa/ArRNYGFzDsaL7QP7D+ZILnBsl58PbbGddJ4s4ntFFnjqxkTnFCV2JZCos08zdGbzZ/MGOnm41n4BJPQk7805JQ2oCE8Ezr+p72PCGENACmqaREz6PFrVBmyFreO6iyIUuA=
Received: from MWHPR01MB3293.prod.exchangelabs.com (10.172.170.150) by
	MWHPR01MB3293.prod.exchangelabs.com (10.172.170.150) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1282.10; Sat, 29 Jul 2017 03:55:20 +0000
Received: from MWHPR01MB3293.prod.exchangelabs.com ([10.172.170.150]) by
	MWHPR01MB3293.prod.exchangelabs.com ([10.172.170.150]) with mapi id
	15.01.1282.023; Sat, 29 Jul 2017 03:55:20 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: bilding webkit/qtwebengine?
Thread-Index: AQHTCB5/QlmT5IDrFkaU0J1FaAQtrg==
Date: Sat, 29 Jul 2017 03:55:20 +0000
Message-ID: <MWHPR01MB3293F61E00763699373AC5F0B6BC0@MWHPR01MB3293.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [153.203.84.160]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR01MB3293;
	7:m3yDpmJQ++k/EJkkL8EMJYkPIQUCGKtxHuFvL2UYYiKe5YI5bkrv9FdgRt838dQwQQDhKwV7Bp1XP2bIZDa/iXNJXun7nhH+GY4Hk0xA4bMbPywEVW+MITcWDC5xyztmTNBMhxHb+gzPrWoArtbTxIOv2CMRsvtUHcNSOsKVVpHS0ZIgWU24OOXkuGhkqVlg58XodnJJe05MKbF0GMX+/cL6n0Lh+g3GHm+Y3Ktf1zqgK4brj07fEbgqapwl7Veb3EJy/5cNvxM7BDo5q0ktHWQkaB4t90iMWtd7X8gMuEiHkuZesWmX4Ffu/6Bu3Wxu2S3CQREg1Knu5mr7iUw8o+OPYnw4+u36hJXWb2H2XWD4LAD3BJmUTZnDP178B8S/T0e80R1tocEDkfj0eCVP5zDA19q3c+WzTF/5KgV0n9IXRYlyxZXNDq5Fbxg0BgpP/LgU9vkG5qAX3hIx5j9Uj4unvsEfH0wslNHmKIj0+zV3j7C0zfJM9QzP3TdGY4HrrkiW6LLTMtLMlvWUkQirAaIHO0IkwIod8NDynLkq3L4uOK4UggZ/pTqyq0dNyCDbSOGmTrQqCdgsE+PNnlxE7dFfhhniE9kkW08UAI0tAcomoQ9Ldruvb304DY0MdkCHqjx2cfMtk2qbGdI4Gv7YP3sqoB+/BLvrSyTL82MvI3/AKrZNuOxFgOntBX2jW7LKD4SSn/me20tV6kikJTf+zOF633E8EuMJJ4wCe0PHvSk3hFEDNHuX6MjL0r+YOAsx26n+nWDklYmF+gqpZll610+h46/s4o6hkJg9VNAmTto=
x-ms-office365-filtering-correlation-id: 5d699f61-b9d6-4b31-535a-08d4d635a1d3
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254135)(300000503095)(300135400095)(2017052603031)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:MWHPR01MB3293; 
x-ms-traffictypediagnostic: MWHPR01MB3293:
x-exchange-antispam-report-test: UriScan:;
x-microsoft-antispam-prvs: <MWHPR01MB3293ED69B1435F70D1A6A44CB6BC0@MWHPR01MB3293.prod.exchangelabs.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(10201501046)(93006095)(93001095)(3002001)(100000703101)(100105400095)(6041248)(20161123558100)(20161123562025)(20161123564025)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:MWHPR01MB3293; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:MWHPR01MB3293; 
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39410400002)(39840400002)(39400400002)(39450400003)(189002)(199003)(54094003)(77096006)(189998001)(25786009)(2501003)(6436002)(5640700003)(33656002)(6606003)(6916009)(101416001)(50986999)(5660300001)(6506006)(3846002)(105586002)(54356999)(74316002)(2351001)(7736002)(6116002)(102836003)(3280700002)(3660700001)(2906002)(14454004)(2900100001)(19627405001)(106356001)(110136004)(38730400002)(7696004)(68736007)(81166006)(99286003)(66066001)(81156014)(8676002)(478600001)(1730700003)(97736004)(9686003)(8936002)(54896002)(53936002)(86362001)(55016002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR01MB3293;
	H:MWHPR01MB3293.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2017 03:55:20.0018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB3293
Subject: bilding webkit/qtwebengine?
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
X-List-Received-Date: Sat, 29 Jul 2017 05:27:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR01MB3293F61E00763699373AC5F0B6BC0MWHPR01MB3293prod_"

--_000_MWHPR01MB3293F61E00763699373AC5F0B6BC0MWHPR01MB3293prod_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello.
I am seeing issue with threads/parallel make.  I wonder if anyone has exper=
ience/suggestion.

My question: is if it is possible that I set parallel make numbers to lower=
 only for a few recipes that are known to resource hog?

I am building webkig/chrome related recipes (e.g. qtwebengine or alike) as =
part of my image build.  I have been setting parallel thread / make paramet=
ers relatively high in the past, say 20-30.
So far it worked well and it make me finish my build faster.

Then, I added these components to my image, then the build crashes (jenkins=
 killed with lack of memory).
I imagine these components have complex build system within it, so it is mo=
re resource hog compared to the other =93ordinal=94 components.

I imagine that by reducing the parallel make configuration numbers to lower=
, the build will not break for webkits, but at the same time, it will be sl=
ower to the other parts of the build.


--_000_MWHPR01MB3293F61E00763699373AC5F0B6BC0MWHPR01MB3293prod_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p></p>
<div><span style=3D"font-size: 12pt;">Hello.</span><br>
</div>
<div>I am seeing issue with threads/parallel make. &nbsp;I wonder if anyone=
 has experience/suggestion.</div>
<div><br>
</div>
<div>My question: is if it is possible that I set parallel make numbers to =
lower only for a few recipes that are known to resource hog?</div>
<div><br>
</div>
<div>I am building webkig/chrome related recipes (e.g. qtwebengine or alike=
) as part of my image build. &nbsp;I have been setting parallel thread / ma=
ke parameters relatively high in the past, say 20-30.</div>
<div>So far it worked well and it make me finish my build faster.</div>
<div><br>
</div>
<div>Then, I added these components to my image, then the build crashes (je=
nkins killed with lack of memory).</div>
<div>I imagine these components have complex build system within it, so it =
is more resource hog compared to the other =93ordinal=94 components.</div>
<div><br>
</div>
<div>I imagine that by reducing the parallel make configuration numbers to =
lower, the build will not break for webkits, but at the same time, it will =
be slower to the other parts of the build.</div>
<div><br>
</div>
<p></p>
</div>
</body>
</html>

--_000_MWHPR01MB3293F61E00763699373AC5F0B6BC0MWHPR01MB3293prod_--
