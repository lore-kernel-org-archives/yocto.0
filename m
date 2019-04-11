Return-Path: <prvs=99731c0ad=Alistair.Francis@wdc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EE94E00CD5; Thu, 11 Apr 2019 10:29:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [68.232.143.124 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 122 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Apr 2019 10:29:30 PDT
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com [68.232.143.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB830E00BC8
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 10:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
	t=1555003798; x=1586539798;
	h=from:to:cc:subject:date:message-id:
	content-transfer-encoding:mime-version;
	bh=I98F61jzwEj+KWGjfO3wSg85GFaTdd09zAPG/1jvl1g=;
	b=OmGwxbsT7mQNyvDnQWG+pfRkhf/DUIROp7gh2IUcvg1R5/60jMfdgcpU
	0TzQb5xpr/GC3ng9e2L7ianfx763jzzGOmWsxTdxpL+xnGPx/rydBhuEK
	/Op4CkO1HNBNaNX9lu5RsPlpk5OrYWhi5xBw6dvBgr4tpXa5XE5bODUqq
	ndk3wr7GmZq8LAQZjrUY168bR54NYTLYD1SUjCE9wUJLY6pMkJf7TCOVp
	SsyqSYm0PyV1EU0jIVkdDgqb9yQukEJtwIynd9XS8L2Xe6FQsNgmgu2CL
	jN0a4DXOwd0GlNEYsKusisgEUeHKN7dTnwrW5e6Uslx46GfrdED+XZogY Q==;
X-IronPort-AV: E=Sophos;i="5.60,338,1549900800"; d="scan'208";a="204567479"
Received: from mail-bn3nam01lp2050.outbound.protection.outlook.com (HELO
	NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.50])
	by ob1.hgst.iphmx.com with ESMTP; 12 Apr 2019 01:27:59 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=I98F61jzwEj+KWGjfO3wSg85GFaTdd09zAPG/1jvl1g=;
	b=avaA+BW6o8RHy/r7fOWVIqPB3g5ezOn1J5k63MiQuV1bFHBD0HTRZCk/4pv0lsHR1FKpdP48WPtgHUmJ3lZSjp7dccPezcfcZGr2klMp2FIo0V9CYC5W8zef9dOcoOHUEFpL11SK5G2OJDBI7Rw3dJubVVWdaDAM9MGN2pfbgrE=
Received: from DM6PR04MB4908.namprd04.prod.outlook.com (20.176.109.81) by
	DM6PR04MB4682.namprd04.prod.outlook.com (20.176.107.143) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1792.17; Thu, 11 Apr 2019 17:27:25 +0000
Received: from DM6PR04MB4908.namprd04.prod.outlook.com
	([fe80::9ba:6028:ae27:7d2]) by DM6PR04MB4908.namprd04.prod.outlook.com
	([fe80::9ba:6028:ae27:7d2%2]) with mapi id 15.20.1771.019;
	Thu, 11 Apr 2019 17:27:25 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-yocto-bsp][PATCH] beaglebone-yocto: Update u-boot config
	to match u-boot 19.04
Thread-Index: AQHU8IvUmmcaHneOLUqi+CV8GMY6uA==
Date: Thu, 11 Apr 2019 17:27:25 +0000
Message-ID: <20190411172609.16625-1-alistair.francis@wdc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.21.0
x-clientproxiedby: BYAPR11CA0060.namprd11.prod.outlook.com
	(2603:10b6:a03:80::37) To DM6PR04MB4908.namprd04.prod.outlook.com
	(2603:10b6:5:19::17)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Alistair.Francis@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bbbf9591-27ae-44a7-2141-08d6bea2f6a4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600139)(711020)(4605104)(4618075)(2017052603328)(7193020);
	SRVR:DM6PR04MB4682; 
x-ms-traffictypediagnostic: DM6PR04MB4682:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <DM6PR04MB46826174B7B27EECB383470C902F0@DM6PR04MB4682.namprd04.prod.outlook.com>
x-forefront-prvs: 00046D390F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(39860400002)(366004)(136003)(376002)(346002)(189003)(199004)(26005)(52116002)(186003)(66066001)(6916009)(486006)(44832011)(476003)(54906003)(2501003)(6506007)(386003)(2906002)(2616005)(99286004)(102836004)(316002)(6116002)(3846002)(2351001)(36756003)(105586002)(97736004)(106356001)(4326008)(7736002)(8676002)(305945005)(81166006)(1730700003)(81156014)(25786009)(50226002)(8936002)(4744005)(1076003)(256004)(14444005)(68736007)(71200400001)(71190400001)(5660300002)(6512007)(72206003)(14454004)(86362001)(6486002)(5640700003)(6436002)(478600001)(53936002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB4682;
	H:DM6PR04MB4908.namprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zBN9nUHJR1L8JNejpiV3JP0sgRZLpWCtMxxweYDnbBWJ3sMExfWA3Xmm52gcXuS4uf09b2+Zcc4Vew4gBufBPf+tZbSmHzAswijzQupivpYbMpIrkHlQzdEsi9SOghrncAYgzmFRIKJNdxW0DLfUdVtC/PeX65rBh5nVaeq61u2N91+0EChc1eFxeI4MfwdJYT6WKNcHqz8l73mt7H6vlIHyEmNI0MwBfIaCz1asQaVpZw8Z3WAWx9X1YXpsskE2x5Bt6QY6RKBdINaz6E0XAjHxxzn28Ql9gGHxyUuOlvVhq2mb65JMw+OcrbqAPQlKjF2VjJfqF/luM9oX1G9VrL8tMazIAP17YS10uJJgRWsq10UbIcnCEPjVQQMaZMrXWRD7IvpfQdo2edIfB2EhL0BIEHYDgF9CDtaNFrBbWlo=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbbf9591-27ae-44a7-2141-08d6bea2f6a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2019 17:27:25.7529 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4682
X-Mailman-Approved-At: Thu, 11 Apr 2019 15:05:32 -0700
Cc: "alistair23@gmail.com" <alistair23@gmail.com>,
	Alistair Francis <Alistair.Francis@wdc.com>, "denys@ti.com" <denys@ti.com>
Subject: [meta-yocto-bsp][PATCH] beaglebone-yocto: Update u-boot config to match u-boot 19.04
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
X-List-Received-Date: Thu, 11 Apr 2019 17:29:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U2lnbmVkLW9mZi1ieTogQWxpc3RhaXIgRnJhbmNpcyA8YWxpc3RhaXIuZnJhbmNpc0B3ZGMuY29t
Pg0KLS0tDQogbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2JlYWdsZWJvbmUteW9jdG8uY29u
ZiB8IDIgKy0NCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkN
Cg0KZGlmZiAtLWdpdCBhL21ldGEteW9jdG8tYnNwL2NvbmYvbWFjaGluZS9iZWFnbGVib25lLXlv
Y3RvLmNvbmYgYi9tZXRhLXlvY3RvLWJzcC9jb25mL21hY2hpbmUvYmVhZ2xlYm9uZS15b2N0by5j
b25mDQppbmRleCA3MGQzY2ZlLi5iYzE4ZWU4IDEwMDY0NA0KLS0tIGEvbWV0YS15b2N0by1ic3Av
Y29uZi9tYWNoaW5lL2JlYWdsZWJvbmUteW9jdG8uY29uZg0KKysrIGIvbWV0YS15b2N0by1ic3Av
Y29uZi9tYWNoaW5lL2JlYWdsZWJvbmUteW9jdG8uY29uZg0KQEAgLTMyLDcgKzMyLDcgQEAgS0VS
TkVMX0VYVFJBX0FSR1MgKz0gIkxPQURBRERSPSR7VUJPT1RfRU5UUllQT0lOVH0iDQogDQogU1BM
X0JJTkFSWSA9ICJNTE8iDQogVUJPT1RfU1VGRklYID0gImltZyINCi1VQk9PVF9NQUNISU5FID0g
ImFtMzM1eF9ib25lYmxhY2tfY29uZmlnIg0KK1VCT09UX01BQ0hJTkUgPSAiYW0zMzV4X2V2bV9k
ZWZjb25maWciDQogVUJPT1RfRU5UUllQT0lOVCA9ICIweDgwMDA4MDAwIg0KIFVCT09UX0xPQURB
RERSRVNTID0gIjB4ODAwMDgwMDAiDQogDQotLSANCjIuMjEuMA0KDQo=

