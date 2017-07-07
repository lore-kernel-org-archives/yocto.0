Return-Path: <swee.aun.khor@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0565E00BE0; Thu,  6 Jul 2017 18:39:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7DB2E00BC1
	for <yocto@yoctoproject.org>; Thu,  6 Jul 2017 18:39:47 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Jul 2017 18:39:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,320,1496127600"; d="scan'208";a="876103531"
Received: from pgsmsx108.gar.corp.intel.com ([10.221.44.103])
	by FMSMGA003.fm.intel.com with ESMTP; 06 Jul 2017 18:39:46 -0700
Received: from pgsmsx102.gar.corp.intel.com ([169.254.6.4]) by
	PGSMSX108.gar.corp.intel.com ([10.221.44.103]) with mapi id
	14.03.0319.002; Fri, 7 Jul 2017 09:39:45 +0800
From: "Khor, Swee Aun" <swee.aun.khor@intel.com>
To: Todor Minchev <todor.minchev@linux.intel.com>
Thread-Topic: [RMC][PATCH v2] RMC: Support x32 build
Thread-Index: AQHS9gKpf4YPWGqf5ke05v0O6iPD0KJGtRgAgADiflA=
Date: Fri, 7 Jul 2017 01:39:45 +0000
Message-ID: <28423BAF0BC5B94BADBD663D77F7839024EF6F65@PGSMSX102.gar.corp.intel.com>
References: <1499283599-11297-1-git-send-email-swee.aun.khor@intel.com>
	<1499371700.7546.27.camel@linux.intel.com>
In-Reply-To: <1499371700.7546.27.camel@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 06 Jul 2017 20:59:23 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [RMC][PATCH v2] RMC: Support x32 build
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
X-List-Received-Date: Fri, 07 Jul 2017 01:39:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T2theS4gSSB3aWxsIGRyb3AgdGhpcyBwYXRjaC4gDQoNClN3ZWVBdW4NCg0KLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCkZyb206IFRvZG9yIE1pbmNoZXYgW21haWx0bzp0b2Rvci5taW5jaGV2
QGxpbnV4LmludGVsLmNvbV0gDQpTZW50OiBGcmlkYXksIEp1bHkgNywgMjAxNyA0OjA4IEFNDQpU
bzogS2hvciwgU3dlZSBBdW4gPHN3ZWUuYXVuLmtob3JAaW50ZWwuY29tPg0KQ2M6IHlvY3RvQHlv
Y3RvcHJvamVjdC5vcmc7IFdvbGQsIFNhdWwgPHNhdWwud29sZEBpbnRlbC5jb20+DQpTdWJqZWN0
OiBSZTogW1JNQ11bUEFUQ0ggdjJdIFJNQzogU3VwcG9ydCB4MzIgYnVpbGQNCg0KT24gV2VkLCAy
MDE3LTA3LTA1IGF0IDEyOjM5IC0wNzAwLCBzd2VlLmF1bi5raG9yQGludGVsLmNvbSB3cm90ZToN
Cj4gRnJvbTogc3dlZWF1biA8c3dlZS5hdW4ua2hvckBpbnRlbC5jb20+DQo+IA0KPiBSTUMgZWZp
IGlzIG5lZWRlZCB0byBjb21waWxlZCBhcyA2NCBiaXRzIGV2ZW4gREVGQVVMVFRVTkUgaXMgeDMy
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogc3dlZWF1biA8c3dlZS5hdW4ua2hvckBpbnRlbC5jb20+
DQo+IC0tLQ0KPiAgTWFrZWZpbGUuZWZpIHwgMyArKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9NYWtlZmlsZS5lZmkgYi9NYWtlZmlsZS5l
ZmkgaW5kZXggNGY2OWRmZS4uOTVlMGY4YyAxMDA2NDQNCj4gLS0tIGEvTWFrZWZpbGUuZWZpDQo+
ICsrKyBiL01ha2VmaWxlLmVmaQ0KPiBAQCAtMTYsNiArMTYsOSBAQCBSTUNfSU5TVEFMTF9MSUJf
UEFUSCA6PSAkKFJNQ19JTlNUQUxMX1BSRUZJWCkvbGliLw0KPiAgDQo+ICBSTUNfQ0ZMQUdTIDo9
IC1EUk1DX0VGSSAtV2FsbCAtSSQoVE9QRElSKS9pbmMgLWZwaWMgLW5vc3RkaW5jIA0KPiAtbm9z
dGRsaWIgIC1mbm8tYnVpbHRpbiAtc3RkPWdudTkwDQo+ICANCj4gKyNSTUMgZWZpIGlzIG5lZWRl
ZCB0byBiZSBjb21waWxlZCBhcyA2NCBiaXQgZXZlbiBERUZBVUxUVFVORSBpcyB4MzIgDQo+ICtD
QyA6PSAkKHBhdHN1YnN0IC1teDMyLCAtbTY0LCAkKENDKSkNCj4gKw0KDQpTaW5jZSB0aGlzIGlz
IG5vdCBhbiBSTUMtc3BlY2lmaWMgcHJvYmxlbSwgSSBiZWxpZXZlIHRoYXQgd2Ugc2hvdWxkbid0
IHBhdGNoIHRoZSBjb21waWxlciBmbGFncyBpbiB0aGUgUk1DIE1ha2VmaWxlLiBUaGlzIHBhdGNo
IHdpbGwgcHJvdmlkZSB0aGUgZGVzaXJlZCBvdXRjb21lIG9ubHkgd2hlbiBSTUMgaXMgYnVpbHQg
d2l0aCBtZXRhLWludGVsLiBBIGJldHRlciBhbHRlcm5hdGl2ZSB3aWxsIGJlIHRvIHNwbGl0IHJt
Yy5iYiBpbnRvIHJtYy5iYiAodXNlcnNwYWNlIGFwcCkgYW5kIHJtYy1lZmkuYmIgKGVmaSBsaWJy
YXJ5KSBhbmQgbW9kaWZ5IHRoZSBjb21waWxlciBmbGFncyBmb3IgZWFjaCByZWNpcGUuDQpJIHdp
bGwgc2VuZCBhIHBhdGNoIHRoYXQgZG9lcyB0aGlzLg0KDQpUb2Rvcg0KDQo+ICBhbGw6IGxpYnJt
Y2VmaQ0KPiAgDQo+ICAkKFJNQ19MSUJfT0JKKTogJS5lZmkubzogJS5jDQoNCg0K

