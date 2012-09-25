Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AF10E00344
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 11:11:33 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 25 Sep 2012 11:11:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,484,1344236400"; d="scan'208";a="148935146"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Sep 2012 11:11:32 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.159]) with mapi id
	14.01.0355.002; Tue, 25 Sep 2012 11:11:32 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Brian Lloyd <blloyd@familyhonor.net>
Thread-Topic: [yocto] Documentation clarification
Thread-Index: AQHNmz6m2lF+4F4lZkWUh2B/cZT8AJebvUMA//+Ng3CAAIVzAP//i4sQ
Date: Tue, 25 Sep 2012 18:11:31 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A6A2C0@ORSMSX101.amr.corp.intel.com>
References: <1348592103.1852.5.camel@omclinuxballt.devnet.ordermatic.net>
	<CAJTo0LYJbHkqwAyYnf3ccvKBhkBX1a+rhH6dY8SPeNqyGajcZQ@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A6A243@ORSMSX101.amr.corp.intel.com>
	<1348596474.2846.0.camel@omclinuxballt.devnet.ordermatic.net>
In-Reply-To: <1348596474.2846.0.camel@omclinuxballt.devnet.ordermatic.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documentation clarification
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Sep 2012 18:11:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB3b3VsZCBub3QgYm90aGVyIGZpbGluZyBhIGJ1Zy4gIEJ1dCB0aGF0IGlzIGp1c3QgbXkgb3Bp
bmlvbi4NCg0KU2NvdHQNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEJyaWFu
IExsb3lkIFttYWlsdG86Ymxsb3lkQGZhbWlseWhvbm9yLm5ldF0gDQpTZW50OiBUdWVzZGF5LCBT
ZXB0ZW1iZXIgMjUsIDIwMTIgMTE6MDggQU0NClRvOiBSaWZlbmJhcmssIFNjb3R0IE0NCkNjOiBC
dXJ0b24sIFJvc3M7IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9d
IERvY3VtZW50YXRpb24gY2xhcmlmaWNhdGlvbg0KDQpTdGlsbCBuZWVkIHRoYXQgYnVnIGZvciB0
cmFja2luZyBwdXJwb3NlcyBvciBpcyB0aGlzIE9CRT8NCg0KQnJpYW4NCg0KT24gVHVlLCAyMDEy
LTA5LTI1IGF0IDE3OjExICswMDAwLCBSaWZlbmJhcmssIFNjb3R0IE0gd3JvdGU6DQo+IFRoaXMg
aGFzIGJlZW4gZml4ZWQuICBTZWUgaHR0cDovL3d3dy55b2N0b3Byb2plY3Qub3JnL2RvY3MvbGF0
ZXN0L3Bva3ktcmVmLW1hbnVhbC9wb2t5LXJlZi1tYW51YWwuaHRtbCN2YXItS0VSTkVMX0ZFQVRV
UkVTDQo+IA0KPiBUaGFua3MsIA0KPiBTY290dA0KPiANCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCj4gRnJvbTogeW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9j
dG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2YgQnVydG9uLCBSb3NzDQo+
IFNlbnQ6IFR1ZXNkYXksIFNlcHRlbWJlciAyNSwgMjAxMiAxMDowMCBBTQ0KPiBUbzogQnJpYW4g
TGxveWQNCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0
b10gRG9jdW1lbnRhdGlvbiBjbGFyaWZpY2F0aW9uDQo+IA0KPiBPbiAyNSBTZXB0ZW1iZXIgMjAx
MiAxNzo1NSwgQnJpYW4gTGxveWQgPGJsbG95ZEBmYW1pbHlob25vci5uZXQ+IHdyb3RlOg0KPiA+
IHNob3VsZA0KPiA+IEtFUk5FTF9GRUFUVVJFU19hcHBlbmRfcWVtdXg4Nj0iY2ZnL3NvdW5kIg0K
PiA+IGhhdmUgYSBzcGFjZSBiZXR3ZWVuIHRoZSAiIGFuZCBjPw0KPiANCj4gWWVzLiAgUGxlYXNl
IGRvIGZpbGUgYSBidWcuDQo+IA0KPiBSb3NzDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+IHlvY3RvIG1haWxpbmcgbGlzdA0KPiB5b2N0b0B5b2N0
b3Byb2plY3Qub3JnDQo+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95
b2N0bw0KPiANCg0KDQo=

