Return-Path: <richard_allen@keysight.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E4C7E00C1E; Fri, 26 May 2017 06:13:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.127 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 907 seconds by postgrey-1.32 at yocto-www;
	Fri, 26 May 2017 06:13:53 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0127.outbound.protection.outlook.com [104.47.36.127])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E262E00AE4
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 06:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=keysighttech.onmicrosoft.com; s=selector1-keysight-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=jQ8d6jfYoJWjxGPUbbGSYkgJcu6B/InE8DD0OcZiIPM=;
	b=jMJlR6xQbXH+KPSS+sNNIH8xY8X4yDRYQsfNaFkFFC5J6GM8jndwgnKUk8M3KHw1odQYOghEWBPskP2M/dHY9LMjKK+EvcTcTafPldYebLRZiMLnDxCyHsuvYN7mHNZwIGxdBmxa+UDr2M+4EkJu0URZwc6Yg7HSt3V9bIrybME=
Received: from BL2PR17MB0723.namprd17.prod.outlook.com (10.167.118.25) by
	BL2PR17MB0721.namprd17.prod.outlook.com (10.167.118.23) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1124.9; Fri, 26 May 2017 12:58:44 +0000
Received: from BL2PR17MB0723.namprd17.prod.outlook.com
	([fe80::ad7c:a55a:a1c4:1a14]) by
	BL2PR17MB0723.namprd17.prod.outlook.com
	([fe80::ad7c:a55a:a1c4:1a14%14]) with mapi id 15.01.1124.011;
	Fri, 26 May 2017 12:58:44 +0000
From: "ALLEN,RICHARD (K-SantaClara,ex1)" <richard_allen@keysight.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: pyro not honoring TOOLCHAIN_TARGET_TASK  in populate_sdk
Thread-Index: AdLWHsB4O+rDr0wiQHiu+z20luhJeQ==
Date: Fri, 26 May 2017 12:58:44 +0000
Message-ID: <BL2PR17MB07231874E7E5333D663C42BEF1FC0@BL2PR17MB0723.namprd17.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=keysight.com;
x-originating-ip: [206.49.107.132]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL2PR17MB0721;
	7:0hpIpVDZYT5T+uC4U9bD1OTzMpAw0n/T1C2oSJBYDnHkTMvUV/pWIO2k6NquS2Ra+9CQmZENR9MwrW5sdFU4/EE0T3fW75n5kgwYBBO1vCgDbZKeTlPXmCE86SJJlk5t7fYWQVG12KVDA8Wzun7JiQyU3oqONdWkbOueYXNyvbfjV2J2pcZOYfX6JUwTDGOygKYrbknPBxrj8Bff7iDOkjpj/irefOxolr7M2BTNGszM6wB9VlorC7oida+jhAa3VHJvxlFTQzofBZ5y1sjpQcX23jKJaDSWh/6+qADEckoXuLqewmDTDbQy09aWvMoOQXMYFhIz+CHpw+ebgBW9yg==
x-ms-traffictypediagnostic: BL2PR17MB0721:
x-ms-office365-filtering-correlation-id: cee4f765-1a05-4219-f8f8-08d4a436f0ce
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(201703131423075)(201703031133081);
	SRVR:BL2PR17MB0721; 
x-microsoft-antispam-prvs: <BL2PR17MB07210038DBEEBEBF5E4B8D7FF1FC0@BL2PR17MB0721.namprd17.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700061)(100105000095)(100000701061)(100105300095)(100000702061)(100105100095)(6040450)(601004)(2401047)(8121501046)(5005006)(100000703061)(100105400095)(3002001)(93006095)(93001095)(10201501046)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123562025)(20161123560025)(20161123564025)(20161123555025)(6072148)(100000704061)(100105200095)(100000705061)(100105500095);
	SRVR:BL2PR17MB0721; BCL:0; PCL:0;
	RULEID:(100000800061)(100110000095)(100000801061)(100110300095)(100000802061)(100110100095)(100000803061)(100110400095)(100000804061)(100110200095)(100000805054)(100110500095);
	SRVR:BL2PR17MB0721; 
x-forefront-prvs: 031996B7EF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39850400002)(39410400002)(39450400003)(39840400002)(39400400002)(50986999)(54356999)(6506006)(33656002)(3660700001)(2351001)(99286003)(25786009)(8676002)(81166006)(1730700003)(6436002)(6916009)(110136004)(8936002)(102836003)(55016002)(53936002)(3846002)(6116002)(86362001)(7696004)(38730400002)(5660300001)(305945005)(9686003)(7736002)(5640700003)(478600001)(74316002)(189998001)(3280700002)(66066001)(2900100001)(5250100002)(2906002)(2501003)(14454004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BL2PR17MB0721;
	H:BL2PR17MB0723.namprd17.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: keysight.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2017 12:58:44.0266 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 63545f27-3232-4d74-a44d-cdd457063402
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2PR17MB0721
Subject: pyro not honoring TOOLCHAIN_TARGET_TASK in populate_sdk
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
X-List-Received-Date: Fri, 26 May 2017 13:13:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

With the pyro drop , when I use an -c populate_sdk,  It appears that TOOLCH=
AIN_TARGET_TASK  is not being honored.

I have a=20
TOOLCHAIN_TARGET_TASK_append =3D " gtest"

With morty, gtest is included in -c populate_sdk generated sdk
but with pyro, it is not.

Is this a known issue with pyro?
Thanks




Richard C. Allen
richard_allen@Keysight.com



