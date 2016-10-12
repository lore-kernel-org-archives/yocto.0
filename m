Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79BE0E009E7; Wed, 12 Oct 2016 02:34:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.48 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0048.outbound.protection.outlook.com [104.47.41.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55663E0095D
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 02:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=d/B/4a1B+YFPFH2PUBlfBDLsqMk1aSJmZi3ueZsTVtA=;
	b=pvay346uiSk+ovbEgsGNhulKKogFuAVpbaW+SSNMLbAIyjnHIPRmBRTGo4TCywax50sxM+impYnSiAWucSyyQuE775qcwVPobLujbdjPbrBKW/clJ+guGkzeEq9JJuRKnONx3ZVxc0aeZclfx1KVFgxzJBk9ICCLBWes0XTfL44=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.659.11; Wed, 12 Oct 2016 09:01:55 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0659.020; Wed, 12 Oct 2016 09:01:55 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Py_ENABLE_SHARED in Python cross-build
Thread-Index: AQHSJGdHR+6S/3f6kUOCwytp3AmJ2Q==
Date: Wed, 12 Oct 2016 09:01:54 +0000
Message-ID: <CY1PR0101MB1594BF07074AC5CB89F504FED7DD0@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 79a71d36-634e-467f-0de0-08d3f27e6a33
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1594;
	7:abnyvPpl77NgqXl7jlfJ4Gmo0UKNpzhH4ypqdP0UE1/zZvLvrugQDmKVFl5lBBrb1hr2EScMawXahZ/dk/GEm+gobZdFmcMpIdJAnAIBUlMTZUTe2ENpOn0LJlt8NCNj+FreQP7NnKx/+pdkspCZYIRWcfEKTOdBh2duLOieb90rTlDFHirNs/e8ALNdH2+CRl0YLY3ydJcDna0R+L5JMKCyrmC9Z2bnHLFbIeI4EGcQ3Ws4tOtNe7HkbM8zl8PycZMflOMqG0s379+m5sNfONjadbI47/kZwEhmM6T0BKy3datJjOgqtFdg0VgRvBQol21YaYPs0m2RzzAdmIKxNl/06yFmQHFktr/bj7wTNhc=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1594;
x-microsoft-antispam-prvs: <CY1PR0101MB1594ABB56640C43522464D6BD7DD0@CY1PR0101MB1594.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:CY1PR0101MB1594; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1594; 
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(189002)(174874002)(66066001)(2906002)(74316002)(9686002)(8676002)(87936001)(6916009)(5002640100001)(77096005)(3280700002)(92566002)(3660700001)(107886002)(8936002)(5640700001)(189998001)(10400500002)(122556002)(450100001)(5660300001)(2900100001)(15975445007)(68736007)(7696004)(110136003)(2501003)(6606003)(33656002)(16236675004)(2351001)(19627405001)(101416001)(7736002)(19580395003)(106356001)(105586002)(54356999)(19625215002)(106116001)(7846002)(3846002)(102836003)(6116002)(86362001)(586003)(11100500001)(97736004)(1730700003)(229853001)(81166006)(50986999)(81156014);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1594;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2016 09:01:54.7770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1594
Subject: Py_ENABLE_SHARED in Python cross-build
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
X-List-Received-Date: Wed, 12 Oct 2016 09:34:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB1594BF07074AC5CB89F504FED7DD0CY1PR0101MB1594_"

--_000_CY1PR0101MB1594BF07074AC5CB89F504FED7DD0CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yocto.

I recently encountered following issue with Python module cross-build.
(On Yocto 2.0 based build system, using distutils.bbclass)

http://bugs.python.org/issue28421

Firstly I believed it is a Python issue, but further looked into, Yocto bui=
ld environment has some cutomization causing this.

1) Python checks existence of Py_ENABLE_SHARED flag by calling sysconfig.py=
 function.
This flag is loaded from pyconfig.h by sysconfig.py:parse_config_h().

2) If Py_ENABLE_SHARED is present, it properly add -L and -lpython2.7 LD fl=
ags to gcc command line.
But I cannot see thse are being added and my Python module cross-build fail=
s.

3) For pyconfig.h generation to the cross target, Yocto build tools callign=
 oe_multilib_header() which makes modification to pyconfig.h file, which un=
fortunately results #ifdef/#include directives
which cannot be parsed by sysconfig.py:parse_config_h()

Is this something likely to be addressed by now?


--_000_CY1PR0101MB1594BF07074AC5CB89F504FED7DD0CY1PR0101MB1594_
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
-family:Calibri,Arial,Helvetica,sans-serif;">
<p></p>
<div><span style=3D"font-size: 12pt;">Hello Yocto.</span><br>
</div>
<div><br>
</div>
<div>I recently encountered following issue with Python module cross-build.=
</div>
<div>(On Yocto 2.0 based build system, using distutils.bbclass)</div>
<div><br>
</div>
<div>http://bugs.python.org/issue28421</div>
<div><br>
</div>
<div>Firstly I believed it is a Python issue, but further looked into, Yoct=
o build environment has some cutomization causing this.</div>
<div><br>
</div>
<div>1) Python checks existence of Py_ENABLE_SHARED flag by calling sysconf=
ig.py function.</div>
<div>This flag is loaded from pyconfig.h by sysconfig.py:parse_config_h().<=
/div>
<div><br>
</div>
<div>2) If Py_ENABLE_SHARED is present, it properly add -L and -lpython2.7 =
LD flags to gcc command line.</div>
<div>But I cannot see thse are being added and my Python module cross-build=
 fails.</div>
<div><br>
</div>
<div>3) For pyconfig.h generation to the cross target, Yocto build tools ca=
llign oe_multilib_header() which makes modification to pyconfig.h file, whi=
ch unfortunately results #ifdef/#include directives</div>
<div>which cannot be parsed by sysconfig.py:parse_config_h()&nbsp;</div>
<div><br>
</div>
<div>Is this something likely to be addressed by now?</div>
<div><br>
</div>
<p></p>
</div>
</body>
</html>

--_000_CY1PR0101MB1594BF07074AC5CB89F504FED7DD0CY1PR0101MB1594_--
