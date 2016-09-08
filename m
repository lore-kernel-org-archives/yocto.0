Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F36CFE00E62; Thu,  8 Sep 2016 05:22:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.45 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0045.outbound.protection.outlook.com [104.47.32.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E53F7E00D05
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2016 05:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=gw9g5zWyNuLxRMaqJTt4V3y2jf9bOAZuQL/PDy/Z/Eo=;
	b=2vyFGMiPXNNgE2HV9eUbRn6LTAL1o+3gDFTQfTqrMzmjYSkHo7KZBOo9B0hCuwGwqgcqfMPd01TECA2CF6wuIaut1xFjEOaxNHOq3gNFtxJAnFD6jBXFX0WDtljWVK6Sre5QcnH87JJF8J2aFI3A9wpk/5rgzF48Ku1HbNdgITA=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1595.prod.exchangelabs.com (10.163.139.139) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.609.9; Thu, 8 Sep 2016 12:07:20 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0599.016; Thu, 8 Sep 2016 12:07:21 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: pkg_postinst behavior?
Thread-Index: AQHSCcmMxjjVl9+qyU2RriKOqwEQFg==
Date: Thu, 8 Sep 2016 12:07:20 +0000
Message-ID: <CY1PR0101MB1594A28319500402879A0B79D7FB0@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 4152f4bf-dee7-42a4-62c5-08d3d7e0afc7
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1595;
	6:geY+8f+qpWFWiWl5MchZk5E85GgyeZgw49TG0a8XkEGZTmVXJaeuzThoFuMlvsRqvR9QT8eeQ74IPcd4bYy8rmXkLbusaYlv1S7h/wZBgEktNqRLhN06k/v+xZEGeehbdArxB/DaKrmeYgAzWc+BwuMe4X79/Tu3TR4jFdasyfP/eXWMZAdN1vLL+JYmHJ/ttVHok8nCKCnxVhoc6CGin4vcLFwDGM1ZNEZBes9nQDHzpvP+N4+MDz0PaJH22WDlE90Xx/oktxfj6fPzpVfe8uUa+YDn/h9vceT2WyVJNbg=;
	5:1ZY1H87kvI78ilLM+8kgf2M8E+ZG+W+Ck8ZWgS7tAUDSoWu4h9sRhhhJMhP0JFZqz02GhhvI/Iw+yAAZdbJxmjE2Akh0i+M6qp7XqOpjpL+p87iuj848D5TNO0RH4fEeIq8tO5kzrpDiay0YpMdfow==;
	24:qFYgKu10i9mw/0tlHFYf9iL+euT8Z3w7A4LwBH3XEKhx/rTsRRQGPCKSkNkbIyopooYnPGAf0h0OAPd8RAyboFhaJETOL7HLfVxanS+Izqc=;
	7:L7XCsuOpj/inb3VZW9neUr9kpLa2qAlakwahsd3Bp6A2rDSYnHuEHB/Rg+QB6skUdcwCZ4P3fxJ+T40N7GO/YevtDaL1sUuxnSw2LqFfDvHJVQsssm0Rz3ZwwCDvjii3TjrsK9DP1wcFq92a4jF1yPl5jY3MgPNM3KoLaBFQur7CIACRzJ6AoE7LNPLX0D0RFsyiGkJiABDZxg69ihsMIcmDTN1wjNIaJzR3UqN9Niw+KplpnRIhmJyu9or/+4ig
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1595;
x-microsoft-antispam-prvs: <CY1PR0101MB15952E7C3BBA9A84CEB07B6CD7FB0@CY1PR0101MB1595.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:CY1PR0101MB1595; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1595; 
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(189002)(2351001)(86362001)(229853001)(3660700001)(3280700002)(92566002)(33656002)(106356001)(16236675004)(77096005)(9686002)(102836003)(6116002)(3846002)(110136002)(68736007)(5640700001)(87936001)(107886002)(19627405001)(10400500002)(2900100001)(8676002)(2501003)(66066001)(7696003)(97736004)(74316002)(7736002)(81166006)(81156014)(7846002)(586003)(122556002)(5660300001)(105586002)(7116003)(189998001)(5002640100001)(450100001)(50986999)(2906002)(19625215002)(101416001)(1730700003)(106116001)(8936002)(54356999);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1595;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2016 12:07:20.7224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1595
Subject: pkg_postinst behavior?
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
X-List-Received-Date: Thu, 08 Sep 2016 12:22:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB1594A28319500402879A0B79D7FB0CY1PR0101MB1594_"

--_000_CY1PR0101MB1594A28319500402879A0B79D7FB0CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, Yocto.
I just want to confirm how pkg_postinst scripts are called.

Provided the following scripts are provided, in two bbappend recipes as bel=
ow, which of them are actually executed and which are not?
I have briefly tried and 'OK's below are called and 'NG's are not.

The yocto manual says posttest scripts must be suffixed by package names, b=
ut which package names?
postinst scripts with package names from the other recipe (script in AAA re=
ferring BBB package name) can be invoked at BBB package installation?

AAA.bbappend:

pkg_postinst_AAA() {} - OK
pkg_postinst_AAA_append() {} - OK
pkg_postinst_BBB() {} - NG
pkg_postinst_BBB_append() {} - NG

BBB.bbappend:

pkg_postinst_AAA() {} - NG
pkg_postinst_AAA_append() {} - NG
pkg_postinst_BBB() {} - OK
pkg_postinst_BBB_append() {} - OK

And, multiple _append() once could be added, but if _append() is not there =
only one of such script for the same name is executed?


--_000_CY1PR0101MB1594A28319500402879A0B79D7FB0CY1PR0101MB1594_
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
<p></p>
<div><span style=3D"font-size: 12pt;">Hello, Yocto.</span><br>
</div>
<div>I just want to confirm how pkg_postinst scripts are called.</div>
<div><br>
</div>
<div>Provided the following scripts are provided, in two bbappend recipes a=
s below, which of them are actually executed and which are not?</div>
<div>I have briefly tried and 'OK's below are called and 'NG's are not.</di=
v>
<div><br>
</div>
<div>The yocto manual says posttest scripts must be suffixed by package nam=
es, but which package names?</div>
<div>postinst scripts with package names from the other recipe (script in A=
AA referring BBB package name) can be invoked at BBB package installation?<=
/div>
<div><br>
</div>
<div>AAA.bbappend:</div>
<div><br>
</div>
<div>pkg_postinst_AAA() {} - OK</div>
<div>pkg_postinst_AAA_append() {} - OK</div>
<div>pkg_postinst_BBB() {} - NG</div>
<div>pkg_postinst_BBB_append() {} - NG</div>
<div><br>
</div>
<div>BBB.bbappend:</div>
<div><br>
</div>
<div>pkg_postinst_AAA() {} - NG</div>
<div>pkg_postinst_AAA_append() {} - NG</div>
<div>pkg_postinst_BBB() {} - OK</div>
<div>pkg_postinst_BBB_append() {} - OK</div>
<div><br>
</div>
<div>And, multiple _append() once could be added, but if _append() is not t=
here only one of such script for the same name is executed?</div>
<div><br>
</div>
<p></p>
</div>
</body>
</html>

--_000_CY1PR0101MB1594A28319500402879A0B79D7FB0CY1PR0101MB1594_--
