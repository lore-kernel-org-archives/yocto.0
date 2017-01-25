Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14C0AE00B79; Tue, 24 Jan 2017 16:55:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.59 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63900 seconds by postgrey-1.32 at yocto-www;
	Tue, 24 Jan 2017 16:55:26 PST
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0059.outbound.protection.outlook.com [104.47.41.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B62D5E00B74
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 16:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=GBOHUSzpM2S0Ei7SIvOVbj8CY1AVg4OdSHACI/wwB6I=;
	b=TuqjXVLd7xMUQH87fTn+xKUBPLqm7kq7XABsbekOxa30lHcCvU7ugoNcVbeesiSFOIuTfvurR5Rs4DOoxSvvuGVwXO93u8dvlpiiOvLTy5PHSBLNTH89oBSMyi8Zt2YX9QfKzNE11fyvuaCn9UFkBvsCrcJuCJUmgHrI5cE3UJ4=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1596.prod.exchangelabs.com (10.163.139.14) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.860.13; Wed, 25 Jan 2017 00:40:16 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0860.021; Wed, 25 Jan 2017 00:40:16 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: DISTRO_FEATURES vs IMAGE_FEATURES
Thread-Index: AQHSdqOZ7NrvK5x3AUGlnu0ne6uwxQ==
Date: Wed, 25 Jan 2017 00:40:16 +0000
Message-ID: <CY1PR0101MB1594E1133625F03E54753AA7B6740@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [118.238.252.194]
x-ms-office365-filtering-correlation-id: b80c1df9-7206-426e-fc69-08d444babbb4
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:CY1PR0101MB1596; 
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1596;
	7:1frCSXLPNe/DVLYsaV2J9tKKX5jVvc0nVoAVlCH/LFrkgOPeLjjxpYnUNrNR4KxyBmSgZvDs0u+wpey/r1hy0ku69bfFj98yGo1+CN8Rnmi+WkLPxw4XdgA+olB+YfAaL24O5DEw8ZPM37aLeS7GwlssYRbNQ3b9/si3DPcOxq9CU1lAp/CDLOq245o9pRGHZPcOcqdCMfQj1kowbNrAhO8/4+ME+3SsRvSMW0NzMc6msNYcIVAwqqDKnnXtm9jlCVQdEHndSii+3PmT8mbe+JaaRMV9xOCd0SBYQioBNK8AixssB0hONlM37BlGaW0SOKubv2p6+aLRuBH/hKx889UCpsnMrHnZOVXToIupZsntT3zKjFyIS88SwrHTyp7bx4J2drqpkt1axFCPoIeKIA35geYk0XKZ7rhYa1vaADYjrzIghB0Mu1v4uRhqjvfBCoNGwYyEzkr/gawqE8dpWA==
x-microsoft-antispam-prvs: <CY1PR0101MB159647DC08CB1AB2BA766726B6740@CY1PR0101MB1596.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6041248)(20161123555025)(20161123562025)(20161123560025)(20161123564025)(6072148);
	SRVR:CY1PR0101MB1596; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1596; 
x-forefront-prvs: 01986AE76B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39450400003)(189002)(199003)(6506006)(2501003)(54356999)(38730400001)(92566002)(97736004)(77096006)(25786008)(6436002)(5640700003)(189998001)(8936002)(99286003)(122556002)(9686003)(1730700003)(55016002)(2906002)(54896002)(6606003)(7736002)(7696004)(110136003)(68736007)(81156014)(6916009)(3280700002)(8676002)(81166006)(53936002)(74316002)(50986999)(33656002)(450100001)(105586002)(86362001)(7116003)(19627405001)(101416001)(66066001)(3660700001)(107886002)(6116002)(102836003)(3846002)(106356001)(2900100001)(5660300001)(106116001)(2351001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1596;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2017 00:40:16.7977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1596
Subject: DISTRO_FEATURES vs IMAGE_FEATURES
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
X-List-Received-Date: Wed, 25 Jan 2017 00:55:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB1594E1133625F03E54753AA7B6740CY1PR0101MB1594_"

--_000_CY1PR0101MB1594E1133625F03E54753AA7B6740CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yocto.
Though it may feel to me matter of taste, is there suggestion on when which=
 of these to use when you need to define your customized feature.

DISTRO_FEATURES seems to be more relaxed, you can define things in your dis=
tro conf.
IMAGE_FEATURE seems to be more strict, and you need to add your item also a=
s one of the 'validitems', unless you use it through FEATURE_PACKAGES.
(Or this is not needed when you use EXTRA_IMAGE_FEATURES?)

These two just mean one if for DISTRO associated features and another for y=
our image - it is all that?


--_000_CY1PR0101MB1594E1133625F03E54753AA7B6740CY1PR0101MB1594_
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
<div><span style=3D"font-size: 12pt;">Hello Yocto.</span><br>
</div>
<div>Though it may feel to me matter of taste, is there suggestion on when =
which of these to use when you need to define your customized feature.</div=
>
<div><br>
</div>
<div>DISTRO_FEATURES seems to be more relaxed, you can define things in you=
r distro conf.</div>
<div>IMAGE_FEATURE seems to be more strict, and you need to add your item a=
lso as one of the 'validitems', unless you use it through FEATURE_PACKAGES.=
</div>
<div>(Or this is not needed when you use EXTRA_IMAGE_FEATURES?)</div>
<div><br>
</div>
<div>These two just mean one if for DISTRO associated features and another =
for your image - it is all that?</div>
<div><br>
</div>
<p></p>
</div>
</body>
</html>

--_000_CY1PR0101MB1594E1133625F03E54753AA7B6740CY1PR0101MB1594_--
