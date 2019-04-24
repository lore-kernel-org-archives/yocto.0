Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 165C8E00BAA; Tue, 23 Apr 2019 23:28:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06581E00942
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 23:28:35 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Apr 2019 23:28:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,388,1549958400"; d="scan'208";a="138328863"
Received: from kmsmsx157.gar.corp.intel.com ([172.21.138.134])
	by orsmga006.jf.intel.com with ESMTP; 23 Apr 2019 23:28:33 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.159]) by
	kmsmsx157.gar.corp.intel.com ([169.254.5.17]) with mapi id
	14.03.0415.000; Wed, 24 Apr 2019 14:28:32 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Eggleton, Paul"
	<paul.eggleton@intel.com>, 'Michael Halstead'
	<mhalstead@linuxfoundation.org>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>, "'sjolley.yp.pm@gmail.com'"
	<sjolley.yp.pm@gmail.com>,
	"'openembedded-core-request@lists.openembedded.org'"
	<openembedded-core-request@lists.openembedded.org>
Thread-Topic: QA cycle report for 2.5.3 RC3
Thread-Index: AdT0x9vAV/7ar18oTLSh/osGUj9KZgE1lKwAADGougA=
Date: Wed, 24 Apr 2019 06:28:31 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634DDCE9B@PGSMSX110.gar.corp.intel.com>
References: <015AB11D45F2C442929CB2765DAE738634DD6D05@PGSMSX110.gar.corp.intel.com>
	<191c2490a17a1e5b18b6a0d98659c30d766adde4.camel@linuxfoundation.org>
In-Reply-To: <191c2490a17a1e5b18b6a0d98659c30d766adde4.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZGQ0ZGYwZWEtOTRjOS00MmFiLTljNmItMzlmZTU0ZDU3NTVkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQ1hBTVlBWlFJTlJWUmJOYmlteUdWSDJzWmlQNHU4MG44Qms4b1dcL1B4akIxOUl5U1cyZGFKWlRjVlArRkpOUmQifQ==
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Re: QA cycle report for 2.5.3 RC3
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
X-List-Received-Date: Wed, 24 Apr 2019 06:28:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCg0KPi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogcmljaGFyZC5wdXJkaWVA
bGludXhmb3VuZGF0aW9uLm9yZyA8cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZz4N
Cj5TZW50OiBUdWVzZGF5LCAyMyBBcHJpbCwgMjAxOSAxMDozMSBQTQ0KPlRvOiBKYWluLCBTYW5n
ZWV0YSA8c2FuZ2VldGEuamFpbkBpbnRlbC5jb20+OyAneW9jdG9AeW9jdG9wcm9qZWN0Lm9yZycN
Cj48eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZz47IEVnZ2xldG9uLCBQYXVsIDxwYXVsLmVnZ2xldG9u
QGludGVsLmNvbT47ICdNaWNoYWVsDQo+SGFsc3RlYWQnIDxtaGFsc3RlYWRAbGludXhmb3VuZGF0
aW9uLm9yZz47IEVyd2F5LCBUcmFjZXkgTQ0KPjx0cmFjZXkubS5lcndheUBpbnRlbC5jb20+OyAn
c2pvbGxleS55cC5wbUBnbWFpbC5jb20nDQo+PHNqb2xsZXkueXAucG1AZ21haWwuY29tPjsgJ29w
ZW5lbWJlZGRlZC1jb3JlLQ0KPnJlcXVlc3RAbGlzdHMub3BlbmVtYmVkZGVkLm9yZycgPG9wZW5l
bWJlZGRlZC1jb3JlLQ0KPnJlcXVlc3RAbGlzdHMub3BlbmVtYmVkZGVkLm9yZz4NCj5DYzogU2Fu
Z2FsLCBBcG9vcnYgPGFwb29ydi5zYW5nYWxAaW50ZWwuY29tPjsgWWVvaCwgRWUgUGVuZw0KPjxl
ZS5wZW5nLnllb2hAaW50ZWwuY29tPjsgR3JheWRvbiwgVHJhY3kgPHRyYWN5LmdyYXlkb25AaW50
ZWwuY29tPjsNCj5UdW1tYWxhcGFsbGksIFZpbmVlbGEgPHZpbmVlbGEudHVtbWFsYXBhbGxpQGlu
dGVsLmNvbT4NCj5TdWJqZWN0OiBSZTogUUEgY3ljbGUgcmVwb3J0IGZvciAyLjUuMyBSQzMNCj4N
Cj5PbiBUaHUsIDIwMTktMDQtMTggYXQgMDQ6NTggKzAwMDAsIEphaW4sIFNhbmdlZXRhIHdyb3Rl
Og0KPj4NCj4+IFFBIGN5Y2xlIHJlcG9ydCBmb3IgMi41LjMgUkMzOg0KPj4NCj4+IE5vIGhpZ2gg
bWlsZXN0b25lIGRlZmVjdHMuDQo+PiBUZXN0IHJlc3VsdHMgYXJlIGF2YWlsYWJsZSBhdCBmb2xs
b3dpbmcgbG9jYXRpb246DQo+PiDCtyAgICAgICAgRm9yIHJlc3VsdHMgb2YgYWxsIGF1dG9tYXRl
ZCB0ZXN0cywgcmVmZXIgdG8gcmVzdWx0cyBhdA0KPj4gcHVibGljIEFCIFsxXS4NCj4+IMK3ICAg
ICAgICBGb3Igb3RoZXIgdGVzdCByZXN1bHRzLCByZWZlciB0byBhdHRhY2htZW50IFsyXS4NCj4+
IMK3ICAgICAgICBGb3IgdGVzdCByZXBvcnQgZm9yIHRlc3QgY2FzZXMgcnVuIGJ5IEludGVsIGFu
ZCBXUiB0ZWFtLA0KPj4gcmVmZXIgYXR0YWNobWVudCBbM10NCj4+IMK3ICAgICAgICBGb3IgZnVs
bCB0ZXN0IHJlcG9ydCwgcmVmZXIgYXR0YWNobWVudCBbNF0NCj4+IMK3ICAgICAgICBGb3IgcHRl
c3QgcmVzdWx0cywgcGxlYXNlIHJlZmVyIHRvIHJlc3VsdHMgYXQgcHVibGljIEFCIFs1XQ0KPj4g
wrcgICAgICAgIEZvciBwdGVzdCByZXBvcnQsIHJlZmVyIHRvIGF0dGFjaG1lbnQgWzZdDQo+PiBO
byBuZXcgZGVmZWN0cyBhcmUgZm91bmQgaW4gdGhpcyBjeWNsZS4NCj4+IE51bWJlciBvZiBleGlz
dGluZyBpc3N1ZXMgb2JzZXJ2ZWQgaW4gdGhpcyByZWxlYXNlIGlzIDItIHRvYXN0ZXIgWzddDQo+
PiBhbmQgQnVpbGQtYXBwbGlhbmNlIFs4XSBGb3IgcHRlc3QsIHJlZ3Jlc3Npb24gZGF0YSBpcyBu
b3QgYXZhaWxhYmxlDQo+PiBmb3IgdGhpcyByZWxlYXNlLiBObyB0aW1lb3V0IGlzc3Vlcy4NCj4+
IFRlc3QgcmVzdWx0IHJlcG9ydCBvbiBQdWJsaWMgQUIgc2hvd3Mgbm8gZmFpbHVyZXMuDQo+DQo+
SSd2ZSBiZWVuIGRpc2N1c3Npbmcgd2l0aCBUcmFjeSBhbmQgVmluZWVsYSBob3cgdG8gYmVzdCBo
YW5kbGUgdGhlIHRlc3QgcmVzdWx0cyBmb3INCj50aGUgcmVsZWFzZSBmb3IgMi41LjMuIEluIHRo
ZSBlbmQgSToNCj4NCj5hKSBDb3BpZWQgaW4gdGhlIHB0ZXN0IHJlc3VsdHMgdG8gdGhlIHJpZ2h0
IHBsYWNlLiBUaGlzIHdpbGwgaGFwcGVuIGF1dG9tYWdpY2FsbHkgaW4NCj5hbGwgZnV0dXJlIGJ1
aWxkczoNCj4NCj5odHRwczovL2F1dG9idWlsZGVyLnlvY3RvLmlvL3B1Yi9yZWxlYXNlcy95b2N0
by0yLjUuMy90ZXN0cmVzdWx0cy9xZW11eDg2LTY0LQ0KPnB0ZXN0Lw0KDQo+DQo+YikgQ29waWVk
IGluIHRoZSBpbnRlbCB0ZXN0IHJlc3VsdHMgdG8gdGhlaXIgb3duIGRpcmVjdG9yeToNCj4NCj5o
dHRwczovL2F1dG9idWlsZGVyLnlvY3RvLmlvL3B1Yi9yZWxlYXNlcy95b2N0by0yLjUuMy90ZXN0
cmVzdWx0cy1pbnRlbC8NCj4NCj5jKSBNYW51YWxseSBnZW5lcmF0ZWQgYW4gdXBkYXRlZCB0ZXN0
IHJlcG9ydCBmb3IgdGhlIGNvbWJpbmVkIHJlc3VsdHMgd2l0aCB0aGUNCj5jb21tYW5kczoNCj4N
Cj4kIGNkIC9zcnYvYXV0b2J1aWxkZXIvYXV0b2J1aWxkZXIueW9jdG9wcm9qZWN0Lm9yZy9wdWIv
cmVsZWFzZXMveW9jdG8tMi41LjMNCj4kcmVzdWx0dG9vbCByZXBvcnQgLiA+IHRlc3RyZXBvcnQu
dHh0DQo+DQo+ZCkgQWRkZWQgYSBoZWFkZXIgdG8gdGhlIHJlcG9ydCB3aGljaCBjb25zaXN0ZWQg
b2YgdGhlIHJlcG9ydCBmcm9tIFFBIHdpdGgNCj5kZXRhaWxzIG9mIHRoZSBidWdzIGV0Yy4NCj4N
Cj5UaGlzIG1lYW5zIHdlIGhhdmUgYSB0b3AgbGV2ZWwgdGVzdHJlcG9ydCBmaWxlIHdoaWNoIGNv
bnRhaW5zIGFsbCB0aGUgdGVzdA0KPmluZm9ybWF0aW9uIGFib3V0IHRoZSByZWxlYXNlLg0KPg0K
PkknZCBsaWtlIHRvIG1ha2UgdGhpcyB0aGUgc3RhbmRhcmQgcHJvY2VkdXJlIGZvciByZWxlYXNl
LiBUaGUgcmVsZWFzZSBub3RlcyBhbmQNCj5hbm5vdW5jZW1lbnQgY2FuIHJlZmVyIHRvIHRoZSB0
ZXN0IHJlcG9ydCBpbmNsdWRlZCB3aXRoIHRoZSByZWxlYXNlIGFuZCB0aGUgdGVzdA0KPnJlc3Vs
dHMgYXMgaXRzIHRoZXJlIGFsbCB0b2dldGhlci4NCj4NCj5VbHRpbWF0ZWx5IEknZCBsaWtlIHRv
IGltcHJvdmUgdGhlIGZvcm1hdHRpbmcgb2YgdGhlIHJlcG9ydCAoc2VwYXJhdGUgb3V0IHB0ZXN0
DQo+cmVncmVzc2lvbnMgZnJvbSB0aGUgb3RoZXIgcmVncmVzc2lvbnMsIG1heWJlIGh0bWwsIG1h
eWJlIGdyYXBocywgYmV0dGVyDQo+cmVncmVzc2lvbiBpbmZvcm1hdGlvbikgYnV0IHRoYXQgaXMg
c29tZXRoaW5nIGZvciB0aGUgZnV0dXJlLg0KPg0KPkRvZXMgdGhhdCB3b3JrIGZvciBldmVyeW9u
ZT8NCg0KVGhhdCBsb29rcyBncmVhdCB0byBtZS4gDQpBcyBhIGZ1cnRoZXIgaW1wcm92ZW1lbnQg
Zm9yIHNoYXJpbmcgb2YgdGVzdCByZXN1bHRzLCBJIGFtIHdvcmtpbmcgdG8gY3JlYXRlIGEgd2lr
aSBwYWdlIGZvciBjb25zb2xpZGF0ZWQgDQp0ZXN0IHJlc3VsdHMuIEZvciAyLjUuMywgaXQgY2Fu
IGJlIHZpZXdlZCBhdDoNCmh0dHBzOi8vd2lraS55b2N0b3Byb2plY3Qub3JnL3dpa2kvV1cxNl8t
XzIwMTktMDQtMThfLV9GdWxsX1Rlc3RfQ3ljbGVfMi41LjNfUkMzDQoNCkFmdGVyIHlvdSBoYXZl
IGFkZGVkIG1vcmUgcmVzdWx0cyBvbiBBQiwgSSB3aWxsIGNoYW5nZSBzb21lIGV4aXN0aW5nIGxp
bmtzIG9uIHRoaXMgd2ViIHBhZ2Ugd2l0aCB0aGUgbmV3IG9uZXMuDQoNCkFub3RoZXIgdGhvdWdo
dCBJIGhhdmUgaXMgdGhhdCBzaW5jZSBmb3IgYW55IHJlbGVhc2UsIGFsbCBkYXRhIHdpbGwgYmUg
cmVtb3ZlZCBmcm9tIHB1YmxpYyBBQiBhZnRlciBmZXcgZGF5cyBvZiByZWxlYXNlLA0KU2hvdWxk
IEkgaW5jbHVkZSBoZXJlIGEgIGxpbmsgdG8gInlvY3RvLXRlc3RyZXN1bHRzIiBnaXQgcmVwbz8g
SXQgd2lsbCBtYWtlIHRoaXMgd2lraSBwYWdlIG1vcmUgdXNlZnVsIGZvciByZWZlcmVuY2UgaW4g
ZnV0dXJlIGFzIHdlbGwuDQoNCg0KDQo+DQo+Q2hlZXJzLA0KPg0KPlJpY2hhcmQNCj4NClRoYW5r
cyAmIFJlZ2FyZHMsDQpTYW5nZWV0YSBKYWluDQo=

