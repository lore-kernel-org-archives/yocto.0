Return-Path: <reinette.chatre@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67AECE01206
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 09:42:27 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 30 Mar 2012 09:42:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="123683120"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 30 Mar 2012 09:42:27 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 30 Mar 2012 09:42:26 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.128]) with mapi id
	14.01.0355.002; Fri, 30 Mar 2012 09:42:26 -0700
From: "Chatre, Reinette" <reinette.chatre@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] care when using remove_packaging_data_files
Thread-Index: AQHNDc9R7ZpwM3ZgUkOu1hPq3POH55aC1nqAgACrXYA=
Date: Fri, 30 Mar 2012 16:42:25 +0000
Message-ID: <1333125733.8318.79.camel@rchatre.jf.intel.com>
References: <1333041222.8318.46.camel@rchatre.jf.intel.com>
	<CAMKF1sqCu--JUWwj4ehApYSkfO5Farb6oQeYfJiOqcX9NzBUqg@mail.gmail.com>
In-Reply-To: <CAMKF1sqCu--JUWwj4ehApYSkfO5Farb6oQeYfJiOqcX9NzBUqg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.198.150]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: care when using remove_packaging_data_files
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
X-List-Received-Date: Fri, 30 Mar 2012 16:42:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <D5FF7C87CD9D7F4A882C984143E5FBFE@intel.com>
Content-Transfer-Encoding: base64

T24gVGh1LCAyMDEyLTAzLTI5IGF0IDIzOjI4IC0wNzAwLCBLaGVtIFJhaiB3cm90ZToNCj4gT24g
VGh1LCBNYXIgMjksIDIwMTIgYXQgMTA6MTMgQU0sIENoYXRyZSwgUmVpbmV0dGUNCj4gPHJlaW5l
dHRlLmNoYXRyZUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEhpLA0KPiA+DQo+ID4gSSBhbSBidWls
ZGluZyBhbiBpbWFnZSB1c2luZyBpcGsgcGFja2FnZXMuIFRoZSBtaW5pbWFsIGltYWdlcyBhbGwg
c2VlbQ0KPiA+IHRvIHNldCBST09URlNfUE9TVFBST0NFU1NfQ09NTUFORCB0byByZW1vdmVfcGFj
a2FnaW5nX2RhdGFfZmlsZXMsIHdoaWNoDQo+ID4gKGZvciBhbGwgcGFja2FnZSBtYW5hZ2VtZW50
IHN5c3RlbXMpIHJlY3Vyc2l2ZWx5IHJlbW92ZXMgdGhlIHBhY2thZ2VzDQo+ID4gZGlyZWN0b3J5
IGluIC92YXIvbGliLiBUaGlzIHNlZW1zIGEgYml0IGhhcnNoIGNvbnNpZGVyaW5nIHRoYXQgc29t
ZQ0KPiA+IHBhY2thZ2VzIG1heSBzdGlsbCBiZSBpbiB0aGUgdW5wYWNrZWQgc3RhdGUgYW5kIHRo
dXMgaGF2ZSBhIHNjcmlwdCBpbg0KPiA+IHRoYXQgZGlyZWN0b3J5IHRoYXQgbmVlZHMgdG8gYmUg
cnVuIHdoZW4gdGhlIGltYWdlIGJvb3RzLg0KPiANCj4gaG1tbSB3aGF0IGNhc2VkIGRpZCB5b3Ug
ZmluZCA/IGlzIGl0IHBvc3NpYmxlIHRvIGZpeCB0aGUgcmVjaXBlIGl0c2VsZg0KPiB0byBoYXZl
IHRob3NlIHNjcmlwdHMgcG9zdCBwcm9jZXNzZWQgb2ZmbGluZQ0KDQpBYnNvbHV0ZWx5LCBhbiBv
cHRpb24gaXMgaW5kZWVkIHRvIGxvb2sgaWYgcmVjaXBlIGNhbiBkbyBldmVyeXRoaW5nIHdoZW4N
CmltYWdlIGlzIGNyZWF0ZWQuIEkgd2FzIGp1c3Qgc3VycHJpc2VkIHRvIGxlYXJuIHRoYXQgdGhl
c2UgbWluaW1hbA0KaW1hZ2VzIGJ5IGRlZmF1bHQgcHJldmVudCBhbGwgZmlyc3QgYm9vdCBwb3N0
IGluc3RhbGwgc2NyaXB0cyBmcm9tDQpydW5uaW5nLg0KDQpSZWluZXR0ZQ0KDQo=

