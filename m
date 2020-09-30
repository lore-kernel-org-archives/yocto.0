Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.12514.1601462475007340727
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2020 03:41:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=LB2W2guz;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1601462475; x=1759142475;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=iRqUpwCGuD0nRPEE/ptAuGzpfGPlQJoUGQVKVqFEkl4=;
  b=LB2W2guzGsEdovzcgjvF2nn+pY16KHAK2erixI1JC1W7n+/90K6T1dpT
   8ftRBEowahzR17fXtnVNDIvhfIkpvC9/KIIz4F/5oOdb2sm3LUgS48Uh7
   YhtxSe8zZEtkl78I7QvicYe0H5Zb4aBToZY67EOWUD2L6TipskOwa40Vv
   o=;
IronPort-PHdr: =?us-ascii?q?9a23=3AYaBoKx1yVs1EK3szsmDT+DRfVm0co7zxezQtwd8Z?=
 =?us-ascii?q?sesXL/7xwZ3uMQTl6Ol3ixeRBMOHsq0C0LCd6fyocFdDyK7JiGoFfp1IWk1Nou?=
 =?us-ascii?q?QttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdBAj0OxZr?=
 =?us-ascii?q?KeTpAI7SiNm82/yv95HJbAhEmTiwbal8IRmoogndqMYbipZ+J6gszRfEvmFGcP?=
 =?us-ascii?q?lMy2NyIlKTkRf85sOu85Nm7i9dpfEv+dNeXKvjZ6g3QqBWAzogM2Au+c3krgLD?=
 =?us-ascii?q?QheV5nsdSWoZjBxFCBXY4R7gX5fxtiz6tvdh2CSfIMb7Q6w4VSik4qx2UxLjlj?=
 =?us-ascii?q?sJOCAl/2HWksxwjbxUoBS9pxxk3oXYZJiZOOdicq/BeN8XQ3dKUMRMWCxbGo6y?=
 =?us-ascii?q?b5UBAfcdPehWrIf9qVkBrRqiCgejC+zi0SNIiWT03aEmz+gtDQPL0Qo9FNwOqn?=
 =?us-ascii?q?TUq9D1Ob8cXe6yy6nIyy7DYO1I1jfm8ITDbw0voe2SUrJub8XRz1QkGh3YhVmU?=
 =?us-ascii?q?p4PrIjaZ2uoQuGWc9OpgSfygi3A5pAF3uDSvw8Asio/Sho0L1F/E7j50z50vKt?=
 =?us-ascii?q?KmU056YcWkEIdOuCGfLIt6WN8tQ2ZtuCsjzLANpJG0cjQQxps92x7fd+KIc5KO?=
 =?us-ascii?q?4h/7SeqfLyp0iXZ7dL6hgxu/7UytxvP/W8S33lhEoDRJn8XRu30R2BLd6syKR/?=
 =?us-ascii?q?lz8Eu/xTuC1x7f5+5ZLE47kafWKZgsyaM+mJoUtETMBC72mEPuga6WcUUr5vSo?=
 =?us-ascii?q?6+P/YrX8oZ+cNZF7hR3iMqg0ncy/G+s4Pw4TVGaY4eSxzKDv8VHjTLhEjPA6iL?=
 =?us-ascii?q?fVvI7aKMgBp6O0AxdZ3ps/5xqlADqr384UkH0dIF9Geh+KiZXiNUvUL/DiF/i/?=
 =?us-ascii?q?hkyhkDJsx//bILLsGo7NLn3fkLf5erZ99lJcxBIzzd9B45JUDakMIO78W0Drst?=
 =?us-ascii?q?zYCwQ5Pgioz+r7FNlxy5kSWWSVDaODK6zdq0GH5vkvIumXeI8apjP9K+M/6/Hy?=
 =?us-ascii?q?in85nEcRfaiv3ZQJdHC1BulqL1mDbXfigNoNC3kGshQ+QeDwiVCPUSZfZ3OoUK?=
 =?us-ascii?q?I94jE7BpimDYDGRo21m7yBwDm0HoNIaWBAEFyMFHDod4OfW/gSdi2SOdRsnSce?=
 =?us-ascii?q?Wre/UI8g1QqutBPkxLpiNerY4DEXtZXm1NRt/e3ciQky9SBoD8Say2yMT2Z0kX?=
 =?us-ascii?q?8URz8xx61/pU19ykyf0ahjmfBZFdtT6O9VUgc9LZ7c1et6C9LsVQ3dYteFUlGm?=
 =?us-ascii?q?Qs+pAWJ5c9Qq3tVbY1phA87wyVfH3jG2GPkEkLeXA4Qu9aDR1GS3INxyjHmBxa?=
 =?us-ascii?q?4qk15hX81UKGf1u6hk6gLvCp7VxkWFi76xJ+Nb2C/W6HzF3G2FoEZASglyXK7Z?=
 =?us-ascii?q?G3cFaQzZ6sX+7V/FCKKoEqktYTdGnO2CJ64CUNTrxQFcTfWlO9TTZkq+nm6xAV?=
 =?us-ascii?q?CDwbbaP6TwfGBIlgDaDlMJnhtXtU2aOBYzAG+K6yLjN30kXQb0f07y/O84rXS9?=
 =?us-ascii?q?VUI51CmAZkB6xqGp9xsOw/ebTqVAjfo/pC49pmAsTx6G1NXMBo/F/lI5cQ=3D?=
 =?us-ascii?q?=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2CHAwAbYHRf/0HhJQpgHgEBCxIMQIFEC?=
 =?us-ascii?q?4MagTQKhDORSIoPkCqBaQsBAQEBAQEBAQEIARgLDAQBAYRLAheCGiY3Bg4CEAE?=
 =?us-ascii?q?BBgEBAQEBBgQBhkgMgjcFAgMfAQaDCwEBAQEDASIRGisMBAIBCBEEAQEBAgIfB?=
 =?us-ascii?q?AMCAgIfBwkBFAEICAEBBA4FCBUEgwaCSwM9tEF2gTKEOwGDXw2CJIEOKoZODYE?=
 =?us-ascii?q?Dhy0+g2w1PoIaQgQBgScBEgE4gwCCPiIEkzWjPFIHA4JniHuLCIFMhQArhDacX?=
 =?us-ascii?q?511gmqSOQIEAgQFAhWBaoELcHCDOQlHFwINjlaIToVCdAIBNAIGCgEBAwmNGly?=
 =?us-ascii?q?BEQEB?=
X-IPAS-Result: =?us-ascii?q?A2CHAwAbYHRf/0HhJQpgHgEBCxIMQIFEC4MagTQKhDORSIo?=
 =?us-ascii?q?PkCqBaQsBAQEBAQEBAQEIARgLDAQBAYRLAheCGiY3Bg4CEAEBBgEBAQEBBgQBh?=
 =?us-ascii?q?kgMgjcFAgMfAQaDCwEBAQEDASIRGisMBAIBCBEEAQEBAgIfBAMCAgIfBwkBFAE?=
 =?us-ascii?q?ICAEBBA4FCBUEgwaCSwM9tEF2gTKEOwGDXw2CJIEOKoZODYEDhy0+g2w1PoIaQ?=
 =?us-ascii?q?gQBgScBEgE4gwCCPiIEkzWjPFIHA4JniHuLCIFMhQArhDacX511gmqSOQIEAgQ?=
 =?us-ascii?q?FAhWBaoELcHCDOQlHFwINjlaIToVCdAIBNAIGCgEBAwmNGlyBEQEB?=
X-IronPort-AV: E=Sophos;i="5.77,322,1596499200"; 
   d="scan'208";a="313866241"
X-IronPort-AV: E=Sophos;i="5.77,322,1596499200"; 
   d="scan'208";a="86652867"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #linux #systemd Having issues building command line utilities: ntpq, timedatectl, and ntpstat into kernel image
Thread-Topic: [yocto] #yocto #linux #systemd Having issues building command
 line utilities: ntpq, timedatectl, and ntpstat into kernel image
Thread-Index: AdaVw3Ud/GE3osMmSPSA4Q+6JVX7YAA6Tn6AABdg54AAAu82IA==
Date: Wed, 30 Sep 2020 10:41:12 +0000
In-Reply-To: <CAMKF1sq4-=OaYmX2qLakrwCT2Pkt-LFr5-+OJ6orbfdtqvVppQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Message-ID: <MADEUP.163989A3B6F8D0DE.28145@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNClRoYW5rcy4uLiANCg0KWWVzdGVyZGF5IEkgZGVjaWRlZCB0byBnbyB3aXRoIG50cHEvbnRw
ZGF0ZS9hbmQgYSBudHBzdGF0IHNjcmlwdCB3aGljaCBkb2VzIHNvbWUgYmFzaWMgc3RhdHMgdGhy
b3VnaCBudHBkL250cHEvbnRwZGF0ZSBhbmQgQ2hyb255LiBXZSB3aWxsIHNlZSBob3cgaXQgZ29l
cyBtaWdodCBiZSBlbm91Z2guLi4NCg0KU3RldmUNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCkZyb206IEtoZW0gUmFqIFttYWlsdG86cmFqLmtoZW1AZ21haWwuY29tXSANClNlbnQ6IFdl
ZG5lc2RheSwgU2VwdGVtYmVyIDMwLCAyMDIwIDE6MTUgQU0NClRvOiBNb25zZWVzLCBTdGV2ZW4g
QyAoVVMpIDxzdGV2ZW4ubW9uc2Vlc0BiYWVzeXN0ZW1zLmNvbT4NCkNjOiB5b2N0b0BsaXN0cy55
b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSAjeW9jdG8gI2xpbnV4ICNzeXN0
ZW1kIEhhdmluZyBpc3N1ZXMgYnVpbGRpbmcgY29tbWFuZCBsaW5lIHV0aWxpdGllczogbnRwcSwg
dGltZWRhdGVjdGwsIGFuZCBudHBzdGF0IGludG8ga2VybmVsIGltYWdlDQoNCioqKiBXQVJOSU5H
ICoqKg0KRVhURVJOQUwgRU1BSUwgLS0gVGhpcyBtZXNzYWdlIG9yaWdpbmF0ZXMgZnJvbSBvdXRz
aWRlIG91ciBvcmdhbml6YXRpb24uDQoNCg0Kd2hhdCBhbGwgZnVuY3Rpb25hbGl0eSBhcmUgeW91
IGxvb2tpbmcgZm9yLiBFLmcuIHRoZXJlIGlzIGRhdGUgdXRpbGl0eSBhbmQgaHdjbG9jayAgdXRp
bGl0eSB3aGljaCBjYW4gaGVscCB5b3UgbWFuaXB1bGF0ZSBzeXN0ZW0gdGltZS4geW91IGNvdWxk
IGFsc28gbG9vayBpbnRvIG50cGQgYW5kL29yIGNocm9ueSBmb3IgTmV0d29yayB0aW1lIHNldHRp
bmcgZXRjLg0KDQpPbiBUdWUsIFNlcCAyOSwgMjAyMCBhdCAxMTowNSBBTSBNb25zZWVzLCBTdGV2
ZW4gQyAoVVMpIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxzdGV2ZW4ubW9uc2Vlcz1iYWVz
eXN0ZW1zLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4NCj4NCj4gQ3VycmVu
dGx5IG5vdCB1c2luZyBzeXN0ZW0gYXMgb3VyIGRlZmF1bHQgaW5pdCBzeXN0ZW0gKGludmVzdGln
YXRpbmcgd2h5IGJ1dCB0aGlzIG1pZ2h0IG5vdCBiZSBhbiBvcHRpb24pLg0KPg0KPiBJcyB0aGVy
ZSBhbnkgb3RoZXIgdXRpbGl0eSBJIG1pZ2h0IHVzZSB1bmRlciBZb2N0byB0byBnZXQgc2ltaWxh
ciBkYXRhIGFzIHRoYXQgcHJvZHVjZWQgYnkgdGltZWRhdGVjdGwgPw0KPg0KPiBUaGFua3MsDQo+
IFN0ZXZlDQo+IA0KPg0K
