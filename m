Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by mx.groups.io with SMTP id smtpd.web08.1797.1619666739291531689
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Apr 2021 20:25:39 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.24, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: mui1ryd3EDl9+bAfyhCPuyBVOLOtFW2yjNX5qFI4cTTFTFZ8M0mY/bQe7VRFNTsB7jTRCqxuaB
 afpak/pN6NNQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="197015107"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; 
   d="scan'208";a="197015107"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2021 20:25:37 -0700
IronPort-SDR: NKpgHDuovjfJ6mxxVBd6neHI2Q2LAdFwIkiO89HkIT6PtWYM5Y150UBTXkJ5qHyAr1kWqnunkP
 oyg9LpxxmBag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; 
   d="scan'208";a="537216696"
Received: from pgsmsx603.gar.corp.intel.com ([10.108.199.138])
  by orsmga004.jf.intel.com with ESMTP; 28 Apr 2021 20:25:33 -0700
Received: from pgsmsx601.gar.corp.intel.com (10.108.199.136) by
 pgsmsx603.gar.corp.intel.com (10.108.199.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 29 Apr 2021 11:25:31 +0800
Received: from pgsmsx601.gar.corp.intel.com ([10.108.199.136]) by
 pgsmsx601.gar.corp.intel.com ([10.108.199.136]) with mapi id 15.01.2106.013;
 Thu, 29 Apr 2021 11:25:31 +0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: Tony Battersby <tonyb@cybernetics.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Hardknott: grub immediately reboots
Thread-Topic: [yocto] Hardknott: grub immediately reboots
Thread-Index: AQHXOtJoBsZj+CrrxUyDZolMbtbzyKrK18Cg
Date: Thu, 29 Apr 2021 03:25:31 +0000
Message-ID: <93a23c9788814396ad254155c102f203@intel.com>
References: <dc59708d-c7b0-8e8c-99d2-079a1b51fb96@cybernetics.com>
In-Reply-To: <dc59708d-c7b0-8e8c-99d2-079a1b51fb96@cybernetics.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
x-originating-ip: [10.108.32.68]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogeW9jdG9AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmIE9m
DQo+IFRvbnkgQmF0dGVyc2J5DQo+IFNlbnQ6IFR1ZXNkYXksIEFwcmlsIDI3LCAyMDIxIDAzOjA3
IEFNDQo+IFRvOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFt5b2N0
b10gSGFyZGtub3R0OiBncnViIGltbWVkaWF0ZWx5IHJlYm9vdHMNCj4gDQo+IEFmdGVyIHVwZ3Jh
ZGluZyBmcm9tIER1bmZlbGwgKFlQIDMuMSkgdG8gSGFyZGtub3R0IChZUCAzLjMpLCBvdXIgZmly
bXdhcmUgd2FzDQo+IHVuYWJsZSB0byBib290LsKgIE91ciB0YXJnZXQgaGFyZHdhcmUgaXMgeDg2
LTY0IGJvb3RpbmcgaW4gbGVnYWN5IEJJT1MgbW9kZSB1c2luZw0KPiBncnViIG9uIGEgdmFyaWV0
eSBvZiBtb3RoZXJib2FyZHMgYW5kIENQVXMuwqAgVGhlIGdydWIgbWVudSB3b3VsZCBuZXZlciBz
aG93IHVwOw0KPiBpbnN0ZWFkIGl0IHdvdWxkIHJlYm9vdCBpbW1lZGlhdGVseSwgbGVhZGluZyB0
byBhbiBlbmRsZXNzIHJlYm9vdCBsb29wLg0KPiANCj4gSSBoYXZlIHR3byBkaWZmZXJlbnQgd29y
a2Fyb3VuZHMuwqAgQ3JlYXRlIGEgYmJhcHBlbmQgZmlsZSBmb3IgZ3J1YiwgYW5kIGRvIG9uZSBv
ZiB0aGUNCj4gZm9sbG93aW5nIHR3byB0aGluZ3M6DQo+IA0KPiAxKSBBZGQgdGhlIGZvbGxvd2lu
ZyBsaW5lOg0KPiANCj4gQ0ZMQUdTX3JlbW92ZSA9ICItTzIiDQoNCkkgdGhpbmsgd2Ugc2hvdWxk
IHByb2JhYmx5IHJlbW92ZSB0aGlzLiBUaGF0J3Mgd2hhdCBGZWRvcmEgYWxzbyBzZWVtcyB0byBi
ZSBkb2luZyBzbyBPcyBpcyB1c2VkLg0KDQpodHRwczovL3NyYy5mZWRvcmFwcm9qZWN0Lm9yZy9y
cG1zL2dydWIyL2Jsb2IvcmF3aGlkZS9mL2dydWIubWFjcm9zI18xOQ0KDQphbmQgd2hhdCBncnVi
IGNvbmZpZ3VyZSBleHBlY3RzOg0KDQpodHRwczovL2dpdC5zYXZhbm5haC5nbnUub3JnL2NnaXQv
Z3J1Yi5naXQvdHJlZS9jb25maWd1cmUuYWMjbjQxDQoNClRoYW5rcywNCg0KQW51ag0K
