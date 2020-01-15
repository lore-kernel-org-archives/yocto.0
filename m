Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3582.1579071088233706935
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 22:51:28 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: anuj.mittal@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3F9DE008D9; Tue, 14 Jan 2020 22:51:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www; Tue, 14 Jan 2020 22:51:26 PST
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97961E008D9
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2020 22:51:26 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Jan 2020 22:50:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,321,1574150400"; 
   d="scan'208";a="273558082"
Received: from kmsmsx154.gar.corp.intel.com ([172.21.73.14])
  by FMSMGA003.fm.intel.com with ESMTP; 14 Jan 2020 22:50:21 -0800
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.131]) by
 KMSMSX154.gar.corp.intel.com ([169.254.12.15]) with mapi id 14.03.0439.000;
 Wed, 15 Jan 2020 14:50:20 +0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Burton, Ross"
	<ross.burton@intel.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v2 1/3] config: don't run meta-intel in qemu yet
Thread-Topic: [yocto] [PATCH yocto-autobuilder-helper v2 1/3] config: don't
 run meta-intel in qemu yet
Thread-Index: AQHVtDgsQGh7qmeDvU6QmoPRgRmHF6fq8Y2A
Date: Wed, 15 Jan 2020 06:50:20 +0000
Message-ID: <e9cbfad1ed3b56ff6f12a2825c4043ef4091317e.camel@intel.com>
References: <20191216174154.13996-1-ross.burton@intel.com>
In-Reply-To: <20191216174154.13996-1-ross.burton@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.221.21.56]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <84A2C0F678784B4E8241278A2EEDD83D@intel.com>
Content-Transfer-Encoding: base64

Q2FuIHRoaXMgYmUgbWVyZ2VkIGluIHpldXMvd2FycmlvciB0b28gcGxlYXNlPw0KDQpUaGFua3Ms
DQoNCkFudWoNCg0KT24gTW9uLCAyMDE5LTEyLTE2IGF0IDE3OjQxICswMDAwLCBSb3NzIEJ1cnRv
biB3cm90ZToNCj4gbWV0YS1pbnRlbCBCU1BzIGFyZSBub3QgY29tcGF0aWJsZSB3aXRoIHRoZSBx
ZW11IEJTUHMgY3VycmVudGx5LCBzbw0KPiBkb24ndA0KPiBhdHRlbXB0IHRvIGV4ZWN1dGUgdGVz
dGltYWdlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogUm9zcyBCdXJ0b24gPHJvc3MuYnVydG9uQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBjb25maWcuanNvbiB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2NvbmZp
Zy5qc29uIGIvY29uZmlnLmpzb24NCj4gaW5kZXggNTczMGY4NS4uNzk2OTVjMiAxMDA2NDQNCj4g
LS0tIGEvY29uZmlnLmpzb24NCj4gKysrIGIvY29uZmlnLmpzb24NCj4gQEAgLTM4Nyw3ICszODcs
NyBAQA0KPiAgICAgICAgICAgICAgIk5FRURSRVBPUyIgOiBbInBva3kiLCAibWV0YS1pbnRlbCJd
LA0KPiAgICAgICAgICAgICAgIkFERExBWUVSIiA6IFsiJHtCVUlMRERJUn0vLi4vbWV0YS1pbnRl
bCJdLA0KPiAgICAgICAgICAgICAgIk1BQ0hJTkUiIDogImludGVsLWNvcmVpNy02NCIsDQo+IC0g
ICAgICAgICAgICAiVEVNUExBVEUiIDogImFyY2gtaHctcWVtdSINCj4gKyAgICAgICAgICAgICJU
RU1QTEFURSIgOiAiYXJjaC1odyINCj4gICAgICAgICAgfSwNCj4gICAgICAgICAgImdlbmVyaWN4
ODYtNjQtYWx0IiA6IHsNCj4gICAgICAgICAgICAgICJNQUNISU5FIiA6ICJnZW5lcmljeDg2LTY0
IiwNCj4gDQo=
