Return-Path: <prvs=08543d9ad8=alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC6F9E00B77; Mon, 12 Nov 2018 08:08:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1539E00754
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 08:08:43 -0800 (PST)
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	wACG7Tp1020020; Mon, 12 Nov 2018 10:08:32 -0600
Authentication-Results: ppops.net;
	dkim=pass header.d=nio365.onmicrosoft.com header.s=selector1-ni-com
Received: from nam02-sn1-obe.outbound.protection.outlook.com
	(mail-sn1nam02lp0019.outbound.protection.outlook.com [216.32.180.19])
	by mx0a-00010702.pphosted.com with ESMTP id 2nnwnwg9c4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Mon, 12 Nov 2018 10:08:32 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=O6BPC4g0dCnGGv0JnltJSKV2TMy660ej4lNqMYQjhcY=;
	b=RYNxwHn+XEAu/yLnfndiCT6Md3LqYl5gqNL84LBlRNa7RbHdqdxiUtehXCJ/OtqF3dMESXGgP4SDndHUysktFuU4NRpblT5C56HbL6O4GbJj4Y/ayw7nMTL94qbLeev1ibkKkldloxPpD4qPCtMUgHNOWjQbTIDcc5VZsWxFrjw=
Received: from SN6PR04MB4221.namprd04.prod.outlook.com (52.135.71.147) by
	SN6PR04MB4157.namprd04.prod.outlook.com (52.135.71.27) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.20; Mon, 12 Nov 2018 16:08:30 +0000
Received: from SN6PR04MB4221.namprd04.prod.outlook.com
	([fe80::b101:799c:362d:549e]) by
	SN6PR04MB4221.namprd04.prod.outlook.com
	([fe80::b101:799c:362d:549e%3]) with mapi id 15.20.1294.044;
	Mon, 12 Nov 2018 16:08:30 +0000
From: Alejandro Del Castillo <alejandro.delcastillo@ni.com>
To: "opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>, Niko Mauno
	<niko.mauno@iki.fi>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [opkg-devel] [opkg-utils PATCH] update-alternatives: Fix link
	relocation support
Thread-Index: AQHUecmoFUGWSUy2BkuBydxAaAwBL6VMUN+A
Date: Mon, 12 Nov 2018 16:08:30 +0000
Message-ID: <e64f43a0-6b89-993c-cf23-59db9f811619@ni.com>
References: <20181111141949.2739-1-niko.mauno@iki.fi>
In-Reply-To: <20181111141949.2739-1-niko.mauno@iki.fi>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0201CA0022.namprd02.prod.outlook.com
	(2603:10b6:803:2b::32) To SN6PR04MB4221.namprd04.prod.outlook.com
	(2603:10b6:805:30::19)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [130.164.62.136]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; SN6PR04MB4157;
	6:GucKVNf4ZPJn/XkOgcFdHjwMc1ZrmKQLmfiRHtoqmrQ16N+EGVWrwIG9LchrUF8t6/j85Kn3E01dHxuWWENv9g79woQwDuAyvweKD8BLo+8TtMoUMkd+wuVHCagSsAwptiBt/aLyQXaUv+oKBHhWgcCC4UfOQo+Y7tKXOqyPtess0ZYwhhvM6w8l7mFTMm/CoVhJww0vSzEJgY5tc7XlWHWOF2z0AQBxad1SzOlaS09EFGUSEchg4Ba6xj6bLgopU8oa5dCk0Gl3SF/Di8hkoQex2h6judlEzto1clPlnZODJELP4YWov/BzEE+kLV39PoAr1GYo8ZVEvOCgsVuv3jEodL4HHaLF+/uChyXBKwJmrZgdsuiRpz4z9nlGz94wOEpym8c294v+La6v2eoINI3QIb5aC9RqFXlp3wFeP13JJbMYkq5qbMThG+eislfWJ3MpjSokLgvoBxT2I74dXg==;
	5:gaBRWj+nwluGGT80Zrw/smwUdYJbVhvw4+fGFks9Ili5q9560dh1Zdy/uD8b28dGSLrfz2GO6qCyG+ZQ/scnyPMI7p08uX2HTjr2Q+922MEFC5zCgmsVKdJSj+b+D/c/B5Q8juqBOm+kYPjbwnIWqbi7YoQrxZFNkyJSq9tKrJw=;
	7:EI24jKZ/m59MrR1uFux/81ZYDgJ8RtcJvFLla+GqymVIqgpQg7+WLkQvXRqezmuH65sUaUQB1omm3mAwo0qYXm2lIues3sHWx36bpkCrjcpDiZIz5gU02hJuV7/o1vSqByTmSQ71Rnoz/+ps8L3+Kw==
x-ms-office365-filtering-correlation-id: bc7c6ec6-6c21-454a-959b-08d648b9162f
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390040)(7020095)(4652040)(8989299)(5600074)(711020)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:SN6PR04MB4157; 
x-ms-traffictypediagnostic: SN6PR04MB4157:
x-microsoft-antispam-prvs: <SN6PR04MB4157FBD5EEBAAF2C67F7D84D86C10@SN6PR04MB4157.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(10201501046)(3231382)(944501410)(52105112)(3002001)(93006095)(93001095)(148016)(149066)(150057)(6041310)(20161123558120)(20161123562045)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699051)(76991095);
	SRVR:SN6PR04MB4157; BCL:0; PCL:0; RULEID:; SRVR:SN6PR04MB4157; 
x-forefront-prvs: 0854128AF0
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(396003)(39860400002)(366004)(136003)(346002)(51914003)(189003)(199004)(2906002)(7736002)(305945005)(66066001)(478600001)(14454004)(76176011)(316002)(15650500001)(6486002)(110136005)(6512007)(2900100001)(6436002)(53936002)(2616005)(52116002)(6246003)(36756003)(3846002)(6116002)(229853002)(476003)(486006)(106356001)(186003)(446003)(105586002)(26005)(99286004)(11346002)(2501003)(86362001)(5660300001)(25786009)(14444005)(256004)(68736007)(71190400001)(6506007)(53546011)(8676002)(31686004)(71200400001)(81156014)(97736004)(8936002)(102836004)(386003)(81166006)(31696002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4157;
	H:SN6PR04MB4221.namprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: rYYvwyxxQZsbcSDWGAlWVPv/dLdjoUNho7HHhT9IIAP/8uTm4Q2gCBNfSGgjpXzxA2NxcZ+uAEfUH7aI+jV49MVlzAhCnrHKPGif6qoDHF7BHdV1QpJ5wATlthX/1ZV/gcs5Ua3/r9F1VA7t1svoRnzFMBm0yvGAu95d8cKA/aD1iMH31Vg2yIeVi8SX3NcLgjkdRh1d8/Zjab2GXwy0ocmvCP1iefBwFcRwXtA81xdALALxM4lPPADe+Ki+RuBuQKJEXV0ybb9jwxQYb9TEv5EtugG5EehctOepyxEaeZ2qPTuaU+ArAheygT+GxVJzKD2yd4ncxchAJraifCikyb0ZyPhTnYcxHrXNWqntHbc=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc7c6ec6-6c21-454a-959b-08d648b9162f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2018 16:08:30.3544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4157
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-11-12_11:, , signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=30 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1811120140
Subject: Re: [opkg-devel] [opkg-utils PATCH] update-alternatives: Fix link relocation support
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
X-List-Received-Date: Mon, 12 Nov 2018 16:08:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <1FD86796465EFB49928F9DC12DCCCBF5@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

Z29vZCBjYXRjaCwgdGhhbmtzIGZvciB0aGUgZml4IQ0KDQptZXJnZWQNCg0KT24gMTEvMTEvMTgg
ODoxOSBBTSwgTmlrbyBNYXVubyB3cm90ZToNCj4gQ29tbWl0IGZjYjI2MzM5MDAwMDIxZWI5YmI3
MTFhYTI2NDI0N2FlYmNmZGQ0YWUgd2hpY2ggYWRkZWQgRGViaWFuLXN0eWxlDQo+IHN1cHBvcnQg
Zm9yIGxpbmsgcmVsb2NhdGlvbiB0cmllcyB0byByZWxvY2F0ZSBzeW1ib2xpYyBsaW5rIG9uIGhv
c3QgT1MsDQo+IHJlc3VsdGluZyBpbiBmb2xsb3dpbmctbGlrZSBlcnJvciB3aGVuIHR3byBhbHRl
cm5hdGl2ZSBwYWNrYWdlcyBoYXZlDQo+IHN5bWJvbGljIGxpbmsgc291cmNlIGxvY2F0ZWQgaW4g
ZGlmZmVyZW50IGRpcmVjdG9yaWVzICgvYmluL3JldiAtPg0KPiAvYmluL2J1c3lib3gubm9zdWlk
IGFuZCAvdXNyL2Jpbi9yZXYgLT4gL3Vzci9iaW4vcmV2LnV0aWwtbGludXgpOg0KPiANCj4gICAg
dXBkYXRlLWFsdGVybmF0aXZlczogcmVuYW1pbmcgcmV2IGxpbmsgZnJvbSAvYmluL3JldiB0byAv
dXNyL2Jpbi9yZXYNCj4gICAgbXY6IGNhbm5vdCBzdGF0ICcvYmluL3Jldic6IE5vIHN1Y2ggZmls
ZSBvciBkaXJlY3RvcnkNCj4gDQo+IEZpeCB0aGUgaXNzdWUgYnkgcHJlZml4aW5nICdvbGluaycg
YW5kICdsaW5rJyB2YXJpYWJsZSByZWZlcmVuY2VzIHdpdGgNCj4gcGF0aCB0byB0YXJnZXRlZCBy
b290IGZpbGVzeXN0ZW0ncyByb290IGRpcmVjdG9yeS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE5p
a28gTWF1bm8gPG5pa28ubWF1bm9AaWtpLmZpPg0KPiAtLS0NCj4gICB1cGRhdGUtYWx0ZXJuYXRp
dmVzIHwgMiArLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3VwZGF0ZS1hbHRlcm5hdGl2ZXMgYi91cGRhdGUtYWx0
ZXJuYXRpdmVzDQo+IGluZGV4IDg5YTQ0MGIuLmQ0ZmE3ZWIgMTAwNjQ0DQo+IC0tLSBhL3VwZGF0
ZS1hbHRlcm5hdGl2ZXMNCj4gKysrIGIvdXBkYXRlLWFsdGVybmF0aXZlcw0KPiBAQCAtNTgsNyAr
NTgsNyBAQCByZWdpc3Rlcl9hbHQoKSB7DQo+ICAgCQkJbG9jYWwgbGlua19zdHI9YGVjaG8gJGxp
bmsgfCBwcm90ZWN0X3NsYXNoZXNgDQo+ICAgCQkJc2VkIC1lICIxcy8uKi8kbGlua19zdHIvIiAk
YWQvJG5hbWUgPiAkYWQvJG5hbWUubmV3DQo+ICAgCQkJbXYgJGFkLyRuYW1lLm5ldyAkYWQvJG5h
bWUNCj4gLQkJCW12ICRvbGluayAkbGluaw0KPiArCQkJbXYgJE9QS0dfT0ZGTElORV9ST09UJG9s
aW5rICRPUEtHX09GRkxJTkVfUk9PVCRsaW5rDQo+ICAgCQlmaQ0KPiAgIAllbHNlDQo+ICAgCQll
Y2hvICIkbGluayIgPiAiJGFkLyRuYW1lIg0KPiANCg0KLS0gDQpDaGVlcnMsDQoNCkFsZWphbmRy
bw0K

