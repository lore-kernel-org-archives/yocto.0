Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09088E0049D; Mon,  7 Nov 2016 10:37:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D9E0E0034A
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2016 10:37:42 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2GNAQAAySBY/xUHmMZdGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgxQaAQEBAQEfgVQHAY0wlwKHaIxqggiGJAIagXE/FAECAQEBAQEBAQN?=
	=?us-ascii?q?fKIRhAQEBAQIBEhERSgsCAQgNCAECAgIGHQMCAgIfERQBEAEBBAESCBqIHAMPC?=
	=?us-ascii?q?AGnCIpigkA4AocSDYNkAQEBAQEBAQECAQEBAQEBAQEBAQEcgQmFNYRVgkeCAhW?=
	=?us-ascii?q?CbS2CLwWZcjUBjQkBhRGINYYDiQiEIoQGHjd6hSpyhj4BgQsBAQE?=
X-IPAS-Result: =?us-ascii?q?A2GNAQAAySBY/xUHmMZdGgEBAQECAQEBAQgBAQEBgxQaAQE?=
	=?us-ascii?q?BAQEfgVQHAY0wlwKHaIxqggiGJAIagXE/FAECAQEBAQEBAQNfKIRhAQEBAQIBE?=
	=?us-ascii?q?hERSgsCAQgNCAECAgIGHQMCAgIfERQBEAEBBAESCBqIHAMPCAGnCIpigkA4Aoc?=
	=?us-ascii?q?SDYNkAQEBAQEBAQECAQEBAQEBAQEBAQEcgQmFNYRVgkeCAhWCbS2CLwWZcjUBj?=
	=?us-ascii?q?QkBhRGINYYDiQiEIoQGHjd6hSpyhj4BgQsBAQE?=
X-IronPort-AV: E=Sophos;i="5.31,606,1473134400"; d="scan'208";a="202061216"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	07 Nov 2016 13:37:41 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	07 Nov 2016 13:37:41 -0500
Received: from AZ-US1EXMB02.global.avaya.com ([fe80::c01d:740:c927:8888]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0319.002; Mon, 7 Nov 2016 13:37:41 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Supported "init" types
Thread-Index: AdI5G6PTa6ZQsknERTmEogjEv+Je/QAK9iUAAAhr8zA=
Date: Mon, 7 Nov 2016 18:37:40 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377987FF7577C@AZ-US1EXMB02.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377987FF756FD@AZ-US1EXMB02.global.avaya.com>
	<5b741b70-e261-626e-756d-bcf5468c9d54@gmail.com>
In-Reply-To: <5b741b70-e261-626e-756d-bcf5468c9d54@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Re: Supported "init" types
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
X-List-Received-Date: Mon, 07 Nov 2016 18:37:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBGcm9tOiBLaGVtIFJhaiBbbWFpbHRvOnJhai5raGVtQGdtYWlsLmNvbV0NCj4gU2VudDogTm92
ZW1iZXIgMDcsIDIwMTYgMTI6MzcNCj4gDQo+IE9uIDExLzcvMTYgOToyNyBBTSwgVnVpbGxlLCBN
YXJ0aW4gKE1hcnRpbikgd3JvdGU6DQo+ID4gSSBzZWUgdGhhdCDigJxzeXN2aW5pdOKAnSBhbmQg
4oCcc3lzdGVtZOKAnSBzdHlsZSBpbml0IGlzIHN1cHBvcnRlZC4NCj4gPg0KPiA+DQo+ID4NCj4g
PiBJcyB0aGVyZSBzdXBwb3J0IGZvciBCU0Qtc3R5bGUgaW5pdCwgb3Igc29tZSBvdGhlciBtaW5p
bWFsIGluaXQ/DQo+ID4NCj4gPg0KPiANCj4gdGhlcmUgaXMgYnVzeWJveC9tZGV2IGluaXQgb3B0
aW9uIGluIE9FLWNvcmUgaWYgeW91IGFyZSBsb29raW5nIGZvciBhIG1pbmltYWwNCj4gaW5pdCBh
bmQgbm90IHNwZWNpZmlhbGx5IGZvciBCU0QgaW5pdC4NCj4gDQo+IGl0cyBkb2N1bWVudGVkIGlu
IG1ldGEvY29uZi9sb2NhbC5jb25mLnNhbXBsZS5leHRlbmRlZA0KPiANCg0KVGhhbmtzISBKdXN0
IHdoYXQgSSB3YXMgbG9va2luZyBmb3IuDQoNClJlZ2FyZHMsDQpNVg0K

