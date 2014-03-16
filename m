Return-Path: <ankur@embertec.com>
Received: from mail.embertec.com (mail.embertec.com [119.18.44.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13C4CE009C2
	for <yocto@yoctoproject.org>; Sun, 16 Mar 2014 16:03:52 -0700 (PDT)
Received: from mail.embertec.com by embertec.com (mail.embertec.com)
	(SecurityGateway 2.0.6) with SMTP id SG000726276.MSG 
	for <yocto@yoctoproject.org>; Mon, 17 Mar 2014 09:29:23 +1030
Received: from EMBSVR01.ember.local ([fe80::b1f0:778b:4c9c:36f7]) by
	EMBSVR01.ember.local ([fe80::b1f0:778b:4c9c:36f7%18]) with mapi;
	Mon, 17 Mar 2014 09:29:19 +1030
From: Ankur Patel <ankur@embertec.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Mon, 17 Mar 2014 09:29:16 +1030
Thread-Topic: [yocto] Issue installing External Kernel Module with same name
Thread-Index: Ac8/oASbFSQVdQUnQ7ORkrZHekGH2wByrLVQ
Message-ID: <BD5E516FF3711A41B93DC005170007BB010D4B975C8B@EMBSVR01.ember.local>
References: <BD5E516FF3711A41B93DC005170007BB010D4B870A88@EMBSVR01.ember.local>
	<CAMKF1sp_a1QqXhiAJ-2nQapCYHX_fJpYZrTD=NZKcLJZGgzzRQ@mail.gmail.com>
In-Reply-To: <CAMKF1sp_a1QqXhiAJ-2nQapCYHX_fJpYZrTD=NZKcLJZGgzzRQ@mail.gmail.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
MIME-Version: 1.0
X-SGHeloLookup-Result: pass smtp.helo=mail.embertec.com (ip=192.168.14.10)
X-Mailman-Approved-At: Sun, 16 Mar 2014 20:03:47 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issue installing External Kernel Module with same name
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
X-List-Received-Date: Sun, 16 Mar 2014 23:03:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBLaGVtIFJhaiBbbWFpbHRvOnJh
ai5raGVtQGdtYWlsLmNvbV0gDQpTZW50OiBTYXR1cmRheSwgMTUgTWFyY2ggMjAxNCAyOjQyIEFN
DQpUbzogQW5rdXIgUGF0ZWwNCkNjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBS
ZTogW3lvY3RvXSBJc3N1ZSBpbnN0YWxsaW5nIEV4dGVybmFsIEtlcm5lbCBNb2R1bGUgd2l0aCBz
YW1lIG5hbWUNCg0KPk9uIFRodSwgTWFyIDEzLCAyMDE0IGF0IDExOjAwIFBNLCBBbmt1ciBQYXRl
bCA8YW5rdXJAZW1iZXJ0ZWMuY29tPiB3cm90ZToNCj4+IE5vdyB0aGUgcHJvYmxlbSBpcywgYXMg
a2VybmVsIGFsc28gYnVpbGRzIHRoZSB3aWZpIGRyaXZlciBtb2R1bGVzIA0KPj4gYmFzZWQgb24g
dGhlIHNhbWUgLmNvbmZpZyBmaWxlIHVzZWQgYnkgZXh0ZXJuYWwgZHJpdmVyIG1vZHVsZS4NCg0K
DQo+RGlzYWJsZSB0aGUgb3B0aW9uIGluIHRoZSBjb21wb25lbnQgd2hlcmUgeW91IGRvbnQgd2Fu
dCBpdCBmcm9tLiBJbiB0aGlzIGNhc2Uga2VybmVsIC1LaGVtDQoNCkBLaGVtOiBTdXJlLCBJIGFn
cmVlIHRvIHRoaXMgcG9pbnQuIERvIEkgaGF2ZSB0byB1cGRhdGUgdGhlIC5jb25maWcgZmlsZSB0
byBkaXNhYmxlIHRoZSB0aSB3aWZpIGRyaXZlcj8gQnV0IHRoaXMgd2lsbCBhbHNvIGFmZmVjdCB0
aGUgYnVpbGQgZm9yIEV4dGVybmFsIERyaXZlciBtb2R1bGVzPyBPciBJIGhhdmUgdG8gdXBkYXRl
IHRoZSBNYWtlZmlsZSB1bmRlciBkcml2ZXJzL25ldC93aWZpIHRvIHByZXZlbnQgYnVpbGRpbmcg
dGhlIG1vZHVsZXM/IChOb3Qgc3VyZSBpZiBsYXRlciBpcyB0aGUgY29ycmVjdCB3YXkpDQoNClJl
Z2FyZHMsDQpBbmt1cg0KDQo=

