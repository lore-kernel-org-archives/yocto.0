Return-Path: <reinette.chatre@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5C49E013BF
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 10:13:54 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Mar 2012 10:13:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="126635526"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga002.jf.intel.com with ESMTP; 29 Mar 2012 10:13:54 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 29 Mar 2012 10:13:54 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.32]) with mapi id
	14.01.0355.002; Thu, 29 Mar 2012 10:13:54 -0700
From: "Chatre, Reinette" <reinette.chatre@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: care when using remove_packaging_data_files
Thread-Index: AQHNDc9R7ZpwM3ZgUkOu1hPq3POH5w==
Date: Thu, 29 Mar 2012 17:13:53 +0000
Message-ID: <1333041222.8318.46.camel@rchatre.jf.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.198.150]
MIME-Version: 1.0
Subject: care when using remove_packaging_data_files
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
X-List-Received-Date: Thu, 29 Mar 2012 17:13:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <1942867E9BE47E42A34505B21642920E@intel.com>
Content-Transfer-Encoding: base64

SGksDQoNCkkgYW0gYnVpbGRpbmcgYW4gaW1hZ2UgdXNpbmcgaXBrIHBhY2thZ2VzLiBUaGUgbWlu
aW1hbCBpbWFnZXMgYWxsIHNlZW0NCnRvIHNldCBST09URlNfUE9TVFBST0NFU1NfQ09NTUFORCB0
byByZW1vdmVfcGFja2FnaW5nX2RhdGFfZmlsZXMsIHdoaWNoDQooZm9yIGFsbCBwYWNrYWdlIG1h
bmFnZW1lbnQgc3lzdGVtcykgcmVjdXJzaXZlbHkgcmVtb3ZlcyB0aGUgcGFja2FnZXMNCmRpcmVj
dG9yeSBpbiAvdmFyL2xpYi4gVGhpcyBzZWVtcyBhIGJpdCBoYXJzaCBjb25zaWRlcmluZyB0aGF0
IHNvbWUNCnBhY2thZ2VzIG1heSBzdGlsbCBiZSBpbiB0aGUgdW5wYWNrZWQgc3RhdGUgYW5kIHRo
dXMgaGF2ZSBhIHNjcmlwdCBpbg0KdGhhdCBkaXJlY3RvcnkgdGhhdCBuZWVkcyB0byBiZSBydW4g
d2hlbiB0aGUgaW1hZ2UgYm9vdHMuIA0KDQppcGsgc2VlbXMgdG8gY2xlYW51cCB3aXRob3V0IHRo
ZSBuZWVkIG9mIHJlbW92ZV9wYWNrYWdpbmdfZGF0YV9maWxlcyAtDQpyb290ZnNfaXBrLmJiY2xh
c3M6cm9vdGZzX2lwa19kb19yb290ZnMoKSBjaGVja3MgaWYgYW55IHBhY2thZ2VzIGFyZSBpbg0K
dW5wYWNrZWQgc3RhdGUgYW5kIHRoZW4gd2lsbCBkZWxldGUgdGhlIHBhY2thZ2VzIGRpcmVjdG9y
eSBpbiAvdmFyL2xpYg0KaWYgbm90aGluZyB0aGVyZSBpcyBuZWVkZWQuIEkgY291bGQgbm90IGZp
bmQgc2ltaWxhciBhY3Rpb25zIGluDQpyb290ZnNfZGViLmJiY2xhc3Mgb3Igcm9vdGZzX3JwbS5i
YmNsYXNzIA0KDQpJIGFtIHRodXMgcGxhbm5pbmcgb24gcHJvY2VlZGluZyB3aXRoIG15IG1pbmlt
YWwgaW1hZ2Ugd2l0aG91dCBzZXR0aW5nDQpST09URlNfUE9TVFBST0NFU1NfQ09NTUFORCwgYnV0
IGl0IHNlZW1zIHRoYXQgbWluaW1hbCBpbWFnZXMgYmFzZWQgb24NCnJwbSBhbmQgZGViIG1heSBu
ZWVkIHNvbWUgY2hhbmdlcyB0byBhdm9pZCBzdXJwcmlzZXMuDQoNClJlaW5ldHRlDQo=

