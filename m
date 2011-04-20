Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0942A4C800A2
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2011 11:28:44 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Apr 2011 09:28:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,247,1301900400"; d="scan'208";a="681587046"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga002.fm.intel.com with ESMTP; 20 Apr 2011 09:28:44 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Wed, 20 Apr 2011 09:28:44 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 20 Apr 2011 09:28:43 -0700
Thread-Topic: [Yocto] discussion about bug770: Add mechanism to enable UI's
	to request extra data be stored in the cache
Thread-Index: Acv/dgtT/Br9uqWpSeS+oT6m1e3WJQAAWPmg
Message-ID: <9AFCD584B0B67B48AE8D8585BE30BA95524CC13C@orsmsx504.amr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659734AA9D046@shsmsx501.ccr.corp.intel.com>
	<1303316067.2893.15.camel@scimitar>
In-Reply-To: <1303316067.2893.15.camel@scimitar>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: discussion about bug770: Add mechanism to enable UI's	to request extra data be stored in the cache
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
X-List-Received-Date: Wed, 20 Apr 2011 16:28:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2UgaGFkIGFuIGVhcmxpZXIgZGlzY3Vzc2lvbiB3aXRoIFJQIGFuZCBwZXIgaGlzIHN1Z2dlc3Rp
b24sIHdlJ3JlIGxvb2tpbmcgaW50byB0aGUgb3B0aW9uIG9mIGhhdmluZyBhIFVJIGNhY2hlIGZp
bGUgdGhhdCBvbmx5IGNvbnRhaW5zIHRoZSBleHRyYSBmaWVsZHMgdGhlIFVJIGlzIG5lZWRlZC4u
Lg0KDQpPbiBXZWQsIDIwMTEtMDQtMjAgYXQgMTY6MzQgKzA4MDAsIEtlLCBMaXBpbmcgd3JvdGU6
DQo+IEhpLCBKZXNzaWNhIGFuZCBKb3NoDQo+DQo+IEFmdGVyIGxvb2tpbmcgaW50byB0aGUgY2Fj
aGUucHksIGFzIHdlbGwgYXMgdGhlIGJ1ZyA3NzAgZGVzY3JpcHRpb24sIEkgaGF2ZSBmb2xsb3dp
bmcgcXVlc3Rpb25zOg0KPg0KPiAxLiBWYWxpZCBDYWNoZSBQcm9ibGVtOiB3ZSBvbmx5IGhhdmUg
b25lIGNhY2hlIGZpbGUsIHJpZ2h0Pw0KPiBVc2Ugc2NlbmFyaW8gMTogSWYgZGV2ZWxvcGVyIGZp
cnN0bHkgdXNlIHVpIG1vZGUsIGFuZCB0aGVuIG5vbi11aSBtb2RlLCB0aGUgY2FjaGUgZmlsZSBz
aG91bGQgYmUgdmFsaWQ/IE5vIG5lZWQgdG8gdXBkYXRlPw0KPiBVc2UgU2NlbmFyaW8gMjogSWYg
ZGV2ZWxvcGVyIGZpcnN0bHkgdXNlIG5vbi11aSBtb2RlLCBhbmQgdGhlbiB1aSBtb2RlLCB0aGUg
Y2FjaGUgZmlsZSBzaG91bGQgYmUgaW52YWxpZCwgbmVlZCB0byB1cGRhdGUgY2FjaGU/DQo+IFVz
ZSBTY2VuYXJpbyAzOiBJZiBkZXZlbG9wZXIgZmlyc3RseSB1c2UgdWkgbW9kZSwgYW5kIHRoZW4g
bm9uLXVpIG1vZGUsIGFuZCB0aGVuIHVpIG1vZGUsIHRoZSBjYWNoZSBmaWxlIHNob3VsZCBiZSB2
YWxpZCB0b28/DQo+IFNvIHdlIG5lZWQgdG8gdHJhY2sgdGhlIHVpL25vbi11aSBvcHMgbWFjaGlu
ZSB0byB0cmFjayB0aGUgdGhyZWUgZGlmZmVyZW50IHN0YXRlICh1aSktPiA8LShub24tdWkpPw0K
DQpSaWdodCBub3cgd2Ugb25seSBoYXZlIG9uZSBjYWNoZSBmaWxlLCBidXQgaW4gdGhlIGJ1ZyBy
ZXBvcnQgeW91J2xsIHNlZQ0KYSBjb21tZW50IEkgcGFzdGVkIGZyb20gSVJDIHdoZXJlIFJQIHN1
Z2dlc3RzIHdlIG1pZ2h0IGhhdmUgdWkgc3BlY2lmaWMNCmNhY2hlcy4gWW91ciBhbmFseXNpcyBo
ZXJlIGVtcGhhc2lzZXMgdGhhdCBhcyBhIHZhbGlkIHRlY2huaXF1ZSB0bw0KaW52ZXN0aWdhdGUu
DQoNCj4NCj4gT3B0aW9uIDE6IHVwZGF0ZSBjYWNoZSwgbW9kaWZ5IGNhY2hlIGludmFsaWRhdGlv
biBtZWNoYW5pc20gKGN1cnJlbnRseSBkZXBlbmQgb24gbXRpbWUpLCBpdCB3aWxsIHN1cmVseSBj
YXVzZSB0aGUgcGVyZm9ybWFuY2UgZGVjcmVhc2VkIGlmIHVzZXIgc3dpdGNoIGZyb20gdWkvbm9u
LXVpIG1vZGUNCj4gT3B0aW9uIDI6IHR3byBkaWZmZXJlbnQgY2FjaGUgZmlsZXM/IExvYWRpbmcg
dGhlbSBhY2NvcmRpbmcgdG8gdWkgb3Igbm9uLXVpIG1vZGUgLCBubyBuZWVkIHRvIGludmFsaWQg
Y2FjaGU/DQoNCldlbGwsIHRoZSB1aS1zcGVjaWZpYyBjYWNoZXMgd291bGQgc3RpbGwgbmVlZCB0
byBiZSBpbnZhbGlkYXRlZCBpbiB0aGUNCnNhbWUgd2F5IHRoYXQgdGhlIGN1cnJlbnQgY2FjaGUg
aXMuDQoNCj4NCj4NCj4gMi4gTW9kaWZ5IFJlY2lwZUluZm8gZGF0YSBzdHJ1Y3R1cmUgLCBzdGF0
aWMgbmFtZWR0dXBsZSBjb3VsZCBub3QgYmUNCj4gdXNlZCwgYSBkeW5hbWljIGRpY3Rpb25hcnkg
d2lsbCBiZSB1c2VkIG9mIGNvdXJzZS4gSXQgbWlnaHQgY2F1c2UNCj4gcGVyZm9ybWFuY2UgZGVj
cmVhc2UgdG9vIGFjY29yZGluZyB0byBRaW5nJ3MgaW5wdXQuDQo+DQo+DQo+IE15IHF1ZXN0aW9u
IGlzIDoNCj4gMS4gd2Ugd2lsbCBzYWNyaWZpY2UgcGFyc2luZyBwZXJmb3JtYW5jZSBmb3IgdGhl
IGNhY2hlIGZpbGUgc2l6ZSBnYWluDQoNCkkgdGhpbmsgd2UnZCBoYXZlIHRvIGhhdmUgYSByZWFz
b25hYmxlIGlkZWEgb2YgaG93IG11Y2ggb2YgYSBwZXJmb3JtYW5jZQ0KaGl0IHRoaXMgd291bGQg
Y2F1c2UgYmVmb3JlIHJ1bGluZyBpdCBvdXQuIEkgY291bGRuJ3Qgb2ZmZXIgYW4gYW5zd2VyIHRv
DQp0aGlzIHdpdGhvdXQgd3JpdGluZyBzb21lIGNvZGUgYW5kIGRvaW5nIHNvbWUgYmVuY2htYXJr
aW5nLg0KDQo+IDIuIFdlIHdpbGwgY2hvb3NlIG9wdGlvbiAxLCBjaGFuZ2UgY2FjaGUgaW52YWxp
ZCBtZWNoYW5pc20/IEkgZ3Vlc3M/DQo+DQo+DQo+IEkgYW0gbm90IHN1cmUgd2hldGhlciBJIGFt
IGluIHRoZSByaWdodCB0cmFjaz8gQW55IGNvbW1lbnRzPw0KDQpZb3UgYXJlIGRlZmluaXRlbHkg
b24gdGhlIHJpZ2h0IHRyYWNrLCBJIHRoaW5rIHRoaXMgZGlzY3Vzc2lvbiB3b3VsZA0KYmVuZWZp
dCBmcm9tIHB1YmxpYyBkaXNjdXNzaW9uIHRob3VnaCAodGhhdCB3YXkgQ2hyaXMgTGFyc29uIChr
ZXJnb3RoKQ0KY291bGQgYmUgaW52b2x2ZWQgYWxzbykuDQoNCkNoZWVycywNCkpvc2h1YQ0KLS0N
Ckpvc2h1YSBMb2NrDQogICAgICAgIFlvY3RvIEJ1aWxkIFN5c3RlbSBNb25rZXkNCiAgICAgICAg
SW50ZWwgT3BlbiBTb3VyY2UgVGVjaG5vbG9neSBDZW50cmUNCg0KDQo=

