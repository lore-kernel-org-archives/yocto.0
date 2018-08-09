Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC7AEE009AC; Thu,  9 Aug 2018 03:11:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA6BFE00875
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 03:11:09 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Aug 2018 03:11:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,214,1531810800"; d="scan'208";a="75118014"
Received: from pgsmsx107.gar.corp.intel.com ([10.221.44.105])
	by fmsmga002.fm.intel.com with ESMTP; 09 Aug 2018 03:11:08 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.29]) by
	PGSMSX107.gar.corp.intel.com ([169.254.7.221]) with mapi id
	14.03.0319.002; Thu, 9 Aug 2018 18:11:07 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>
Thread-Topic: QA cycle report for 2.6 M2 RC1
Thread-Index: AQHUL7r9vEGGO7IkRUORuoN0JqxSOaS3Lxcw
Date: Thu, 9 Aug 2018 10:11:07 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335E976AF@PGSMSX109.gar.corp.intel.com>
References: <9DDD2658D1FE414E99172D2DB1E4D04335E9749B@PGSMSX109.gar.corp.intel.com>
	<ed173dd2acac1eedc258b5f505b59cbcfcdb4b6e.camel@linuxfoundation.org>
In-Reply-To: <ed173dd2acac1eedc258b5f505b59cbcfcdb4b6e.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTU5YjBhNDItYjA1ZS00MWZhLWJjYTEtZjdiMGZkZjQ2MDI5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRUt1VlFHd3pPWUZncXJpb2pRWXRpVXhEVVwvbzk4dytjMnhTUTU5S01IdmFCUTUwVmJyYUFzM29Lc3ZodGVvU2oifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.6 M2 RC1
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
X-List-Received-Date: Thu, 09 Aug 2018 10:11:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCg0KVGhlcmUgYXJlIDIzIHRlc3RzIHdlcmUgbm90IGV4ZWN1dGVkLiANCjEz
IG9mIHRoZXNlIHRlc3RzIHdlcmUgcmVsYXRlZCB0byBTREsgYXV0b21hdGVkIHRlc3RzIChwYXJ0
IG9mIGl0IGJlbG9uZyB0byBnYWxjdWxhdG9yIHRlc3QpLg0KNiBvZiB0aGVzZSB0ZXN0cyAoc2Vs
ZnRlc3QvY2FzZXMvZGlzdHJvZGF0YS5weSksIHdoZXJlIGl0IHdhcyBjb25maWd1cmVkIHRvIGJl
IHNraXBwZWQgYnkgQXV0b2J1aWxkZXIgKHdlIHdpbGwgcmVtb3ZlZCB0aGVzZSB0ZXN0cyBmcm9t
IHBsYW5uZWQgdGVzdHMgc3RhcnRpbmcgbmV3IGN5Y2xlKS4NCjIgb2YgdGhlc2UgdGVzdHMgKHJ1
bnRpbWUvY2FzZXMvb2Vfc3lzbG9nLnB5KSwgd2VyZSBza2lwcGVkIGR1ZSB0byB0ZXN0cyBjYW4n
dCBydW4gd2l0aCBzeXNrbG9nZCBpbnN0YWxsZWQuDQoxIG9mIHRoZSBydW50aW1lL3hvcmcgdGVz
dHMgcnVubmluZyBvbiBxZW11YXJtNjQgd2VyZSBub3QgZXhlY3V0ZWQgYnkgdGhlIHRlc3RpbWFn
ZS4gDQoNCkZvciB0aGUgZVNESyBhdXRvbWF0ZWQgdGVzdHMgaXNzdWUsIHdlIGhhZCBmaWxlZCBm
b3IgYnVnLg0KaHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNnaT9p
ZD0xMjg3NQ0KDQpQbGVhc2UgbGV0IG1lIGtub3cgaWYgYW55IG1vcmUgcXVlc3Rpb24uDQoNClRo
YW5rcywNClllb2ggRWUgUGVuZyANCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206
IHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmcgW21haWx0bzpyaWNoYXJkLnB1cmRp
ZUBsaW51eGZvdW5kYXRpb24ub3JnXSANClNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgOSwgMjAxOCA0
OjI5IFBNDQpUbzogWWVvaCwgRWUgUGVuZyA8ZWUucGVuZy55ZW9oQGludGVsLmNvbT47ICd5b2N0
b0B5b2N0b3Byb2plY3Qub3JnJyA8eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZz47IEpvbGxleSwgU3Rl
cGhlbiBLIDxzdGVwaGVuLmsuam9sbGV5QGludGVsLmNvbT47IEVnZ2xldG9uLCBQYXVsIDxwYXVs
LmVnZ2xldG9uQGludGVsLmNvbT4NCkNjOiBTYW5nYWwsIEFwb29ydiA8YXBvb3J2LnNhbmdhbEBp
bnRlbC5jb20+OyBLaXJraXJpcywgTmVjdGFyIDxuZWN0YXIua2lya2lyaXNAaW50ZWwuY29tPg0K
U3ViamVjdDogUmU6IFFBIGN5Y2xlIHJlcG9ydCBmb3IgMi42IE0yIFJDMQ0KDQpPbiBUaHUsIDIw
MTgtMDgtMDkgYXQgMDU6NTcgKzAwMDAsIFllb2gsIEVlIFBlbmcgd3JvdGU6DQo+ID09PT09PT0g
U3VtbWFyeSA9PT09PT09PQ0KPiAgDQo+IEFsbCBwbGFubmVkIHRlc3RzIHdlcmUgZXhlY3V0ZWQg
ZXhjZXB0IGEgZmV3IFNESyBhdXRvbWF0ZWQgdGVzdHMgd2VyZSANCj4gc2tpcHBlZCBpbiBBdXRv
YnVpbGRlciAodGVzdHJ1biMgOTgzMC05ODM2LCA5Nzk2LTk3OTcpLiAgVGVhbSBmb3VuZCANCj4g
dGhhdCB0aGVzZSBTREsgYXV0b21hdGVkIHRlc3RzIHdlcmUgcnVubmluZyBzdWNjZXNzZnVsbHkg
aW4gY29yZS0gDQo+IGltYWdlLXNhdG8tc2RrIGltYWdlIGJ1dCBub3QgdGhlIGV4aXN0aW5nIGNv
cmUtaW1hZ2Utc2F0byB1c2VkIGJ5IA0KPiBBdXRvYnVpbGRlciwgaW52ZXN0aWdhdGluZyB3aHkg
dGhlc2UgYXV0b21hdGVkIHRlc3RzIHdlcmUgc2tpcHBlZCBpbiANCj4gY29yZS1pbWFnZS1zYXRv
IGFuZCBubyBtZXNzYWdlIGF2YWlsYWJsZSBpbiB0ZXN0c2RrIGxvZ2ZpbGUgdG8gZXhwbGFpbiAN
Cj4gd2h5IGl0IHdhcyBza2lwcGVkLg0KDQpJIHRoaW5rIFJvc3MganVzdCBzZW50IGEgcGF0Y2gg
Zm9yIHRoaXMsIGFzc3VtaW5nIGl0IHdhcyB0aGUgZ2FsY3VsYXRvciB0ZXN0Pw0KDQo+ICAgVGVh
bSBhbHNvIGZvdW5kIHRoYXQgZVNESyBkZXZ0b29sIGF1dG9tYXRlZCB0ZXN0Y2FzZShzKSB3ZXJl
IHNraXBwZWQgDQo+IHVuZXhwZWN0ZWRseSBkdWUgdG8gdGhlIHVua25vd24gZXJyb3Igb24gdGVz
dGNhc2UgZGVwZW5kZW5jeSBsb2dpYywgDQo+IHRlbXBvcmFyeSByZW1vdmluZyB0aGUgZGVwZW5k
ZW5jeSBsb2dpYyBhbmQgc3VjY2Vzc2Z1bGx5IGV4ZWN1dGVkIHRoZSANCj4gZGV2dG9vbCB0ZXN0
cy4NCg0KV2Ugc2hvdWxkIHByb2JhYmx5IGhhdmUgYSBidWcgdG8gdHJhY2sgYW5kIHJlc29sdmUg
dGhpcyBpc3N1ZSBhcyBpdCBoYXNuJ3QgYmVlbiByZXNvbHZlZCB5ZXQgYXMgZmFyIGFzIEkga25v
dy4gSSBiZWxpZXZlIGl0cyBhIHByb2JsZW0gaW50cm9kdWNlZCBieSB0aGUgcGFyYWxsZWxpc20g
Y2hhbmdlcy4gV2UgbWF5IGhhdmUgdG8gcmV3b3JrIHRoZSBkZXBlbmRlbmN5IGxvZ2ljLg0KDQo+
IE5ldyBCdWdzDQo+IFsxXSBCdWcgMTI4NjYgLSBbMi42IE0yIHJjMV0gd2ljIHRlc3RfZml4X3Np
emUgZmFpbGVkDQo+IGh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTI4NjYNCj4gIA0KPiBbMl0gQnVnIDEyODY0IC0gWzIuNiBNMiByYzFdIGJ1aWxkaGlz
dG9yeWRpZmZ0ZXN0IGZhaWxlZA0KPiBodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcv
c2hvd19idWcuY2dpP2lkPTEyODY0DQo+ICANCj4gWzNdIEJ1ZyAxMjg2OSAtIFsyLjYgTTIgcmMx
XSBsaWJ4bWwgdGVzdCBjYXNlcyBmYWlsZWQNCj4gaHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2pl
Y3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0xMjg2OQ0KDQpUaGUgZ29vZCBuZXdzIGlzIHRoYXQgdGhl
c2UgaGF2ZSBhbGwgYWxyZWFkeSBiZWVuIGZpeGVkIGluIG1hc3RlciBhbmQgYXJlIHVuZGVyc3Rv
b2QgaXNzdWVzIHdpdGggZ29vZCByZXNvbHV0aW9ucy4gSSBkb24ndCBiZWxpZXZlIGFueSBvZiB0
aGVtIGFyZSBlbm91Z2ggdG8gd2FycmFudCBhbiByYzIuIE15IHJlY29tbWVuZGF0aW9uIGlzIHdl
IHJlbGVhc2UgcmMxIHN1YmplY3QgdG8gbXkgcXVlc3Rpb24gYmVsb3cuDQoNCldoeSBkb2VzIHRo
ZSBRQSByZXBvcnQgbm90IHNob3cgMTAwJSBvZiB0ZXN0cyB3ZXJlIGNvbXBsZXRlZCBpbiBhbGwg
Y2FzZXM/DQoNCldlIGRvIG5lZWQgdG8gdGFrZSB0aGUgbGlzdCBvZiBidWdzIGluIHRoZSBRQSBy
ZXBvcnQgaXRzZWxmIGFuZCBzZWUgaWYgd2UgY2FuIHJlc29sdmUgc29tZSBvZiB0aGVtIGZvciB0
aGUgZmluYWwgcmVsZWFzZSwgU3RlcGhlbiwgeW91ciBoZWxwIGluIGRyaXZpbmcvdHJhY2tpbmcg
dGhhdCB3b3VsZCBiZSBhcHByZWNpYXRlZC4NCg0KQ2hlZXJzLA0KDQpSaWNoYXJkDQo=

