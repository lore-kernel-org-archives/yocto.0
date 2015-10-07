Return-Path: <lstarret@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C555EE00DEA; Wed,  7 Oct 2015 05:59:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [216.31.210.62 listed in list.dnswl.org]
Received: from mail-gw1-out.broadcom.com (mail-gw1-out.broadcom.com
	[216.31.210.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3673AE009B8
	for <yocto@yoctoproject.org>; Wed,  7 Oct 2015 05:59:09 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.17,649,1437462000"; d="scan'208";a="77071292"
Received: from irvexchcas07.broadcom.com (HELO
	IRVEXCHCAS07.corp.ad.broadcom.com) ([10.9.208.55])
	by mail-gw1-out.broadcom.com with ESMTP; 07 Oct 2015 07:48:39 -0700
Received: from IRVEXCHMB14.corp.ad.broadcom.com ([fe80::6184:5cb6:5350:4823])
	by IRVEXCHCAS07.corp.ad.broadcom.com ([::1]) with mapi id
	14.03.0235.001; Wed, 7 Oct 2015 05:59:05 -0700
From: "Luke (Lucas) Starrett" <lstarret@broadcom.com>
To: Mike Looijmans <mike.looijmans@topic.nl>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] tmp on NFS
Thread-Index: AdEAoI6A3s7vjL/fTxGsJnz4QZJETAAaBZ+AAAJEGXA=
Date: Wed, 7 Oct 2015 12:59:04 +0000
Message-ID: <DB59870584238C45879465F0A2E5C3F17E1779@IRVEXCHMB14.corp.ad.broadcom.com>
References: <DB59870584238C45879465F0A2E5C3F17E16BB@IRVEXCHMB14.corp.ad.broadcom.com>
	<5614C341.2090104@topic.nl>
In-Reply-To: <5614C341.2090104@topic.nl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.208.64]
MIME-Version: 1.0
Subject: Re: tmp on NFS
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
X-List-Received-Date: Wed, 07 Oct 2015 12:59:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBzaG91bGQgY2xhcmlmeSwgdGhlIHNhbml0eSBjaGVjayB3YXJuaW5nIEknbSByZWZlcnJpbmcg
dG8gaXMgYWJvdXQgdGhlIFlvY3RvIGJ1aWxkL3RtcCBkaXJlY3Rvcnkgbm90IC90bXAgYXMgaW4g
dGhlIHN5c3RlbSBsZXZlbCB0bXAgZGlyLg0KDQpUaGFua3MsIEx1a2UuDQoNCg0KLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBb
bWFpbHRvOnlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10gT24gQmVoYWxmIE9mIE1pa2Ug
TG9vaWptYW5zDQpTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgMDcsIDIwMTUgMzowMSBBTQ0KVG86
IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIHRtcCBvbiBORlMN
Cg0KSSBjYW4gdGhpbmsgb2YgdmFyaW91cyB0aGluZ3MgdGhhdCB3b3VsZCBnbyB3cm9uZyB3aXRo
IHRtcCBvbiBORlMuIE9uZSBvZiB0aGUgbW9zdCBvYnZpb3VzIGV4YW1wbGUgd291bGQgYmUgdG8g
dHJ5IGFuZCBjaGFuZ2UgdGhlIG5ldHdvcmsgY29uZmlndXJhdGlvbiB3aGlsZSBydW5uaW5nLCBh
bmQgbmVlZGluZyBzb21lIHRlbXBvcmFyeSBmaWxlIHRvIG1hbmFnZSB0aGF0LlwNCg0KSSB0aGlu
ayB0aGUgZXhwZWN0YXRpb24gaXMgdGhhdCAvdG1wIHNob3VsZCBiZSBhY2Nlc3NpYmxlIGF0IGFs
bCB0aW1lcywgYW5kIHRoYXQgaXQncyBsb2NhbCBhbmQgKGF0IGxlYXN0IHNvbWV3aGF0KSB2b2xh
dGlsZS4NCg0KSSB0ZW5kIHRvIG1vdW50IC90bXAvIGluIFJBTSBvbiBhbGwgc3lzdGVtcy4gRXZl
biBteSBkZXNrdG9wLiBOb3QgaGF2aW5nIHRvIGRvIHdhaXQgZm9yIGEgZGV2aWNlIElPIHF1ZXVl
IHdoZW4gcGVyZm9ybWluZyBhY3Rpb25zIGluIC90bXAvIGNhbiBncmVhdGx5IGltcHJvdmUgdGhl
IHJlc3BvbnNpdmVuZXNzIG9mIHRoZSBzeXN0ZW0uDQoNCklmIHlvdXIgYXBwbGljYXRpb24ncyAv
dG1wLyBzdG9yYWdlIHJlcXVpcmVtZW50cyBhcmUgc3VjaCB0aGF0IHRoZXkgZG9uJ3QgZml0IGlu
IFJBTSwgSSBkb24ndCB0aGluayAvdG1wLyBpcyB0aGUgcGxhY2Ugd2hlcmUgdGhleSBzaG91bGQg
YmUgc3RvcmVkLg0KDQoNCg0KT24gMDctMTAtMTUgMDM6MzcsIEx1a2UgKEx1Y2FzKSBTdGFycmV0
dCB3cm90ZToNCj4gSGksDQo+DQo+IENhbiBhbnlib2R5IGdpdmUgYSBicmllZiBoaXN0b3J5IG9m
IHRpbWUgb24gd2h5IHVzaW5nIGFuIE5GUyBkcml2ZSBmb3IgdG1wIGlzDQo+IG5lY2Vzc2FyaWx5
IGEgYmFkIHRoaW5nLCBhbmQgd2h5IHdlIGhhdmUgYSBzYW5pdHkgY2hlY2sgZm9yIGl0PyAgV2Xi
gJlyZSBkb2luZw0KPiB0aGlzIHdpdGhvdXQgYW55IG9idmlvdXMgc2lkZSBlZmZlY3RzLg0KPg0K
PiBJ4oCZbSBhd2FyZSBvZiB0aGUgY2hlY2tzIGFkZGVkIGJ5IGNoYW5nZXMgbGlrZSB0aGlzOg0K
Pg0KPiBwYXRjaHdvcmsub3BlbmVtYmVkZGVkLm9yZy9wYXRjaC82MTEwNy8NCj4NCj4gSG93ZXZl
ciwgSSBkb27igJl0IHNlZSB0aGUgcmVhc29uaW5nL2JhY2tncm91bmQgZG9jdW1lbnRlZCBhcyB0
byBleGFjdGx5IHdoYXQgaXMNCj4gYWN0dWFsbHkgYnJva2VuIHdoZW4gcHV0dGluZyB0bXAgb24g
TkZTLiAgSXMgaXQgdGltZSBza2V3LCBwcm9ibGVtcyB3aXRoDQo+IGNvbmN1cnJlbnQgZmlsZSBh
Y2Nlc3MsIHNvbWV0aGluZyBlbHNlPw0KPg0KPiBUaGFua3MsDQo+DQo+IEx1a2UNCj4NCj4NCj4N
Cg0KDQoNCktpbmQgcmVnYXJkcywNCg0KTWlrZSBMb29pam1hbnMNClN5c3RlbSBFeHBlcnQNCg0K
VE9QSUMgRW1iZWRkZWQgUHJvZHVjdHMNCkVpbmRob3ZlbnNld2VnIDMyLUMsIE5MLTU2ODMgS0gg
QmVzdA0KUG9zdGJ1cyA0NDAsIE5MLTU2ODAgQUsgQmVzdA0KVGVsZWZvb246ICszMSAoMCkgNDk5
IDMzIDY5IDc5DQpUZWxlZmF4OiArMzEgKDApIDQ5OSAzMyA2OSA3MA0KRS1tYWlsOiBtaWtlLmxv
b2lqbWFuc0B0b3BpY3Byb2R1Y3RzLmNvbQ0KV2Vic2l0ZTogd3d3LnRvcGljcHJvZHVjdHMuY29t
DQoNClBsZWFzZSBjb25zaWRlciB0aGUgZW52aXJvbm1lbnQgYmVmb3JlIHByaW50aW5nIHRoaXMg
ZS1tYWlsDQoNCg0KDQoNCg0KLS0gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KeW9jdG8gbWFpbGluZyBsaXN0DQp5b2N0b0B5b2N0b3Byb2plY3Qub3Jn
DQpodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCg==

