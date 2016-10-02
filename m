Return-Path: <nicolas.adell@actia.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 248D0E00C39; Sun,  2 Oct 2016 08:59:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.1.89 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1116 seconds by postgrey-1.32 at yocto-www;
	Sun, 02 Oct 2016 08:59:25 PDT
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-ve1eur01on0089.outbound.protection.outlook.com [104.47.1.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60701E00519
	for <yocto@yoctoproject.org>; Sun,  2 Oct 2016 08:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=actia.fr; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=4Q2brdwJnzIc7hjAXFygwJ5C39L59IauMzYDuYuAuvY=;
	b=WYBH0t/PPdu3G+4WEj+E77ek992xGm3Nj9/y+WKDnvNrV3j7Asn9fhzzp31/FYtsWZBX2aRbtISRQtV5vdrP8JZAgLvWgUf9qzKBjZoNCqNZ1HK0FdnbQJj6a46KERX5L1EUKjEmzhaHSvOq7pPQvdtg6NEneH4Zj0G0M5f3u0s=
Received: from VI1PR01MB1887.eurprd01.prod.exchangelabs.com (10.166.40.143) by
	VI1PR01MB1886.eurprd01.prod.exchangelabs.com (10.166.40.142) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.649.16;
	Sun, 2 Oct 2016 15:26:02 +0000
Received: from VI1PR01MB1887.eurprd01.prod.exchangelabs.com ([10.166.40.143])
	by VI1PR01MB1887.eurprd01.prod.exchangelabs.com ([10.166.40.143])
	with mapi id 15.01.0649.021; Sun, 2 Oct 2016 15:26:02 +0000
From: Nicolas ADELL <nicolas.adell@actia.fr>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-raspberrypi] failed to copy the final
	***rootfs.rpi-sdimg image file
Thread-Index: AQHSHL+z0G0El6t3skG11et+8WLEdw==
Date: Sun, 2 Oct 2016 15:26:02 +0000
Message-ID: <VI1PR01MB18870583363ED6E3EA9E25A685C30@VI1PR01MB1887.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=nicolas.adell@actia.fr; 
x-originating-ip: [25.166.38.4]
x-ms-office365-filtering-correlation-id: 2869ff9a-9051-425b-bd61-08d3ead86b91
x-microsoft-exchange-diagnostics: 1; VI1PR01MB1886;
	6:qoM6NNc4RawCVFl71j9F4ti4+6zULcwdj7eXU2Q+BBOVo56FE2i06mlYUjlWiWhfVH02npQw0yRlcJ/4uYqJad3YnPlgr9UTrq/B7pmSUjDHGYUUmkT7h2BR0Ouw2FmpGaiJDasHM1UYtJk7Ya9cjuD3ePcu3wpwG8nLtqiLgiZ+BNFIyCMGfNH7lZqt1IVz9rRsnnhsQCreqB+/cjfvGeQ6534vHyDfcxPEhP+xfB9WAqXdspRxOHHfi7Z1uf0aaHU5ZriX5vaa9cquQQUNCja9iIDWz0RtIBoIyuIsnhfaHDxM1Z2jPQ2zunwSEMEq;
	5:6O3gkwKa5kmDKfeoDMBp/mcFYXhFuNvIlwkzb/khjdSvdkL3bKMoIkc4nM/zaBL5RytZl69Oj8OIA48zG+kA9ysQZbdWRQgLwXz5b5ojErJdlhbpeyVhX4qxZlELQoIGVsO+6wtz8Q6D0iKdS3Sc41H/9b8Zaf1pgtez4+igOnY=;
	24:3xpKJluCNI/7kX8014EgXRlVwyqTLjJUw5yhzL6FxqRGkJZTWer1XXiw5nhP8/PdxH3kRKB+NPba+Om2D8dLAeF29mYlau02N01v5Ao/lbs=;
	7:NXvXuH2/gZYrUaImIfMzyYB2/B7oJGAUdxZYNt7uhJVreVW47otmCQQ7J4U4zEWB3ibs0dmkpC2bp+nVFhSCMh0c54WNKPpmmu4vKE5fe7t9e4TSqDYkPIdk9cnmximwt56DlrG49eGD2EXvM6R+z2rGZMD45BGTO0LBe5tjd2rHuV1X2u1by//97ujs16oESH0k7kVLwJIs3zlSorz5/Cos5OoewwkQiKB9VPT4yr/1CXGEZp/j+WkvJQYtpnY1BDKuCiwq9zX7Uq9GiI7m7Xj+P5AexNfEtE2guaEZ/bWmpqx3Tz15Udti95ecVXwRtSTXOeeizGSgJx9Y84oAKA==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:VI1PR01MB1886;
x-microsoft-antispam-prvs: <VI1PR01MB18864867ECB3D13058956AA485C30@VI1PR01MB1886.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:VI1PR01MB1886; BCL:0; PCL:0; RULEID:; SRVR:VI1PR01MB1886; 
x-forefront-prvs: 0083A7F08A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(189002)(586003)(19627405001)(106116001)(106356001)(7736002)(7846002)(86362001)(8936002)(8676002)(1730700003)(81156014)(81166006)(19580405001)(19580395003)(2501003)(3660700001)(87936001)(105586002)(66066001)(189998001)(2351001)(5640700001)(2906002)(92566002)(33656002)(19625215002)(101416001)(11100500001)(16236675004)(54356999)(74482002)(5660300001)(6116002)(102836003)(3846002)(7696004)(110136003)(3280700002)(450100001)(107886002)(68736007)(50986999)(122556002)(97736004)(74316002)(10400500002)(5002640100001)(9686002)(77096005)(2900100001)(6916009);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR01MB1886;
	H:VI1PR01MB1887.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: actia.fr does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: actia.fr
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Oct 2016 15:26:02.4527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 86314f06-03e8-4460-82f3-a44f992a19c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB1886
Subject: Re: [meta-raspberrypi] failed to copy the final ***rootfs.rpi-sdimg image file
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
X-List-Received-Date: Sun, 02 Oct 2016 15:59:31 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_VI1PR01MB18870583363ED6E3EA9E25A685C30VI1PR01MB1887eurp_"

--_000_VI1PR01MB18870583363ED6E3EA9E25A685C30VI1PR01MB1887eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Karim and Gary,

I have had the same problem this afternoon by trying to build the rpi-base-=
image for my raspberrypi board, with poky Krogoth.

The oe-core repo (openembedded-core branch krogoth) has been fetched, but I=
 still get the error while building the image.

However, I didn't find the commit 6d969bacc718e21a5246d4da9bf9639dcae29b02.
Could you give any other informations ?



--_000_VI1PR01MB18870583363ED6E3EA9E25A685C30VI1PR01MB1887eurp_
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
<p><span title=3D"yocto@yoctoproject.org" tabindex=3D"0" class=3D"_pe_m1 ms=
-font-size-xxl ms-fwt-r ms-font-color-neutralPrimary _pe_01 bidi allowTextS=
election"></span>Hi Karim and Gary,
<br>
</p>
<div><br>
I have had the same problem this afternoon by trying to build the rpi-base-=
image for my raspberrypi board, with poky Krogoth.<br>
<br>
The oe-core repo (openembedded-core branch krogoth) has been fetched, but I=
 still get the error while building the image.<br>
<br>
However, I didn't find the commit 6d969bacc718e21a5246d4da9bf9639dcae29b02.=
 <br>
Could you give any other informations ?<br>
</div>
<p><br>
</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_VI1PR01MB18870583363ED6E3EA9E25A685C30VI1PR01MB1887eurp_--
