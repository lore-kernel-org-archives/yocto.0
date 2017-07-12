Return-Path: <jose.perez.carranza@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21E82E00B28; Wed, 12 Jul 2017 10:03:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAAE8E00ACF
	for <yocto@yoctoproject.org>; Wed, 12 Jul 2017 10:03:16 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Jul 2017 10:03:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,350,1496127600"; d="scan'208";a="124357203"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
	by orsmga005.jf.intel.com with ESMTP; 12 Jul 2017 10:03:14 -0700
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
	FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Wed, 12 Jul 2017 10:03:13 -0700
Received: from fmsmsx101.amr.corp.intel.com ([169.254.1.27]) by
	fmsmsx115.amr.corp.intel.com ([169.254.4.195]) with mapi id
	14.03.0319.002; Wed, 12 Jul 2017 10:03:13 -0700
From: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>
To: Michael Halstead <mhalstead@linuxfoundation.org>, "pidge@toganlabs.com"
	<pidge@toganlabs.com>, "Cruz, Libertad" <libertad.cruz@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Zhao,
	Yi (Wind River)"
	<yi.zhao@windriver.com>, "Graydon, Tracy" <tracy.graydon@intel.com>,
	"Lock, Joshua G" <joshua.g.lock@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Purdie, Richard" <richard.purdie@intel.com>
Thread-Topic: Release Candidate Build for yocto-2.3.1.rc1 now available
Thread-Index: AQHS+y0/TBd9kQXdV0KY5TXaL0D3aKJQarRA
Date: Wed, 12 Jul 2017 17:03:13 +0000
Message-ID: <0A5D9A624DF90343892F8F3FE7DE525A169A5788@fmsmsx101.amr.corp.intel.com>
References: <2e55442b-959f-623b-9056-df8343acf544@linuxfoundation.org>
In-Reply-To: <2e55442b-959f-623b-9056-df8343acf544@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_IC
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTk4ZWFjY2UtMDMxZC00NzM3LWI5NGItODQ1MTlmYWIxMGVlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6Ims2ZmNFR0RFQlJ4R1BEQUFEWkFzRFdFQzBcL3ladnlVSWtna1d5QnlCT1RBPSJ9
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: Release Candidate Build for yocto-2.3.1.rc1 now available
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
X-List-Received-Date: Wed, 12 Jul 2017 17:03:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWljaGFlbA0KDQpZb3Ugc2VudCB0aGUgbWFpbCBmb3IgcmMxIGFuZCB0aGVyZSBpcyBhbiBy
YzIgYXZhaWxhYmxlLCBhY2NvcmRpbmcgdG8gUlAgcmMyIGlzIHRoZSBvbmUgdGhhdCB3aWxsIGJl
IHVzZWQgZm9yIFFBLiANCg0KUmVnYXJkcywNCkpvc8OpDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCkZyb206IE1pY2hhZWwgSGFsc3RlYWQgW21haWx0bzptaGFsc3RlYWRAbGludXhm
b3VuZGF0aW9uLm9yZ10gDQpTZW50OiBXZWRuZXNkYXksIEp1bHkgMTIsIDIwMTcgMTE6MzggQU0N
ClRvOiBwaWRnZUB0b2dhbmxhYnMuY29tOyBQZXJleiBDYXJyYW56YSwgSm9zZSA8am9zZS5wZXJl
ei5jYXJyYW56YUBpbnRlbC5jb20+OyBDcnV6LCBMaWJlcnRhZCA8bGliZXJ0YWQuY3J1ekBpbnRl
bC5jb20+OyBvdGF2aW9Ab3NzeXN0ZW1zLmNvbS5icjsgWmhhbywgWWkgKFdpbmQgUml2ZXIpIDx5
aS56aGFvQHdpbmRyaXZlci5jb20+OyBHcmF5ZG9uLCBUcmFjeSA8dHJhY3kuZ3JheWRvbkBpbnRl
bC5jb20+OyBMb2NrLCBKb3NodWEgRyA8am9zaHVhLmcubG9ja0BpbnRlbC5jb20+OyB5b2N0b0B5
b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZWxlYXNlIENhbmRpZGF0ZSBCdWlsZCBmb3IgeW9j
dG8tMi4zLjEucmMxIG5vdyBhdmFpbGFibGUNCg0KQSByZWxlYXNlIGNhbmRpZGF0ZSBidWlsZCBm
b3IgeW9jdG8tMi4zLjEucmMxIGlzIG5vdyBhdmFpbGFibGUgYXQ6DQoNCg0KICAgIGh0dHBzOi8v
YXV0b2J1aWxkZXIueW9jdG8uaW8vcHViL3JlbGVhc2VzL3lvY3RvLTIuMy4xLnJjMQ0KDQoNClBs
ZWFzZSBiZWdpbiBRQSBvbiB0aGlzIGJ1aWxkIGFzIHNvb24gYXMgcG9zc2libGUuDQoNCg0KQnVp
bGQgaGFzaCBpbmZvcm1hdGlvbjoNCm1ldGEtaW50ZWwgOiAxNmFlYTA5ZDIyNGYzZWQyMDIxNjIz
ZDE3YzNlODA3ZjRiOGZmMThkDQptZXRhLXF0NCA6IGUxMjBhMjE5M2JlMzk4MmQ1NTc0MWZiOWU1
MTQ3MmRiNmFiOWE1Y2QNCnJlZmtpdCA6IGQ4NmVkMzcyZDgzYTkzMGU5ZmUyZWYyMmU4YTRiOThh
MjY5ZDMzZTYNCm1ldGEtbWluZ3cgOiA0YmRiOTk2NTBhMDUzZjI1NGNjZDE1OGE2ZDBjMjVjODBl
NzlmNmVlDQptZXRhLXF0MyA6IGYzM2I3M2E5NTYzZjJkZmRmZDBlZTM3YjYxZDY1ZDkwMTk3YTQ1
NmYNCm1ldGEtZ3BsdjIgOiBkZTAwMWJkNmJmY2VjOTQzZDI3NGI2NDljNjJiZTY4NDhjYzljM2U2
DQpwb2t5IDogYzJlZjMyYWU1ODczNzQ2M2NmMTlhYWI3NDQ2ZDZhMzBhZDgxNzU0Zg0KDQpcblRo
aXMgaXMgYW4gYXV0b21hdGVkIG1lc3NhZ2UgZnJvbVxuVGhlIFlvY3RvIFByb2plY3QgQXV0b2J1
aWxkZXJcbkdpdDoNCmdpdDovL2dpdC55b2N0b3Byb2plY3Qub3JnL3lvY3RvLWF1dG9idWlsZGVy
XG5FbWFpbDogcGlkZ2VAdG9nYW5sYWJzLmNvbSAiIHwgc2VuZG1haWwgLXQgIGluIGRpciAvaG9t
ZS9wb2t5YnVpbGQveW9jdG8tYXV0b2J1aWxkZXIveW9jdG8td29ya2VyL25pZ2h0bHkvYnVpbGQN
Cih0aW1lb3V0IDEwMDAwMCBzZWNzKQ0KIHdhdGNoaW5nIGxvZ2ZpbGVzIHt9DQogYXJndjogZWNo
byAiVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCkNjOiBwaWRnZUB0b2dhbmxhYnMuY29tLCBq
b3NlLnBlcmV6LmNhcnJhbnphQGludGVsLmNvbSwgbGliZXJ0YWQuY3J1ekBpbnRlbC5jb20sIG90
YXZpb0Bvc3N5c3RlbXMuY29tLmJyLCB5aS56aGFvQHdpbmRyaXZlci5jb20sIHRyYWN5LmdyYXlk
b25AaW50ZWwuY29tLCBqb3NodWEuZy5sb2NrQGludGVsLmNvbQ0KU3ViamVjdDogUmVsZWFzZSBD
YW5kaWRhdGUgQnVpbGQgZm9yIHlvY3RvLTIuMy4xLnJjMSBub3cgYXZhaWxhYmxlLg0KDQoNCkEg
cmVsZWFzZSBjYW5kaWRhdGUgYnVpbGQgZm9yIHlvY3RvLTIuMy4xLnJjMSBpcyBub3cgYXZhaWxh
YmxlIGF0Og0KDQoNCiAgICBodHRwczovL2F1dG9idWlsZGVyLnlvY3RvLmlvL3B1Yi9yZWxlYXNl
cy95b2N0by0yLjMuMS5yYzENCg0KDQpQbGVhc2UgYmVnaW4gUUEgb24gdGhpcyBidWlsZCBhcyBz
b29uIGFzIHBvc3NpYmxlLg0KDQoNCkJ1aWxkIGhhc2ggaW5mb3JtYXRpb246DQptZXRhLWludGVs
IDogMTZhZWEwOWQyMjRmM2VkMjAyMTYyM2QxN2MzZTgwN2Y0YjhmZjE4ZA0KbWV0YS1xdDQgOiBl
MTIwYTIxOTNiZTM5ODJkNTU3NDFmYjllNTE0NzJkYjZhYjlhNWNkDQpyZWZraXQgOiBkODZlZDM3
MmQ4M2E5MzBlOWZlMmVmMjJlOGE0Yjk4YTI2OWQzM2U2DQptZXRhLW1pbmd3IDogNGJkYjk5NjUw
YTA1M2YyNTRjY2QxNThhNmQwYzI1YzgwZTc5ZjZlZQ0KbWV0YS1xdDMgOiBmMzNiNzNhOTU2M2Yy
ZGZkZmQwZWUzN2I2MWQ2NWQ5MDE5N2E0NTZmDQptZXRhLWdwbHYyIDogZGUwMDFiZDZiZmNlYzk0
M2QyNzRiNjQ5YzYyYmU2ODQ4Y2M5YzNlNg0KcG9reSA6IGMyZWYzMmFlNTg3Mzc0NjNjZjE5YWFi
NzQ0NmQ2YTMwYWQ4MTc1NGYNCg0KDQotLQ0KTWljaGFlbCBIYWxzdGVhZA0KTGludXggRm91bmRh
dGlvbiAvIFN5c0FkbWluDQo=

