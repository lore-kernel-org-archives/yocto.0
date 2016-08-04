Return-Path: <anil.k.kumar@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0160BE00CFC; Thu,  4 Aug 2016 08:52:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC0AFE00A07;
	Thu,  4 Aug 2016 08:52:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 04 Aug 2016 08:52:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,470,1464678000"; d="scan'208";a="1035125684"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
	by fmsmga002.fm.intel.com with ESMTP; 04 Aug 2016 08:52:12 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
	FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Thu, 4 Aug 2016 08:52:12 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.214]) by
	FMSMSX155.amr.corp.intel.com ([169.254.5.160]) with mapi id
	14.03.0248.002; Thu, 4 Aug 2016 08:52:11 -0700
From: "Kumar, Anil K" <anil.k.kumar@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>, Felipe Balbi
	<felipe.balbi@linux.intel.com>, "Ashfield, Bruce (Wind River)"
	<bruce.ashfield@windriver.com>, "linux-yocto@yoctoproject.org"
	<linux-yocto@yoctoproject.org>, "bruce.ashfield@gmail.com"
	<bruce.ashfield@gmail.com>
Thread-Topic: [GIT PULL | BXT-REBASE] USB Perihperal RTPM fixes
Thread-Index: AQHR7kQ4EbNsl2FveUu7H5hqlJk336A43vuwgACHHQD//41U4A==
Date: Thu, 4 Aug 2016 15:52:11 +0000
Message-ID: <97161206A1AC0C4498663F483150B6F155245940@fmsmsx117.amr.corp.intel.com>
References: <87lh0cu5s2.fsf@linux.intel.com>
	<97161206A1AC0C4498663F483150B6F1552453C3@fmsmsx117.amr.corp.intel.com>
	<1470325278.3175.351.camel@intel.com>
In-Reply-To: <1470325278.3175.351.camel@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 04 Aug 2016 08:57:37 -0700
Cc: "Hart, Patrick J" <patrick.j.hart@intel.com>, "Renganathan,
	Prabu" <prabu.renganathan@intel.com>, "Ponnusamy,
	Siva Prasath" <siva.prasath.ponnusamy@intel.com>, "Svahn,
	Kai" <kai.svahn@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Leblanc,
	Darrell" <darrell.leblanc@intel.com>
Subject: Re: [GIT PULL | BXT-REBASE] USB Perihperal RTPM fixes
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
X-List-Received-Date: Thu, 04 Aug 2016 15:52:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCkFuaWwgSyBLdW1hciwgUGhEDQpQcmluY2lwYWwgRW5naW5lZXINCkxlYWQgU3lzdGVtIEFy
Y2hpdGVjdA0KTWFrZXJzICYgSW5ub3ZhdG9ycyBHcm91cCAoTUlHKSAvIE5ldyBUZWNobm9sb2d5
IEdyb3VwIChOVEcpDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFdvbGQs
IFNhdWwgDQpTZW50OiBUaHVyc2RheSwgQXVndXN0IDQsIDIwMTYgODo0MSBBTQ0KVG86IEt1bWFy
LCBBbmlsIEsgPGFuaWwuay5rdW1hckBpbnRlbC5jb20+OyBGZWxpcGUgQmFsYmkgPGZlbGlwZS5i
YWxiaUBsaW51eC5pbnRlbC5jb20+OyBBc2hmaWVsZCwgQnJ1Y2UgKFdpbmQgUml2ZXIpIDxicnVj
ZS5hc2hmaWVsZEB3aW5kcml2ZXIuY29tPg0KQ2M6IFJlbmdhbmF0aGFuLCBQcmFidSA8cHJhYnUu
cmVuZ2FuYXRoYW5AaW50ZWwuY29tPjsgU3ZhaG4sIEthaSA8a2FpLnN2YWhuQGludGVsLmNvbT47
IFBvbm51c2FteSwgU2l2YSBQcmFzYXRoIDxzaXZhLnByYXNhdGgucG9ubnVzYW15QGludGVsLmNv
bT47IEhhcnQsIFBhdHJpY2sgSiA8cGF0cmljay5qLmhhcnRAaW50ZWwuY29tPjsgTGVibGFuYywg
RGFycmVsbCA8ZGFycmVsbC5sZWJsYW5jQGludGVsLmNvbT47IHlvY3RvQHlvY3RvcHJvamVjdC5v
cmcNClN1YmplY3Q6IFJlOiBbR0lUIFBVTEwgfCBCWFQtUkVCQVNFXSBVU0IgUGVyaWhwZXJhbCBS
VFBNIGZpeGVzDQoNCg0KVGhlc2UgcmVxdWVzdHMgbmVlZCB0byBnbyB0byB0aGUgbGludXgteW9j
dG9AeW9jdG9wcm9qZWN0Lm9yZ8KgbGlzdC4NCsKgVGhpcyBpcyBwYXJ0IG9mIHRoZSBvcGVuIHNv
dXJjZSBwcm9jZXNzIGFuZCBuZWVkcyB0byBiZSBmb2xsb3dlZCBmb3IgdHJhbnNwYXJlbmN5Lg0K
DQpTZW5kaW5nIGl0IHRvIG1lIG9yIGRpcmVjdGx5IHRvIEJydWNlIHdpbGwgbm90IHdvcmsuDQoN
CkFsc28sIHBsZWFzZSB1bmRlcnN0YW5kIHRoYXQgQnJ1Y2UgaXMgb24gdmFjYXRpb24gdGhpcyB3
ZWVrLCBoZSB3aWxsIG1lcmdlIHRoaW5ncyB0aW1lIHBlcm1pdHRpbmcsIGJ1dCBoaXMgZ21haWwg
ZW1haWwgbXVzdCBhbHNvIGJlIENDJ2VkIG90aGVyd2lzZSBoZSBtYXkgbm90IHNlZSBpdC4gKGJy
dWNlLmFzaGZpZWxkQGdtYWlsLmNvbSkuDQoNCg0KU2F1IQ0KDQoNCk9uIFRodSwgMjAxNi0wOC0w
NCBhdCAwNzozNyAtMDcwMCwgS3VtYXIsIEFuaWwgSyB3cm90ZToNCj4gKyBTYXVsDQo+IA0KPiBB
bmlsIEsgS3VtYXIsIFBoRA0KPiBQcmluY2lwYWwgRW5naW5lZXINCj4gTGVhZCBTeXN0ZW0gQXJj
aGl0ZWN0DQo+IE1ha2VycyAmIElubm92YXRvcnMgR3JvdXAgKE1JRykgLyBOZXcgVGVjaG5vbG9n
eSBHcm91cCAoTlRHKQ0KPiANCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZy
b206IEZlbGlwZSBCYWxiaSBbbWFpbHRvOmZlbGlwZS5iYWxiaUBsaW51eC5pbnRlbC5jb21dDQo+
IFNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgNCwgMjAxNiA0OjM0IEFNDQo+IFRvOiBBc2hmaWVsZCwg
QnJ1Y2UgKFdpbmQgUml2ZXIpIDxicnVjZS5hc2hmaWVsZEB3aW5kcml2ZXIuY29tPg0KPiBDYzog
S3VtYXIsIEFuaWwgSyA8YW5pbC5rLmt1bWFyQGludGVsLmNvbT47IFJlbmdhbmF0aGFuLCBQcmFi
dSA8cHJhYnUgDQo+IC5yZW5nYW5hdGhhbkBpbnRlbC5jb20+OyBTdmFobiwgS2FpIDxrYWkuc3Zh
aG5AaW50ZWwuY29tPjsgUG9ubnVzYW15LCANCj4gU2l2YSBQcmFzYXRoIDxzaXZhLnByYXNhdGgu
cG9ubnVzYW15QGludGVsLmNvbT47IEhhcnQsIFBhdHJpY2sgSiA8cGF0IA0KPiByaWNrLmouaGFy
dEBpbnRlbC5jb20+OyBMZWJsYW5jLCBEYXJyZWxsIDxkYXJyZWxsLmxlYmxhbmNAaW50ZWwuY29t
PjsgDQo+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogW0dJVCBQVUxMIHwgQlhU
LVJFQkFTRV0gVVNCIFBlcmlocGVyYWwgUlRQTSBmaXhlcw0KPiANCj4gDQo+IEhpIEJydWNlLA0K
PiANCj4gcGxlYXNlIHB1bGwgZm9sbG93aW5nIGJyYW5jaCBhbmQgYXBwbHkgb24gdG9wIG9mIGJ4
dC1yZWJhc2UuIEl0IGZpeGVzIA0KPiBhIGZldyBpc3N1ZXMgd2l0aCBydW50aW1lIFBNIHdpdGgg
ZHJpdmVycy91c2IvZHdjMy8NCj4gDQo+IEJlc3QNCj4gDQo+IFRoZSBmb2xsb3dpbmcgY2hhbmdl
cyBzaW5jZSBjb21taXQNCj4gMTdhMTY0M2U3MDMxODMxNmM0Y2QyNzVkMWMxZjI1MmQwYTk3ZjQ2
ZjoNCj4gDQo+IMKgIE1lcmdlIGJyYW5jaCAnc3RhbmRhcmQvaW50ZWwvYmFzZScgaW50byBzdGFu
ZGFyZC9pbnRlbC9ieHQtcmViYXNlDQo+ICgyMDE2LTA3LTI1IDIzOjU2OjUzIC0wNDAwKQ0KPiAN
Cj4gYXJlIGF2YWlsYWJsZSBpbiB0aGUgZ2l0IHJlcG9zaXRvcnkgYXQ6DQo+IA0KPiDCoCBnaXQ6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYmFsYmkvdXNiLmdpdCBi
eHQtIA0KPiB0ZXN0aW5nLXBtDQo+IA0KPiBmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8N
Cj4gZmVhMGU1NTQxOTI3MmQ2MTg1YzFkMTlhMWE1Yjg5ZTA1NDVjYmMzOToNCj4gDQo+IMKgIHVz
YjogZHdjMzogcGNpOiBjYWxsIF9EU00gZm9yIHN1c3BlbmQvcmVzdW1lICgyMDE2LTA4LTA0IDA5
OjM1OjQ0DQo+ICswMzAwKQ0KPiANCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiBGZWxpcGUgQmFsYmkgKDUpOg0KPiDC
oMKgwqDCoMKgwqB1c2I6IGR3YzM6IHBjaTogcnVudGltZV9yZXN1bWUgY2hpbGQgZGV2aWNlDQo+
IMKgwqDCoMKgwqDCoHVzYjogZHdjMzogY29yZTogYWxsb3cgZGV2aWNlIHRvIHJ1bnRpbWVfc3Vz
cGVuZCBzZXZlcmFsIHRpbWVzDQo+IMKgwqDCoMKgwqDCoHVzYjogZHdjMzogZ2FkZ2V0OiBpbmNy
ZW1lbnQgcmVxdWVzdC0+YWN0dWFsIG9uY2UNCj4gwqDCoMKgwqDCoMKgdXNiOiBkd2MzOiBtYWtl
IHN1cmUgVVhfRVhJVF9QWCBpcyBjbGVhcmVkDQo+IMKgwqDCoMKgwqDCoHVzYjogZHdjMzogcGNp
OiBjYWxsIF9EU00gZm9yIHN1c3BlbmQvcmVzdW1lDQo+IA0KPiDCoGRyaXZlcnMvdXNiL2R3YzMv
Y29yZS5jwqDCoMKgwqDCoHzCoMKgwqA3ICsrKw0KPiDCoGRyaXZlcnMvdXNiL2R3YzMvY29yZS5o
wqDCoMKgwqDCoHzCoMKgwqAxICsNCj4gwqBkcml2ZXJzL3VzYi9kd2MzL2R3YzMtcGNpLmMgfCAx
MDUNCj4gKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0NCj4gwqBk
cml2ZXJzL3VzYi9kd2MzL2dhZGdldC5jwqDCoMKgfMKgwqAxOSArKysrLS0tLQ0KPiDCoDQgZmls
ZXMgY2hhbmdlZCwgMTA3IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQ0KPiANCj4gDQo+
IC0tDQo+IGJhbGJpDQo=

