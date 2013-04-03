Return-Path: <Michael.Fainstein@ecitele.com>
Received: from mail1.bemta3.messagelabs.com (mail1.bemta3.messagelabs.com
	[195.245.230.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98337E013AC
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 04:22:02 -0700 (PDT)
Received: from [85.158.138.51:15864] by server-9.bemta-3.messagelabs.com id
	DF/5F-32531-8D01C515; Wed, 03 Apr 2013 11:22:00 +0000
X-Env-Sender: Michael.Fainstein@ecitele.com
X-Msg-Ref: server-6.tower-174.messagelabs.com!1364988096!19797664!25
X-Originating-IP: [147.234.242.234]
X-StarScan-Received: 
X-StarScan-Version: 6.8.6.1; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22032 invoked from network); 3 Apr 2013 11:21:59 -0000
Received: from ilptbmg01-out.ecitele.com (HELO ilptbmg01-out.ecitele.com)
	(147.234.242.234)
	by server-6.tower-174.messagelabs.com with DHE-RSA-AES256-SHA encrypted
	SMTP; 3 Apr 2013 11:21:59 -0000
X-AuditID: 93eaf2e7-b7f5a6d0000017b6-21-515c10d6ff2f
Received: from ILPTEXCH02.ecitele.com ( [147.234.245.181])
	by ilptbmg01-out.ecitele.com (Symantec Messaging Gateway) with SMTP id
	C8.74.06070.6D01C515; Wed,  3 Apr 2013 14:21:58 +0300 (IDT)
Received: from ILPTWPVEXCA01.ecitele.com (172.31.244.224) by
	ILPTEXCH02.ecitele.com (147.234.245.181) with Microsoft SMTP Server
	(TLS) id 8.3.264.0; Wed, 3 Apr 2013 14:21:58 +0300
Received: from ILPTWPVEXMB02.ecitele.com ([fe80::5979:ca8d:419f:56df]) by
	ILPTWPVEXCA01.ecitele.com ([fe80::ac15:43ab:d541:dfa7%12]) with mapi id
	14.02.0328.009; Wed, 3 Apr 2013 14:21:57 +0300
From: Michael Fainstein <Michael.Fainstein@ecitele.com>
To: Samuel Stirtzel <s.stirtzel@googlemail.com>
Thread-Topic: [yocto] how to convert source rpm spec to bitbake recipe?
Thread-Index: Ac4t7BYn37w9LlD1TgiC6FsVfNx/MgCOjbkAAAZMKIAAB0FTsA==
Date: Wed, 3 Apr 2013 11:21:57 +0000
Message-ID: <62673661A504604B856269DAADA8BC281DE2E894@ILPTWPVEXMB02.ecitele.com>
References: <62673661A504604B856269DAADA8BC281DE2C5CC@ILPTWPVEXMB02.ecitele.com>
	<2281089.7AcPuKSElP@helios>
	<CAGiJk9d1aR30d=rZ2GuG5bKyW1NQSNLAXfcCoWu=NTZidDvDDw@mail.gmail.com>
In-Reply-To: <CAGiJk9d1aR30d=rZ2GuG5bKyW1NQSNLAXfcCoWu=NTZidDvDDw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.4.58.22]
content-transfer-encoding: base64
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Brightmail-Tracker: H4sIAAAAAAAAA3VTa0gUURTuzqy742NqXLO92oNpWtKC1V3MtFKLIqsfoVIhlGDT7m13aGd2
	m5lEI1IiNA3K1KSWQItIKWGzEkOMaBU0DY2CtKIoU8IlK0p6gjXj+ILo/jqP73zfOZdzCNw4
	oY8lOEFGosC6GX2Yrjr4ZdwyQOXlWD+Ug9Sq0Sb9JrC9rPuMPhvsLQFprCB4ZFZGtANJ9nQm
	W+QKWHsRQ3OOdMbG0F43a0c8EuR0hvV6keBgMsLof16aAuMEGgl2j4MTnOnMjl1ZltTU5HUW
	G5OxcoUtaUPYbhcn0cjCs5yb5pEksU5EK5H9d3DXmeZug7dpQWFDU31ICfgxvwKEEpBaAwPP
	/CGavQg+fu3XV4AwwkjdB3Cs449Bc1oBvNBzEtecTgD9DVdwtURPpcD+y58Mqr2QSoS1n+9N
	UuFUMqy+cHISE0VlQn9pBaZhtsETJ2pwzd4MX/fdVuQIQkeZYVv7cTVMUtlwZLBsEmKkWgBs
	qfWodiiVAyu/tU7GgdLp954mTJMywRfDdZg2AQWvtvfjmh0NR99NTE22DJ59VA5UKZxaBf1t
	iVrpclhz+q1Bk42EDy8O6zTZ1fDj+LWp0hj4oHFQVwlifHPUfLNMvjlMvjlM9UB3HURzbq98
	gHdabQnIzsnIjRLsHv4W0Bbm/V3wq84cABQBmAhyENuXYwxhC6QiPgBiCIyJJvkFeTnG+Qc8
	jiIXK7nyxSNuJAUAJHBmIRnapcBJB1t0FIme6dRW5SvP4bHhdo+ymoKcn2S1/t9hTGRDSW6W
	kXIqi3kIIS8Sp3mWEAQDyUJVPlJETlR4kHPLs2mMCFXbiFDaOKxiSMnL8hLn1PI9wEKU/fwe
	BEad4BFQrIkUSAVEqSDXEWGGZ/psgsCkfEAUWaxSRShHNcMUVEQwReT8K3VWSTmgmVRsCTC3
	zBuhzc/T7oLBrqGBr8NPaxrjt7rjXWPBjrLrfWs39C4F+0YE642Yh+GpvzuTL8kvKwrKq1Li
	Mltz+zLWm3k28fjOuuKNu6qDjW30xOJNWTd6j1WW3htqzt7fbLopJgQ5bou4J86cn5d3s/25
	4VSxwVfqxIbePKGx9kDdvHeMTnKxttW4KLF/AUFfRoERBAAA
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to convert source rpm spec to bitbake recipe?
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
X-List-Received-Date: Wed, 03 Apr 2013 11:22:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTYW11ZWwgU3RpcnR6ZWwg
W21haWx0bzpzLnN0aXJ0emVsQGdvb2dsZW1haWwuY29tXQ0KPiBTZW50OiDXmdeV153CoNeT
IDAzINeQ16TXqNeZ15wgMjAxMyAxMzo0Nw0KPiBUbzogUGF1bCBFZ2dsZXRvbg0KPiBDYzog
TWljaGFlbCBGYWluc3RlaW47IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDog
UmU6IFt5b2N0b10gaG93IHRvIGNvbnZlcnQgc291cmNlIHJwbSBzcGVjIHRvIGJpdGJha2Ug
cmVjaXBlPw0KPiANCj4gMjAxMy80LzMgUGF1bCBFZ2dsZXRvbiA8cGF1bC5lZ2dsZXRvbkBs
aW51eC5pbnRlbC5jb20+Og0KPiA+IEhpIE1pY2hhZWwsDQo+ID4NCj4gPiBPbiBTdW5kYXkg
MzEgTWFyY2ggMjAxMyAwODo0NToyMyBNaWNoYWVsIEZhaW5zdGVpbiB3cm90ZToNCj4gPj4g
SXMgdGhlcmUgYSB0b29sIG9yIGd1aWRlIGZvciBjb252ZXJzaW9uIG9mIHNvdXJjZSBycG0g
c3BlYyBmaWxlIHRvDQo+IGJpdGJha2UNCj4gPj4gcmVjaXBlPw0KPiA+DQo+ID4gVGhlcmUg
aXMgc2NyaXB0cy9jcmVhdGUtcmVjaXBlIC0gdGhpcyBpcyBhaW1lZCBhdCBqdXN0IGRvd25s
b2FkaW5nIHNvdXJjZQ0KPiBhbmQNCj4gPiB1c2luZyBhIHNwZWMgZmlsZSBjb250YWluZWQg
d2l0aGluIGFzIGEgYmFzaXMgZm9yIGEgbmV3IHJlY2lwZSAoYW1vbmcNCj4gb3RoZXINCj4g
PiBtZXRob2RzIGl0IHVzZXMgdG8gZGV0ZXJtaW5lIHJlY2lwZSBjb250ZW50cyksIGhvd2V2
ZXIgaXQgY291bGQgYmUNCj4gYWRhcHRlZCB0bw0KPiA+IHJlYWQgYSBzcGVjaWZpZWQgc3Bl
YyBmaWxlIEkgd291bGQgdGhpbmsuDQo+ID4NCj4gPiBDaGVlcnMsDQo+ID4gUGF1bA0KPiAN
Cj4gSGkgUGF1bCwNCj4gZ29vZCB0byBrbm93Lg0KPiANCj4gRG9lcyB0aGlzIHNjcmlwdCBh
bHNvIGhlbHBzIHdpdGggcGFja2FnaW5nPw0KPiANCj4gRm9yIEtERSB0aGVyZSBhcmUgdG9u
cyBvZiBzdWItcGFja2FnZXMgd2l0aGluIG9uZSByZWNpcGUsIGFkZGluZyB0aGVtDQo+IHBl
ciBoYW5kIGlzIHRoZSBtYWpvciB0aW1lIGZhY3RvciBpbiB0aGlzIGNhc2UuDQo+IEN1cnJl
bnRseSBJIHVzZSBhIGRlY3JlcGl0IHNjcmlwdCBbMV0gdG8gZG8gdGhpcywgYnV0IG1heWJl
IEkgY2FuIHVzZQ0KPiB0aGlzIG9uZSBpZiBpdCBtZWV0cyBteSBleHBlY3RhdGlvbnMuDQo+
IA0KPiBbMV0ga2RlLXNwZWMyYmIuc2ggYmV3YXJlLCBjb250YWlucyBleGNlc3NpdmUgc2Vk
IHVzYWdlOg0KPiBodHRwOi8vcGFzdGViaW4uY29tLzNnNXhES0o1DQo+IA0KPiANCj4gLS0N
Cj4gUmVnYXJkcw0KPiBTYW11ZWwNCg0KSGkgU2FtdWVsLA0Ka2RlLXNwZWMyYmIuc2ggc2Ny
aXB0IHJlZmVyZW5jZXMgc3BlYzJiYi5pbmMgc2NyaXB0LiBDYW4geW91IHBvc3QgYSBsaW5r
IHRvIGl0Pw0KDQpUaGFua3MsDQpNaWNoYWVsDQoNCg0KVGhpcyBlLW1haWwgbWVzc2FnZSBp
cyBpbnRlbmRlZCBmb3IgdGhlIHJlY2lwaWVudCBvbmx5IGFuZCBjb250YWlucyBpbmZvcm1h
dGlvbiB3aGljaCBpcyBDT05GSURFTlRJQUwgYW5kIHdoaWNoIG1heSBiZSBwcm9wcmlldGFy
eSB0byBFQ0kgVGVsZWNvbS4gSWYgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyB0cmFuc21pc3Np
b24gaW4gZXJyb3IsIHBsZWFzZSBpbmZvcm0gdXMgYnkgZS1tYWlsLCBwaG9uZSBvciBmYXgs
IGFuZCB0aGVuIGRlbGV0ZSB0aGUgb3JpZ2luYWwgYW5kIGFsbCBjb3BpZXMgdGhlcmVvZi4N
Cg0K

