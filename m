Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 770AAE00BC8; Tue, 30 Oct 2018 19:04:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6757E00BBF
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 19:04:32 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Oct 2018 19:04:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,446,1534834800"; d="scan'208";a="82860158"
Received: from pgsmsx107.gar.corp.intel.com ([10.221.44.105])
	by fmsmga008.fm.intel.com with ESMTP; 30 Oct 2018 19:04:31 -0700
Received: from pgsmsx105.gar.corp.intel.com ([169.254.4.31]) by
	PGSMSX107.gar.corp.intel.com ([169.254.7.2]) with mapi id
	14.03.0415.000; Wed, 31 Oct 2018 10:04:30 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "dimtass@gmail.com" <dimtass@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] qemu and grub
Thread-Index: AQHUcJWcCXBgkpjjVU2mtWgky9ANt6U4FNWA
Date: Wed, 31 Oct 2018 02:04:30 +0000
Message-ID: <164fa8d3bea588f1b7d95c93ef68cf1c70c0886b.camel@intel.com>
References: <CACKFPN2iTOUwTyPoJqFfBzw+5SErkeXeUpVNX0NToB=HRdMw0w@mail.gmail.com>
In-Reply-To: <CACKFPN2iTOUwTyPoJqFfBzw+5SErkeXeUpVNX0NToB=HRdMw0w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.221.20.57]
MIME-Version: 1.0
Subject: Re: qemu and grub
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
X-List-Received-Date: Wed, 31 Oct 2018 02:04:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <FD0295775EB1CC4684EFC6691DF2DE20@intel.com>
Content-Transfer-Encoding: base64

T24gVHVlLCAyMDE4LTEwLTMwIGF0IDIyOjE0ICswMTAwLCBEaW1pdHJpcyBUYXNzb3BvdWxvcyB3
cm90ZToNCj4gSGkgYWxsLg0KPiANCj4gVXN1YWxseSBJIGhhdmUgYSBzbWFsbCB4ODZfNjQgYm9h
cmQgdGhhdCBJIHRlc3QgaW1hZ2VzLiBCdXQgZm9yIHRoZQ0KPiBmaXJzdA0KPiB0aW1lIEkndmUg
dHJpZWQgdG8gdXNlIHlvY3RvIHRvIGRvIHNvbWUgZGV2ZWxvcG1lbnQgb24gZ3J1Yi4gSSd2ZQ0K
PiB1c2VkDQo+IHFlbXUgdG8gZG8gZ3J1YiBkZXZlbG9wbWVudCBiZWZvcmUgYW5kIEkga25vdyB0
aGF0IHRoaXMgd29ya3MgZmluZS4gSQ0KPiBqdXN0IHVzZSBncnViLW1rcmVzY3VlIHRvIGNyZWF0
ZSBpbWFnZXMgd2l0aCBteSBncnViIHNjcmlwdCBhbmQgdGhlbg0KPiBib290Lg0KPiANCj4gTm93
IEkndmUgdHJpZWQgdG8gZG8gdGhlIHNhbWUgd2l0aCB5b2N0byBhZnRlciBzZXR0aW5nIHRoZXNl
IHRvDQo+IGxvY2FsLmNvbmYNCj4gDQo+IE1BQ0hJTkUgPz89ICJxZW11eDg2Ig0KPiBJTUFHRV9G
U1RZUEVTICs9ICIgd2ljIHdpYy52bWRrIg0KPiBXS1NfRklMRSA/PSAiZGlyZWN0ZGlzay1tdWx0
aS1yb290ZnMud2tzIg0KPiBJTUFHRV9JTlNUQUxMX2FwcGVuZCA9ICIgZ3J1Yi1lZmkiDQoNCkNh
biB5b3UgY2hlY2sgaWYgTUFDSElORV9GRUFUVVJFUyBpbmNsdWRlcyBlZmkgYW5kIGluY2x1ZGUg
YW5kIHRyeQ0KYWdhaW4gaWYgbm90Pw0KDQpUaGFua3MsDQpBbnVqDQo=

