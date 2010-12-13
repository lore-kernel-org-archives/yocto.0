Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id CC8464C80048
	for <yocto@yoctoproject.org>; Sun, 12 Dec 2010 19:43:27 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Dec 2010 17:43:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,333,1288594800"; d="scan'208";a="635656978"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2010 17:43:25 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 13 Dec 2010 09:43:13 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 13 Dec 2010 09:43:12 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>, "Garman, Scott A"
	<scott.a.garman@intel.com>
Date: Mon, 13 Dec 2010 09:43:13 +0800
Thread-Topic: Add extra parameters for qemu script
Thread-Index: AcuYbxKVljYqTyAUTgywgIUPpgT+iwB919Qw
Message-ID: <789F9655DD1B8F43B48D77C5D3065973312DC52B@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659733104D391@shsmsx501.ccr.corp.intel.com>
	<4D013F9C.2010404@intel.com> <1291988079.1554.939.camel@rex>
In-Reply-To: <1291988079.1554.939.camel@rex>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Add extra parameters for qemu script
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
X-List-Received-Date: Mon, 13 Dec 2010 01:43:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBJIHRlbmQgdG8gZmVlbCB0aGF0IHRoaXMgYXBwcm9hY2ggaXMgbW9yZSBmbGV4aWJsZSwgYW5k
IHNjYWxlcyBiZXR0ZXINCj4gPiB0aGFuIGhhdmluZyB0byBzdXBwb3J0IGVhY2ggYW5kIGV2ZXJ5
IHFlbXUgb3B0aW9uIHdpdGggb3VyIG93biBzY3JpcHQNCj4gPiBzeW50YXguIElzIHRoaXMgYWNj
ZXB0YWJsZSwgb3Igc2hvdWxkIHdlIGNvbnRpbnVlIHRvIHN1cHBvcnQgb3VyIG93bg0KPiA+IGN1
c3RvbSBvcHRpb25zIGluIGFkZGl0aW9uIHRvIENyaXBpbmcncyBuZXcgYXBwcm9hY2g/DQo+IA0K
PiBNeSBndXQgZmVlbGluZyBpcyB0aGF0IGhhdmluZyBzb21lIHNpbXBsaWZpZWQgd2F5IHRvIHRy
aWdnZXIgcG9zc2libHkNCj4gY29tcGxleCBvcHRpb24gY29tYmluYXRpb25zIGlzIHN0aWxsIGRl
c2lyYWJsZSBidXQgYWRkaW5nIGEgd2F5IHRvIHBhc3MNCj4gYWRkaXRpb25hbCBjdXN0b20gY29t
bWFuZGxpbmUgaXMgZXF1YWxseSBnb29kLiBUaGlzIGdpdmVzIHVzIHRoZQ0KPiBtYXhpbXVtDQo+
IGZsZXhpYmlsaXR5IG1vdmluZyBmb3J3YXJkcyBidXQga2VlcHMgdGhlIHNjcmlwdCBlYXN5IHRv
IHVzZT8NCj4gDQoNCkhpLCBTY290dA0KDQpTbyB0aGUgY29uY2x1c2lvbiBpcyB0aGF0IEkgc2hv
dWxkIGtlZXAgdGhlIG9sZCAoc2VyaWFsIG5vZ3JhcGhpYykgb3B0aW9uIHdoaWxlDQphZGRpbmcg
dGhlIG5ldyAiPC1YWFggLVhYWCAtWFhYPiIgb3B0aW9uPw0KT0suIEkgd2lsbCBzZW5kIG91dCB0
aGUgbW9kaWZpZWQgcGF0Y2ggdG8geW91IGZvciByZXZpZXcgbGF0ZXIuDQoNClRoYW5rcyYgUmVn
YXJkcywNCmNyaXBpbmcNCg0KDQo+IENoZWVycywNCj4gDQo+IFJpY2hhcmQNCg0K

