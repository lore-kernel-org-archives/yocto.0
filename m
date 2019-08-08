Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B565AE008D3; Thu,  8 Aug 2019 01:38:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBEFFE008D3
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2019 01:38:20 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Aug 2019 01:38:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,360,1559545200"; d="scan'208";a="198971826"
Received: from kmsmsx151.gar.corp.intel.com ([172.21.73.86])
	by fmsmga004.fm.intel.com with ESMTP; 08 Aug 2019 01:38:18 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.19]) by
	KMSMSX151.gar.corp.intel.com ([169.254.10.91]) with mapi id
	14.03.0439.000; Thu, 8 Aug 2019 16:38:17 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA notification for completed autobuilder build (yocto-2.6.3.rc1)
Thread-Index: AQHVSHpx6skgUSSoJkubB04NtkJ+dKbmkWwAgAjUY9CAAQnqgIAAiE0g
Date: Thu, 8 Aug 2019 08:38:17 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634E8E09D@PGSMSX110.gar.corp.intel.com>
References: <20190801150425.40A8420251@debian10-ty-3.yocto.io>
	<9DDD2658D1FE414E99172D2DB1E4D04348211190@PGSMSX109.gar.corp.intel.com>
	<015AB11D45F2C442929CB2765DAE738634E8DB38@PGSMSX110.gar.corp.intel.com>
	<f19c9e93640fd023e78b1607229f186a3e5b68f5.camel@linuxfoundation.org>
In-Reply-To: <f19c9e93640fd023e78b1607229f186a3e5b68f5.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmU5MTJlYzYtMTRhMi00ZGFiLTg0ODgtYzdmMGQ1NzUxMWMwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieTZXWDdvUjV3Sjh3QlYyeGVXM0NLdlNBaDg0VnJya2dtajVOT3pqZ1RDRm9cL3IwWGRORUFFSkxreWg3anczZkUifQ==
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.3.rc1)
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
X-List-Received-Date: Thu, 08 Aug 2019 08:38:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj5Gcm9tOiByaWNoYXJkLnB1cmRpZUBsaW51
eGZvdW5kYXRpb24ub3JnIDxyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnPg0KPlNl
bnQ6IFRodXJzZGF5LCA4IEF1Z3VzdCwgMjAxOSA0OjI5IFBNDQo+VG86IEphaW4sIFNhbmdlZXRh
IDxzYW5nZWV0YS5qYWluQGludGVsLmNvbT47IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj5DYzog
b3RhdmlvQG9zc3lzdGVtcy5jb20uYnI7IHlpLnpoYW9Ad2luZHJpdmVyLmNvbTsgU2FuZ2FsLCBB
cG9vcnYNCj48YXBvb3J2LnNhbmdhbEBpbnRlbC5jb20+OyBDaGFuLCBBYXJvbiBDaHVuIFlldw0K
PjxhYXJvbi5jaHVuLnlldy5jaGFuQGludGVsLmNvbT47IEFuZywgQ2hpbiBIdWF0IDxjaGluLmh1
YXQuYW5nQGludGVsLmNvbT47DQo+YWt1c3RlcjgwOEBnbWFpbC5jb207IHNqb2xsZXkueXAucG1A
Z21haWwuY29tOyBZZW9oLCBFZSBQZW5nDQo+PGVlLnBlbmcueWVvaEBpbnRlbC5jb20+OyBUdW1t
YWxhcGFsbGksIFZpbmVlbGENCj48dmluZWVsYS50dW1tYWxhcGFsbGlAaW50ZWwuY29tPg0KPlN1
YmplY3Q6IFJlOiBRQSBub3RpZmljYXRpb24gZm9yIGNvbXBsZXRlZCBhdXRvYnVpbGRlciBidWls
ZCAoeW9jdG8tMi42LjMucmMxKQ0KPg0KPk9uIFRodSwgMjAxOS0wOC0wOCBhdCAwMzowMCArMDAw
MCwgSmFpbiwgU2FuZ2VldGEgd3JvdGU6DQo+PiBIZWxsbyBBbGwsDQo+Pg0KPj4gVGhpcyBpcyB0
aGUgZnVsbCByZXBvcnQgZm9yIDIuNi4zIFJDMToNCj4+IGh0dHBzOi8vZ2l0LnlvY3RvcHJvamVj
dC5vcmcvY2dpdC9jZ2l0LmNnaS95b2N0by10ZXN0cmVzdWx0cy1jb250cmliL2wNCj4+IG9nLz9o
PWludGVsLXlvY3RvLXRlc3RyZXN1bHRzDQo+Pg0KPj4gPT09PT09PSBTdW1tYXJ5ID09PT09PT09
DQo+PiBObyBoaWdoIG1pbGVzdG9uZSBkZWZlY3RzLg0KPj4gTm8gbmV3IGRlZmVjdHMgYXJlIGZv
dW5kIGluIHRoaXMgYnVpbGQuDQo+Pg0KPj4gPT09PT09PVFBIG5vdGVzPT09PT09PT09DQo+PiBP
bmUgbWlub3IgaXNzdWUgaXMgb2JzZXJ2ZWQsIGFmdGVyIGluc3RhbGxlZCBjb3JlLWltYWdlLXNh
dG8tc2RrIGltYWdlDQo+PiB0byBOVUM3IGludGVybmFsIGhhcmRkaXNrLCBkdXJpbmcgYm9vdCB1
cCwgaXQgaGFuZ3MgYXQgdGhlIFlvY3RvDQo+PiBzcGxhc2ggc2NyZWVuLiBOZWVkIHRvIG1hbnVh
bCBwcmVzcyBrZXlib2FyZCAiZW50ZXIiIGJ1dHRvbiBtdWx0aXBsZQ0KPj4gdGltZXMgZm9yIGl0
IHRvIGNvbnRpbnVlIHRoZSBib290IGFuZCBicmluZyB0aGUgc2NyZWVuIHRvIHNhdG8gR1VJLiBO
bw0KPj4gYnVnIGlzIGZpbGVkIGZvciB0aGlzIGlzc3VlIGFzIHRoaXMgc2VlbXMgdG8gYmUgYSBt
aW5vciBpc3N1ZSBhbmQgUUENCj4+IHRlYW0gaW52ZXN0aWdhdGluZyBtb3JlIG9udG8gaXQuIFRo
aXMgYnVnIGlzIGNvbnNpc3RlbnRseQ0KPj4gcmVwcm9kdWNpYmxlLg0KPg0KPlRoYW5rcyBmb3Ig
cnVubmluZyB0aGUgdGVzdHMuDQo+DQo+RldJVyB0aGUgaXNzdWUgYWJvdmUgc291bmRzIHZlcnkg
bGlrZSBhIGxhY2sgb2YgZW50cm9weSBwcm9ibGVtLCB5b3UgbWF5IHdhbnQNCj50byBsb29rIGF0
IHRoZSBrZXJuZWwgY29uZmlndXJhdGlvbiBhbmQgc2VlIGhvdyBpdHMgZ2VuZXJhdGluZyBlbnRy
b3B5LiBJZiB5b3UgY2FuDQo+c2VlIHRoZSBrZXJuZWwgYm9vdCBtZXNzYWdlcyBhbmQgZGlzYWJs
ZSB0aGUgc3BsYXNoIHNjcmVlbiB0aGF0IHdvdWxkIGhlbHANCj5kZWJ1ZyBpdC4NCg0KVGhhbmtz
IGZvciB0aGUgcG9pbnRlciBSaWNoYXJkLiBJdCB3aWxsIGhlbHAgaW4gZGVidWdnaW5nLg0KPg0K
PkNoZWVycywNCj4NCj5SaWNoYXJkDQoNClRoYW5rcywNClNhbmdlZXRhDQoNCg==

