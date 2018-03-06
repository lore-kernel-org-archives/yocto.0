Return-Path: <external.Rob.vanRiel@nl.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77247E00C02; Tue,  6 Mar 2018 00:50:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from de-out1.bosch-org.com (de-out1.bosch-org.com [139.15.230.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F756E00848
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 00:50:54 -0800 (PST)
Received: from si0vm1947.rbesz01.com
	(lb41g3-ha-dmz-psi-sl1-mailout.fe.ssn.bosch.com [139.15.230.188])
	by si0vms0216.rbdmz01.com (Postfix) with ESMTPS id 3zwVqK4HzBz1XLFYB
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 09:50:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nl.bosch.com;
	s=2015-01-21; t=1520326253;
	bh=ZPwWhVsc71kBdY0xtvw5bHQRy7hoKtqRt3CiD1Y7jlA=; l=10;
	h=From:From:Reply-To:Sender;
	b=oGJk1Faolp0HPumHBSOyvgA/d/f9sJ+Foot55wF6xAoIL7uTSq17DzTJbGTdaVqP5
	dDI3YrIfp/zXE/c9RtLrwhetGHQn7bse3kV/wpI6doXEqpRbV74zsdUiPgndl/iKyN
	nYlRO5rFeTV+c/i6OcLOq+lkuJjr5CM5KNNj6T3A=
Received: from fe0vm1741.rbesz01.com (unknown [10.58.172.176])
	by si0vm1947.rbesz01.com (Postfix) with ESMTPS id 3zwVqK3nJ4z6CjQfk
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 09:50:53 +0100 (CET)
X-AuditID: 0a3aad15-083ff700000062e5-05-5a9e566d1185
Received: from si0vm1950.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by fe0vm1741.rbesz01.com (SMG Outbound) with SMTP id
	67.E2.25317.D665E9A5; Tue,  6 Mar 2018 09:50:53 +0100 (CET)
Received: from FE-MBX2023.de.bosch.com (fe-mbx2023.de.bosch.com [10.3.231.33])
	by si0vm1950.rbesz01.com (Postfix) with ESMTPS id 3zwVqK1rGKzCpNL
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 09:50:53 +0100 (CET)
Received: from FE-MBX2023.de.bosch.com (10.3.231.33) by
	FE-MBX2023.de.bosch.com (10.3.231.33) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1415.2; Tue, 6 Mar 2018 09:50:53 +0100
Received: from FE-MBX2023.de.bosch.com ([fe80::89a:e274:f91a:35d7]) by
	FE-MBX2023.de.bosch.com ([fe80::89a:e274:f91a:35d7%3]) with mapi id
	15.01.1415.002; Tue, 6 Mar 2018 09:50:53 +0100
From: "EXTERNAL van Riel Rob (ENTER, BT-CO/ENG1.1)"
	<external.Rob.vanRiel@nl.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] bitbake: git and patch problem
Thread-Index: AdO0bDg9YcONI9sMQR2mVKfKBya5NQAFu6mAAAJt1sAAJqqvgA==
Date: Tue, 6 Mar 2018 08:50:52 +0000
Message-ID: <658629f1afea4abea2698db615a5ae55@nl.bosch.com>
References: <84f7a513eb7140518cc715c1e3d4bf9e@nl.bosch.com>
	<55456292-ab67-8e2c-f4eb-88293d29d25d@windriver.com> 
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.120.14.72]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA22SfUwbdRjH++td21vHmR9XCg91LK5bskxCocJepNMsMy7zLZtOF1aXbIcc
	tLEvpNc2YzMRGDDtCNmIrFLbMuiGbr50AVTGxJduYtmMxEQiaipuIGEw0WWiQTfmHQdr//Cf
	y/f3fX6f5/vcc0cRTC2lo6wON+dysDa9Uk2qi9/PybPvDpsLaucLNzVff0+5BW0/Em9S7kRm
	9eYyzmb1cq78R/erLd2jd5WVHyw/cD4yrKxGry33oWUU4CK4EvmC8CE1xWC/HDoHAgrpMIIg
	0TGilA43EHzUFyelQz+C7+Z+Fa5RlBLvgfn6zWKrDLweJgf+VIpagwvhaiKIJL8IQv7QwvUM
	vBVu9xhEm8RroP5ir1zUNDbB4Ll5UtQM5qHxwtSCj3AOvF49s6AJnAU/jrfJpakxnPpkiJC0
	Fq6PzSsk/QCcO+JfiCLwOoj25UvoKnjj6FWVFJUOg63j5DGkDaR0DSSJQAoRSCFOIvIs0pZz
	BV67cWOR0eAq5fiDBUbDS057F5I+hLYXtbfvjiFMIX0a7X0qbGYUrJevssfQekqu19IPsyEz
	c1+ps6zKwvKWfS6PjeP1OhrJZDJGc8/mPaV2K89bnY4YAorQZ9Al+UIruoytOsi5nBIWQ/dT
	pD6Lbix7xczgCtbNvcxxlZxrqWqiKD3QmhcEMN3FVXAHyq0291JZnyNlZqZWUmPl1LIYKqTS
	hOzHnhez+UrWzlsrFvFsCWeW3CR6Ge2g/ur/pYGgRianhWdP540GgiEdTgeny6IzxXGwSFk8
	jnvT6FbQ/AahoE0pJDtOoR+QsE8NbRThNOHfT84BdK8muIdJXzST0EOnBQaHFBA5cxRB29gp
	BLHOOgXcToQVUOu7TMHU7z0MxFtbsqFlbCIHwrGalRC/dGUldP88vQaCifhauHn831wIjAby
	IPrHnTy4O9lsgDfbPzbA+GxfAVx4+7ONMPfb8CZ452ZXMTTXBU3QVf+tCb6sq9kKgZqTj0Nr
	R9s2OFEb3w5Nne8+Ab3HPn8abs35dsBsxz/PQcuZt3ZNCUuWC0seSgTFJbtZ9/8sedFNvp2u
	GoU2TDzZ9NX0M/tXmK69uG3G+0j/YPRwuGFnpr1j7+r8mvOYzZ1R+Q8Ny26tUhUT2aXrZE1j
	X6fvKlEdby+xXewmo2l7J2ZXZ5yORJ795tUP7Yd/yv2+WDkzcCeb3uLJPGuq79tXYbQZGq+x
	qua149jiGw0c+tv/6WS5Zyiqsl8K2/Qkb2GNDxIunv0Pb0ihMpUEAAA=
Subject: Re: bitbake: git and patch problem
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
X-List-Received-Date: Tue, 06 Mar 2018 08:50:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBGcm9tOiBFWFRFUk5BTCB2YW4gUmllbCBSb2IgKEVOVEVSLCBCVC1DTy9FTkcxLjEpDQo+IFNl
bnQ6IG1hYW5kYWcgNSBtYWFydCAyMDE4IDE2OjEyDQo+IFN1YmplY3Q6IFJFOiBbeW9jdG9dIGJp
dGJha2U6IGdpdCBhbmQgcGF0Y2ggcHJvYmxlbQ0KPiANCj4gPiBGcm9tOiBCcnVjZSBBc2hmaWVs
ZCBbbWFpbHRvOmJydWNlLmFzaGZpZWxkQHdpbmRyaXZlci5jb21dDQo+ID4gU2VudDogbWFhbmRh
ZyA1IG1hYXJ0IDIwMTggMTU6MDkNCj4gPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBiaXRiYWtlOiBn
aXQgYW5kIHBhdGNoIHByb2JsZW0NCj4gPg0KPiA+IEl0IGlzLCBidXQgeW91IGNhbiBjaGFuZ2Ug
d2hhdCBhcHBsaWVzIHRoZSBwYXRjaC4NCj4gPg0KPiA+IEhhdmUgYSBsb29rIGF0IGNsYXNzZXMv
cGF0Y2guYmJjbGFzcywgYW5kIGluIHBhcnRpY3VsYXIgdGhlIHZhcmlhYmxlDQo+IFBBVENIVE9P
TC4NCj4gPg0KPiA+IElmIHlvdXJzIGlzIHNldCB0byAnZ2l0JywgZ2l0IHdpbGwgYmUgdXNlZC4g
QnV0IGJ5IGRlZmF1bHQsIGl0IGlzIHR5cGljYWxseSBzZXQgdG8gJ3F1aWx0JyAuLg0KPiA+IHNv
IGl0IGhhcyBiZWVuIGNoYW5nZWQgZnJvbSB0aGUgZGVmYXVsdCBpbiB5b3VyIGVudmlyb25tZW50
Lg0KPiANCj4gVGhhbmsgeW91LCB0aGlzIG1heSB3ZWxsIGJlIGp1c3QgdGhlIGhpbnQgSSB3YXMg
bG9va2luZyBmb3IuIEknbGwgZGlnIGluLCBhbmQgc2VlIHdoZXJlDQo+IHRoZSB0cmFpbCBsZWFk
cy4NCg0KVGhlIHRyYWlsIGxlZCBtZSB0byBkaXNjb3ZlciBJJ2Qgb21pdHRlZCBhIHBpZWNlIG9m
IGluZm9ybWF0aW9uIHRoYXQgSSBkaWRuJ3Qga25vdyB3YXMgcmVsZXZhbnQ6IHRoZSBjb2RlIEkn
bSB0cnlpbmcgdG8gcGF0Y2ggaXMgaW4gdGhlIGtlcm5lbC4gSXQgdHVybnMgb3V0IHRoZSBrZXJu
ZWwgdXNlcyBhIGRlZGljYXRlZCBwYXRjaGluZyBtZWNoYW5pc20sIG1vc3RseSB1bnJlbGF0ZWQg
dG8gd2hhdCBldmVyeXRoaW5nIGVsc2UgdXNlcy4gT24gdGhlIGJyaWdodGVyIHNpZGUsIEkgbm93
IGtub3cgd2hhdCB0byBsb29rIGludG8uDQoNClJvYg0KDQo=

