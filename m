Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F19BE00C18; Tue, 24 May 2016 16:50:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FF3BE00756
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 16:50:50 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 May 2016 16:50:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,360,1459839600"; d="scan'208";a="984025436"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga002.jf.intel.com with ESMTP; 24 May 2016 16:50:50 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.244]) by
	ORSMSX106.amr.corp.intel.com ([169.254.1.174]) with mapi id
	14.03.0248.002; Tue, 24 May 2016 16:50:49 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: "Randle, William C" <william.c.randle@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto-autobuilder][PATCH] bin/release_scripts/release.py
Thread-Index: AQHRthQ01FZ8o+WgaEqY65TNqerFUp/IwgeA
Date: Tue, 24 May 2016 23:50:48 +0000
Message-ID: <D36A36C1.D27A%tracy.graydon@intel.com>
References: <1464131193-25397-1-git-send-email-tracy.graydon@intel.com>
	<1464132605.2920.54.camel@intel.com>
In-Reply-To: <1464132605.2920.54.camel@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.6.4.160422
x-originating-ip: [10.254.177.82]
MIME-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] bin/release_scripts/release.py
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
X-List-Received-Date: Tue, 24 May 2016 23:50:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <D41335005F68034586DFCA9A2D96773D@intel.com>
Content-Transfer-Encoding: base64

T24gMDUvMjQvMTYsIDQ6MzAgUE0sICJSYW5kbGUsIFdpbGxpYW0gQyIgPHdpbGxpYW0uYy5yYW5k
bGVAaW50ZWwuY29tPg0Kd3JvdGU6DQoNCj5PbiBUdWUsIDIwMTYtMDUtMjQgYXQgMTY6MDYgLTA3
MDAsIEdyYXlkb24sIFRyYWN5IHdyb3RlOg0KPj4gR2V0IHJpZCBvZiB0aGUgZXh0cmFuZW91cyBE
TF9CQVNFIGxpbmUuIEl0J3Mgbm90IHVzZWQgYW5kIHNob3VsZCBoYXZlDQo+PiBiZWVuIHJlbW92
ZWQgd2hlbiBJIGZpeGVkIHRoZSBlY2xpcHNlLXBsdWdpbiByZWxlYXNlIHBhdGguDQo+PiANCj4+
IFNpZ25lZC1vZmYtYnk6IEdyYXlkb24sIFRyYWN5IDx0cmFjeS5ncmF5ZG9uQGludGVsLmNvbT4N
Cj4+IC0tLQ0KPj4gIGJpbi9yZWxlYXNlX3NjcmlwdHMvcmVsZWFzZS5weSB8IDEgLQ0KPj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pDQo+PiANCj4+IGRpZmYgLS1naXQgYS9iaW4vcmVs
ZWFzZV9zY3JpcHRzL3JlbGVhc2UucHkNCj4+Yi9iaW4vcmVsZWFzZV9zY3JpcHRzL3JlbGVhc2Uu
cHkNCj4+IGluZGV4IDJiNGQyMWMuLjg5ZjY4YmUgMTAwNzU1DQo+PiAtLS0gYS9iaW4vcmVsZWFz
ZV9zY3JpcHRzL3JlbGVhc2UucHkNCj4+ICsrKyBiL2Jpbi9yZWxlYXNlX3NjcmlwdHMvcmVsZWFz
ZS5weQ0KPj4gQEAgLTM1MSw3ICszNTEsNiBAQCBpZiBfX25hbWVfXyA9PSAnX19tYWluX18nOg0K
Pj4gICAgICBWSE9TVFMgPSAiL3Nydi93d3cvdmhvc3RzIg0KPj4gICAgICBBQl9CQVNFID0gb3Mu
cGF0aC5qb2luKFZIT1NUUywNCj4+ICJhdXRvYnVpbGRlci55b2N0b3Byb2plY3Qub3JnL3B1Yi9y
ZWxlYXNlcyIpDQo+PiAgICAgIERMX0RJUiA9IG9zLnBhdGguam9pbihWSE9TVFMsDQo+PiJkb3du
bG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcyIpDQo+PiAtICAgIERMX0JBU0UgPSBvcy5w
YXRoLmpvaW4oRExfRElSLCAiL3JlbGVhc2VzL3lvY3RvIikNCj4+ICAgICAgQURUX0JBU0UgPSBv
cy5wYXRoLmpvaW4oVkhPU1RTLCAiYWR0cmVwby55b2N0b3Byb2plY3Qub3JnIikNCj4+ICANCj4+
ICAgICAgIyBMaXN0IG9mIHRoZSBkaXJlY3RvcmllcyB3ZSBkZWxldGUgZnJvbSBhbGwgcmVsZWFz
ZXMNCj4NCj5TaW5jZSB5b3VyIHByZXZpb3VzIHZlcnNpb24gb2YgdGhpcyBwYXRjaCBoYXMgbm90
IHlldCBiZWVuIGFwcGxpZWQgdG8NCj5tYXN0ZXIsIEkNCj53b3VsZCB0aGluayBpdCB3b3VsZCBi
ZSBiZXR0ZXIgdG8gaW5jb3Jwb3JhdGUgdGhpcyBhcyBwYXJ0IG9mIGEgVjIgb2YgeW91cg0KPnBy
ZXZpb3VzIHBhdGNoLCByYXRoZXIgdGhhbiBhIG5ldyBwYXRjaCBvbiB0b3Agb2YgYW4gYXMgeWV0
IHVuYXBwbGllZA0KPnBhdGNoLg0KDQpBaCwgeW91IGFyZSByaWdodC4gSSB0aG91Z2h0IGl0IGhh
ZCBiZWVuIHB1bGxlZCBpbiBhbHJlYWR5LiBJ4oCZbGwgcmViYXNlLg0KDQo+DQo+ICAgIC1CaWxs
DQoNCg0K

