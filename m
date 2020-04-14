Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6477.1586847029977485539
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2020 23:50:30 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: anuj.mittal@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89D1BE019DA; Mon, 13 Apr 2020 23:50:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/, high
	*      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C48B7E019D8
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2020 23:50:28 -0700 (PDT)
IronPort-SDR: hwR3m+BJE6vhUF5Nviuq+9d57ZV/nvdCIS4EKVkQKALtVmLt3qT8NByCtt+EiO4qNuax87dcPF
 WOFWoQbrPmFQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2020 23:50:27 -0700
IronPort-SDR: JHz/Rc38QC/cQ7n4ewQ/5QigIFfFCO234FzbJuuey9L68WHwgrsqw/BEd2Afi8gmMFk9jrRg9T
 OuVhb2fEgsgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,381,1580803200"; 
   d="scan'208";a="243738086"
Received: from pgsmsx102.gar.corp.intel.com ([10.221.44.80])
  by fmsmga007.fm.intel.com with ESMTP; 13 Apr 2020 23:50:26 -0700
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.234]) by
 PGSMSX102.gar.corp.intel.com ([169.254.6.185]) with mapi id 14.03.0439.000;
 Tue, 14 Apr 2020 14:50:26 +0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "marek.belisko@gmail.com" <marek.belisko@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
CC: "marek.belisko@open-nandra.com" <marek.belisko@open-nandra.com>
Subject: Re: [yocto] [meta-intel][PATCH] conf:machine: Use weak reference for SERIAL_CONSOLES variable
Thread-Topic: [yocto] [meta-intel][PATCH] conf:machine: Use weak reference
 for SERIAL_CONSOLES variable
Thread-Index: AQHWEiWlKZ3FeiyjFEibwJlKaJCxHqh3p4mA
Date: Tue, 14 Apr 2020 06:50:25 +0000
Message-ID: <7bdbd695ce473751259e153c87e4de1ee57ef5c7.camel@intel.com>
References: <1586845526-19650-1-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1586845526-19650-1-git-send-email-marek.belisko@open-nandra.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.148.175]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <D9B4A9D8231B3A409E8C44FE4AF5EAD8@intel.com>
Content-Transfer-Encoding: base64

T24gVHVlLCAyMDIwLTA0LTE0IGF0IDA4OjI1ICswMjAwLCBNYXJlayBCZWxpc2tvIHdyb3RlOg0K
PiBUaGlzIGFkZCBwb3NzaWJpbGl0eSB0byBvdmVycmlkZSBpbiBjdXN0b20gbGF5ZXIuDQo+IA0K
PiBTaWduZWQtb2ZmLWJ5OiBNYXJlayBCZWxpc2tvIDxtYXJlay5iZWxpc2tvQG9wZW4tbmFuZHJh
LmNvbT4NCj4gLS0tDQo+ICBjb25mL21hY2hpbmUvaW50ZWwtY29yZTItMzIuY29uZiAgIHwgMiAr
LQ0KPiAgY29uZi9tYWNoaW5lL2ludGVsLWNvcmVpNy02NC5jb25mICB8IDIgKy0NCj4gIGNvbmYv
bWFjaGluZS9pbnRlbC1za3lsYWtlLTY0LmNvbmYgfCAyICstDQo+ICAzIGZpbGVzIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9jb25m
L21hY2hpbmUvaW50ZWwtY29yZTItMzIuY29uZiBiL2NvbmYvbWFjaGluZS9pbnRlbC0NCj4gY29y
ZTItMzIuY29uZg0KPiBpbmRleCAyMGM5ODcyLi4zODRhZDFlIDEwMDY0NA0KPiAtLS0gYS9jb25m
L21hY2hpbmUvaW50ZWwtY29yZTItMzIuY29uZg0KPiArKysgYi9jb25mL21hY2hpbmUvaW50ZWwt
Y29yZTItMzIuY29uZg0KPiBAQCAtMjcsNyArMjcsNyBAQCBYU0VSVkVSID89ICIke1hTRVJWRVJf
WDg2X0JBU0V9IFwNCj4gICAgICAgICAgICAgIg0KPiAgDQo+ICBTWVNMSU5VWF9PUFRTID0gInNl
cmlhbCAwIDExNTIwMCINCj4gLVNFUklBTF9DT05TT0xFUyA9ICIxMTUyMDA7dHR5UzAgMTE1MjAw
O3R0eVMxIDExNTIwMDt0dHlQQ0gwIg0KPiArU0VSSUFMX0NPTlNPTEVTID89ICIxMTUyMDA7dHR5
UzAgMTE1MjAwO3R0eVMxIDExNTIwMDt0dHlQQ0gwIg0KDQpJIHRoaW5rIGhhdmluZyBqdXN0IHRo
aXMgd291bGQgbWFrZSB0aGlzIHN0YXRlbWVudCBub3QgZG8gYW55dGhpbmcgYXMNCnRoZXNlIG1h
Y2hpbmUgZmlsZXMgaW5jbHVkZXMgeDg2LWJhc2UuaW5jIHdoaWNoIGFsc28gc2V0cyB0aGlzIHZh
cmlhYmxlDQp1c2luZyBhID89LiANCg0KVGhpcyB3b3VsZCBwcm9iYWJseSBhbHNvIG5lZWQgYSA/
Pz0gaW4geDg2LWJhc2UuaW5jLg0KDQpUaGFua3MsDQoNCkFudWoNCg0KPiAgQVBQRU5EICs9ICJy
b290d2FpdCBjb25zb2xlPXR0eVMwLDExNTIwMCBjb25zb2xlPXR0eVBDSDAsMTE1MjAwDQo+IGNv
bnNvbGU9dHR5MCINCj4gIA0KPiAgSU1BR0VfRlNUWVBFUyArPSAid2ljIg0KPiBkaWZmIC0tZ2l0
IGEvY29uZi9tYWNoaW5lL2ludGVsLWNvcmVpNy02NC5jb25mIGIvY29uZi9tYWNoaW5lL2ludGVs
LQ0KPiBjb3JlaTctNjQuY29uZg0KPiBpbmRleCA2MTY0YmYzLi4yMDA5NTM3IDEwMDY0NA0KPiAt
LS0gYS9jb25mL21hY2hpbmUvaW50ZWwtY29yZWk3LTY0LmNvbmYNCj4gKysrIGIvY29uZi9tYWNo
aW5lL2ludGVsLWNvcmVpNy02NC5jb25mDQo+IEBAIC0zMiw3ICszMiw3IEBAIFhTRVJWRVIgPz0g
IiR7WFNFUlZFUl9YODZfQkFTRX0gXA0KPiAgICAgICAgICAgICAiDQo+ICANCj4gIFNZU0xJTlVY
X09QVFMgPSAic2VyaWFsIDAgMTE1MjAwIg0KPiAtU0VSSUFMX0NPTlNPTEVTID0gIjExNTIwMDt0
dHlTMCAxMTUyMDA7dHR5UzEgMTE1MjAwO3R0eVMyIg0KPiArU0VSSUFMX0NPTlNPTEVTID89ICIx
MTUyMDA7dHR5UzAgMTE1MjAwO3R0eVMxIDExNTIwMDt0dHlTMiINCj4gIEFQUEVORCArPSAicm9v
dHdhaXQgY29uc29sZT10dHlTMCwxMTUyMDAgY29uc29sZT10dHkwIg0KPiAgDQo+ICBJTUFHRV9G
U1RZUEVTICs9ICJ3aWMiDQo+IGRpZmYgLS1naXQgYS9jb25mL21hY2hpbmUvaW50ZWwtc2t5bGFr
ZS02NC5jb25mIGIvY29uZi9tYWNoaW5lL2ludGVsLQ0KPiBza3lsYWtlLTY0LmNvbmYNCj4gaW5k
ZXggZTM2Nzk1MS4uNTAzYTk4MiAxMDA2NDQNCj4gLS0tIGEvY29uZi9tYWNoaW5lL2ludGVsLXNr
eWxha2UtNjQuY29uZg0KPiArKysgYi9jb25mL21hY2hpbmUvaW50ZWwtc2t5bGFrZS02NC5jb25m
DQo+IEBAIC0yNSw3ICsyNSw3IEBAIFhTRVJWRVIgPz0gIiR7WFNFUlZFUl9YODZfQkFTRX0gXA0K
PiAgICAgICAgICAgICAiDQo+ICANCj4gIFNZU0xJTlVYX09QVFMgPSAic2VyaWFsIDAgMTE1MjAw
Ig0KPiAtU0VSSUFMX0NPTlNPTEVTID0gIjExNTIwMDt0dHlTMCAxMTUyMDA7dHR5UzEgMTE1MjAw
O3R0eVMyIg0KPiArU0VSSUFMX0NPTlNPTEVTID89ICIxMTUyMDA7dHR5UzAgMTE1MjAwO3R0eVMx
IDExNTIwMDt0dHlTMiINCj4gIEFQUEVORCArPSAicm9vdHdhaXQgY29uc29sZT10dHlTMCwxMTUy
MDAgY29uc29sZT10dHkwIg0KPiAgDQo+ICBJTUFHRV9GU1RZUEVTICs9ICJ3aWMiDQo+IA0K
