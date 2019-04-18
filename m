Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61387E00D50; Wed, 17 Apr 2019 22:14:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1A52E00AD5
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2019 22:14:58 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Apr 2019 22:14:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,364,1549958400"; d="scan'208";a="162913196"
Received: from pgsmsx106.gar.corp.intel.com ([10.221.44.98])
	by fmsmga004.fm.intel.com with ESMTP; 17 Apr 2019 22:14:56 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.159]) by
	PGSMSX106.gar.corp.intel.com ([169.254.9.45]) with mapi id
	14.03.0415.000; Thu, 18 Apr 2019 13:14:55 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA notification for completed autobuilder build (yocto-2.7.rc2)
Thread-Index: AQHU82eYk7UnU2lenky/Ig44zoUO5KZAB8kw
Date: Thu, 18 Apr 2019 05:14:55 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634DD6D6A@PGSMSX110.gar.corp.intel.com>
References: <20190414234841.5CB64601DAB8@centos7-ty-1.localdomain>
	<30610bf2d5c82bdfb3cb95800a4646c3d1ed5db3.camel@linuxfoundation.org>
In-Reply-To: <30610bf2d5c82bdfb3cb95800a4646c3d1ed5db3.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmFlNWQ1YjMtNDIyOS00MjdkLWE4YWQtYzJhMzc0N2M0YzMxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNVwvR2REemViRVJTYjBtTXZ1WHU3dHpXOVhDSnZNS2l4dlZBTDlQcTVlT0huTFwvejBDaUtxVlZrbWY3OEpsdktvIn0=
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.7.rc2)
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
X-List-Received-Date: Thu, 18 Apr 2019 05:14:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gQWxsLA0KDQpJbnRlbCBhbmQgV1IgWVAgUUEgaXMgbm93IHdvcmtpbmcgb24gUUEgZXhl
Y3V0aW9uIGZvciBZUCBidWlsZCAyLjcuUkMyLiBXZQ0KYXJlIHBsYW5uaW5nIHRvIGV4ZWN1dGUg
Zm9sbG93aW5nIHRlc3RzIGZvciB0aGlzIGN5Y2xlOg0KDQpPRVFBLU1hbnVhbCB0ZXN0cyBmb3Ig
Zm9sbG93aW5nIG1vZHVsZXM6DQoxLiAgICBTREsNCjIuICAgIEtlcm5lbA0KMy4gICBUb2FzdGVy
DQo0LiAgIEJpdGJha2UgKG9lLWNvcmUpDQo1LiAgIEJ1aWxkLWFwcGxpYW5jZQ0KNi4gICBDcm9w
cw0KNy4gICBDb21wbGlhbmNlLXRlc3QNCjguICAgQnNwLWh3DQo5LiAgIEJzcC1xZW11DQoNClJ1
bnRpbWUgYXV0byB0ZXN0IGZvciBmb2xsb3dpbmcgcGxhdGZvcm1zOg0KDQoxLiAgICBNaW5ub3dU
dXJibyAzMmJpdA0KMi4gICAgTWlubm93VHVyYm90IDY0IGJpdA0KMy4gICAgTlVDIDcNCjQuICAg
IE5VQyA2DQo1LiAgICBFZGdlcm91dGVyDQo2LiAgIE1QQzgzMTVlLXJkYg0KNy4gICBCZWFnbGVi
b25lDQoNCkVUQSBmb3IgY29tcGxldGlvbiBpcyBGcmlkYXksIDI2IEFwcmlsLg0KDQpUaGFua3Mg
JiBSZWdhcmRzLA0KU2FuZ2VldGEgSmFpbg0KDQo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj5Gcm9tOiByaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnIDxyaWNoYXJkLnB1cmRp
ZUBsaW51eGZvdW5kYXRpb24ub3JnPg0KPlNlbnQ6IE1vbmRheSwgMTUgQXByaWwsIDIwMTkgNDo0
NSBQTQ0KPlRvOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+Q2M6IG90YXZpb0Bvc3N5c3RlbXMu
Y29tLmJyOyB5aS56aGFvQHdpbmRyaXZlci5jb207IFNhbmdhbCwgQXBvb3J2DQo+PGFwb29ydi5z
YW5nYWxAaW50ZWwuY29tPjsgWWVvaCwgRWUgUGVuZyA8ZWUucGVuZy55ZW9oQGludGVsLmNvbT47
IENoYW4sDQo+QWFyb24gQ2h1biBZZXcgPGFhcm9uLmNodW4ueWV3LmNoYW5AaW50ZWwuY29tPjsg
QW5nLCBDaGluIEh1YXQNCj48Y2hpbi5odWF0LmFuZ0BpbnRlbC5jb20+OyBha3VzdGVyODA4QGdt
YWlsLmNvbTsgc2pvbGxleS55cC5wbUBnbWFpbC5jb207DQo+SmFpbiwgU2FuZ2VldGEgPHNhbmdl
ZXRhLmphaW5AaW50ZWwuY29tPg0KPlN1YmplY3Q6IFJlOiBRQSBub3RpZmljYXRpb24gZm9yIGNv
bXBsZXRlZCBhdXRvYnVpbGRlciBidWlsZCAoeW9jdG8tMi43LnJjMikNCj4NCj5PbiBTdW4sIDIw
MTktMDQtMTQgYXQgMjM6NDggKzAwMDAsIHBva3lidWlsZEBjZW50b3M3LXR5LTEubG9jYWxkb21h
aW4NCj53cm90ZToNCj4+IEEgYnVpbGQgZmxhZ2dlZCBmb3IgUUEgKHlvY3RvLTIuNy5yYzIpIHdh
cyBjb21wbGV0ZWQgb24gdGhlDQo+PiBhdXRvYnVpbGRlciBhbmQgaXMgYXZhaWxhYmxlIGF0Og0K
Pj4NCj4+DQo+PiAgICAgaHR0cHM6Ly9hdXRvYnVpbGRlci55b2N0by5pby9wdWIvcmVsZWFzZXMv
eW9jdG8tMi43LnJjMg0KPj4NCj4+DQo+PiBCdWlsZCBoYXNoIGluZm9ybWF0aW9uOg0KPj4NCj4+
IGJpdGJha2U6IGNiMTg1ZWZlOWU4OGNmYjEyYjdhM2ZkMDhmMzA4NmNhMGI2OWM4ZTINCj4+IG1l
dGEtZ3BsdjI6IDEwNmJhNmQyYTRkMDhhMjc2MjA1YzMwNWY4NDg1ZDcwMWZlOGE4ZjMNCj4+IG1l
dGEtaW50ZWw6IGNkMmMzYmZjYTk3NjU1OTk5Y2JkZTY0NWI3M2JlNzEyNjc1ZGJhOTINCj4+IG1l
dGEtbWluZ3c6IDEwNjk1YWZlOGNkNDA2ODQ0ZTBkMGRkODY4YzExNjc3ZTA3NTU3ZDQNCj4+IG9l
Y29yZTogZjU3MWIxODgxNzc3ODhkOGVkMGE3ZjNlZmUzNTY5ZjE1M2IxYjBkMw0KPj4gcG9reTog
MGUzOTIwMjZmZmVmZWUwOThhODkwYzM5YmMzY2ExZjY5N2JhY2I1Mg0KPg0KPk5vdGUgZm9yIFFB
Og0KPg0KPkkgd2FzIGFibGUgdG8gYWRkIHRoZSBhdXRvbWF0ZWQgb2Utc2VsZnRlc3RzIGZvciB0
aGUgZGlmZmVyZW50IHFlbXUgbWFjaGluZXMgaW4NCj50aGlzIHJ1biBhcyB3ZSBkaXNjdXNzZWQu
IFRoaXMgc2hvdWxkIHJlZHVjZSB0aGUgYW1vdW50IG9mIHRlc3RzIFFBIG5lZWQgdG8gcnVuLg0K
PlRoZXJlIHdhcyBvbmUgZmFpbHVyZToNCj4NCj50ZXN0c2VyaWVzIHwgcmVzdWx0X2lkIDogcWVt
dXBwYyB8IG9lc2VsZnRlc3RfY2VudG9zLQ0KPjdfcWVtdXBwY18yMDE5MDQxNDIyMTMyOQ0KPiAg
ICBydW5xZW11LlFlbXVUZXN0LnRlc3RfcWVtdV9jYW5fc2h1dGRvd24NCj4NCj5JIGJlbGlldmUg
dGhpcyB3b3JrZWQgb24gdGhlIHJjMSB0ZXN0IHJ1biBzbyBpdCBhcHBlYXJzIHRvIGJlIGFuIGlu
dGVybWl0dGVudCBmYWlsdXJlDQo+d2hpY2ggSSdkIG5vdCBibG9jayByZWxlYXNlIG9uLg0KPg0K
PkNoZWVycywNCj4NCj5SaWNoYXJkDQoNCg==

