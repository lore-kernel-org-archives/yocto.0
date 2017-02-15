Return-Path: <joshua.g.lock@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44D28E0085D; Wed, 15 Feb 2017 05:57:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D9ACE0082E
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 05:57:07 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga104.jf.intel.com with ESMTP; 15 Feb 2017 05:57:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,166,1484035200"; d="scan'208";a="65467252"
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
	by fmsmga005.fm.intel.com with ESMTP; 15 Feb 2017 05:57:05 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.101]) by
	IRSMSX154.ger.corp.intel.com ([169.254.12.40]) with mapi id
	14.03.0248.002; Wed, 15 Feb 2017 13:57:05 +0000
From: "Lock, Joshua G" <joshua.g.lock@intel.com>
To: "anibal.limon@linux.intel.com" <anibal.limon@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [[PATCH][yocto-autobuilder]] bin/forcebuild.py: Add a
	script to support force a build
Thread-Index: AQHSfMcsUonfGJd5nkirnOTKQMzz4qFUlh0AgAqbC4CAABBKgIAK68SA
Date: Wed, 15 Feb 2017 13:57:04 +0000
Message-ID: <1487167023.4342.3.camel@intel.com>
References: <1485979978-4971-1-git-send-email-anibal.limon@linux.intel.com>
	<589241B8.20809@linux.intel.com> <1486563139.3754.11.camel@intel.com>
	<589B34ED.7060100@linux.intel.com>
In-Reply-To: <589B34ED.7060100@linux.intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.252.30.92]
MIME-Version: 1.0
Subject: Re: [[PATCH][yocto-autobuilder]] bin/forcebuild.py: Add a script to support force a build
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
X-List-Received-Date: Wed, 15 Feb 2017 13:57:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <A6FD9AB9E8E9904C98E00316943EAEF2@intel.com>
Content-Transfer-Encoding: base64

T24gV2VkLCAyMDE3LTAyLTA4IGF0IDA5OjEwIC0wNjAwLCBBbsOtYmFsIExpbcOzbiB3cm90ZToN
Cj4gDQo+IE9uIDAyLzA4LzIwMTcgMDg6MTIgQU0sIExvY2ssIEpvc2h1YSBHIHdyb3RlOg0KPiA+
IE9uIFdlZCwgMjAxNy0wMi0wMSBhdCAxNDoxNCAtMDYwMCwgQW7DrWJhbCBMaW3Ds24gd3JvdGU6
DQo+ID4gPiBJIGtub3cgd2UgaGF2ZSB0aGUgcmVtb3RlX2tpY2sucHkgWzFdIHNjcmlwdCBidXQg
aSBkb24ndCBrbm93IGlmDQo+ID4gPiBpcw0KPiA+ID4gY3VycmVudGx5IG9uIHVzZSBhbHNvIHRo
aXMgbmV3IHNjcmlwdCBzdXBwb3J0IGxpc3QgdGhlIG9wdGlvbnMgaW4NCj4gPiA+IGJ1aWxkZXJz
IGFuZCBzcGVjaWZ5IGN1c3RvbSBvbmVzIHZpYSBjbWRsaW5lLg0KPiA+IA0KPiA+IEkgZG9uJ3Qg
dXNlIHJlbW90ZV9raWNrLnB5LCBJJ20gbG9hdGhlIHRvIGNhcnJ5IHR3byBzY3JpcHRzIHdpdGgg
YQ0KPiA+IHNpbWlsYXIgcHVycG9zZS4gQW55IGlkZWEgaG93IHRoZXkgZGlmZmVyPw0KPiANCj4g
VGhlIHJlbW90ZV9raWNrIHNjcmlwdCBoYXMgYSBmaXhlZCBzZXQgb2YgcGFyYW1ldGVycyBsaWtl
IGJ1aWxkZXINCj4gKG5pZ3RobHkpLCBidWlsZGJvdCB1cmwgKGxvY2FsaG9zdDo4MDEwKSBhbmQg
Zm9yY2VzIHRoZSBzYW1lIGJ1aWxkLg0KPiANCj4gVGhlIG5ldyBmb3JjZWJ1aWxkIHNjcmlwdCB5
b3UgY2FuIHNwZWNpZnkgYnVpbGRib3Qgc2VydmVyIHVybCwgdXNlciwNCj4gcGFzc3dvcmQsIGJ1
aWxkZXIgYW5kIG9wdGlvbnMgKFdFQiBpbnB1dHMpLg0KDQpUaGFuayB5b3UuIEkndmUgcXVldWVk
IHVwIHRoaXMgcGF0Y2ggZm9yIGluY2x1c2lvbiB3aXRoIGEgZm9sbG93LW9uDQpwYXRjaCB0aGF0
IHJlbW92ZXMgcmVtb3RlX2tpY2sgd2l0aCB0aGUgYWJvdmUgYXMgcmVhc29uaW5nLg0KDQpKb3No
dWEKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCkludGVsIENvcnBvcmF0aW9uIChVSykgTGltaXRlZApSZWdpc3RlcmVk
IE5vLiAxMTM0OTQ1IChFbmdsYW5kKQpSZWdpc3RlcmVkIE9mZmljZTogUGlwZXJzIFdheSwgU3dp
bmRvbiBTTjMgMVJKClZBVCBObzogODYwIDIxNzMgNDcKClRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0
YWNobWVudHMgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIG1hdGVyaWFsIGZvcgp0aGUgc29sZSB1
c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVudChzKS4gQW55IHJldmlldyBvciBkaXN0cmlidXRp
b24KYnkgb3RoZXJzIGlzIHN0cmljdGx5IHByb2hpYml0ZWQuIElmIHlvdSBhcmUgbm90IHRoZSBp
bnRlbmRlZApyZWNpcGllbnQsIHBsZWFzZSBjb250YWN0IHRoZSBzZW5kZXIgYW5kIGRlbGV0ZSBh
bGwgY29waWVzLgo=


