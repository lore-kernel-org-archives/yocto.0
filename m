Return-Path: <VINEETHC@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48A7DE00CA6; Mon, 30 Oct 2017 21:07:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.63 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 909 seconds by postgrey-1.32 at yocto-www;
	Mon, 30 Oct 2017 21:07:33 PDT
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0063.outbound.protection.outlook.com [104.47.40.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E772E00C62
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 21:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=uO/kPSQ4MraY83dJNMQYpt2/A0qIhtk5a+tEdr9T4Vs=;
	b=bXh0f8Zqu4CXjmAReZnZqDuqDwV/fVCjGzrM/a6xrZb0iC5mOJjwA/Trqa7MwAKMaUjhS53LjdpyiG9BgQmL139943jgpFkPVI84yZfyiOUt3Y436nMnGnAa5vHyWXXqbM+o8uWpSvrDOF6Z+umyTDWcJVE39zEHLJwnifL6RoE=
Received: from DM5PR02MB2283.namprd02.prod.outlook.com (10.168.174.19) by
	DM5PR02MB2282.namprd02.prod.outlook.com (10.168.174.18) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.156.4; Tue, 31 Oct 2017 03:52:22 +0000
Received: from DM5PR02MB2283.namprd02.prod.outlook.com ([10.168.174.19]) by
	DM5PR02MB2283.namprd02.prod.outlook.com ([10.168.174.19]) with mapi id
	15.20.0178.012; Tue, 31 Oct 2017 03:52:22 +0000
From: Vineeth Karumanchi <VINEETHC@xilinx.com>
To: Andre McCurdy <armccurdy@gmail.com>, Alexander Kanavin
	<alexander.kanavin@linux.intel.com>
Thread-Topic: [yocto] [Yocto] Checking sstate mirror is hanging at 100%
Thread-Index: AQHTUUOTCGGjBn7ZFk6Fnr1c5XVrlaL8IvsAgACq0wCAAH2GAA==
Date: Tue, 31 Oct 2017 03:52:22 +0000
Message-ID: <DM5PR02MB2283899C6F536DA44EC707D2B95E0@DM5PR02MB2283.namprd02.prod.outlook.com>
References: <c48d8ea1-c618-dc24-6200-f7511f0e506d@xilinx.com>
	<3d885b18-f114-fcf1-0600-0903935bd1ab@linux.intel.com>
	<CAJ86T=XGnuGPEnnKobJDrYNudEdbV0i8UKPzAFzcC7+Ob_KqEQ@mail.gmail.com>
In-Reply-To: <CAJ86T=XGnuGPEnnKobJDrYNudEdbV0i8UKPzAFzcC7+Ob_KqEQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=VINEETHC@xilinx.com; 
x-originating-ip: [182.72.145.30]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR02MB2282;
	6:ilBjdLv54bep1IbZM9i9NM/HD+YDjNKVJ6/xGRYO9+VSKgQ8vaeOcdOeYdTtAYlzB3wnCM/DRAJmWJJhw8R5vXRV8Y8aUhAUVKmjfOa5d9zSMBj8MyKK3bpbrhyU+zCONxuQl2R894xBB0T9GXb8DNlxnC17eIxvMC9BW3s7sTOtfiLkibULTjOktY66Dtqxi1CH3gtou/TSB7Nc19CxCcIrsTgn99i+s9YqgkCNJ3S+AeaDwKc9QC4TAIrUfpOEjc/qLES1w6blQp7CE3NnRkutZV3ybu/biLhB+65B6sa4MvhE6msUknxXmW0bM1mKBrEEQnP2cshmrCZWp0okWQ==;
	5:LvMgh/qDqieRNOKSA+4rVaIM4szcJqxzqHFGTB662lR8FX8EfA7pS/3tEigQR/f3BDMk/Xn/jPVY36ElPK5iQ4iE5bYv7IQndokSrWaKbsHu58WRREtdwYisCJHXemdJ9z/KOErbYXOJ6roy95O95Q==;
	24:4KFJ/Mynjs4OSCwOASBq/Ga5RPcuCvoXbu9yCLFGAG/bdVI3uW6GJCSeW0cdRZQiaaUkYpIJcN7sOHLqdQKCUo888kBxUtlkOpdi/OCAJnU=;
	7:1XEBQ8B5omdl9vQqgU6H/LkFQctM80JuGLMoc8w6q3+thd9s7sVMUxsy34/WoDU8u4qPXOzGetoKspBVHI1PASunvspl9r0XUANmhSbwO07JOkN5LndbhKPLl/kU0OVufKYg5i7l5iM07D3Ayors4RG0ReY764o4rxdrxlRSTLgUXMG5sKESZqOU2ykBw7V56FBVKAA9lwjh0abSBN6CGRfV/7A1BNqqqpJnyVjSnSs=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: d0889178-8ac9-48fd-8607-08d52012ca83
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(48565401081)(4534020)(4602075)(2017052603199);
	SRVR:DM5PR02MB2282; 
x-ms-traffictypediagnostic: DM5PR02MB2282:
x-exchange-antispam-report-test: UriScan:(264703809997249)(192813158149592)(228905959029699); 
x-microsoft-antispam-prvs: <DM5PR02MB2282E5EAAE6CC4CAC1260351B95E0@DM5PR02MB2282.namprd02.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(10201501046)(93006095)(93001095)(3231020)(3002001)(100000703101)(100105400095)(6055026)(6041248)(20161123564025)(20161123562025)(20161123558100)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DM5PR02MB2282; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DM5PR02MB2282; 
x-forefront-prvs: 04772EA191
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(376002)(346002)(39860400002)(199003)(189002)(24454002)(97736004)(54356999)(3660700001)(6506006)(3280700002)(4326008)(231993002)(77096006)(6436002)(33656002)(53546010)(6246003)(53936002)(72206003)(86362001)(478600001)(966005)(1720100001)(14454004)(66066001)(2906002)(68736007)(101416001)(105586002)(106356001)(5660300001)(229853002)(6306002)(189998001)(2950100002)(25786009)(9686003)(55016002)(99286003)(50986999)(39060400002)(2900100001)(7696004)(305945005)(81156014)(81166006)(6116002)(76176999)(8676002)(8936002)(316002)(7736002)(74316002)(3846002)(102836003)(110136005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB2282;
	H:DM5PR02MB2283.namprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0889178-8ac9-48fd-8607-08d52012ca83
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2017 03:52:22.0660 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2282
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Checking sstate mirror is hanging at 100%
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
X-List-Received-Date: Tue, 31 Oct 2017 04:07:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQo+IEZyb206IEFuZHJlIE1jQ3VyZHkgW21haWx0bzphcm1jY3VyZHlAZ21haWwuY29tXQ0KPiBT
ZW50OiBUdWVzZGF5LCBPY3RvYmVyIDMxLCAyMDE3IDE6MTkgQU0NCj4gVG86IEFsZXhhbmRlciBL
YW5hdmluIDxhbGV4YW5kZXIua2FuYXZpbkBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBWaW5lZXRo
IEthcnVtYW5jaGkgPFZJTkVFVEhDQHhpbGlueC5jb20+OyBZb2N0byBkaXNjdXNzaW9uIGxpc3QN
Cj4gPHlvY3RvQHlvY3RvcHJvamVjdC5vcmc+DQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIFtZb2N0
b10gQ2hlY2tpbmcgc3N0YXRlIG1pcnJvciBpcyBoYW5naW5nIGF0IDEwMCUNCj4gDQo+IE9uIE1v
biwgT2N0IDMwLCAyMDE3IGF0IDI6MzcgQU0sIEFsZXhhbmRlciBLYW5hdmluDQo+IDxhbGV4YW5k
ZXIua2FuYXZpbkBsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPiA+IE9uIDEwLzMwLzIwMTcgMDc6
NTQgQU0sIFZpbmVldGggS2FydW1hbmNoaSB3cm90ZToNCj4gPg0KPiA+PiBJbiB0aGlzIGNhc2Ug
aSB3b3VsZCBleHBlY3QgYml0YmFrZSB0byAiY2hlY2sgZm9yIHNzdGF0ZSBtaXJyb3JzIiBmb3IN
Cj4gPj4gc29tZSB0aW1lIGFuZCByZWJ1aWxkIGZyb20gc2NyYXRjaC4gSXMgdGhlcmUgYW55IGFw
cHJvYWNoIHRvIG92ZXIgY29tZQ0KPiB0aGlzID8NCj4gPg0KPiA+IFRoZSBhcHByb2FjaCBpcyB0
byBmaXggeW91ciBpbmZyYXN0cnVjdHVyZSBzbyB0aGF0IGZldGNoaW5nIGZyb20NCj4gPiBuZXR3
b3JrIGRvZXNuJ3QgZmFpbC4gV2UndmUgZ290dGVuIGEgc2ltaWxhciByZXF1ZXN0IHJlY2VudGx5
IGZvcg0KPiA+IGVuYWJsaW5nICdzb2Z0IHNzdGF0ZSBjYWNoZSBmYWlsdXJlJywgYW5kIFJQIGlz
IGZpcm1seSBhZ2FpbnN0IGl0Og0KPiA+DQo+ID4gaHR0cDovL2xpc3RzLm9wZW5lbWJlZGRlZC5v
cmcvcGlwZXJtYWlsL29wZW5lbWJlZGRlZC1jb3JlLzIwMTctDQo+IEF1Z3VzdC8NCj4gPiAxNDE1
OTMuaHRtbA0KPiANCj4gSXQgbG9va3MgbGlrZSB0aGUgbG9naWMgaW4gdGhlIHdnZXQgZmV0Y2hl
ciByZXRyaWVzIG9uY2UsIHNvIGlmIGl0J3MgZ2V0dGluZyBzdHVjaw0KPiB0aGVuIHRoYXQgc2Vl
bXMgbGlrZSBhIGdlbnVpbmUgYnVnLg0KPiANCj4gVmluZWV0aCwgYXJlIHlvdSBzdXJlIGl0J3Mg
cmVhbGx5IGNvbnRpbnVvdXNseSByZXRyeWluZz8gDQpZZXMsIEkgc2VlIGNvbnRpbnVvdXMgcmV0
cnkgb2Ygd2dldCBvZiBzYW1lIHNzdGF0ZSBmaWxlcy4NCldpdGggLUREIEkgc2VlIHRoZSBiZWxv
dyBtZXNzYWdlcyAgZm9yIGV2ZXJ5IHRyeToNCg0KREVCVUc6IGNoZWNrc3RhdHVzOiB0cnlpbmcg
YWdhaW4NCkRFQlVHOiBjaGVja3N0YXR1czogdHJ5aW5nIGFnYWluDQpERUJVRzogY2hlY2tzdGF0
dXM6IHRyeWluZyBhZ2Fpbg0KREVCVUc6IGNoZWNrc3RhdHVzOiB0cnlpbmcgYWdhaW4NCkRFQlVH
OiBjaGVja3N0YXR1czogdHJ5aW5nIGFnYWluDQoNCj5PciBhcmUgeW91IGp1c3Qgc2VlaW5nDQo+
IHRpbWVvdXRzIGZvciBtYW55IGZldGNoZXMgKHdoaWNoIHdpbGwgZXZlbnR1YWxseSBjb21wbGV0
ZSk/IE5vdGUgdGhhdCB5b3UNCj4gY2FuIHJlZHVjZSB0aGUgd2dldCB0aW1lb3V0IGJ5IHNldHRp
bmcgeW91ciBvd24gdmFsdWUgZm9yDQo+ICJGRVRDSENNRF93Z2V0Ii4gU2VlIGJpdGJha2UvbGli
L2JiL2ZldGNoMi93Z2V0LnB5IGZvciB0aGUgZGVmYXVsdCB2YWx1ZQ0KPiAtIHVzZSB0aGF0IGFz
IGEgc3RhcnRpbmcgcG9pbnQgZm9yIHlvdXIgbW9kaWZpY2F0aW9uLg0KDQpObyBmZXRjaCBmYWls
dXJlIGVycm9yLCBKdXN0IGhhbmdpbmcgYXQgMTAwJS4NCg0KSSBkaWQgc29tZSBtb3JlIGFuYWx5
c2lzOg0KTXkgbmV0d29yayBuZWVkcyBwcm94eSB0byBhY2Nlc3MgYW55IHNpdGUuDQoNClRvIHZh
bGlkYXRlIGEgVVJMLCBiaXRiYWtlL2xpYi9iYi9mZXRjaDIvX19pbml0X18ucHk6ICB1cmxsaWIu
cGFyc2UudXJscGFyc2UodXJpKSBhbmQgY2hlY2tpbmcgZm9yIG5ldGxvYy4NClRoaXMgaXMgcmV0
dXJuaW5nIHRydWUgd2l0aG91dCBwcm94eSBiZWluZyBzZXQsIGJ1dCB0aGUgc2FtZSB1cmkgaXMg
bm90IGVzdGFibGlzaGluZyBjb25uZWN0aW9uIHdpdGhvdXQgcHJveGllcy4NCg0KYml0YmFrZSBp
cyB0aGlua2luZyBpdCBhcyBhIHZhbGlkICBhbmQga2VlcCByZXRyeWluZyB3aXRob3V0IGFueSBl
cnJvcnMuDQoNClRoYW5rcw0KVmluZWV0aA0KDQoNCg0KDQoNCg==

