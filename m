Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B825E009D4; Tue, 22 May 2018 11:55:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.109 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0109.outbound.protection.outlook.com [104.47.2.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 218E2E00929
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 11:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Enea.onmicrosoft.com; 
	s=selector1-enea-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=m1ijbtUYCpyaKnZWMUfzMwdxsoU3vdVNTzip6HzEfzU=;
	b=jZzGmBOE663AbHkJ5WdC0x4jiyqBIueFrCzqKy53lpI6RDrmfMWNGVSurGRbbn46diaFFfO+gxrA8ArBhlBwCgr4S5NZ5UcfMsN++S+bFypCYVOrbmnW7cs5ssPPmbQSC6aCLPaSj1W/uZPKpGgE5FBVvkJYIHntdQMBLFdS+3Y=
Received: from DB7PR07MB4010.eurprd07.prod.outlook.com (52.134.100.32) by
	DB7PR07MB3883.eurprd07.prod.outlook.com (52.134.99.152) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.797.8; Tue, 22 May 2018 13:18:59 +0000
Received: from DB7PR07MB4010.eurprd07.prod.outlook.com
	([fe80::3047:422e:4781:9344]) by
	DB7PR07MB4010.eurprd07.prod.outlook.com
	([fe80::3047:422e:4781:9344%3]) with mapi id 15.20.0797.011;
	Tue, 22 May 2018 13:18:59 +0000
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: "jpuhlman@mvista.com" <jpuhlman@mvista.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH] Add LAYERSERIES_COMPAT
Thread-Index: AQHT8ToyR3mIpl1pDkC2pSjJEkJZ+KQ7vGyA
Date: Tue, 22 May 2018 13:18:58 +0000
Message-ID: <bf4c9a6e5f4f1540daaef199a5e6c93b47b61704.camel@enea.com>
References: <1526930959-7384-1-git-send-email-jpuhlman@mvista.com>
In-Reply-To: <1526930959-7384-1-git-send-email-jpuhlman@mvista.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.36.1.252]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB7PR07MB3883;
	7:dEgD1jNtp1c5TmUCiWCjYYSQxhpRlItg/A9GlTF3Fh6fWszsIpkcrnuHHWAzjXsT8dxCO9uu3jAddhzFS07bun9/e3JB+//5UnAyLCHjIMmtareYw0PeR/3hRrbkFzJwHf/6bKWkFh+o9DM3+XsgEmkJadTxzDCjSn+uz0clOu0tuO9wVKFy+Tty2GyqHVRxzLq2663ko515fwHGkuMfiRvCIG62D/mKRYKJR35rsDuCFPfONpFDE+cwT/G5tQLV;
	20:GNDn9KPC62V5k0jmk6/v3mUCzph503X3NJx3q5L7+9RLP8oP0xHigtxou/3ep37UoOwPlIydFqJph5ZmWYp49e0Hm4UKtvP+lqTkkuWSYdVnm+4CFzT0kq2P9n2vxckfpkFF3GcbWR2w+sMt87y28gwrTZrjuCDuHBKzTpjNPDk=
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:DB7PR07MB3883; 
x-ms-traffictypediagnostic: DB7PR07MB3883:
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Adrian.Dudau@enea.com; 
x-microsoft-antispam-prvs: <DB7PR07MB38835FDF1236A234220DD975E4940@DB7PR07MB3883.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(192374486261705);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3002001)(10201501046)(3231254)(944501410)(52105095)(93006095)(93001095)(149027)(150027)(6041310)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123564045)(20161123560045)(6072148)(201708071742011)(7699016);
	SRVR:DB7PR07MB3883; BCL:0; PCL:0; RULEID:; SRVR:DB7PR07MB3883; 
x-forefront-prvs: 0680FADD48
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(366004)(39850400004)(396003)(376002)(346002)(189003)(199004)(377424004)(25786009)(6246003)(105586002)(106356001)(5660300001)(3846002)(6116002)(81156014)(8676002)(81166006)(8936002)(486006)(316002)(446003)(59450400001)(6506007)(99286004)(186003)(102836004)(86362001)(26005)(2616005)(110136005)(476003)(76176011)(11346002)(14454004)(72206003)(68736007)(305945005)(7736002)(2501003)(5890100001)(478600001)(66066001)(5250100002)(6486002)(118296001)(6436002)(2900100001)(229853002)(97736004)(36756003)(2906002)(3660700001)(3280700002)(53936002)(6512007);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB7PR07MB3883;
	H:DB7PR07MB4010.eurprd07.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: enea.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: Up4HarQ5mh7GwZUOv+vwbtvzFKZO+Oy9RXs3RYdldSFp7c4V9TjQfSPsw0Ls3bDkKozVupexBBcA6AUQqdT7vm/eAwbFiFQ1pUwGyuhqNPpYT/JL7/K7YZ7RVEM3lnE5CNV1d8kMMSTKIUKQa9vWVgmJtFmrGnPBl9sWg2fZxjy1RCvUzQVtZIIdYicbRSWe
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: eac3ef29-a7eb-4b96-e238-08d5bfe69414
X-OriginatorOrg: enea.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eac3ef29-a7eb-4b96-e238-08d5bfe69414
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2018 13:18:58.9948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8cdaed89-c47e-40b8-90b5-f28ad2c3fdca
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR07MB3883
Subject: Re: [meta-cgl][PATCH] Add LAYERSERIES_COMPAT
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
X-List-Received-Date: Tue, 22 May 2018 18:55:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <4A3CD6FC01849245A4B2FF820C7FFEF3@eurprd07.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDE4LTA1LTIxIGF0IDEyOjI5IC0wNzAwLCBKZXJlbXkgUHVobG1hbiB3cm90ZToN
Cj4gRnJvbTogIkplcmVteSBBLiBQdWhsbWFuIiA8anB1aGxtYW5AbXZpc3RhLmNvbT4NCj4NCj4g
LS0tDQo+ICBtZXRhLWNnbC1jb21tb24vY29uZi9sYXllci5jb25mICB8IDIgKy0NCj4gIG1ldGEt
Y2dsLWZzbC1wcGMvY29uZi9sYXllci5jb25mIHwgMSArDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvbWV0YS1jZ2wt
Y29tbW9uL2NvbmYvbGF5ZXIuY29uZiBiL21ldGEtY2dsLQ0KPiBjb21tb24vY29uZi9sYXllci5j
b25mDQo+IGluZGV4IGJkZjVmM2YuLjkzODRlYzcgMTAwNjQ0DQo+IC0tLSBhL21ldGEtY2dsLWNv
bW1vbi9jb25mL2xheWVyLmNvbmYNCj4gKysrIGIvbWV0YS1jZ2wtY29tbW9uL2NvbmYvbGF5ZXIu
Y29uZg0KPiBAQCAtMTAsNyArMTAsNyBAQCBCQkZJTEVTICs9ICIke0xBWUVSRElSfS9yZWNpcGVz
LSovKi8qLmJiIFwNCj4gIEJCRklMRV9DT0xMRUNUSU9OUyArPSAiY2dsLWNvbW1vbiINCj4gIEJC
RklMRV9QQVRURVJOX2NnbC1jb21tb24gPSAiXiR7TEFZRVJESVJ9LyINCj4gIEJCRklMRV9QUklP
UklUWV9jZ2wtY29tbW9uID0gIjciDQo+IC0NCj4gK0xBWUVSU0VSSUVTX0NPTVBBVF9jZ2wtY29t
bW9uID0gInN1bW8iDQo+ICBMQVlFUkRFUEVORFNfY2dsLWNvbW1vbiA9ICJjb3JlIG9wZW5lbWJl
ZGRlZC1sYXllciBuZXR3b3JraW5nLWxheWVyDQo+IHBlcmwtbGF5ZXIgZmlsZXN5c3RlbXMtbGF5
ZXIgc2VjdXJpdHkgc2VsaW51eCINCj4NCj4gIHJlcXVpcmUgY29uZi9kaXN0cm8vaW5jbHVkZS9j
Z2xfY29tbW9uX3NlY3VyaXR5X2ZsYWdzLmluYw0KPiBkaWZmIC0tZ2l0IGEvbWV0YS1jZ2wtZnNs
LXBwYy9jb25mL2xheWVyLmNvbmYgYi9tZXRhLWNnbC1mc2wtDQo+IHBwYy9jb25mL2xheWVyLmNv
bmYNCj4gaW5kZXggMzUzODI0ZC4uNTI1MDgwYyAxMDA2NDQNCj4gLS0tIGEvbWV0YS1jZ2wtZnNs
LXBwYy9jb25mL2xheWVyLmNvbmYNCj4gKysrIGIvbWV0YS1jZ2wtZnNsLXBwYy9jb25mL2xheWVy
LmNvbmYNCj4gQEAgLTEwLDMgKzEwLDQgQEAgQkJGSUxFX1BBVFRFUk5fY2dsLWZzbC1wcGMgPSAi
XiR7TEFZRVJESVJ9LyINCj4gIEJCRklMRV9QUklPUklUWV9jZ2wtZnNsLXBwYyA9ICI3Ig0KPg0K
PiAgTEFZRVJERVBFTkRTX2NnbC1mc2wtcHBjID0gImNnbC1jb21tb24iDQo+ICtMQVlFUlNFUklF
U19DT01QQVRfY2dsLWZzbC1wcGMgPSAic3VtbyINCj4gLS0NCj4gMi42LjINCj4NCg0KaGkgSmVy
ZW15LA0KV2hpY2ggYnJhbmNoIGFyZSB5b3Ugc2VuZGluZyB0aGlzIGZvcj8NCg0KQmVzdCByZWdh
cmRzLA0KLS1BZHJpYW4NCg0KVGhpcyBtZXNzYWdlLCBpbmNsdWRpbmcgYXR0YWNobWVudHMsIGlz
IENPTkZJREVOVElBTC4gSXQgbWF5IGFsc28gYmUgcHJpdmlsZWdlZCBvciBvdGhlcndpc2UgcHJv
dGVjdGVkIGJ5IGxhdy4gSWYgeW91IHJlY2VpdmVkIHRoaXMgZW1haWwgYnkgbWlzdGFrZSBwbGVh
c2UgbGV0IHVzIGtub3cgYnkgcmVwbHkgYW5kIHRoZW4gZGVsZXRlIGl0IGZyb20geW91ciBzeXN0
ZW07IHlvdSBzaG91bGQgbm90IGNvcHkgaXQgb3IgZGlzY2xvc2UgaXRzIGNvbnRlbnRzIHRvIGFu
eW9uZS4gQWxsIG1lc3NhZ2VzIHNlbnQgdG8gYW5kIGZyb20gRW5lYSBtYXkgYmUgbW9uaXRvcmVk
IHRvIGVuc3VyZSBjb21wbGlhbmNlIHdpdGggaW50ZXJuYWwgcG9saWNpZXMgYW5kIHRvIHByb3Rl
Y3Qgb3VyIGJ1c2luZXNzLiBFbWFpbHMgYXJlIG5vdCBzZWN1cmUgYW5kIGNhbm5vdCBiZSBndWFy
YW50ZWVkIHRvIGJlIGVycm9yIGZyZWUgYXMgdGhleSBjYW4gYmUgaW50ZXJjZXB0ZWQsIGEgbWVu
ZGVkLCBsb3N0IG9yIGRlc3Ryb3llZCwgb3IgY29udGFpbiB2aXJ1c2VzLiBUaGUgc2VuZGVyIHRo
ZXJlZm9yZSBkb2VzIG5vdCBhY2NlcHQgbGlhYmlsaXR5IGZvciBhbnkgZXJyb3JzIG9yIG9taXNz
aW9ucyBpbiB0aGUgY29udGVudHMgb2YgdGhpcyBtZXNzYWdlLCB3aGljaCBhcmlzZSBhcyBhIHJl
c3VsdCBvZiBlbWFpbCB0cmFuc21pc3Npb24uIEFueW9uZSB3aG8gY29tbXVuaWNhdGVzIHdpdGgg
dXMgYnkgZW1haWwgYWNjZXB0cyB0aGVzZSByaXNrcy4NCg==

