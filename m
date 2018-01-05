Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A185BE0095C; Thu,  4 Jan 2018 16:56:15 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44C6CE008FB
	for <yocto@yoctoproject.org>; Thu,  4 Jan 2018 16:56:13 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Jan 2018 16:56:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,316,1511856000"; d="scan'208";a="192367133"
Received: from kmsmsx153.gar.corp.intel.com ([172.21.73.88])
	by fmsmga005.fm.intel.com with ESMTP; 04 Jan 2018 16:56:11 -0800
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.19]) by
	KMSMSX153.gar.corp.intel.com ([169.254.5.41]) with mapi id
	14.03.0319.002; Fri, 5 Jan 2018 08:54:24 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "Lock, Joshua G" <joshua.g.lock@intel.com>, "pokybuild@debian8.yocto.io"
	<pokybuild@debian8.yocto.io>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: yocto-2.5_M1.rc3 failed at runqemu for x86
Thread-Index: AdOFv7ikKKVMg2TeQ+uuMTEyRSbMUA==
Date: Fri, 5 Jan 2018 00:54:23 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335D9BA05@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZGI2YWYyNzktZWQ4NS00NTQ0LTkyN2YtMzE0NTI5YTY1MzdkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6IjlkQ01leXRmUThnQXF3ZnA0dERxb2tYTWh4K0FmOGt5MFhUOWpTYnJmU0k9In0=
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 08 Jan 2018 02:36:23 -0800
Cc: "Sangal, Apoorv" <apoorv.sangal@intel.com>, "Perez Carranza,
	Jose" <jose.perez.carranza@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
Subject: yocto-2.5_M1.rc3 failed at runqemu for x86
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
X-List-Received-Date: Fri, 05 Jan 2018 00:56:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSm9zaHVhLA0KDQpJIG5vdGljZWQgZm9yIDIuNSBNMSByYzMsIG5pZ2h0bHkteDg2IGZhaWxl
ZCBkdXJpbmcgdGVzdGltYWdlIChTYW5pdHkgVGVzdCksIGR1ZSB0byBydW5xZW11IGVycm9yLiBJ
cyB0aGlzIGV4cGVjdGVkPyBTaGFsbCBRQSBtb3ZlIG9uIHRvIGluaXRpYWxpemUgdGhlIFFBIGZv
ciB0aGlzIHJjMz8NCg0KVGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgeW91ciBhdHRlbnRpb24gYW5k
IGhlbHAhDQoNClRoYW5rcywNClllb2ggRWUgUGVuZyANCg0KaHR0cHM6Ly9hdXRvYnVpbGRlci55
b2N0by5pby9idWlsZGVycy9uaWdodGx5LXg4Ni9idWlsZHMvNzAzDQoNCkVSUk9SOiBjb3JlLWlt
YWdlLXNhdG8tc2RrLTEuMC1yMCBkb190ZXN0aW1hZ2U6IFFlbXUgcGlkIGRpZG4ndCBhcHBlYXIg
aW4gMTIwIHNlY29uZHMgKDAxLzA0LzE4IDE3OjU0OjQ1KQ0KRVJST1I6IGNvcmUtaW1hZ2Utc2F0
by0xLjAtcjAgZG9fdGVzdGltYWdlOiBRZW11IHBpZCBkaWRuJ3QgYXBwZWFyIGluIDEyMCBzZWNv
bmRzICgwMS8wNC8xOCAxNzo1NDo0NSkNCldBUk5JTkc6IGNvcmUtaW1hZ2Utc2F0by1zZGstMS4w
LXIwIGRvX3Rlc3RpbWFnZTogUWVtdSBlbmRlZCB1bmV4cGVjdGVkbHksIGR1bXAgZGF0YSBmcm9t
IGhvc3QgaXMgaW4gL3RtcC9vZS1zYXZlZC10ZXN0cy8yMDE4MDEwNDE3NTRfcWVtdQ0KV0FSTklO
RzogY29yZS1pbWFnZS1zYXRvLTEuMC1yMCBkb190ZXN0aW1hZ2U6IFFlbXUgZW5kZWQgdW5leHBl
Y3RlZGx5LCBkdW1wIGRhdGEgZnJvbSBob3N0IGlzIGluIC90bXAvb2Utc2F2ZWQtdGVzdHMvMjAx
ODAxMDQxNzU0X3FlbXUNCkVSUk9SOiBjb3JlLWltYWdlLXNhdG8tc2RrLTEuMC1yMCBkb190ZXN0
aW1hZ2U6IE91dHB1dCBmcm9tIHJ1bnFlbXU6DQpydW5xZW11IC0gSU5GTyAtIENvbnRpbnVpbmcg
d2l0aCB0aGUgZm9sbG93aW5nIHBhcmFtZXRlcnM6DQoNCnJ1bnFlbXUgLSBJTkZPIC0gQWNxdWly
aW5nIGxvY2tmaWxlIC90bXAvcWVtdS10YXAtbG9ja3MvdGFwMC5sb2NrIGZhaWxlZDogW0Vycm5v
IDExXSBSZXNvdXJjZSB0ZW1wb3JhcmlseSB1bmF2YWlsYWJsZQ0KcnVucWVtdSAtIElORk8gLSBB
Y3F1aXJpbmcgbG9ja2ZpbGUgL3RtcC9xZW11LXRhcC1sb2Nrcy90YXAxLmxvY2sgZmFpbGVkOiBb
RXJybm8gMTFdIFJlc291cmNlIHRlbXBvcmFyaWx5IHVuYXZhaWxhYmxlDQpydW5xZW11IC0gSU5G
TyAtIFVzaW5nIHByZWNvbmZpZ3VyZWQgdGFwIGRldmljZSB0YXAyDQpydW5xZW11IC0gSU5GTyAt
IElmIHRoaXMgaXMgbm90IGludGVuZGVkLCB0b3VjaCAvdG1wL3FlbXUtdGFwLWxvY2tzL3RhcDIu
c2tpcCB0byBtYWtlIHJ1bnFlbXUgc2tpcCB0YXAyLg0KcnVucWVtdSAtIElORk8gLSBOZXR3b3Jr
IGNvbmZpZ3VyYXRpb246IDE5Mi4xNjguNy42OjoxOTIuMTY4LjcuNToyNTUuMjU1LjI1NS4wDQpy
dW5xZW11IC0gSU5GTyAtIFJ1bm5pbmcgL2hvbWUvcG9reWJ1aWxkL3lvY3RvLWF1dG9idWlsZGVy
L3lvY3RvLXdvcmtlci9uaWdodGx5LXg4Ni9idWlsZC9idWlsZC90bXAvd29yay94ODZfNjQtbGlu
dXgvcWVtdS1oZWxwZXItbmF0aXZlLzEuMC1yMS9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jp
bi9xZW11LXN5c3RlbS1pMzg2IC1kZXZpY2UgdmlydGlvLW5ldC1wY2ksbmV0ZGV2PW5ldDAsbWFj
PTUyOjU0OjAwOjEyOjM0OjA2IC1uZXRkZXYgdGFwLGlkPW5ldDAsaWZuYW1lPXRhcDIsc2NyaXB0
PW5vLGRvd25zY3JpcHQ9bm8gLWRyaXZlIGZpbGU9L2hvbWUvcG9reWJ1aWxkL3lvY3RvLWF1dG9i
dWlsZGVyL3lvY3RvLXdvcmtlci9uaWdodGx5LXg4Ni9idWlsZC9idWlsZC90bXAvZGVwbG95L2lt
YWdlcy9xZW11eDg2L2NvcmUtaW1hZ2Utc2F0by1zZGstcWVtdXg4Ni5leHQ0LGlmPXZpcnRpbyxm
b3JtYXQ9cmF3IC12Z2Egdm13YXJlIC1zaG93LWN1cnNvciAtdXNiIC1kZXZpY2UgdXNiLXRhYmxl
dCAtZGV2aWNlIHZpcnRpby1ybmctcGNpICAtc2VyaWFsIHRjcDoxMjcuMC4wLjE6NTcwMzMgLXBp
ZGZpbGUgcGlkZmlsZV8zMjgzMyAgLWNwdSBwZW50aXVtMiAtZW5hYmxlLWt2bSAtbSAyNTYgLXNl
cmlhbCB0Y3A6MTI3LjAuMC4xOjMzOTk5IC1zbmFwc2hvdCAta2VybmVsIC9ob21lL3Bva3lidWls
ZC95b2N0by1hdXRvYnVpbGRlci95b2N0by13b3JrZXIvbmlnaHRseS14ODYvYnVpbGQvYnVpbGQv
dG1wL2RlcGxveS9pbWFnZXMvcWVtdXg4Ni9iekltYWdlLS00LjEyLjE4K2dpdDArYjY2YTRmOTcz
MF81NThmZTg0ZDY5LXIwLjItcWVtdXg4Ni0yMDE4MDEwMjE3NDY1OC5iaW4gLWFwcGVuZCAncm9v
dD0vZGV2L3ZkYSBydyBoaWdocmVzPW9mZiAgY2xvY2tzb3VyY2U9a3ZtLWNsb2NrIGhwZXQ9ZGlz
YWJsZSBub2FwaWMgbm9sYXBpYyBtZW09MjU2TSBpcD0xOTIuMTY4LjcuNjo6MTkyLjE2OC43LjU6
MjU1LjI1NS4yNTUuMCB2Z2E9MCB1dmVzYWZiLm1vZGVfb3B0aW9uPTY0MHg0ODAtMzIgb3Byb2Zp
bGUudGltZXI9MSB1dmVzYWZiLnRhc2tfdGltZW91dD0tMSBjb25zb2xlPXR0eTEgY29uc29sZT10
dHlTMCwxMTUyMDBuOCBwcmludGsudGltZT0xJw0KDQpydW5xZW11IC0gRVJST1IgLSBGYWlsZWQg
dG8gcnVuIHFlbXU6IGlvY3RsKEtWTV9DUkVBVEVfVk0pIGZhaWxlZDogMTIgQ2Fubm90IGFsbG9j
YXRlIG1lbW9yeQ0KcWVtdS1zeXN0ZW0taTM4NjogZmFpbGVkIHRvIGluaXRpYWxpemUgS1ZNOiBD
YW5ub3QgYWxsb2NhdGUgbWVtb3J5DQoNCg0KDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQpGcm9tOiBMb2NrLCBKb3NodWEgRyANClNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDQsIDIwMTgg
MTE6NDIgUE0NClRvOiBwb2t5YnVpbGRAZGViaWFuOC55b2N0by5pbzsgeW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZw0KQ2M6IHBpZGdlQHRvZ2FubGFicy5jb207IFBlcmV6IENhcnJhbnphLCBKb3NlIDxq
b3NlLnBlcmV6LmNhcnJhbnphQGludGVsLmNvbT47IENydXosIExpYmVydGFkIDxsaWJlcnRhZC5j
cnV6QGludGVsLmNvbT47IG90YXZpb0Bvc3N5c3RlbXMuY29tLmJyOyBaaGFvLCBZaSAoV2luZCBS
aXZlcikgPHlpLnpoYW9Ad2luZHJpdmVyLmNvbT47IEdyYXlkb24sIFRyYWN5IDx0cmFjeS5ncmF5
ZG9uQGludGVsLmNvbT47IFNhbmdhbCwgQXBvb3J2IDxhcG9vcnYuc2FuZ2FsQGludGVsLmNvbT47
IFllb2gsIEVlIFBlbmcgPGVlLnBlbmcueWVvaEBpbnRlbC5jb20+OyBDaGFuLCBBYXJvbiBDaHVu
IFlldyA8YWFyb24uY2h1bi55ZXcuY2hhbkBpbnRlbC5jb20+OyBDaGFuZywgUmViZWNjYSBTd2Vl
IEZ1biA8cmViZWNjYS5zd2VlLmZ1bi5jaGFuZ0BpbnRlbC5jb20+OyBBbmcsIENoaW4gSHVhdCA8
Y2hpbi5odWF0LmFuZ0BpbnRlbC5jb20+DQpTdWJqZWN0OiBSZTogUmVsZWFzZSBDYW5kaWRhdGUg
QnVpbGQgZm9yIHlvY3RvLTIuNV9NMS5yYzIgbm93IGF2YWlsYWJsZS4NCg0KVGhpcyBidWlsZCBo
YWQgYSBjb3VwbGUgb2YgZmFpbHVyZXMsIEknbSBnb2luZyB0byBzcGluIGFub3RoZXIgcmMuDQoN
ClFBOiBwbGVhc2UgZG9uJ3QgdGFrZSBhbnkgYWN0aW9uIHdpdGggdGhpcyBidWlsZC4NCg0KSm9z
aHVhDQoNCk9uIDA0LzAxLzE4IDE1OjM1LCBwb2t5YnVpbGRAZGViaWFuOC55b2N0by5pbyB3cm90
ZToNCj4gDQo+IEEgcmVsZWFzZSBjYW5kaWRhdGUgYnVpbGQgZm9yIHlvY3RvLTIuNV9NMS5yYzIg
aXMgbm93IGF2YWlsYWJsZSBhdDoNCj4gDQo+IA0KPiAgICAgIGh0dHBzOi8vYXV0b2J1aWxkZXIu
eW9jdG8uaW8vcHViL3JlbGVhc2VzL3lvY3RvLTIuNV9NMS5yYzINCj4gDQo+IA0KPiBQbGVhc2Ug
YmVnaW4gUUEgb24gdGhpcyBidWlsZCBhcyBzb29uIGFzIHBvc3NpYmxlLg0KPiANCj4gDQo+IEJ1
aWxkIGhhc2ggaW5mb3JtYXRpb246DQo+IG1ldGEtaW50ZWwgOiAxNTgwOTEzNjc0YmM4NGM4ZTZj
MTBjZjg1NWRiZjM4ZDJlZThmM2QyDQo+IG1ldGEtcXQ0IDogZjMxM2RiZWUyYWMzZDVmY2M5ODAx
NDA3OTQ3ZDNjYjZjZmI5MGI1ZA0KPiBtZXRhLW1pbmd3IDogYTJjNWZiODJlNTU5NWQ1YmI1NmI1
NzliN2M5MzE0N2M0ZmIwNjVhNQ0KPiBtZXRhLXF0MyA6IGYzM2I3M2E5NTYzZjJkZmRmZDBlZTM3
YjYxZDY1ZDkwMTk3YTQ1NmYNCj4gbWV0YS1ncGx2MiA6IGEwZjg3MTZkMDczMjRlOTQ1ZjA0NjJi
ODJmOTMwOWZhMDkzNGFmMTcNCj4gcG9reSA6IDhmNDM2YWY5NDY0OGM4YzE0MjQ0YjcxMTgzZTdk
YTVmNmNkMDk4MTMNCj4gDQo+IA0KPiBUaGlzIGlzIGFuIGF1dG9tYXRlZCBtZXNzYWdlIGZyb20N
Cj4gVGhlIFlvY3RvIFByb2plY3QgQXV0b2J1aWxkZXINCj4gR2l0OiBnaXQ6Ly9naXQueW9jdG9w
cm9qZWN0Lm9yZy95b2N0by1hdXRvYnVpbGRlcg0KPiBFbWFpbDogam9zaHVhLmcubG9ja0BpbnRl
bC5jb20NCj4gDQo=

