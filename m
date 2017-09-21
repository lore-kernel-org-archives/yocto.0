Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C465E00CB4; Wed, 20 Sep 2017 21:53:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_40,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.49 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.2735]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4729 seconds by postgrey-1.32 at yocto-www;
	Wed, 20 Sep 2017 21:53:20 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0049.outbound.protection.outlook.com [104.47.41.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B97F3E00A9B
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 21:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Ea/zb0LChEshHOEAfpJjioitinPUJciqxt09pDtsXl8=;
	b=YoUrog2fDNExpGkDRpQCec0tZr9GhqHEP3l11IS5KDCubplBr4eN67Xaye3E7FC/l0JIZkNK1ztJ0OiIx5kK3PWDw8asDfpjZq5k3StZj5/9gc0wcZt6cB4Zriqo/1YTFYdCUXK+Q9ZjOLKnL4qounE8WLGwOFrG1MruY/rtkDs=
Received: from MWHPR01MB3293.prod.exchangelabs.com (10.172.170.150) by
	MWHPR01MB2573.prod.exchangelabs.com (10.168.203.143) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Thu, 21 Sep 2017 03:18:36 +0000
Received: from MWHPR01MB3293.prod.exchangelabs.com ([10.172.170.150]) by
	MWHPR01MB3293.prod.exchangelabs.com ([10.172.170.150]) with mapi id
	15.20.0077.011; Thu, 21 Sep 2017 03:18:36 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: "(-)"??
Thread-Index: AQHTMohPs5aV5l+WLk27A7Bpi9W3Ww==
Date: Thu, 21 Sep 2017 03:18:36 +0000
Message-ID: <MWHPR01MB32939418BEF2C9C72FE13D57B6660@MWHPR01MB3293.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [118.238.252.194]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR01MB2573;
	6:bgObg2b6bJE427tzmKBmWdl4KNKoKDVbpZYKO/29eUuCMQqgiPKFlK5yyi7FqdFMpO10uYfbU8ldA9I5tJRWvXUxPlBoqLoy+45Ruva2LKCDYr0LSshdngf3Fuqf/ImwAyygoKtrxjDlvjdQEB9Pz8n+KuBK0+1ScQBZCJaGPg5Q01lvMBkVcNiqyp8fIFgA1EoP6alVHddrjDQ9EN0x7INanIW7ZvPeZ7g/MWSVgNcdE10c2zhPJnHxVvdtdaBTFxfiA+/ctntvhHJrVUh1jdkAEVBOe0ZluaTBT+CAN74NjQxJN0ExU5mb0NJuBU4kPa4NjqrSajaUT2hDGu4g6g==;
	5:I7HGH2uAVpo7E3SnvlkGxTKxrWrlyv3M12zWwN6QpKKST3qTyEiOjNzu8xpN6KewnLumye58ifBiVfgKzA7q/nN5Fg02bOPJjvz32khZPvX184r1wfHJTWYLwPp0VMG82pMiEeUiAjh2DW8s7kiXfw==;
	24:2wrrK9Fwozgg2REEuPFnybnDM0Ukpd7NL/pHSwniGU8+9DqhWPqWMRqSpRlCwvrk9PvwdcA/j/OCwiBzEinOzfYcjn1LoYnNgX/e4PSQHag=;
	7:YDkUZUIt1qjc+6RGGz3l+x11Efr6+Dhu9GR/F0/S7/dwTnWAlM7qFedLXBgBj/q5JmW2ZhH9tjO/Z3v1XqfMUyAlyZsLNEEJq1TkmLypPnYV+ZN+RimhxJF3mBoRs4961tkr1cqm/umELVhkcVWeZ6G/HQjxpvfbyqz8eQTj8MNHsqatx09LuLsTgphx94XKa3AJ3OdgKAytkSbBwUrqH2Siq3vhMfeN6qSzL4hc0YI=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 9857ff75-114b-411c-2227-08d5009f7299
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(300000502095)(300135100095)(22001)(2017030254152)(300000503095)(300135400095)(2017052603199)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:MWHPR01MB2573; 
x-ms-traffictypediagnostic: MWHPR01MB2573:
x-exchange-antispam-report-test: UriScan:;
x-microsoft-antispam-prvs: <MWHPR01MB25739CB2CAE163E89210BD05B6660@MWHPR01MB2573.prod.exchangelabs.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(100000703101)(100105400095)(6041248)(20161123560025)(20161123562025)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123564025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:MWHPR01MB2573; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:MWHPR01MB2573; 
x-forefront-prvs: 04371797A5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39830400002)(346002)(376002)(189002)(199003)(86362001)(5640700003)(2900100001)(189998001)(558084003)(478600001)(6506006)(6606003)(3280700002)(3660700001)(77096006)(6436002)(97736004)(316002)(14454004)(102836003)(2906002)(2501003)(6116002)(33656002)(101416001)(5660300001)(74316002)(54896002)(99286003)(3846002)(55016002)(221153001)(9686003)(7696004)(53936002)(68736007)(66066001)(25786009)(19627405001)(6916009)(8676002)(50986999)(54356999)(81156014)(8936002)(1730700003)(105586002)(81166006)(7736002)(106356001)(2351001)(169313001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR01MB2573;
	H:MWHPR01MB3293.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2017 03:18:36.4450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB2573
Subject: "(-)"??
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
X-List-Received-Date: Thu, 21 Sep 2017 04:53:22 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR01MB32939418BEF2C9C72FE13D57B6660MWHPR01MB3293prod_"

--_000_MWHPR01MB32939418BEF2C9C72FE13D57B6660MWHPR01MB3293prod_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.
I am seeing some of the recipes contains lines like below.

> COMPATIBLE_MACHINE =3D "(-)"

Sorry being novice, but what is the intended effect of this line?
I can see submit comments that this is for blacklisting but I am not sure h=
ow it works.  It simply means a '-' letter?



--_000_MWHPR01MB32939418BEF2C9C72FE13D57B6660MWHPR01MB3293prod_
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
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p></p>
<div><span style=3D"font-size: 12pt;">Hello.</span><br>
</div>
<div>I am seeing some of the recipes contains lines like below.</div>
<div><br>
</div>
<div>&gt; COMPATIBLE_MACHINE =3D &quot;(-)&quot;</div>
<div><br>
</div>
<div>Sorry being novice, but what is the intended effect of this line?</div=
>
<div>I can see submit comments that this is for blacklisting but I am not s=
ure how it works. &nbsp;It simply means a '-' letter?</div>
<div><br>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_MWHPR01MB32939418BEF2C9C72FE13D57B6660MWHPR01MB3293prod_--
