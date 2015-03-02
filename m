Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA6DCE00810; Mon,  2 Mar 2015 11:43:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C7D9E00404
	for <yocto@yoctoproject.org>; Mon,  2 Mar 2015 11:43:08 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 02 Mar 2015 11:43:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,677,1418112000"; d="scan'208";a="535026228"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga003.jf.intel.com with ESMTP; 02 Mar 2015 11:43:10 -0800
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 2 Mar 2015 11:43:07 -0800
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.137]) by
	ORSMSX111.amr.corp.intel.com ([169.254.11.231]) with mapi id
	14.03.0195.001; Mon, 2 Mar 2015 11:43:06 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Minchev, Todor" <todor.minchev@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: merging eclipse-poky-juno & eclipse-poky-kepler
Thread-Index: AQHQUC6QbZX3Uj3OIUGCcBEQsHloQ50JoQpg
Date: Mon, 2 Mar 2015 19:43:06 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EB9C39@ORSMSX106.amr.corp.intel.com>
References: <1424781412.17975.20.camel@intel.com>
In-Reply-To: <1424781412.17975.20.camel@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: merging eclipse-poky-juno & eclipse-poky-kepler
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
X-List-Received-Date: Mon, 02 Mar 2015 19:43:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VG9kb3IgYW5kIEJldGgsIA0KDQpJIHVwZGF0ZWQgdGhlIHNlY3Rpb24gaW4gdGhlIGRldi1tYW51
YWwgdGhhdCBwcm92aWRlcyB0aGUgc3RlcHMgZm9yIGluc3RhbGxpbmcgdGhlIHBsdWctaW4gZnJv
bSB0aGUgbGF0ZXN0IHNvdXJjZSBjb2RlLiAgSSBuZWVkIHZlcmlmaWNhdGlvbiBpZiB0aGlzIHNl
Y3Rpb24gaXMgdGVjaG5pY2FsbHkgY29ycmVjdCBub3cuICBTZWUgaHR0cDovL3d3dy55b2N0b3By
b2plY3Qub3JnL2RvY3MvMS44L2Rldi1tYW51YWwvZGV2LW1hbnVhbC5odG1sI3ppcC1maWxlLW1l
dGhvZC4NCg0KVGhhbmtzLCANClNjb3R0DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
PkZyb206IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLQ0KPmJv
dW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10gT24gQmVoYWxmIE9mIE1pbmNoZXYsIFRvZG9yDQo+U2Vu
dDogVHVlc2RheSwgRmVicnVhcnkgMjQsIDIwMTUgNDozNyBBTQ0KPlRvOiB5b2N0b0B5b2N0b3By
b2plY3Qub3JnDQo+U3ViamVjdDogW3lvY3RvXSBtZXJnaW5nIGVjbGlwc2UtcG9reS1qdW5vICYg
ZWNsaXBzZS1wb2t5LWtlcGxlcg0KPg0KPkkganVzdCB3YW50ZWQgdG8gY2hlY2sgaWYgYW55b25l
IGlzIHVzaW5nIHRoZSBZb2N0byBBRFQgRWNsaXBzZSBwbHVnLWluIGZyb20gdGhlDQo+ZWNsaXBz
ZS1wb2t5IHJlcG8gaGVyZToNCj4NCj5odHRwOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvY2dpdC9j
Z2l0LmNnaS9lY2xpcHNlLXBva3kvDQo+DQo+VGhpcyByZXBvIGhhc24ndCBiZWVuIG1haW50YWlu
ZWQgZm9yIGEgY291cGxlIG9mIHllYXJzLiBUaGUgbW9zdCB1cC10by1kYXRlDQo+Y29kZSBmb3Ig
dGhlIEFEVCBwbHVnLWluIGZvciBFY2xpcHNlIEp1bm8gJiBLZXBsZXIgY2FuIGJlIGZvdW5kIGlu
IHRoZXNlIHR3bw0KPnJlcG9zLg0KPg0KPmh0dHA6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0
L2NnaXQuY2dpL2VjbGlwc2UtcG9reS1qdW5vLw0KPmh0dHA6Ly9naXQueW9jdG9wcm9qZWN0Lm9y
Zy9jZ2l0L2NnaXQuY2dpL2VjbGlwc2UtcG9reS1rZXBsZXIvDQo+DQo+V2UgaGF2ZSBkZWNpZGVk
IHRvIG1lcmdlIHRoZSB0d28gcmVwb3MgYWJvdmUgYW5kIG1haW50YWluIHRoZSBwbHVnLWluDQo+
dW5kZXIgdGhlIG9yaWdpbmFsIGVjbGlwc2UtcG9reSByZXBvIGZvciBhbGwgdmVyc2lvbnMgb2Yg
RWNsaXBzZS4NCj4NCj5JbiBvdGhlciB3b3Jkcywgd2UgYXJlIHBsYW5uaW5nIHRvIG92ZXJ3cml0
ZSBlY2xpcHNlLXBva3kgd2l0aCB0aGUgbWVyZ2UNCj5yZXN1bHQgZnJvbSBlY2xpcHNlLXBva3kt
anVubyBhbmQgZWNsaXBzZS1wb2t5LWtlcGxlci4NCj4NCj5JIGFtIHBsYW5uaW5nIHRvIGRvIHRo
aXMgb24gRnJpZGF5LCAyNyBGZWIgMjAxNS4gSWYgYW55b25lIGhhcyBhbnkgb2JqZWN0aW9ucw0K
PnBsZWFzZSBsZXQgbWUga25vdyBiZWZvcmUgdGhlbi4NCj4NCj5UaGFua3MsDQo+VG9kb3INCj4N
Cg0K

