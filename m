Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web12.5674.1599822581066290703
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Sep 2020 04:09:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=FAngjzTW;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1599822580; x=1757502580;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=TWjcYjWZJ5lQ0vHWNg83WEBIJOvbLzBo9ZuCnACkyv4=;
  b=FAngjzTWtr5G3d7+EZtIvzqADHNR9CysY874XInBHU5qtGZuCTb80Dux
   /LSiIZsN1KqfUkVekgJn3xL50bia0z3rgRmbeop0DJU6/SADELsNvHnba
   1G9fdxyyBQmNh8G5kDfYaGwg7jAuQKysSO+WSzspRt0gA968e+yruSahO
   c=;
IronPort-PHdr: =?us-ascii?q?9a23=3A8hqsMRR61raB9wTF29udHF/izdpsv+yvbD5Q0YIu?=
 =?us-ascii?q?jvd0So/mwa67ZRyAt8tkgFKBZ4jH8fUM07OQ7/m+HzVdsN3Z7zgrS99lb1c9k8?=
 =?us-ascii?q?IYnggtUoauKHbQC7rUVRE8B9lIT1R//nu2YgB/Ecf6YEDO8DXptWZBUhrwOhBo?=
 =?us-ascii?q?KevrB4Xck9q41/yo+53Ufg5EmCexbal9IRmrrAjdrNQajItmJ6o+1hfEoGZDdv?=
 =?us-ascii?q?hLy29vOV+dhQv36N2q/J5k/SRQuvYh+NBFXK7nYak2TqFWASo/PWwt68LlqRfM?=
 =?us-ascii?q?TQ2U5nsBSWoWiQZHAxLE7B7hQJj8tDbxu/dn1ymbOc32Sq00WSin4qx2RhLklD?=
 =?us-ascii?q?sLOjgk+2zMlMd+kLxUrw6gpxxnwo7bfoeVNOZlfqjAed8WXHdNUtpNWyBEBI63?=
 =?us-ascii?q?cokBAPcbPetAr4fzuUYArQewCwevCuPgyD5IiWP506I1yOkhDRrJ3A48E94SrH?=
 =?us-ascii?q?jZrtP4P7oSX+Cvy6nIyC3OY/1R1zf67ojIaQ4uru+XXb5obMHf1FUvGB3bjlqO?=
 =?us-ascii?q?r4zuIi2Y3fkJv2eV8uRsUOyjgHMgpgFqvjig2NkshZfPho4Pz1DE8iN5wJ0rKt?=
 =?us-ascii?q?KmU052esWrH4FOuCGBN4p2Wd8iTH9tuCYh0LEJpZm7fC0TxZkh2hXQZOCJfZKS?=
 =?us-ascii?q?7RL/SOaePy14hHR9db+ihRu//1WsxOPzWMWp01tHrTZIn9nCuH0QyxHd5cuKR/?=
 =?us-ascii?q?9z8EqhxDuCyR7f5+NZLEwoiKbVJZ8szLEumpcSv0rOGDL9lkvxjK+TbEok++6o?=
 =?us-ascii?q?5vznY7XhupCcK4h0ihnkMqQpmMywH/g3MhQUU2ic4+S826Xv/Un4QLpRgf05ib?=
 =?us-ascii?q?fWsJHcJcQHuKG5GRdV3pw46xa4CTqtzdcWnWEfIV5YZB6LlYbkNlPULPzmE/uy?=
 =?us-ascii?q?g06gnTZryvzeI7HtHo/BI3fMnbv7ebtx8U1RxQg1wNtC/ZxbEKsBL+j2WkLpsd?=
 =?us-ascii?q?zYCQI2PBKszub8DdV9ypseWWWSAq+FKK/SsUGH5uYoI+SUeI8UtyzyK/4g5/71?=
 =?us-ascii?q?iXI1hUMRcbW00ZcNbnC3BO5qLF6DbnXymdcAEXwKvhYgQ+zvk12OSyJcZ3G3X6?=
 =?us-ascii?q?4k5zE7DpypDZvbS4ywnLCNxim2E59MamxYFFyBEW3keoSEVvsUbSKdOM5hkjgK?=
 =?us-ascii?q?Vbi7TI8h0AmjtBTmy7V5MOrb5CsYuYjm1Nhy4e3Tjg89+iJvD8mGyG6CVX97nn?=
 =?us-ascii?q?gIRj8twKBwv0l9ykyZ3adkhPxYEMRf5+lVXQciKZ7c0+t6BsjyWwLGYtiJVFGm?=
 =?us-ascii?q?T86iATEwVdIx38QOb1x9GtWlkh/Dwy2qA6cPl7yMBpw77L7T32TrK8Z60XbG2/?=
 =?us-ascii?q?ppsl89X8EaNXG6nrUtsE/XBpXViAOIkK22crwG2yzA/3vFynCB+04fQQl7TaKC?=
 =?us-ascii?q?QHYEe0GFkNLi+0n+Qq+yXLQ7LhNam4nFLqpRdsavnFJNWPD7ItPcbmmt3WCqCl?=
 =?us-ascii?q?GHgaKLZ5btPHgbxzjXW3QDxiMT8HPODwE8TnO7qmCYDzxjEHrgZkrt9a91r3bt?=
 =?us-ascii?q?HWEuyATfJWhm0aG49wVRzceARu0e2Pov8GcckHQ+VAKmw9/IBtzGog1nZ6hRev?=
 =?us-ascii?q?s36VpcxHnFuglmeJenKvYx1RYlbw1rsha2hF1MAYJanJ1v9StywQ=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2CIAAAwWltf/0HhJQpfHAEBAQEBAQcBA?=
 =?us-ascii?q?RIBAQQEAQFAgT4EAQELAYMZgTQKhC6RMYoLkCiBaQsBAQEBAQEBAQEIARgLDAQ?=
 =?us-ascii?q?BAYRLAheCDSU3Bg4CEAEBBgEBAQEBBgQBhkgMgjcFAgMfAQaDCwEBAQEDASIRG?=
 =?us-ascii?q?isMBAIBCBEEAQEBAgIjAwICAh8HCQEUAQgIAQEEDgUIFQSDBoJLAz2zAHaBMoQ?=
 =?us-ascii?q?7AYNmDYIkCQGBBCoBhkwNgQOHLD6DbAcuPoIaKxcEAYEnARIBOIMAgj4iBJMho?=
 =?us-ascii?q?wxRBwOCZYhrin2BSoR8KoMJgSeOAI4wnSuCZ5IlAgQCBAUCFYFqgQtwcIM5CUc?=
 =?us-ascii?q?XAg2OVohOgV2DZXQCATQCBgEJAQEDCY1qXIERAQE?=
X-IPAS-Result: =?us-ascii?q?A2CIAAAwWltf/0HhJQpfHAEBAQEBAQcBARIBAQQEAQFAgT4?=
 =?us-ascii?q?EAQELAYMZgTQKhC6RMYoLkCiBaQsBAQEBAQEBAQEIARgLDAQBAYRLAheCDSU3B?=
 =?us-ascii?q?g4CEAEBBgEBAQEBBgQBhkgMgjcFAgMfAQaDCwEBAQEDASIRGisMBAIBCBEEAQE?=
 =?us-ascii?q?BAgIjAwICAh8HCQEUAQgIAQEEDgUIFQSDBoJLAz2zAHaBMoQ7AYNmDYIkCQGBB?=
 =?us-ascii?q?CoBhkwNgQOHLD6DbAcuPoIaKxcEAYEnARIBOIMAgj4iBJMhowxRBwOCZYhrin2?=
 =?us-ascii?q?BSoR8KoMJgSeOAI4wnSuCZ5IlAgQCBAUCFYFqgQtwcIM5CUcXAg2OVohOgV2DZ?=
 =?us-ascii?q?XQCATQCBgEJAQEDCY1qXIERAQE?=
X-IronPort-AV: E=Sophos;i="5.76,415,1592870400"; 
   d="scan'208";a="444673457"
X-IronPort-AV: E=Sophos;i="5.76,415,1592870400"; 
   d="scan'208";a="84878741"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #sdk #yocto Appears SDK searching host for files that are only present on target side
Thread-Topic: [yocto] #sdk #yocto Appears SDK searching host for files that
 are only present on target side
Thread-Index: AdaGwB/KGZBqstnvRzSknWqboLZIrQA99wuAABzIx1A=
Date: Fri, 11 Sep 2020 11:09:38 +0000
In-Reply-To: <CAMKF1srHH2rMbXymC735jrDmWtNhzt_6K_nd9p6uJ-_ZvJjnKw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1633B629CD4350D2.2201@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

S2hlbToNCg0KRG8gSSBuZWVkIHRvIHJlLWFzc2lnbiBDQy9DWFgvQ1BQIHRvIHBvaW50IHRvIENM
QU5HQ0MsIGV0Yy4gaW4gbXkgZW52aXJvbm1lbnQtc2V0dXAtY29yZUk3LTY0LXBva3ktbGludXgg
c2NyaXB0ID8NCg0KSSB0aG91Z2h0IEkgcmVhZCBzb21ld2hlcmUgdGhhdCBnY2Mgd2FzIGFsd2F5
cyB0aGUgZGVmYXVsdCBjb21waWxlciB1bmRlciB0aGUgU0RLLCBubyA/DQoNClRoYW5rcywNClN0
ZXZlDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBLaGVtIFJhaiBbbWFpbHRv
OnJhai5raGVtQGdtYWlsLmNvbV0gDQpTZW50OiBUaHVyc2RheSwgU2VwdGVtYmVyIDEwLCAyMDIw
IDE6MTkgUE0NClRvOiBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIDxzdGV2ZW4ubW9uc2Vlc0BiYWVz
eXN0ZW1zLmNvbT4NCkNjOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBS
ZTogW3lvY3RvXSAjc2RrICN5b2N0byBBcHBlYXJzIFNESyBzZWFyY2hpbmcgaG9zdCBmb3IgZmls
ZXMgdGhhdCBhcmUgb25seSBwcmVzZW50IG9uIHRhcmdldCBzaWRlDQoNCioqKiBXQVJOSU5HICoq
Kg0KRVhURVJOQUwgRU1BSUwgLS0gVGhpcyBtZXNzYWdlIG9yaWdpbmF0ZXMgZnJvbSBvdXRzaWRl
IG91ciBvcmdhbml6YXRpb24uDQoNCg0KaXRzIGxvb2tpbmcgZm9yIHRvb2xzIGluIHNkayBkaXIs
IHdoaWNoIGlzIG5vcm1hbC4gSSB3b25kZXIgaWYgeW91ciBhcHBzIGNtYWtlIGZpbGVzIHNob3Vs
ZCBiZSB1c2luZyBDQyBvciBDTEFOR0NDIHRvIGRvIGxpbmtpbmcuDQoNCk9uIFdlZCwgU2VwIDks
IDIwMjAgYXQgODo1OCBBTSBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxzdGV2ZW4ubW9uc2Vlcz1iYWVzeXN0ZW1zLmNvbUBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnPiB3cm90ZToNCj4NCj4NCj4NCj4gTG9va2luZyB0byB1bmRlcnN0YW5kIHdoeSB0aGUg
U0RLIGlzIHNlYXJjaGluZyB0aGUgaG9zdC9uYXRpdmUgDQo+ICh4ODZfNjQtcG9reXNkay1saW51
eCkgc2lkZSB3aGVuIGl0IHNob3VsZCBiZSBsb29raW5nIGF0IHRoZSB0YXJnZXQgDQo+IHNpZGUg
KGNvcmVpNy02NC1wb2t5LWxpbnV4KSDigKYNCj4NCj4NCj4NCj4gQWxsIHRoZSDigJxjcnTigJ0g
ZmlsZXMgYXJlIHByZXNlbnQgdW5kZXIgdGhlIHRhcmdldCBzaWRlLg0KPg0KPg0KPg0KPiBDYW4g
c29tZW9uZSBleHBsYWluIHdoYXQgbWlnaHQgYmUgbWlzcy1jb25maWd1cmVkID8sIG9yIGJldHRl
ciwgcG9pbnQgbWUgdG8gYSBwb3NzaWJsZSBwYXRjaCA/DQo+DQo+DQo+DQo+IEkgaGF2ZSBzZWVu
IHNvbWUgdGFsayBvbi1saW5lIGFib3V0IHNpbWlsYXIgaXNzdWVzLCBidXQgbm8gY2xlYXIgDQo+
IGluZGljYXRpb24gd2hhdCB0aGUgaXNzdWUgd2FzLCBvciBob3cgaXQgd2FzIHJlc29sdmVk4oCm
DQo+DQo+DQo+DQo+IEkgYW0gcnVubmluZyBZb2N0byBjbGFuZyA2LjAuMSwgY21ha2UgMy44LjIs
IHVuZGVyIOKAnHJvY2tv4oCdLCBteSBTREsgaXMgYSBzdGFuZGFyZCBTREssIG5vdCBleHRlbnNp
YmxlLg0KPg0KPg0KPg0KPiAxMTozMSBzbW9uc2Vlc0B5aXg0OTAwMTYgDQo+IH4veW9jdG8vdGVz
dC9iZWlnbmV0LVJlbGVhc2VfdjEuMi9teWJ1aWxkPm1ha2UNCj4NCj4gU2Nhbm5pbmcgZGVwZW5k
ZW5jaWVzIG9mIHRhcmdldCBnYmVpbnRlcnANCj4NCj4gWyAgMCVdIEJ1aWxkaW5nIENYWCBvYmpl
Y3QgDQo+IGJhY2tlbmQvc3JjL0NNYWtlRmlsZXMvZ2JlaW50ZXJwLmRpci9nYmVfYmluX2ludGVy
cHJldGVyLmNwcC5vDQo+DQo+IFsgIDAlXSBMaW5raW5nIENYWCBzaGFyZWQgbGlicmFyeSBsaWJn
YmVpbnRlcnAuc28NCj4NCj4gL2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vdGVzdFNESy9z
eXNyb290cy94ODZfNjQtcG9reXNkay1saW51eC91cw0KPiByL2xpYmV4ZWMveDg2XzY0LXBva3kt
bGludXgvZ2NjL3g4Nl82NC1wb2t5LWxpbnV4LzcuMy4wL3JlYWwtbGQ6IA0KPiBjYW5ub3QgZmlu
ZCBjcnRpLm86IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkNCj4NCj4gL2Rpc2swL3NjcmF0Y2gv
c21vbnNlZXMveW9jdG8vdGVzdFNESy9zeXNyb290cy94ODZfNjQtcG9reXNkay1saW51eC91cw0K
PiByL2xpYmV4ZWMveDg2XzY0LXBva3ktbGludXgvZ2NjL3g4Nl82NC1wb2t5LWxpbnV4LzcuMy4w
L3JlYWwtbGQ6IA0KPiBjYW5ub3QgZmluZCBjcnRiZWdpblMubzogTm8gc3VjaCBmaWxlIG9yIGRp
cmVjdG9yeQ0KPg0KPiAvZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy95b2N0by90ZXN0U0RLL3N5c3Jv
b3RzL3g4Nl82NC1wb2t5c2RrLWxpbnV4L3VzDQo+IHIvbGliZXhlYy94ODZfNjQtcG9reS1saW51
eC9nY2MveDg2XzY0LXBva3ktbGludXgvNy4zLjAvcmVhbC1sZDogDQo+IGNhbm5vdCBmaW5kIC1s
c3RkYysrDQo+DQo+IC9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lvY3RvL3Rlc3RTREsvc3lzcm9v
dHMveDg2XzY0LXBva3lzZGstbGludXgvdXMNCj4gci9saWJleGVjL3g4Nl82NC1wb2t5LWxpbnV4
L2djYy94ODZfNjQtcG9reS1saW51eC83LjMuMC9yZWFsLWxkOiANCj4gY2Fubm90IGZpbmQgLWxt
DQo+DQo+IC9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lvY3RvL3Rlc3RTREsvc3lzcm9vdHMveDg2
XzY0LXBva3lzZGstbGludXgvdXMNCj4gci9saWJleGVjL3g4Nl82NC1wb2t5LWxpbnV4L2djYy94
ODZfNjQtcG9reS1saW51eC83LjMuMC9yZWFsLWxkOiANCj4gY2Fubm90IGZpbmQgLWxnY2Nfcw0K
Pg0KPiAvZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy95b2N0by90ZXN0U0RLL3N5c3Jvb3RzL3g4Nl82
NC1wb2t5c2RrLWxpbnV4L3VzDQo+IHIvbGliZXhlYy94ODZfNjQtcG9reS1saW51eC9nY2MveDg2
XzY0LXBva3ktbGludXgvNy4zLjAvcmVhbC1sZDogDQo+IGNhbm5vdCBmaW5kIC1sYw0KPg0KPiAv
ZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy95b2N0by90ZXN0U0RLL3N5c3Jvb3RzL3g4Nl82NC1wb2t5
c2RrLWxpbnV4L3VzDQo+IHIvbGliZXhlYy94ODZfNjQtcG9reS1saW51eC9nY2MveDg2XzY0LXBv
a3ktbGludXgvNy4zLjAvcmVhbC1sZDogDQo+IGNhbm5vdCBmaW5kIC1sZ2NjX3MNCj4NCj4gL2Rp
c2swL3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vdGVzdFNESy9zeXNyb290cy94ODZfNjQtcG9reXNk
ay1saW51eC91cw0KPiByL2xpYmV4ZWMveDg2XzY0LXBva3ktbGludXgvZ2NjL3g4Nl82NC1wb2t5
LWxpbnV4LzcuMy4wL3JlYWwtbGQ6IA0KPiBjYW5ub3QgZmluZCBjcnRlbmRTLm86IE5vIHN1Y2gg
ZmlsZSBvciBkaXJlY3RvcnkNCj4NCj4gL2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9jdG8vdGVz
dFNESy9zeXNyb290cy94ODZfNjQtcG9reXNkay1saW51eC91cw0KPiByL2xpYmV4ZWMveDg2XzY0
LXBva3ktbGludXgvZ2NjL3g4Nl82NC1wb2t5LWxpbnV4LzcuMy4wL3JlYWwtbGQ6IA0KPiBjYW5u
b3QgZmluZCBjcnRuLm86IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkNCj4NCj4gY29sbGVjdDI6
IGVycm9yOiBsZCByZXR1cm5lZCAxIGV4aXQgc3RhdHVzDQo+DQo+IG1ha2VbMl06ICoqKiBbYmFj
a2VuZC9zcmMvbGliZ2JlaW50ZXJwLnNvXSBFcnJvciAxDQo+DQo+IG1ha2VbMV06ICoqKiBbYmFj
a2VuZC9zcmMvQ01ha2VGaWxlcy9nYmVpbnRlcnAuZGlyL2FsbF0gRXJyb3IgMg0KPg0KPiBtYWtl
OiAqKiogW2FsbF0gRXJyb3IgMg0KPg0KPiAxMTozMSBzbW9uc2Vlc0B5aXg0OTAwMTYgfi95b2N0
by90ZXN0L2JlaWduZXQtUmVsZWFzZV92MS4yL215YnVpbGQ+DQo+DQo+DQo+DQo+IFRoYW5rcywN
Cj4NCj4gU3RldmUNCj4NCj4NCj4NCj4NCj4NCj4gDQo=
