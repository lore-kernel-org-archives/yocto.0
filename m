Return-Path: <josiasinacio@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B66DBE00C39; Thu, 15 Sep 2016 22:05:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (josiasinacio[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.51.96 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Sep 2016 22:05:25 PDT
Received: from SNT004-OMC4S45.hotmail.com (snt004-omc4s45.hotmail.com
	[65.54.51.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ABE5E00C31
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 22:05:25 -0700 (PDT)
Received: from NAM03-CO1-obe.outbound.protection.outlook.com ([65.55.90.201])
	by SNT004-OMC4S45.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Thu, 15 Sep 2016 22:04:20 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=TBs5xZ+bZX/hYfa8rB+dbh2O086CGoRqSXNafmpg/d8=;
	b=bIBSoBcO75Q+02jwEcE+uhd0Z6zANneuZ7LtbQ5IDdB7HDQHNmUDVAseH7OFrSXNkarahe/F38BF/c5CiyKZ5BLo7XhtNe9C7fd0Af5wnT81pDjlo/hinKMXZHCk0dFs8mgmTQEuFIqAxBRvPd8NvdbWlArh0vg3fr2AOZh9D9l3ZSWSk+wJJ7orOkGv+hx6r4jG47kVNWzxUidVx/SOVlqVyhxMtnrcgMHHHlGn1bj96PCIuCP1UFNAMxAWFQbOfwSPGeUiVZFHu1C/eYhJWdcco+g0O9rWjH1qT8uolSQsFZI5DhU+RTb7rwr7FQbfneW4pVZ5UbaC5modFaIy4w==
Received: from CO1NAM03FT035.eop-NAM03.prod.protection.outlook.com
	(10.152.80.52) by CO1NAM03HT150.eop-NAM03.prod.protection.outlook.com
	(10.152.81.6) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Fri, 16 Sep 2016 05:04:19 +0000
Received: from MWHPR04MB0337.namprd04.prod.outlook.com (10.152.80.59) by
	CO1NAM03FT035.mail.protection.outlook.com (10.152.80.179) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.629.5 via Frontend Transport; Fri, 16 Sep 2016 05:04:18 +0000
Received: from MWHPR04MB0337.namprd04.prod.outlook.com ([10.169.202.147]) by
	MWHPR04MB0337.namprd04.prod.outlook.com ([10.169.202.147]) with mapi id
	15.01.0619.012; Fri, 16 Sep 2016 05:04:18 +0000
From: Josias Inacio da Silva Filho <josiasinacio@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to build an SDK toolchain for native x86_64
Thread-Index: AQHSD9fHxZ0N7NL3UUuigYCS0md0GQ==
Date: Fri, 16 Sep 2016 05:04:18 +0000
Message-ID: <MWHPR04MB033786FC8518966C1FD3EC5BC1F30@MWHPR04MB0337.namprd04.prod.outlook.com>
Accept-Language: pt-BR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.80.59)
	smtp.mailfrom=hotmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.80.59 as permitted sender)
x-incomingtopheadermarker: OriginalChecksum:381106D9855BA573CCB369B96E9FB2C51010AA1FF73F14EB220272860CF1D9DF;
	UpperCasedChecksum:A80E1E9BD36BF6E00716123F95FE98E377E341B8ED956472AF5296857521E016;
	SizeAsReceived:7034; Count:34
x-ms-exchange-messagesentrepresentingtype: 1
x-incomingheadercount: 34
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; CO1NAM03HT150;
	6:Cv6+jP9JZ3zV98lPZPyZ6bCEDaPgy+M7Xle69z5ot/VJI6HBS3J5eC7//E2HqVeU39OyTPD/0R3FXBGWoBvwoljU6uBheJz88WZwHdLvHFcoRvoqYv/FnxhyLewr+I7fbl/yZChEzohjO5f7pjWIo4CU77GOtfx+oUlPo8XJxou45PNbDl5Sq1C49vwGmo9qxMd4sLhICK71B9L2t+/M4KG+/KVN+jgzP6gGAc5lqN9P5iDayGI7oSzj6ED8W4LsEebM+umOEuR2aIEoUHJh+RQ2QCUi6v94Hvcwdnj06D4=;
	5:WIlSxgmPg2dLjJkNi6ZRd7uNfSHPXWFXPWMnhXYDvajRLxCKbPTRIhezG4eHtk6etr3a93+6eNX8YL+2f38XXUiNzh+vF6oGOs/wD4hO7iOQbOQVj6oSU9fAsuODnU1iYVscT5Rf940UDgTyoKjoRA==;
	24:dx2T9l/6iP9fUaqQRFIGngLLe07rTuwm0brDSlGtOvjTLHV6R5z+WWECVA3Zj808BLIx59e7KqiwjXCubfV2jm21L0xAMu8sinp7zg1HIRM=;
	7:94q3c7zoT8LxczE5QVqitlhUQw3UO9y90f51LyDclrZ2RCgAxPtUJxWTYPJohCdyWmqwG00ule8zg9mcs2ApMIz3MY5x382107OVu5LnjrF6oEDkOb0azXLjaHTNzMo8VRuHA42EOIgjnODj0hAEw72Z58UQK4bY1+LaKBvvmefrAORk6LpWEX01LsKw3WSqBySXJDRklJuEMn5ZBEcLhf4rRkEtrbCqHcTz+UlDk+gdGcBwldHClqy7WuCANG7era0ubzl6hnpA40l0u8dVHduSG6GWo/uF8JFp/opRXVnJBG9Za3WdB6FCIwskvv23
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CO1NAM03HT150;
	H:MWHPR04MB0337.namprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 9c07c81a-4dee-46fb-75d9-08d3ddeee8c9
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:CO1NAM03HT150;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:CO1NAM03HT150; BCL:0; PCL:0; RULEID:; SRVR:CO1NAM03HT150; 
x-forefront-prvs: 0067A8BA2A
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2016 05:04:18.2446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM03HT150
X-OriginalArrivalTime: 16 Sep 2016 05:04:20.0082 (UTC)
	FILETIME=[C858E520:01D20FD7]
Subject: How to build an SDK toolchain for native x86_64
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
X-List-Received-Date: Fri, 16 Sep 2016 05:05:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <0AE7C68968678D4F9BC117BDDBC37EAA@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

SGkgZm9sa3MsDQoNCkhlcmXigJlzIG15IGN1cnJlbnQgc2V0dXAgYW5kIGN1cnJlbnQgc2l0dWF0
aW9uOg0KDQpIb3N0OiB4ODZfNjQNClRhcmdldDogYWFyY2g2NA0KDQpCdWlsZCBjb3JlLWltYWdl
LWJhc2UgZm9yIGFhcmNoNjQgLSBPSw0KcG9wdWxhdGVfc2RrIGZvciBhYXJjaDY0IC0gT0sNCg0K
TXkgYXBwbGljYXRpb24gYW5kIGl0IHVuaXQgdGVzdHMgYWxzbyBnZXRzIGNvbXBpbGVkIHRvIGFh
cmNoNjQuDQoNCldoYXQgSSB3YW50ZWQgbm93IHdvdWxkIGJlIHNvbWV0aGluZyBsaWtlIHJ1biBw
b3B1bGF0ZV9zZGsgZm9yIOKAnGNvcmUtaW1hZ2UtYmFzZS1uYXRpdmXigJ0uIFRoZSByZWFzb24g
Zm9yIHRoYXQgaXMgYmVjYXVzZSBJIHdhbnQgdG8gY29tcGlsZSBhbmQgcnVuIG15IHVuaXQgdGVz
dHMgdXNpbmcgbXkgaG9zdCBtYWNoaW5lIG9ubHkgKHg4Nl82NCkuIFRoaXMgbWFrZXMgYXBwbGlj
YXRpb24gZGV2ZWxvcG1lbnQgbXVjaCBlYXNpZXIsIHNpbmNlIEkgZG9u4oCZdCBuZWVkIHRoZSB0
YXJnZXQgbm9yIFFFTVUgdG8gcnVuIHRoZSB1bml0IHRlc3RzLiBBbmQgSSBzdGlsbCB3YW50IHRo
ZSB0b29sY2hhaW4gdG8gYmUgZ2VuZXJhdGVkIGJ5IFlvY3RvIHNpbmNlIGl0IHNvbHZlcyBhbGwg
cGFja2FnZSBkZXBlbmRlbmNpZXMgZm9yIG1lLg0KDQpXaGF0IEkgYXR0ZW1wdGVkOg0KDQoxKSBD
cmVhdGUgYSBuZXcg4oCcY29yZS1pbWFnZS10b29sY2hhaW4tbmF0aXZl4oCdIHNpbWlsYXIgdG8g
Y29yZS1pbWFnZS1iYXNlLCBidXQgdHdlYWtpbmcgdG8gYmUgYWJsZSB0byBidWlsZCBmb3IgbmF0
aXZlLiBUaGF0IGRvZXMgbm90IHNlZW0gdG8gYmUgdGhlIHJpZ2h0IHdheSwgSSBzcGVudCBhIGxv
dCBvZiB0aW1lIGRvaW5nIHRoaXMgYW5kIGdvdCBub3doZXJlIHNpbmNlIG1hbnkgb2YgdGhlIGlt
YWdlJ3MgcmVjaXBlcyBkbyBub3Qgc3VwcG9ydCBidWlsZGluZyB3aXRoIG5hdGl2ZSBzdXBwb3J0
Lg0KDQoyKSBDaGFuZ2UgbXkgbWFjaGluZSB0eXBlIHRvIGJlIHFlbXV4ODZfNjQsIHRoZW4gY2Fs
bCDigJxiaXRiYWtlIGNvcmUtaW1hZ2UtYmFzZSAtYyBwb3B1bGF0ZV9zZGvigJ0uIFRoYXQgd291
bGQgZ2VuZXJhdGUgYSB0b29sY2hhaW4gZm9yIHg4Ni02NCByaWdodD8gV2VsbCBpdCBkaWQsIGFu
ZCBJIHdhcyBhYmxlIHRvIHVzZSB0aGlzIHRvb2xjaGFpbiB0byBjb21waWxlIG15IHVuaXQgdGVz
dHMgZm9yIHg4Nl82NC4gQnV0IHRoZSBwcm9ibGVtIGlzIHRoYXQgdGhpcyBzdGlsbCBhc3N1bWVz
IHRoYXQgSeKAmWxsIGJlIHJ1bm5pbmcgdGhvc2UgdW5pdCB0ZXN0cyBvbiB0aGUgdGFyZ2V0IG1h
Y2hpbmUgKCBRRU1VIHg4Nl82NCksIHNvIGlmIEkgdHJ5IHRvIHJ1biBpdCBpbiBteSBob3N0IG1h
Y2hpbmUsIGl0IGNvbXBsYWlucyBhYm91dCBzb21lIG1pc3NpbmcgZHluYW1pYyBsaWJyYXJpZXMg
dGhhdCBhcmUgb25seSBmb3VuZCBpbiB0aGUgc3lzcm9vdCBvZiB0aGUgdGFyZ2V0IHFlbXV4ODZf
NjQuDQoNCklzIHRoZXJlIGFueSBwcm9wZXIgc29sdXRpb24gZm9yIHRoaXMgY2FzZT8=

