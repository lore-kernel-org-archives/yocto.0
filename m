Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85BC3E009F0; Thu, 22 Dec 2016 01:55:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.97 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4592 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 Dec 2016 01:55:37 PST
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0097.outbound.protection.outlook.com [104.47.41.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20714E006C7
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 01:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=xsQB9/gH0ufJR9l7OoxVbLT49rq6oUvEcjrKeHxOeKg=;
	b=grm/vCbmdJ1nlkCjsmB7/EU+4ncWZdVhxKnpDB/JScy4IN5bnlCrLzFiER8dy3uVRJPloIEJQe7pCGT2t7MnhKxbvqhmPSpIuUW7paRkQOMCTKzJZCsU9C1HEzNh++EP9dX0u5eMziIhsfm0RnO1jfbZKD+8GceVMoU3nZgDbvA=
Received: from CY4PR12MB1880.namprd12.prod.outlook.com (10.175.81.23) by
	CY4PR12MB1878.namprd12.prod.outlook.com (10.175.63.151) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.789.14; Thu, 22 Dec 2016 08:23:12 +0000
Received: from CY4PR12MB1880.namprd12.prod.outlook.com ([10.175.81.23]) by
	CY4PR12MB1880.namprd12.prod.outlook.com ([10.175.81.23]) with mapi id
	15.01.0789.018; Thu, 22 Dec 2016 08:23:12 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: how to use a kernel build path in developing libs
Thread-Index: AQHSXCu1QK/r9p+zHUaII/KpJ+jl2Q==
Date: Thu, 22 Dec 2016 08:23:11 +0000
Message-ID: <CY4PR12MB1880B54FDAEE0F03B00ECA30A5910@CY4PR12MB1880.namprd12.prod.outlook.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard.zhang@pica8.com; 
x-originating-ip: [25.172.122.132]
x-ms-office365-filtering-correlation-id: 5c7a987d-7430-42b9-835f-08d42a43c53b
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:CY4PR12MB1878;
x-microsoft-exchange-diagnostics: 1; CY4PR12MB1878;
	7:fZFA/KS26CGztb2RYjzXpEJ2d35hgUEVvZRt+hK/4cDJ6BZrnOpXfAGhLTO3A5S/LnNtBKVvooHW3dhL7QeEGSuPm/BIYIlVYB3/ZVweyrVkV3ECPrfG4OhuJzlNJHJTc5NxfwdfHlMr+sAC0zWUXmQT2PYGMlyWx91z/8oxxDvIAywaq6X6tCkzu8Nn6SpRhUEknveyQDz+mEEJBBDctGRbS2auBx8HJ/wEH+eANHcSMVDCIy/O88e5Poe85gjkoQkWhQvenOxnZxVk8IExsMfkFR4x2+3D6hJRp9dnab3hw2v2uCOYF5ESL+t5OXalXtOeKjv2Bj40fXMqxw3hqR6rhGhP9XyFaGDVBMxaeCgo3NJwpy5LGDTBQp9PJvc55aDJIjxiVYxdr09YUCF1XwAsf7Qq0TjZ3kxsPt3JAeznGLFBtHPQGfzy2mlFuJiahk5QiVKgOAl5vyxMinZxzg==
x-microsoft-antispam-prvs: <CY4PR12MB187813C4E0921112A4C62644A5920@CY4PR12MB1878.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6041248)(20161123564025)(20161123560025)(20161123555025)(20161123562025)(2016111802025)(6072148)(6043046);
	SRVR:CY4PR12MB1878; BCL:0; PCL:0; RULEID:; SRVR:CY4PR12MB1878; 
x-forefront-prvs: 01644DCF4A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(39830400002)(39410400002)(39450400003)(199003)(53754006)(189002)(2501003)(1730700003)(105586002)(189998001)(81156014)(2351001)(110136003)(74316002)(25786008)(81166006)(76576001)(99286002)(6436002)(16234385003)(106116001)(102836003)(6116002)(3846002)(5640700003)(7736002)(8676002)(9686002)(106356001)(19627405001)(101416001)(92566002)(107886002)(5660300001)(77096006)(2900100001)(6916009)(86362001)(3280700002)(6506006)(8936002)(6606003)(33656002)(66066001)(122556002)(68736007)(3660700001)(97736004)(2906002)(450100001)(7696004)(54356999)(38730400001)(50986999)(579124003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR12MB1878;
	H:CY4PR12MB1880.namprd12.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: pica8.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2016 08:23:11.9694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1878
Subject: how to use a kernel build path in developing libs
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
X-List-Received-Date: Thu, 22 Dec 2016 09:55:43 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_CY4PR12MB1880B54FDAEE0F03B00ECA30A5910CY4PR12MB1880namp_"

--_000_CY4PR12MB1880B54FDAEE0F03B00ECA30A5910CY4PR12MB1880namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

aGkgYWxsOg0KDQoNCkkgYW0gdHJ5aW5nIHRvIGFkZCBzb21lIGxpYiByZWxhdGVkIHdpdGgga2Vy
bmVsLg0KDQpXaGVuIEkgdHJ5IHRvIGluY2x1ZGUgdGhlIGtlcm5lbCBidWlsZCBkaXIgdG8gdGhl
IGxpYiwgaSBhbSBub3Qgc3VyZSB3aXRjaCBrZXJuZWwgYnVpbGQgcGF0aCBzaG91bGQgdG8gYmUg
dXNlZCA6DQoNCmJ1aWxkL3RtcC93b3JrL2dlbmVyaWN4ODZfNjQtcG9reS1saW51eC9saW51eC15
b2N0by80LjQuMy9saW51eC1nZW5lcmljeDg2XzY0LXN0YW5kYXJkLWJ1aWxkLw0KDQoNCg0KQW5v
dGhlciBxdWVzdGlvbjoNCg0KDQpXaGVuIEkgd2FudCB0byBkZXZlbG9wIGFuIGFwcGxpY2F0aW9u
ICB1c2UgeW9jdG8gU0RLLg0KDQpBZnRlciBJIGRlcGxveSBhIHlvY3RvIFNESyB0b29sY2hhaW4g
dGhhdCBpbWFnZSBpbmNsdWRlIGZ1bGwgdGFyZ2V0LCAgY291bGQgSSB1c2UgdGhlIGtlcm5lbCBi
dWlsZCBwYXRoIGZvciBjb21waWxlIHNvZnR3YXJlPw0KDQoNCg0KDQpSZWdhcmQsDQoNClJpY2hh
cmQgWmhhbmcNCg==

--_000_CY4PR12MB1880B54FDAEE0F03B00ECA30A5910CY4PR12MB1880namp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p>hi all:</p>
<p><br>
</p>
<p>I am trying to add some lib related with kernel.</p>
<p>When I try to include the kernel build dir to the lib, i am not sure wit=
ch kernel build path should to be used :</p>
<p>build/tmp/work/genericx86_64-poky-linux/linux-yocto/4.4.3/linux-genericx=
86_64-standard-build/</p>
<p><br>
</p>
<p><br>
</p>
<p>Another question:</p>
<p><br>
</p>
<p>When I want to develop an application&nbsp; use yocto SDK.</p>
<p>After I deploy a yocto SDK <span>toolchain</span> that image include ful=
l target,&nbsp; could I use the kernel build path for compile software?</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p>Regard,</p>
<p>Richard Zhang<br>
</p>
</div>
</body>
</html>

--_000_CY4PR12MB1880B54FDAEE0F03B00ECA30A5910CY4PR12MB1880namp_--
