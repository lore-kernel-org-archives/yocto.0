Return-Path: <prvs=99731c0ad=Alistair.Francis@wdc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C8D9E00D33; Thu, 11 Apr 2019 11:31:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [216.71.154.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Apr 2019 11:31:18 PDT
Received: from esa4.hgst.iphmx.com (esa4.hgst.iphmx.com [216.71.154.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFEC0E00D31
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 11:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
	t=1555007479; x=1586543479;
	h=from:to:cc:subject:date:message-id:
	content-transfer-encoding:mime-version;
	bh=ITuicQEUtDMfItlcWgqoUyTp261zUm7N1C3McItJjBA=;
	b=i1kQZ8XfhtAQcugN3XCqWP4XpVN0JJoZemk+K7DN+XoMdaZJ9+GNE3CF
	FeY3D3SSGzz9upWCyII0QTRoP2FG8uIZT473KrdZrjr1m+/Ut0mczP0A+
	Z+9ucT3ISehOKTnO9t2SsK1rH+tziBaTEDEk7bBaUiHjDiWicKMePiUEO
	culu6a9CvZcYLnCHtPEFIwxAsY7qoOutnQI/K0GBcueBGN5w7V0fNX/Fp
	3noDQKJqpeFODvu/PB3OjtaeJZkzg1sdgyfa+FjQWzOZSUqw3R+uf31KY
	Kmzkm/hUpoEdr1Ye0Aul0okOlVOdYRR9EB8WnQmM53tKEw/UBAxNXfsiv g==;
X-IronPort-AV: E=Sophos;i="5.60,338,1549900800"; d="scan'208";a="105623131"
Received: from mail-co1nam04lp2059.outbound.protection.outlook.com (HELO
	NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.59])
	by ob1.hgst.iphmx.com with ESMTP; 12 Apr 2019 02:30:16 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ITuicQEUtDMfItlcWgqoUyTp261zUm7N1C3McItJjBA=;
	b=ZAjftVkseIWb2gTfB2id8HVDB+7qmCrMGMk09GzJN7Oxc+60UG0QBgAPiNYw5ieivkdp6cjfPoYsK25zMwxUMIfGi+LSswXkbaKbZRdQ/qgh1HK02ACnWV7DVvXrV2pPsD+mtCulGmNEwKl/KYlReiJflAWLl+0hASnUrPzOBmg=
Received: from DM6PR04MB4908.namprd04.prod.outlook.com (20.176.109.81) by
	DM6PR04MB5385.namprd04.prod.outlook.com (20.178.27.22) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1792.14; Thu, 11 Apr 2019 18:30:14 +0000
Received: from DM6PR04MB4908.namprd04.prod.outlook.com
	([fe80::9ba:6028:ae27:7d2]) by DM6PR04MB4908.namprd04.prod.outlook.com
	([fe80::9ba:6028:ae27:7d2%2]) with mapi id 15.20.1771.019;
	Thu, 11 Apr 2019 18:30:14 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-yocto-bsp][PATCH v2] beaglebone-yocto: Update u-boot
	config to match u-boot 19.04
Thread-Index: AQHU8JSa3r66wGV0mkGexn3uPUiKOQ==
Date: Thu, 11 Apr 2019 18:30:14 +0000
Message-ID: <20190411182858.11756-1-alistair.francis@wdc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.21.0
x-clientproxiedby: BYAPR08CA0022.namprd08.prod.outlook.com
	(2603:10b6:a03:100::35) To DM6PR04MB4908.namprd04.prod.outlook.com
	(2603:10b6:5:19::17)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Alistair.Francis@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e835d83-7e10-49e1-4410-08d6beabbcde
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600139)(711020)(4605104)(4618075)(2017052603328)(7193020);
	SRVR:DM6PR04MB5385; 
x-ms-traffictypediagnostic: DM6PR04MB5385:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <DM6PR04MB53850E4F56E3B36053BE1827902F0@DM6PR04MB5385.namprd04.prod.outlook.com>
x-forefront-prvs: 00046D390F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(376002)(136003)(346002)(366004)(39860400002)(199004)(189003)(6116002)(6506007)(53936002)(6436002)(26005)(476003)(7736002)(99286004)(486006)(66066001)(2616005)(305945005)(44832011)(3846002)(97736004)(54906003)(36756003)(316002)(68736007)(386003)(2501003)(86362001)(6512007)(6306002)(6916009)(5660300002)(102836004)(52116002)(105586002)(256004)(478600001)(4744005)(5640700003)(1730700003)(81166006)(50226002)(2351001)(14444005)(4326008)(106356001)(2906002)(25786009)(1076003)(81156014)(6486002)(8676002)(71190400001)(71200400001)(8936002)(14454004)(72206003)(966005)(186003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB5385;
	H:DM6PR04MB4908.namprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nUUzVKSWjjHC67LB+VdaV2hq65l6H/tsWg3k+2q0CvE0hRCQyZ3RzVquxXZJQEHsry5G+rOoNuosBVDw+4mKHVGdBK020/How0lDZnE0qfqsxm5tUN5j1htAyP6izPpvjOhTcEzlS3NsVJQxCxyHnp0pc/MloSbhvxOaOmGMwBF0LLgYQUdpI7WsQc2viWjl4WyLPZTB6n+L1eF11mSbE1EKt93X/t8O7BT0de2Nqz/jy5XG1SMypHF8KYoWD4dRkLj+eBQuHq7eFJyU18cCIjIYpIgMLgNcg7Ob5JaI7tcGP1rdoOamo92laTgWPw+kp9VQc7mEkNBen0Rd02Yzt7t6yHLEYJnXvjgIrX6BmM394t/4DzQgt2gNmss3xzbRJh+kg7LB1F9cCjyqwolBnJgYnzvQmFnj0oKePZ9y7bU=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e835d83-7e10-49e1-4410-08d6beabbcde
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2019 18:30:14.1154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5385
X-Mailman-Approved-At: Thu, 11 Apr 2019 15:05:32 -0700
Cc: "alistair23@gmail.com" <alistair23@gmail.com>,
	Alistair Francis <Alistair.Francis@wdc.com>, "denys@ti.com" <denys@ti.com>
Subject: [meta-yocto-bsp][PATCH v2] beaglebone-yocto: Update u-boot config to match u-boot 19.04
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
X-List-Received-Date: Thu, 11 Apr 2019 18:31:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

W1lPQ1RPICMxMzE0NV0NCg0KVGhpcyB3YXMgYW5ub3VuY2VkIGF0IDIwMTkuMDE6DQpodHRwczov
L3d3dy5tYWlsLWFyY2hpdmUuY29tL3UtYm9vdEBsaXN0cy5kZW54LmRlL21zZzMwNTQyNC5odG1s
DQoNCkJhc2ljYWxseSwgYW0zMzV4X2JvbmVibGFjayBpcyBqdXN0IGEgc3BlY2lhbCBzdWJzZXQg
b2YgYW0zMzV4X2V2bSBjb25maWcsDQpjcmVhdGVkIGFuZCBvd25lZCBieSBCZWFnbGVCb2FyZC5v
cmcgY29tbXVuaXR5LiBTaW5jZSBpdCB3YXMgbm90IG1pZ3JhdGVkIHRvDQp1c2UgQ09ORklHX0JM
SyBpbiB0aW1lIGZvciAyMDE5LjA0IHJlbGVhc2UuDQoNClNpZ25lZC1vZmYtYnk6IEFsaXN0YWly
IEZyYW5jaXMgPGFsaXN0YWlyLmZyYW5jaXNAd2RjLmNvbT4NCkFja2VkLWJ5OiBEZW55cyBEbXl0
cml5ZW5rbyA8ZGVueXNAdGkuY29tPg0KLS0tDQogbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5l
L2JlYWdsZWJvbmUteW9jdG8uY29uZiB8IDIgKy0NCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL21ldGEteW9jdG8tYnNwL2NvbmYv
bWFjaGluZS9iZWFnbGVib25lLXlvY3RvLmNvbmYgYi9tZXRhLXlvY3RvLWJzcC9jb25mL21hY2hp
bmUvYmVhZ2xlYm9uZS15b2N0by5jb25mDQppbmRleCA3MGQzY2ZlLi5iYzE4ZWU4IDEwMDY0NA0K
LS0tIGEvbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2JlYWdsZWJvbmUteW9jdG8uY29uZg0K
KysrIGIvbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2JlYWdsZWJvbmUteW9jdG8uY29uZg0K
QEAgLTMyLDcgKzMyLDcgQEAgS0VSTkVMX0VYVFJBX0FSR1MgKz0gIkxPQURBRERSPSR7VUJPT1Rf
RU5UUllQT0lOVH0iDQogDQogU1BMX0JJTkFSWSA9ICJNTE8iDQogVUJPT1RfU1VGRklYID0gImlt
ZyINCi1VQk9PVF9NQUNISU5FID0gImFtMzM1eF9ib25lYmxhY2tfY29uZmlnIg0KK1VCT09UX01B
Q0hJTkUgPSAiYW0zMzV4X2V2bV9kZWZjb25maWciDQogVUJPT1RfRU5UUllQT0lOVCA9ICIweDgw
MDA4MDAwIg0KIFVCT09UX0xPQURBRERSRVNTID0gIjB4ODAwMDgwMDAiDQogDQotLSANCjIuMjEu
MA0KDQo=

