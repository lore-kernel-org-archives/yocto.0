Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F1FBE00C44; Sun, 14 Apr 2019 19:30:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8174DE00C37
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2019 19:30:47 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Apr 2019 19:30:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,351,1549958400"; d="scan'208";a="150860034"
Received: from pgsmsx104.gar.corp.intel.com ([10.221.44.91])
	by orsmga002.jf.intel.com with ESMTP; 14 Apr 2019 19:30:44 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.159]) by
	PGSMSX104.gar.corp.intel.com ([169.254.3.129]) with mapi id
	14.03.0415.000; Mon, 15 Apr 2019 10:30:43 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Eggleton, Paul"
	<paul.eggleton@intel.com>, 'Michael Halstead'
	<mhalstead@linuxfoundation.org>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>, "'sjolley.yp.pm@gmail.com'"
	<sjolley.yp.pm@gmail.com>,
	"openembedded-core-request@lists.openembedded.org"
	<openembedded-core-request@lists.openembedded.org>
Thread-Topic: QA cycle report for 2.6.2 RC3
Thread-Index: AdTvRnE6YflJbAZuQYKxjZ6aIiwrVgBlRa6AAJXE8QA=
Date: Mon, 15 Apr 2019 02:30:42 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634DD4333@PGSMSX110.gar.corp.intel.com>
References: <015AB11D45F2C442929CB2765DAE738634DD053D@PGSMSX110.gar.corp.intel.com>
	<d996f4fc461a2def10b9af6704b9153642d3f409.camel@linuxfoundation.org>
In-Reply-To: <d996f4fc461a2def10b9af6704b9153642d3f409.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiY2MwZDliYjAtOGQ1Mi00NGYyLWFjZTUtZjI3ZWQ2MjlhMDM4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZCtaS3BnRzB2OEVhb0luU1N0ajRsVlwvN1BIV1FRTG5VMlZWZzhWUkN4R2hDWmdENTM2eGdsMW5SM0pWWlhOSk4ifQ==
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Re: QA cycle report for 2.6.2 RC3
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
X-List-Received-Date: Mon, 15 Apr 2019 02:30:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IHJpY2hhcmQucHVyZGllQGxp
bnV4Zm91bmRhdGlvbi5vcmcgPHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc+DQo+
U2VudDogRnJpZGF5LCAxMiBBcHJpbCwgMjAxOSA2OjU4IFBNDQo+VG86IEphaW4sIFNhbmdlZXRh
IDxzYW5nZWV0YS5qYWluQGludGVsLmNvbT47ICd5b2N0b0B5b2N0b3Byb2plY3Qub3JnJw0KPjx5
b2N0b0B5b2N0b3Byb2plY3Qub3JnPjsgRWdnbGV0b24sIFBhdWwgPHBhdWwuZWdnbGV0b25AaW50
ZWwuY29tPjsgJ01pY2hhZWwNCj5IYWxzdGVhZCcgPG1oYWxzdGVhZEBsaW51eGZvdW5kYXRpb24u
b3JnPjsgRXJ3YXksIFRyYWNleSBNDQo+PHRyYWNleS5tLmVyd2F5QGludGVsLmNvbT47ICdzam9s
bGV5LnlwLnBtQGdtYWlsLmNvbScNCj48c2pvbGxleS55cC5wbUBnbWFpbC5jb20+OyBvcGVuZW1i
ZWRkZWQtY29yZS0NCj5yZXF1ZXN0QGxpc3RzLm9wZW5lbWJlZGRlZC5vcmcNCj5DYzogU2FuZ2Fs
LCBBcG9vcnYgPGFwb29ydi5zYW5nYWxAaW50ZWwuY29tPjsgWWVvaCwgRWUgUGVuZw0KPjxlZS5w
ZW5nLnllb2hAaW50ZWwuY29tPg0KPlN1YmplY3Q6IFJlOiBRQSBjeWNsZSByZXBvcnQgZm9yIDIu
Ni4yIFJDMw0KPg0KPk9uIFdlZCwgMjAxOS0wNC0xMCBhdCAwMjozOCArMDAwMCwgSmFpbiwgU2Fu
Z2VldGEgd3JvdGU6DQo+Pg0KPj4gUUEgY3ljbGUgcmVwb3J0IGZvciAyLjYuMiBSQzM6DQo+Pg0K
Pj4gTm8gaGlnaCBtaWxlc3RvbmUgZGVmZWN0cy4NCj4+IFRlc3QgcmVzdWx0cyBhcmUgYXZhaWxh
YmxlIGF0IGZvbGxvd2luZyBsb2NhdGlvbjoNCj4+IMK3ICAgICAgICBGb3IgcmVzdWx0cyBvZiBh
bGwgYXV0b21hdGVkIHRlc3RzLCByZWZlciB0byByZXN1bHRzIGF0DQo+PiBwdWJsaWMgQUIgWzFd
Lg0KPj4gwrcgICAgICAgIEZvciBvdGhlciB0ZXN0IHJlc3VsdHMsIHJlZmVyIHRvIGF0dGFjaG1l
bnQgWzJdLg0KPj4gwrcgICAgICAgIEZvciB0ZXN0IHJlcG9ydCBmb3IgdGVzdCBjYXNlcyBydW4g
YnkgSW50ZWwgYW5kIFdSIHRlYW0sDQo+PiByZWZlciBhdHRhY2htZW50IFszXQ0KPj4gwrcgICAg
ICAgIEZvciBmdWxsIHRlc3QgcmVwb3J0LCByZWZlciBhdHRhY2htZW50IFs0XQ0KPj4gwrcgICAg
ICAgIEZvciBwdGVzdCByZXN1bHRzLCBwbGVhc2UgcmVmZXIgdG8gcmVzdWx0cyBhdCBwdWJsaWMg
QUIgWzVdDQo+PiDCtyAgICAgICAgRm9yIHB0ZXN0IHJlcG9ydCwgcmVmZXIgdG8gYXR0YWNobWVu
dCBbNl0NCj4+IDEgbmV3IGRlZmVjdHMgYXJlIGZvdW5kIGluIHRoaXMgY3ljbGUsIEJlYWdsZWJv
bmUgWzddLg0KPj4gUUEgaGludDogIFNpbWlsYXIgaXNzdWUgZm9yIHN5c2VtdGFwIGZhaWx1cmUg
KGJ1ZyAxMzE1Mykgd2FzIGZvdW5kIGluDQo+PiAyLjcgTTIgUkMxIHdoaWNoIGlzIG5vdyByZXNv
bHZlZCBmb3IgbWFzdGVyLg0KPj4gTnVtYmVyIG9mIGV4aXN0aW5nIGlzc3VlcyBvYnNlcnZlZCBp
biB0aGlzIHJlbGVhc2UgaXMgMy0gdG9hc3RlciBbOF0sDQo+PiBCdWlsZC1hcHBsaWFuY2UgWzld
IGFuZCBxZW11LXNodXRkb3duIFsxMF0gRm9yIHB0ZXN0LCByZWdyZXNzaW9uIGRhdGENCj4+IGlz
IG5vdCBhdmFpbGFibGUgZm9yIHRoaXMgcmVsZWFzZS4gMyBwYWNrYWdlcyBhcmUgZmFjaW5nIHRp
bWVvdXQNCj4+IGlzc3VlczogbHR0bmctdG9vbHMgWzExXSwgb3BlbnNzaCBbMTJdIGFuZCBzdHJh
Y2UgWzEzXS4NCj4+IFRlc3QgcmVzdWx0IHJlcG9ydCBvbiBQdWJsaWMgQUIgc2hvd3MgZm9sbG93
aW5nIGZhaWx1cmVzOg0KPj4gYnVpbGRnYWxjdWxhdG9yLkdhbGN1bGF0b3JUZXN0LnRlc3RfZ2Fs
Y3VsYXRvcg0KPj4gUUEgQ29tbWVudDogRXhwZWN0ZWQgZmFpbHVyZSBmb3IgaHcgbGltaXRhdGlv
bg0KPj4gcHl0aG9uLlB5dGhvblRlc3QudGVzdF9weXRob24zDQo+PiBRQSBDb21tZW50OiBGYWls
dXJlIGR1ZSB0byDigJxweXRob24z4oCdIHRlc3QgY2FzZSBub3QgYmFja3BvcnRlZCB0byBUaHVk
Lg0KPj4gTm8gYnVnIGZpbGVkIGFzIG5vdCByZWFsIFlvY3RvIGZhaWx1cmUuDQo+DQo+VGhhbmtz
IGZvciBydW5uaW5nIFFBIG9uIHRoaXMuIEZpcnN0bHksIEkgY2FuIGNvbW1lbnQgb24gdGhlIGJ1
Z3M6DQo+DQo+PiBbN10gQnVnIDEzMjczIC0gWzIuNi4yIFJDM10gU3lzdGVtdGFwIGRvZXNuJ3Qg
d29yayBvbiBiZWFnbGVib25lDQo+PiBodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcv
c2hvd19idWcuY2dpP2lkPTEzMjczDQo+DQo+V2UndmUgcm9vdCBjYXVzZWQgdGhpcyBvbiBtYXN0
ZXIgYW5kIGJlbGlldmUgd2Uga25vdyBob3cgdG8gZml4IHRoaXMsIGl0cyBhDQo+a2VybmVsIG1h
a2VmaWxlIGNvbmZpZ3VyYXRpb24gaXNzdWUuIFdlIGNhbiBsaWtlbHkgZG9jdW1lbnQgdGhpcyBh
cyBhIGtub3duIGlzc3VlDQo+YW5kIGZpeCBpbiAyLjYuMy4NCj4NCj4+IFByZXZpb3VzIEJ1Z3Mg
b2JzZXJ2ZWQgaW4gdGhpcyByZWxlYXNlOg0KPj4NCj4+IFs4XSBCdWcgMTMxOTEg4oCTIFtUZXN0
IENhc2UgMTQzOV0gQnVpbGQgRmFpbHVyZSBhZnRlciBhZGRpbmcgb3INCj4+IHJlbW92aW5nIHBh
Y2thZ2VzIHdpdGggYW5kIHdpdGhvdXQgZGVwZW5kZW5jaWVzDQo+PiBodHRwczovL2J1Z3ppbGxh
LnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTEzMTkxDQo+Pg0KPj4gWzldIEJ1ZyAx
Mjk5MSAtIFtCdWddIFsyLjYgTTQgUkMxXVtCdWlsZC1BcHBsaWFuY2VdIEJpdGJha2UgYnVpbGQt
DQo+PiBhcHBsaWFuY2UtaW1hZ2UgZ2V0dGluZyBmYWlsZWQgZHVyaW5nIGJ1aWxkaW5nIGltYWdl
IGR1ZSB0byB3ZWJraXRndGsNCj4+IHBhY2thZ2UuDQo+PiBodHRwczovL2J1Z3ppbGxhLnlvY3Rv
cHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTEyOTkxDQo+DQo+VGhpcyBpcyBhIGxvbmcgcnVu
bmluZyBpc3N1ZSB3ZSd2ZSBiZWVuICJpZ25vcmluZyIsIGl0cyBsaWtlbHkgcmVzb3VyY2UgaXNz
dWVzIG9uIHRoZQ0KPm1hY2hpbmUvVk0gcnVubmluZyB0aGUgdGVzdC4NCj4NCj4+IFsxMF0gQnVn
IDEzMjM0IC0gWzIuNyBNMyBSQzFdIHFlbXVtaXBzICYgcWVtdW1pcHM2NDogZmFpbGVkIHRvDQo+
PiBzaHV0ZG93bg0KPj4gaHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMzIzNA0KPg0KPlRoaXMgaXMgYW4gaXNzdWUgcm9vdCBjYXVzZWQgdG8gYmUgZnJv
bSA0LjE5IGFuZCA1LjAga2VybmVscy4gSSB0aG91Z2h0DQo+Mi42LjIgaGFkIGEgNC4xOCBrZXJu
ZWwgc28gc2hvdWxkbid0IGhhdmUgdGhpcyBpc3N1ZT8gVGhlIGJ1ZyB3YXNuJ3QgcmVvcGVuZWQ/
DQoNCjIuNi4yIGhhZCBzaHV0ZG93biBpc3N1ZSB3aXRoIHFlbXVhcm0uIFdoaWNoIGlzIGEga25v
d24gaXNzdWUgZm9yIDIuNiByZWxlYXNlIGFuZCBtYXJrZWQgYXMgd29uJ3QgZml4Lg0KQ29ycmVj
dCBidWcgaWQgZm9yIFFlbXUgYXJtIHNodXRkb3duIGlzc3VlIGlzOg0KDQpCdWcgMTI0OTkgLSBb
Mi41IE0xIFJDM10gcWVtdWFybTogZmFpbGVkIHRvIHNodXRkb3duDQpodHRwczovL2J1Z3ppbGxh
LnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTEyNDk5DQoNClRoYW5rcyBmb3IgcG9p
bnRpbmcgb3V0IQ0KDQo+DQo+PiBwdGVzdCBCdWdzOg0KPj4NCj4+IFsxMV0gQnVnIDEzMjU1IC0g
WzIuNyBNMyByYzFdIGx0dG5nLXRvb2xzIHB0ZXN0IGZhY2luZyB0aW1lb3V0IGlzc3VlDQo+PiBo
dHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTEzMjU1DQo+
Pg0KPj4gWzEyXSBCdWcgMTMyNTYgLSBbMi43IE0zIHJjMV0gb3BlbnNzaCBwdGVzdCBmYWNpbmcg
dGltZW91dCBpc3N1ZQ0KPj4gaHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2plY3Qub3JnL3Nob3df
YnVnLmNnaT9pZD0xMzI1Ng0KPj4NCj4+IFsxM10gQnVnIDEzMjc0IC0gWzIuNi4yIFJDM10gc3Ry
YWNlIHB0ZXN0IGZhY2luZyB0aW1lb3V0IGlzc3VlDQo+PiBodHRwczovL2J1Z3ppbGxhLnlvY3Rv
cHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTEzMjc0DQo+DQo+cHRlc3QgaGFzIGJlZW4gYSBi
aXQgdHJpY2t5IGFuZCB3ZSd2ZSBiZWVuIGFjdGl2ZWx5IHdvcmtpbmcgdGhlc2UgYnVncyBvbiBt
YXN0ZXIuDQo+T25jZSB3ZSBoYXZlIHRoZW0gcmVzb2x2ZWQgdGhlcmUgd2UgY2FuIGJhY2twb3J0
IHRvIG9sZGVyIHJlbGVhc2VzLg0KPg0KPlRoZXJlIGlzIG9uZSBvdGhlciBjcml0aWNhbCBpc3N1
ZSB3ZSBoYXZlIHdpdGggMi42LjIgd2hpY2ggaXMgdGhlIHJldmVydCBvZiB0aGUNCj5ib29zdCB1
cGdyYWRlLiBJJ20gdmVyeSByZWx1Y3RhbnQgdG8gcmVsZWFzZSB3aXRob3V0IHRoYXQgcmV2ZXJ0
IGFzIGl0IGNhdXNlZA0KPnByb2JsZW1zIGZvciBhIGxvdCBvZiBwZW9wbGUuDQo+DQo+SSdtIHdv
bmRlcmluZyB3aGV0aGVyIHdlIHNob3VsZCByZWJ1aWxkIDIuNi4yIG9uZSBjb21taXQgbGF0ZXIg
YW5kIHRoZW4NCj5yZWxlYXNlIHRoYXQgYXNzdW1pbmcgaXQgcGFzc2VzIGEgcmVydW4gb2YgdGhl
IGF1dG9tYXRlZCBRQSAoYnV0IG5vdCB0aGUgbWFudWFsDQo+UUEpLiBPcGluaW9ucyBvbiB0aGF0
Pw0KPg0KPkknZCBwcm9wb3NlIGZpeGluZyB0aGUgc3lzdGVtdGFwIGFuZCBwdGVzdCBpc3N1ZXMg
Zm9yIDIuNi4zLg0KPg0KPkNoZWVycywNCj4NCj5SaWNoYXJkDQo+DQo+DQoNCg0KVGhhbmtzICYg
UmVnYXJkcywNClNhbmdlZXRhIEphaW4NCg0K

