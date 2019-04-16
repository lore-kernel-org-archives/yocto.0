Return-Path: <patrick.schneider@bhtronik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC076E00CEE; Wed, 17 Apr 2019 10:27:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.0.74 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 28825 seconds by postgrey-1.32 at yocto-www;
	Wed, 17 Apr 2019 10:27:39 PDT
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr00074.outbound.protection.outlook.com [40.107.0.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC59BE00AD5
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2019 10:27:39 -0700 (PDT)
Received: from AM0PR08MB3586.eurprd08.prod.outlook.com (20.177.110.155) by
	DB7PR08MB3593.eurprd08.prod.outlook.com (20.177.120.95) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1813.12; Wed, 17 Apr 2019 00:54:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bhtronik.onmicrosoft.com; s=selector1-bhtronik-de;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=aYhTI9j1a5GesbZyYGk6miu0Zb7M7wv3sgCQjN66rqg=;
	b=CEMTfNBTodjbQ5h46wSR+F91OILSfPV4rXiEkc667j47HTNDW1x/40jcV4zO1KEt2n0kQ9KMPeMCABY5XoEfjWq2SH+7omBg4TBLwqnaEjSY1zQct2TkSuHMA0OyTcG7eU4lW1dtH60WMiaAsPidC0g+aRKUnUv1u4vQcLNBrAI=
Received: from AM0PR08MB3842.eurprd08.prod.outlook.com (20.178.82.148) by
	AM0PR08MB3586.eurprd08.prod.outlook.com (20.177.110.155) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1792.19; Tue, 16 Apr 2019 06:49:14 +0000
Received: from AM0PR08MB3842.eurprd08.prod.outlook.com
	([fe80::f527:5457:eaef:a905]) by
	AM0PR08MB3842.eurprd08.prod.outlook.com
	([fe80::f527:5457:eaef:a905%2]) with mapi id 15.20.1792.018;
	Tue, 16 Apr 2019 06:49:14 +0000
From: Patrick Schneider <patrick.schneider@bhtronik.de>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Compiling on target - building buildessentials error
Thread-Index: AdTxArUQOr/O55+IQH6rvnXenVPT6gBL6aMAAHt8msA=
Date: Tue, 16 Apr 2019 06:49:13 +0000
Message-ID: <AM0PR08MB38425150D911D400105A23E3EB240@AM0PR08MB3842.eurprd08.prod.outlook.com>
References: <AM0PR08MB384222BB52BB6A610551BC11EB280@AM0PR08MB3842.eurprd08.prod.outlook.com>
	<CAMKF1spi3DC01+9hHpn_xg1sCGxkTL1FaiH3LRcZZJy57cLzvA@mail.gmail.com>
In-Reply-To: <CAMKF1spi3DC01+9hHpn_xg1sCGxkTL1FaiH3LRcZZJy57cLzvA@mail.gmail.com>
Accept-Language: de-DE, en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=patrick.schneider@bhtronik.de; 
x-originating-ip: [188.195.186.119]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c92b4c1b-cd47-4c5f-2788-08d6c237a389
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600140)(711020)(4605104)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
	SRVR:AM0PR08MB3586; 
X-MS-TrafficTypeDiagnostic: AM0PR08MB3586:|AM0PR08MB3586:|AM0PR08MB3586:|AM0PR08MB3586:|AM0PR08MB3586:|AM0PR08MB3586:|AM0PR08MB3586:|AM0PR08MB3586:|AM0PR08MB3586:|DB7PR08MB3593:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR08MB358676775F5CC456678CE48FEB240@AM0PR08MB3586.eurprd08.prod.outlook.com>
x-forefront-prvs: 000947967F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(136003)(396003)(346002)(376002)(39830400003)(51914003)(199004)(189003)(6436002)(6306002)(55016002)(9686003)(25786009)(102836004)(68736007)(81156014)(81166006)(53936002)(4326008)(26005)(2906002)(97736004)(66574012)(66066001)(8676002)(6506007)(3846002)(6916009)(75402003)(8936002)(6116002)(52536014)(966005)(316002)(74316002)(99286004)(53546011)(305945005)(5660300002)(7736002)(486006)(74482002)(76176011)(7696005)(44832011)(508600001)(105586002)(446003)(14444005)(71200400001)(71190400001)(33656002)(11346002)(106356001)(14454004)(256004)(86362001)(186003)(476003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR08MB3586;
	H:AM0PR08MB3842.eurprd08.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: bhtronik.de does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9sNWoaqqLXJHV0bUnlfSm5zVrm7AT+DxGdm5xjpltTzUrFg3ZQLhsF+ugzylRi0DQX+RcQS7jXywmaAPMCSFNoI8FJJachPgMGfPhfxx8JP23VWWJqUw5eBbVWMVkZPVzitNU4ripJieFFzQYNl4jZ0hpMoTsrBPuLcdkveeHCwJmCIXlC92kSdowpKxcXmgOCkTz9Zity12xty2KpK+1VLfeX3qXluaMTZTwZmYFrgmfdAmc6uPMsckU83cS8rmN3TbhIHijPt0RIcTYJEetpCbgCzsnYSpkUuxxUiiCMiJuRPCnNfbgqu7DSPqIZwkjbgWhpRMR596UwxkzhdJ/rCNYZbv9jr85cQbjINOVF1KaTbbq75dvucKokoyPTxLl9LbxJGK9G7FpuQCbo6J+1NjWzlBj/AOfc1752m8YSQ=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c92b4c1b-cd47-4c5f-2788-08d6c237a389
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2019 06:49:14.0837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f812b2db-ebea-4164-9771-3ee82d61b6fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3586
X-OriginatorOrg: bhtronik.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compiling on target - building buildessentials error
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
X-List-Received-Date: Wed, 17 Apr 2019 17:27:41 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgdGhlcmUsDQp0aGFua3MgZm9yIHRoZSB0aXAgYnV0IHRoYXQgZGlkbid0IHdvcmsuIEkgc3Rp
bGwgZ2V0IHRoaXM6DQpSZWFkaW5nIHBhY2thZ2UgbGlzdHMuLi4NCkJ1aWxkaW5nIGRlcGVuZGVu
Y3kgdHJlZS4uLg0KUmVhZGluZyBzdGF0ZSBpbmZvcm1hdGlvbi4uLg0KU29tZSBwYWNrYWdlcyBj
b3VsZCBub3QgYmUgaW5zdGFsbGVkLiBUaGlzIG1heSBtZWFuIHRoYXQgeW91IGhhdmUNCnJlcXVl
c3RlZCBhbiBpbXBvc3NpYmxlIHNpdHVhdGlvbiBvciBpZiB5b3UgYXJlIHVzaW5nIHRoZSB1bnN0
YWJsZQ0KZGlzdHJpYnV0aW9uIHRoYXQgc29tZSByZXF1aXJlZCBwYWNrYWdlcyBoYXZlIG5vdCB5
ZXQgYmVlbiBjcmVhdGVkDQpvciBiZWVuIG1vdmVkIG91dCBvZiBJbmNvbWluZy4NClRoZSBmb2xs
b3dpbmcgaW5mb3JtYXRpb24gbWF5IGhlbHAgdG8gcmVzb2x2ZSB0aGUgc2l0dWF0aW9uOg0KDQpU
aGUgZm9sbG93aW5nIHBhY2thZ2VzIGhhdmUgdW5tZXQgZGVwZW5kZW5jaWVzOg0KIHBhY2thZ2Vn
cm91cC1jb3JlLWJ1aWxkZXNzZW50aWFsIDogRGVwZW5kczogbGlic3RkYysrLWRldiBidXQgaXQg
aXMgbm90IGluc3RhbGxhYmxlDQogcGFja2FnZWdyb3VwLWNvcmUtc3RhbmRhbG9uZS1zZGstdGFy
Z2V0IDogRGVwZW5kczogbGliYXRvbWljLWRldiBidXQgaXQgaXMgbm90IGluc3RhbGxhYmxlDQog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRGVwZW5kczogbGliYzYt
ZGJnIGJ1dCBpdCBpcyBub3QgaW5zdGFsbGFibGUNCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBEZXBlbmRzOiBsaWJjNi1kZXYgYnV0IGl0IGlzIG5vdCBpbnN0YWxs
YWJsZQ0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERlcGVuZHM6
IGxpYmdjYy1zLWRldiBidXQgaXQgaXMgbm90IGluc3RhbGxhYmxlDQogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgRGVwZW5kczogbGlic3RkYysrLWRldiBidXQgaXQg
aXMgbm90IGluc3RhbGxhYmxlDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgUmVjb21tZW5kczogbGlic3NwLWRldiBidXQgaXQgaXMgbm90IGluc3RhbGxhYmxlDQpF
OiBVbmFibGUgdG8gY29ycmVjdCBwcm9ibGVtcywgeW91IGhhdmUgaGVsZCBicm9rZW4gcGFja2Fn
ZXMuDQoNCkFueSBpZGVhPw0KDQpCZXN0IHJlZ2FyZHMsDQpQYXRyaWNrIFNjaG5laWRlcg0KDQo+
IC0tLS0tVXJzcHLDvG5nbGljaGUgTmFjaHJpY2h0LS0tLS0NCj4gVm9uOiBLaGVtIFJhaiA8cmFq
LmtoZW1AZ21haWwuY29tPg0KPiBHZXNlbmRldDogU2Ftc3RhZywgMTMuIEFwcmlsIDIwMTkgMjE6
NTINCj4gQW46IFBhdHJpY2sgU2NobmVpZGVyIDxwYXRyaWNrLnNjaG5laWRlckBiaHRyb25pay5k
ZT4NCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gQmV0cmVmZjogUmU6IFt5b2N0b10g
Q29tcGlsaW5nIG9uIHRhcmdldCAtIGJ1aWxkaW5nIGJ1aWxkZXNzZW50aWFscyBlcnJvcg0KPiAN
Cj4gWW91IG1heSB3YW50IHRvIGFkZCBmb2xsb3dpbmcgaW4gbG9jYWwuY29uZg0KPiANCj4gRVhU
UkFfSU1BR0VfRkVBVFVSRVNfYXBwZW5kID0gIiB0b29scy1zZGsgdG9vbHMtZGVidWcgZGJnLXBr
Z3MiDQo+IA0KPiB0aGF0IHNob3VsZCBnZXQgeW91IGdvaW5nLiBUaGVuIHlvdSBjYW4gaW5zdGFs
bCB0aGUgYWRkaXRpb25hbCBwYWNrYWdlcyB5b3UNCj4gbmVlZC4NCj4gDQo+IE9uIFNhdCwgQXBy
IDEzLCAyMDE5IGF0IDEyOjI2IFBNIFBhdHJpY2sgU2NobmVpZGVyDQo+IDxwYXRyaWNrLnNjaG5l
aWRlckBiaHRyb25pay5kZT4gd3JvdGU6DQo+ID4NCj4gPiBIaSBndXlzLA0KPiA+IEkgYW0gdHJ5
aW5nIHRvIHVzZSBnY2Mgb24gbXkgdGFyZ2V0IGJvYXJkLiBJbiBvcmRlciB0byBkbyB0aGF0IEkg
YWRkZWQNCj4gcGFja2FnZWdyb3VwLWNvcmUtYnVpbGRlc3NlbnRpYWxzIHRvIG15IGltYWdlLiBB
dCBsZWFzdCBJIHRyaWVkIHRvLg0KPiA+IFdoZW4gYnVpbGRpbmcgSSBnZXQgdGhhdCBlcnJvcjoN
Cj4gPiBwYWNrYWdlZ3JvdXAtY29yZS1idWlsZGVzc2VudGlhbCA6IERlcGVuZHM6IGxpYnN0ZGMr
Ky1kZXYgYnV0IGl0IGlzDQo+ID4gbm90IGluc3RhbGxhYmxlIEFmdGVyIHRyeWluZyBhIGxvdCBv
ZiB0aGluZ3MgYW5kIHBsYXlpbmcgYXJvdW5kIHdpdGggZGlmZmVyZW50DQo+IHBhY2thZ2VzIGl0
IHNlZW1zIHRoYXQgSSBhbSBnZW5lcmFsbHkgbm90IGFibGUgdG8gYWRkICotZGV2IHBhY2thZ2Vz
IHRvIG15DQo+IGltYWdlLCBvciBhdCBsZWFzdCBidWlsZCB0aGVtIHdpdGggYml0YmFrZSB0byBh
ZGQgdGhlbSBtYW51YWxseS4gRXZlcnl0aGluZyBJDQo+IHRyeSB3aXRoICotZGV2IGludm9sdmVk
IHRocm93cyBhbiBlcnJvci4gRm9yIGV4YW1wbGUgaWYgSSBhbSBhZGRpbmcgJ2Rldi0NCj4gcGtn
cycgdG8gbXkgRVhUUkFfSU1BR0VfRkVBVFVSRVMgdmFyaWFibGUgSSBnZXQgb3ZlciAyMDAgZXJy
b3JzIHdpdGggYWxsDQo+IGRldi1wYWNrYWdlcyBtaXNzaW5nIGp1c3QgbGlrZSB0aGF0IGFib3Zl
Lg0KPiA+IEkgbXVzdCBoYXZlIHNvbWV0aGluZyBtaXNjb25maWd1cmVkIGluIG15IGxvY2FsL2Rp
c3Ryby9tYWNoaW5lL2ltYWdlDQo+IGNvbmYgZmlsZXMgYnV0IEkgY2FuJ3QgZmlndXJlIG91dCB3
aGF0Lg0KPiA+IEFueSBoZWxwIGFwcHJlY2lhdGVkLg0KPiA+DQo+ID4gQmVzdCByZWdhcmRzLA0K
PiA+IFBhdHJpY2sgU2NobmVpZGVyDQo+ID4NCj4gPiAtLQ0KPiA+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4geW9jdG8gbWFpbGluZyBsaXN0DQo+
ID4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZy9saXN0aW5mby95b2N0bw0K

