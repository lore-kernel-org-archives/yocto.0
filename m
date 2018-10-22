Return-Path: <urs.fassler@bbv.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE0A2E00BB7; Mon, 22 Oct 2018 14:41:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FROM_EXCESS_BASE64, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [104.47.2.73 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
X-Greylist: delayed 28888 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Oct 2018 14:41:47 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0073.outbound.protection.outlook.com [104.47.2.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A795E00B23
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2018 14:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bbvSoftwareServices.onmicrosoft.com; s=selector1-bbv-ch;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=BzH2e+F7xyHR943lceBQKyFZvr4jUt/EQatJRVwYbTY=;
	b=I4Gcfp+px4cUGIrjqoX8bTbKiHwvcNUhn6S2Bo4DyYcsiE45rvDUTjTQ7eNibjMzUBFU+nUP3mPFIpDssZDuQkyWmKMa4m/LlBECZA54bmK8xr0SJZQdpBDGjRdVwDKfL/sasxZqZGG1rxz5olCsdTjuGrlN8KLLM/ondrZ6AF4=
Received: from AM6PR03MB3832.eurprd03.prod.outlook.com (20.176.243.26) by
	AM6PR03MB4774.eurprd03.prod.outlook.com (20.177.35.146) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1250.29; Mon, 22 Oct 2018 09:07:40 +0000
Received: from AM6PR03MB3832.eurprd03.prod.outlook.com
	([fe80::d882:426c:1de7:5c12]) by
	AM6PR03MB3832.eurprd03.prod.outlook.com
	([fe80::d882:426c:1de7:5c12%3]) with mapi id 15.20.1250.028;
	Mon, 22 Oct 2018 09:07:40 +0000
From: =?utf-8?B?VXJzIEbDpHNzbGVy?= <urs.fassler@bbv.ch>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"bruce.ashfield@gmail.com" <bruce.ashfield@gmail.com>
Thread-Topic: [yocto][yocto-docs][PATCH v2] kernel-dev: note about the change
	detection of kernel feature files
Thread-Index: AQHUaeau+PMo3vyN0kaQ2F5owR4YEg==
Date: Mon, 22 Oct 2018 09:07:39 +0000
Message-ID: <20181022090723.13828-1-urs.fassler@bbv.ch>
Accept-Language: de-CH, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.19.1
x-clientproxiedby: VI1PR0102CA0050.eurprd01.prod.exchangelabs.com
	(2603:10a6:803::27) To AM6PR03MB3832.eurprd03.prod.outlook.com
	(2603:10a6:20b:24::26)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=urs.fassler@bbv.ch; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.104.74.15]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM6PR03MB4774;
	6:pih2sGLaGAG4YhN9bdMUnv2b+r3NNW4mhXZrmYZEM9RYaAsl5pR9ZVwDEdjHYc9HGISI+Pb6dVuXq5ZdwCiuwpnWNHk+R+/EZ4kfK6Dh+VFeiXrP27VHvT3Oqq+XsoIBemy4hAvxK+5Y5zKnJvqnC6k9htfYgLv6uaGxlseYC17BOQienjxD/I2JvVxE2f5hh5LEleJtFpO7jbLcrtNMO9p+KrWKrTIQ2DWtV1BF79Ow3/aoGD2BCkaiiTOqcjkHgg8zq5hnal5Q9wRV/797X2lcxvStcYx35ZMYk9nng9J51tZ3GMSZtFs1BkpFfpqI0i41jBl2tWKPOEPVbchqL9zyCx4AX6Rceu3TeILLO6kPBYJ77pVO+NvN4JEKtzFRD0ic+Cu6RZ1VBmEmo97ilX7dB/pPI4oSfWbdX9nk55M8KWBBnDzPhFEOpF5RzxK5nTpJ7P9HOeGoSWDjB46NiQ==;
	5:N3EuSPWWdn35bjL+8kKZ62KS+9QUlRs3lExG3ZnRLv26Ck7SWIlW3vxTfKo2iZf56sU/bXRRK8f6fYLECigHQENq3Bz42ARSoicUti1hV6yHX8xGNLWOHUkCaFUgBDW9Cr/8qfVH2vPAQv12DJr+7acE99ONTZJhh0drht6Zc4k=;
	7:jkDYc0o3+qnORl1Stx5XmWaFHxDJiRRS3sW1DY7XrQlNHC9N8hUkf0/1zluk9YBUXhSfBK/dU6BCcPXv7RfGzYVAj2815hDfovLrOBuxTuaxku8nTzijKFeUGiZy1SDzMLMTIcGXLA+8ff57uLeG4bPtB8jBfHCdSgCj+g3oSIibGQPKG2Ustam6ysk0AgcU3yPyjinR8PSFzBDOy3V1SJ1PXVA8svYlL+k2PqhUjyhF0Hgg5Qyo3dWvR1/yqNlk
x-ms-office365-filtering-correlation-id: ac4f999a-4b5c-41a0-2667-08d637fdd130
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(5600074)(711020)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR03MB4774; 
x-ms-traffictypediagnostic: AM6PR03MB4774:
x-microsoft-antispam-prvs: <AM6PR03MB47748EC78EAC1AF33FD99FDE8FF40@AM6PR03MB4774.eurprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(181554191321653)(126837547833334)(33711482430040); 
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(3231355)(944501410)(52105095)(10201501046)(3002001)(148016)(149066)(150057)(6041310)(20161123558120)(20161123560045)(20161123562045)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699051)(76991095);
	SRVR:AM6PR03MB4774; BCL:0; PCL:0; RULEID:; SRVR:AM6PR03MB4774; 
x-forefront-prvs: 08331F819E
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(136003)(396003)(366004)(39840400004)(346002)(376002)(199004)(189003)(14454004)(110136005)(54906003)(316002)(26005)(386003)(50226002)(81156014)(8936002)(105586002)(68736007)(478600001)(66066001)(8676002)(53936002)(6436002)(6486002)(39060400002)(6512007)(2900100001)(2906002)(5660300001)(74482002)(71190400001)(1076002)(3846002)(6116002)(85202003)(7736002)(106356001)(81166006)(4326008)(97736004)(25786009)(305945005)(5250100002)(2501003)(476003)(36756003)(256004)(33896004)(1857600001)(486006)(6506007)(71200400001)(86362001)(102836004)(85182001)(2616005)(99286004)(52116002)(186003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR03MB4774;
	H:AM6PR03MB3832.eurprd03.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: bbv.ch does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: sv0iVgeTa8dEpqX6OApnwQwZzNB8r9RH9+zk5u+K9qv5GSJBQ1iElSiJ5ytL2nDVF0QH+WRtz0SO/qhfD41gJ8TtFGgvdsyM+9PKQUxISJaL7srGqHrEjxexRFEdN8wjXZ01W4+JoXPDSHzalZ8W1RoSVqh92k6eSjZdPh6QLogEc4C7Sw5OmrPnQo8F5tQ5cRgl2ss6Eb5Gjyvi7hIftA6gk67sLn1b+6yE69RMp09hDuUbdqzUIekm/yWvrn68dKeCJDpK6eedxMuJCGY7jXqcT92Sdr3j8QXA7XjpybebPFvTaSQZV9k7/oeudWbiAOpvYCiGF1Z6uPtknkO392RwsV/3iB3rvd24ARsMdqU=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: bbv.ch
X-MS-Exchange-CrossTenant-Network-Message-Id: ac4f999a-4b5c-41a0-2667-08d637fdd130
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2018 09:07:39.9654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 279985bd-2077-4d9d-9797-42238cfc06e2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR03MB4774
Subject: [yocto-docs][PATCH v2] kernel-dev: note about the change detection of kernel feature files
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
X-List-Received-Date: Mon, 22 Oct 2018 21:41:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <680A30CE57BD5B4E825B17EA937A4A17@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64

SXQgaXMgbm90IHRoZSBleHBlY3RlZCBiZWhhdmlvciB0aGF0IGNoYW5nZXMgb24gdGhlIC5jZmcg
ZmlsZXMgb25seQ0KcmVmZXJlbmNlZCBmcm9tIC5zY2MgZmlsZXMgYXJlIG5vdCBkZXRlY3RlZC4N
Cg0KU2lnbmVkLW9mZi1ieTogVXJzIEbDpHNzbGVyIDx1cnMuZmFzc2xlckBiYnYuY2g+DQpTaWdu
ZWQtb2ZmLWJ5OiBQYXNjYWwgQmFjaCA8cGFzY2FsLmJhY2hAc2llbWVucy5jb20+DQotLS0NCiBk
b2N1bWVudGF0aW9uL2tlcm5lbC1kZXYva2VybmVsLWRldi1jb21tb24ueG1sIHwgNCArKysrDQog
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvZG9jdW1lbnRh
dGlvbi9rZXJuZWwtZGV2L2tlcm5lbC1kZXYtY29tbW9uLnhtbCBiL2RvY3VtZW50YXRpb24va2Vy
bmVsLWRldi9rZXJuZWwtZGV2LWNvbW1vbi54bWwNCmluZGV4IDgzYjAyYjFjMS4uMmU0MjFlN2Jh
IDEwMDY0NA0KLS0tIGEvZG9jdW1lbnRhdGlvbi9rZXJuZWwtZGV2L2tlcm5lbC1kZXYtY29tbW9u
LnhtbA0KKysrIGIvZG9jdW1lbnRhdGlvbi9rZXJuZWwtZGV2L2tlcm5lbC1kZXYtY29tbW9uLnht
bA0KQEAgLTI2MjMsNiArMjYyMywxMCBAQA0KICAgICAgICAgICAgIDxmaWxlbmFtZT4uc2NjPC9m
aWxlbmFtZT4gZmlsZSBpbiB0aGUNCiAgICAgICAgICAgICA8ZmlsZW5hbWU+U1JDX1VSSTwvZmls
ZW5hbWU+IHN0YXRlbWVudCB0byByZWZlcmVuY2UgbXVsdGlwbGUga2VybmVsDQogICAgICAgICAg
ICAgZmVhdHVyZXMuDQorICAgICAgICAgICAgPG5vdGU+DQorICAgICAgICAgICAgICAgIEJpdGJh
a2Ugb25seSBkZXRlY3RzIGNoYW5nZXMgb24gZmlsZXMgbGlzdGVkIGluDQorICAgICAgICAgICAg
ICAgIDxmaWxlbmFtZT5TUkNfVVJJPC9maWxlbmFtZT4uDQorICAgICAgICAgICAgPC9ub3RlPg0K
ICAgICAgICAgPC9wYXJhPg0KIA0KICAgICAgICAgPHBhcmE+DQotLSANCjIuMTkuMQ0KDQo=

