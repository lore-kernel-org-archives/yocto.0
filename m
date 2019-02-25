Return-Path: <stephen.lawrence@renesas.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33156E00CED; Mon, 25 Feb 2019 12:43:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.141.130 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 17970 seconds by postgrey-1.32 at yocto-www;
	Mon, 25 Feb 2019 12:43:03 PST
Received: from JPN01-OS2-obe.outbound.protection.outlook.com
	(mail-eopbgr1410130.outbound.protection.outlook.com [40.107.141.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5BEDE00AA9
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 12:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=renesasgroup.onmicrosoft.com; s=selector1-renesas-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=kKI5WeJQo5xARdSen8vjr2ic4KEzDRiiAd686bT/ovc=;
	b=W6aebgEXsu9kL97jnGSr6quQizVDCKmUmo1j3SgR2lda94qpsGCR/oItpd8DZ2WaiiRZzy9iGeE8Sr8FH0lYy1AH5UK4UOjGIl7l3QenZqyzSaGvg+dR4xWX3JkDqiOPrK+hrabsaf/3hv/UvRwVaReAD7z6efvmG9CXvyMytMQ=
Received: from TYAPR01MB2031.jpnprd01.prod.outlook.com (52.133.179.12) by
	TYAPR01MB3375.jpnprd01.prod.outlook.com (20.178.136.142) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1643.18; Mon, 25 Feb 2019 15:10:09 +0000
Received: from TYAPR01MB2031.jpnprd01.prod.outlook.com
	([fe80::59a6:f906:ad87:bcb7]) by
	TYAPR01MB2031.jpnprd01.prod.outlook.com
	([fe80::59a6:f906:ad87:bcb7%2]) with mapi id 15.20.1643.019;
	Mon, 25 Feb 2019 15:10:09 +0000
From: Stephen Lawrence <stephen.lawrence@renesas.com>
To: Khem Raj <raj.khem@gmail.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] Review request 0/13: Contribute meta-tensorflow to Yocto
Thread-Index: AQHUydnrZH1wnn+sQE6uSkgVFEw6h6XsBGAggABIQ4CAATjCAIAAGqoAgAL/JUA=
Date: Mon, 25 Feb 2019 15:10:08 +0000
Message-ID: <TYAPR01MB20319F2626DFC71F082031E0927A0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
	<TYAPR01MB20314DDA5FAB24441BC69EAC927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
	<BYAPR02MB600561B688584916C429A316B97F0@BYAPR02MB6005.namprd02.prod.outlook.com>
	<2c3baa056663af88ed9e15b89128802cfc686b4e.camel@linuxfoundation.org>
	<CAMKF1srCoMu28YEAN7kUNT0BBV33OxdguZ4LQ+Qvf_SMom5KOQ@mail.gmail.com>
In-Reply-To: <CAMKF1srCoMu28YEAN7kUNT0BBV33OxdguZ4LQ+Qvf_SMom5KOQ@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=stephen.lawrence@renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f773ccc-b3a6-4079-b921-08d69b335502
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600110)(711020)(4605104)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:TYAPR01MB3375; 
x-ms-traffictypediagnostic: TYAPR01MB3375:
x-microsoft-exchange-diagnostics: 1; TYAPR01MB3375;
	20:98Xp0eVYl8mvx36jcVV0NE5Kh6F8lsbl8LLb+JAmpiptowu0Zm29aWx/Z9PK+fM2hM+i0pWMMT0R0gaGs/nJ48Z2fxZ3tNN8Dogx4hvh45z2K7AxpMZxEBaFQMHHmI7mgfY4HuOnpUEeItPgDw3QwlO78/aNnvO23cT1+iQSWOk=
x-microsoft-antispam-prvs: <TYAPR01MB33753B57DEADA82EED3BB8F5927A0@TYAPR01MB3375.jpnprd01.prod.outlook.com>
x-forefront-prvs: 095972DF2F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(366004)(136003)(376002)(346002)(39860400002)(199004)(189003)(13464003)(71190400001)(110136005)(2906002)(6436002)(106356001)(71200400001)(26005)(7736002)(105586002)(102836004)(316002)(14444005)(74316002)(256004)(55016002)(53546011)(6506007)(33656002)(305945005)(9686003)(53936002)(446003)(44832011)(486006)(11346002)(7416002)(68736007)(476003)(97736004)(66066001)(8936002)(81156014)(52536013)(81166006)(5660300002)(8676002)(6246003)(25786009)(93886005)(54906003)(7696005)(229853002)(99286004)(478600001)(186003)(4326008)(86362001)(14454004)(3846002)(6116002)(76176011);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB3375;
	H:TYAPR01MB2031.jpnprd01.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 24xWs55Li8xY0jJQ6e00H9e8I9DFFDnoEByhn0+sag11qssLEbQsRyEvWquEIrN6tdQN3w9Kl/ew62yHugWO68jZ4BiEZZg+t81EEXs7D74AbXB8dFzSOWcps2RRuuhhxAyAFWiCtaBvAVOfDAXXFGgrRCwGgU0gqaNkd2Jtl4GqfvmjQ+vpl+q5IEKeBBULW3Y1Eam3Pymr3BxUA+pEjCY7Qm2IgXGnybUJEe8LVKrH+RBCkvFBvK0b3ED36f6u/XCM2gjnYggzS708ufyMXIoiEKu0jtbH/V4HcguHOytzfTI/dtiWM8tnkGTehOM6qLl2xx5uOJ48w0GtEBQnxC/gSTNN1N6XwxZsC3xMWXR2inLgZqYqsQ8lM1BDLUBXVx2DFiQ4wX/QqQQP8nD+8nQ7w3I0Q1DAASuiZV+/yEk=
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f773ccc-b3a6-4079-b921-08d69b335502
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2019 15:10:08.9631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB3375
Cc: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>,
	"lpd-cdc-core-dev@windriver.com" <lpd-cdc-core-dev@windriver.com>,
	"Zhangle.Yang@windriver.com" <Zhangle.Yang@windriver.com>,
	"paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Review request 0/13: Contribute meta-tensorflow to Yocto
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
X-List-Received-Date: Mon, 25 Feb 2019 20:43:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEtoZW0gUmFqIDxyYWoua2hl
bUBnbWFpbC5jb20+DQo+IFNlbnQ6IDIzIEZlYnJ1YXJ5IDIwMTkgMTc6MDUNCj4gVG86IFJpY2hh
cmQgUHVyZGllIDxyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnPg0KPiBDYzogTWFu
anVrdW1hciBIYXJ0aGlrb3RlIE1hdGhhIDxNQU5KVUtVTUB4aWxpbnguY29tPjsgU3RlcGhlbiBM
YXdyZW5jZQ0KPiA8c3RlcGhlbi5sYXdyZW5jZUByZW5lc2FzLmNvbT47IEhvbmd4dSBKaWEgPGhv
bmd4dS5qaWFAd2luZHJpdmVyLmNvbT47DQo+IG1oYWxzdGVhZEBsaW51eGZvdW5kYXRpb24ub3Jn
OyByb3NzLmJ1cnRvbkBpbnRlbC5jb207DQo+IHBhdWwuZWdnbGV0b25AbGludXguaW50ZWwuY29t
OyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnOyBscGQtY2RjLWNvcmUtDQo+IGRldkB3aW5kcml2ZXIu
Y29tOyBaaGFuZ2xlLllhbmdAd2luZHJpdmVyLmNvbQ0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBS
ZXZpZXcgcmVxdWVzdCAwLzEzOiBDb250cmlidXRlIG1ldGEtdGVuc29yZmxvdyB0byBZb2N0bw0K
PiANCg0KW3NuaXBdDQoNCj4gPiBJIGJlbGlldmUgdGhhdCBtZXRhLW9lIGlzIHRvbyBsYXJnZSB0
byBiZSBtYWludGFpbmFibGUgYW5kIHRoYXQgd2UgbmVlZA0KPiA+IGEgbGFyZ2VyIG51bWJlciBv
ZiBzbWFsbGVyIGxheWVycy4NCj4gPg0KPiANCj4gVGhlcmUgaXMgYSBmaW5lIGJhbGFuY2UgdG8g
YmUgaGFkLCB0aGF0IEkgaGF2ZSBjb21lIHRvIHJlYWxpemUgb3ZlciB5ZWFycyBub3cNCj4gYnV0
IEFJIGlzIGxhcmdlIGVub3VnaCBhbmQgc2VnbWVudGVkIGVub3VnaCB0byBoYXZlIGEgbGF5ZXIg
b2YgaXRzIG93bi4NCj4gDQo+ID4gSGF2aW5nIHRlbnNvcmZsb3cgaW4gaXRzIG93biBsYXllciB3
aGljaCBhcyBhIHNwZWNpZmljIHB1cnBvc2UgYW5kIGl0cw0KPiA+IHNwZWNpZmljIG1haW50YWlu
ZXJzIHdobyB1bmRlcnN0YW5kIGl0IGlzIGluIG15IHZpZXcgbXVjaCBtb3JlDQo+ID4gZGVzaXJh
YmxlIGFuZCBzdXN0YWluYWJsZS4NCj4gDQo+IEkgdGhpbmsgaXRzIGEgZ29vZCBpZGVhIHRvIGhh
dmUgdmFyaW91cyBBSSBpbmZyYXMgaW4gb25lIGxheWVyDQo+IGluY2x1ZGluZyB0ZW5zb3JmbG93
DQo+IHVubGVzcyB3ZSBoYXZlIGxhcmdlIGVub3VnaCBkZXYgY29tbXVuaXR5IHRvIG1haW50YWlu
IGVhY2ggb2YgdGhlbSBzbyBJIGxpa2UNCj4gbWV0YS1haSBjb25jZXB0dWFsbHkuDQoNCkZyb20g
YSBicmllZiBkaXNjdXNzaW9uIHdpdGggdGhlIHRlYW0gaGVyZSBvbmUgaXNzdWUgaXMgdGhlIGxv
dyBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eSANCmJldHdlZW4gbW9kZWxzIGZyb20gZGlmZmVyZW50
IFRlbnNvcmZsb3cgdmVyc2lvbnMuIEkgZG9uJ3Qga25vdyBob3cgZmFzdCB1cHN0cmVhbSBpcyBt
b3ZpbmcsDQpidXQgdGhlcmUgbWF5IGJlIGRlbWFuZCB0byBzdXBwb3J0IG1vcmUgdGhhbiBvbmUg
dmVyc2lvbiBwZXIgWVAgdmVyc2lvbi4gVGhhdCdzIG5vdCANCnVuc3VybW91bnRhYmxlIG9mIGNv
dXJzZSwgYnV0IEkgdGhvdWdodCBJIHdvdWxkIG1lbnRpb24gaXQuDQoNCm1ldGEtcmVuZXNhcy1h
aSBoYXMgYSBNSVQgbGljZW5zZSBidHcgaWYgaXTigJlzIGEgaGVscCBpbiBjcmVhdGluZyBzb21l
dGhpbmcgbW9yZSBnZW5lcmljDQphbmQgc2hhcmVkLg0KDQpSZWdhcmRzDQoNClN0ZXZlDQo=

