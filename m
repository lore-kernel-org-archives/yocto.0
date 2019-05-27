Return-Path: <Archana.c727@toshiba-tsip.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBE1BE00D3E; Sun, 26 May 2019 22:08:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from peak.toshiba-tesi.com (unknown [202.56.254.199])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 756A6E00C02
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 22:04:52 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2CUAgAqb+tc/xlVdApkHAEBAQQBAQcEA?=
	=?us-ascii?q?QGBVAQBAQsBgmiBPQqECZUamlQJAQEBAQEBAQEBNwEBhEACF4JNNwYOAQMBAQU?=
	=?us-ascii?q?BAQEBBIEKC4VLAQUjEUUQAgEIDQsCAiYCAgIwFRACBA4FrFiBLxoChSuDHYFGg?=
	=?us-ascii?q?QwoAYFgjAiEIz6ERDqCUIJYBIEtAQEBjFiaSgEGAQEBgg9eklKCD4pjA4lUjG6?=
	=?us-ascii?q?YBYF5cIFugU6QUnKNMYEhAQE?=
X-IPAS-Result: =?us-ascii?q?A2CUAgAqb+tc/xlVdApkHAEBAQQBAQcEAQGBVAQBAQsBgmi?=
	=?us-ascii?q?BPQqECZUamlQJAQEBAQEBAQEBNwEBhEACF4JNNwYOAQMBAQUBAQEBBIEKC4VLA?=
	=?us-ascii?q?QUjEUUQAgEIDQsCAiYCAgIwFRACBA4FrFiBLxoChSuDHYFGgQwoAYFgjAiEIz6?=
	=?us-ascii?q?ERDqCUIJYBIEtAQEBjFiaSgEGAQEBgg9eklKCD4pjA4lUjG6YBYF5cIFugU6QU?=
	=?us-ascii?q?nKNMYEhAQE?=
X-IronPort-AV: E=Sophos;i="5.60,517,1549909800"; d="scan'208";a="21095691"
Received: from unknown (HELO tosblrmbx04.TOSHIBA-TSIP.COM) ([10.116.85.25])
	by peak.toshiba-tesi.com with ESMTP; 27 May 2019 10:16:18 +0530
Received: from TOSBLRMBX01.TOSHIBA-TSIP.COM ([fe80::1d8f:a072:df12:dcb2]) by
	tosblrmbx04.TOSHIBA-TSIP.COM ([fe80::2089:5e37:936d:8fb9%18]) with mapi
	id 14.02.0247.003; Mon, 27 May 2019 10:30:12 +0530
From: Archana Polampalli <Archana.c727@toshiba-tsip.com>
To: "ross.burton@intel.com" <ross.burton@intel.com>
Thread-Topic: [yocto] Difference between DEPENDS and BUILD-DEPENDS
Thread-Index: AQHVEjYvPxzbKcK7jEKAOo738+voA6Z7fBWAgAKVbgA=
Date: Mon, 27 May 2019 05:00:11 +0000
Message-ID: <1558933214.9936.20.camel@toshiba-tsip.com>
References: <1558705171.9936.16.camel@toshiba-tsip.com>
	<CAJTo0LYAG01HYA3tPMQ_82eDikm7r9Lv9Pu38LEVKhcBMcbbCA@mail.gmail.com>
In-Reply-To: <CAJTo0LYAG01HYA3tPMQ_82eDikm7r9Lv9Pu38LEVKhcBMcbbCA@mail.gmail.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.28.80.64]
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 31 May 2019 09:25:16 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Difference between DEPENDS and BUILD-DEPENDS
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
X-List-Received-Date: Mon, 27 May 2019 05:08:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <83A59103DC134144AEAF6E70FE390333@TOSHIBA-TSIP.COM>
Content-Transfer-Encoding: base64

VGhhbmsgeW91IHNvIG11Y2gsbm93IGl0cyBjbGVhci4NCg0KUmVnYXJkcywNCkFyY2hhbmENCg0K
DQpPbiBTYXQsIDIwMTktMDUtMjUgYXQgMTQ6MzIgKzAxMDAsIEJ1cnRvbiwgUm9zcyB3cm90ZToN
Cj4gT24gU2F0LCAyNSBNYXkgMjAxOSBhdCAxNDoyOCwgQXJjaGFuYSBQb2xhbXBhbGxpDQo+IDxB
cmNoYW5hLmM3MjdAdG9zaGliYS10c2lwLmNvbT4gd3JvdGU6DQo+ID4gDQo+ID4gaSBhbSB3b3Jr
aW5nIG9uIG9uZSBvcGVuIHNvdXJjZSBwcm9qZWN0LGZvciB0aGlzIGkgaGF2ZSB0byBhZGQgc29t
ZQ0KPiA+IGRlYmlhbiBwYWNrYWdlcyBhcyB5b2N0byByZWNpcGllcy4NCj4gPiBpIGFtIHRyeWlu
ZyB0byBhZGQgImF1ZGl0IiByZWNpcGUsc28gaWFtIHRyeWluZyB0byB1bmRlcnN0YW5kIHRoZQ0K
PiA+IGF1ZGl0DQo+ID4gZGViaWFuIHBhY2thZ2UgLGkgZ290IHN0cnVjayBiZXR3ZWVuICJkZXBl
bmRzIiBhbmQgImJ1aWxkLWRlcGVuZHMiDQo+IERlYmlhbiBCdWlsZC1EZXBlbmRzID09IE9wZW5F
bWJlZGRlZCBERVBFTkRTDQo+IERlYmlhbiBEZXBlbmRzID09IE9wZW5FbWJlZGRlZCBSREVQRU5E
Uw0KPiANCj4gUm9zcwpUaGUgaW5mb3JtYXRpb24gY29udGFpbmVkIGluIHRoaXMgZS1tYWlsIG1l
c3NhZ2UgYW5kIGluIGFueQ0KYXR0YWNobWVudHMvYW5uZXh1cmUvYXBwZW5kaWNlcyBpcyBjb25m
aWRlbnRpYWwgdG8gdGhlIA0KcmVjaXBpZW50IGFuZCBtYXkgY29udGFpbiBwcml2aWxlZ2VkIGlu
Zm9ybWF0aW9uLiANCklmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHBsZWFz
ZSBub3RpZnkgdGhlDQpzZW5kZXIgYW5kIGRlbGV0ZSB0aGUgbWVzc2FnZSBhbG9uZyB3aXRoIGFu
eSANCmF0dGFjaG1lbnRzL2FubmV4dXJlL2FwcGVuZGljZXMuIFlvdSBzaG91bGQgbm90IGRpc2Ns
b3NlLA0KY29weSBvciBvdGhlcndpc2UgdXNlIHRoZSBpbmZvcm1hdGlvbiBjb250YWluZWQgaW4g
dGhlDQptZXNzYWdlIG9yIGFueSBhbm5leHVyZS4gQW55IHZpZXdzIGV4cHJlc3NlZCBpbiB0aGlz
IGUtbWFpbCANCmFyZSB0aG9zZSBvZiB0aGUgaW5kaXZpZHVhbCBzZW5kZXIgZXhjZXB0IHdoZXJl
IHRoZSBzZW5kZXIgDQpzcGVjaWZpY2FsbHkgc3RhdGVzIHRoZW0gdG8gYmUgdGhlIHZpZXdzIG9m
IA0KVG9zaGliYSBTb2Z0d2FyZSBJbmRpYSBQdnQuIEx0ZC4gKFRTSVApLEJhbmdhbG9yZS4NCg0K
QWx0aG91Z2ggdGhpcyB0cmFuc21pc3Npb24gYW5kIGFueSBhdHRhY2htZW50cyBhcmUgYmVsaWV2
ZWQgdG8gYmUNCmZyZWUgb2YgYW55IHZpcnVzIG9yIG90aGVyIGRlZmVjdCB0aGF0IG1pZ2h0IGFm
ZmVjdCBhbnkgY29tcHV0ZXIgDQpzeXN0ZW0gaW50byB3aGljaCBpdCBpcyByZWNlaXZlZCBhbmQg
b3BlbmVkLCBpdCBpcyB0aGUgcmVzcG9uc2liaWxpdHkNCm9mIHRoZSByZWNpcGllbnQgdG8gZW5z
dXJlIHRoYXQgaXQgaXMgdmlydXMgZnJlZSBhbmQgbm8gcmVzcG9uc2liaWxpdHkgDQppcyBhY2Nl
cHRlZCBieSBUb3NoaWJhIEVtYmVkZGVkIFNvZnR3YXJlIEluZGlhIFB2dC4gTHRkLCBmb3IgYW55
IGxvc3Mgb3INCmRhbWFnZSBhcmlzaW5nIGluIGFueSB3YXkgZnJvbSBpdHMgdXNlLgo=


