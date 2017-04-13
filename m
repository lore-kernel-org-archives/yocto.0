Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8B7AE00992; Wed, 12 Apr 2017 17:16:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.42.69 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0069.outbound.protection.outlook.com [104.47.42.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF1CFE00961
	for <yocto@yoctoproject.org>; Wed, 12 Apr 2017 17:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=g7hZFCdDYUHPQQ0jnXwmQGlw+7H5RAHd26wFqhuhmxs=;
	b=qFeTzHvpuWRDUbh6NBLklB6T1pdQKx6Qp8qMOcI/4iqO9nS1FFA1fcwibAmY9tUrzhYBS9DlD68LAmmXJYIppf/IblW7OL3wstX1vqOxcjFm5NLJeoF5VfYy5bVQOiEim7cmI4vS5wplwl2gRvSOAehrQXZOq1g4AaxPeehLCGE=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1019.17; Thu, 13 Apr 2017 00:16:08 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.1019.025; Thu, 13 Apr 2017 00:16:08 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: 'and' combination for OVERRIDES values?
Thread-Index: AQHSs+sly3FCFoQBfkewnZpXpPIajg==
Date: Thu, 13 Apr 2017 00:16:08 +0000
Message-ID: <DM5PR0101MB29539EA7DC26F0544F7CE4BEB6020@DM5PR0101MB2953.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
x-originating-ip: [25.174.180.132]
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2953;
	7:KrO/i+lV839ml+cC/gAJIOuUQze0VrPt+Osx4Ue2Wz7sHHLoND59yL4ukHvWlUqqss0577JtSSqRMCXNPMGKkW+Q7niV0rWGfvSzMdJTEr3OaaYl/TeVnedPSpec/zu5uubgnJHiYUfvy8SG6Ul9HCCtmFBphWk/cCtORetSLjYgCCINKdhS09rv21MZV11+wq2NIiLqO8+KhDVFZ07w1lOYoLrdHbBvnHnfhgOhYoMJCfHCdBAvPi/NnpwPnH5MXB9j+1Yul51RXy34Q3TFNdQFhUfTCkfHg0KKX0XGK/g+FtbDHBM/6//R1in78mDSyoq8PxP5ui/uqVQT805Ivg==
x-ms-office365-filtering-correlation-id: def0bc98-3329-4383-2a05-08d4820248a1
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075)(201703031133081)(201702281549075);
	SRVR:DM5PR0101MB2953; 
x-microsoft-antispam-prvs: <DM5PR0101MB295377F8FD2CB20FC7276AE8B6020@DM5PR0101MB2953.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(10201501046)(93006095)(93001095)(3002001)(6041248)(201703131423075)(201703061421075)(20161123564025)(20161123562025)(20161123560025)(20161123555025)(6072148);
	SRVR:DM5PR0101MB2953; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2953; 
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39450400003)(39400400002)(2351001)(6916009)(122556002)(53936002)(19627405001)(86362001)(6506006)(77096006)(55016002)(74316002)(2900100001)(5640700003)(6436002)(99286003)(8936002)(7696004)(2501003)(9686003)(54896002)(66066001)(7736002)(6606003)(3280700002)(6116002)(3846002)(102836003)(8676002)(25786009)(189998001)(1730700003)(2906002)(50986999)(38730400002)(3660700001)(54356999)(110136004)(5660300001)(33656002)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2953;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None; MLV:sfv;
	LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2017 00:16:08.4208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2953
Subject: 'and' combination for OVERRIDES values?
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
X-List-Received-Date: Thu, 13 Apr 2017 00:16:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB29539EA7DC26F0544F7CE4BEB6020DM5PR0101MB2953_"

--_000_DM5PR0101MB29539EA7DC26F0544F7CE4BEB6020DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, Yocto.

I just wonder if there is convenient way of defining somthing in recipes ba=
sed on combination of two OVERRIDES variables.
Say, I have two variables xxx and yyy.

AAA =3D "false"
AAA_xxx =3D "true"
AAA_yyy =3D "true"

But what if I want to set AAA to be "true" only when xxx and yyy are in OVE=
RRIDES?
(And also for 'or' condition.)

The similar situation for do_install_append(), etc.

do_install_append_xxx() {
}

do_install_append_yyy() {
}



--_000_DM5PR0101MB29539EA7DC26F0544F7CE4BEB6020DM5PR0101MB2953_
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
<div>Hello, Yocto.</div>
<div><br>
</div>
<div>I just wonder if there is convenient way of defining somthing in recip=
es based on combination of two OVERRIDES variables.</div>
<div>Say, I have two variables xxx and yyy.</div>
<div><br>
</div>
<div>AAA =3D &quot;false&quot;</div>
<div>AAA_xxx =3D &quot;true&quot;</div>
<div>AAA_yyy =3D &quot;true&quot;</div>
<div><br>
</div>
<div>But what if I want to set AAA to be &quot;true&quot; only when xxx and=
 yyy are in OVERRIDES?</div>
<div>(And also for 'or' condition.)</div>
<div><br>
</div>
<div>The similar situation for do_install_append(), etc.</div>
<div><br>
</div>
<div>do_install_append_xxx() {</div>
<div>}</div>
<div><br>
</div>
<div>do_install_append_yyy() {</div>
<div>}</div>
<div><br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_DM5PR0101MB29539EA7DC26F0544F7CE4BEB6020DM5PR0101MB2953_--
