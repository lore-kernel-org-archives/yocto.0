Return-Path: <nectar.kirkiris@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E11ADE00E43; Wed, 11 Jul 2018 09:39:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AA97E00E18
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 09:39:35 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Jul 2018 09:39:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,338,1526367600"; d="scan'208";a="55755615"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by orsmga007.jf.intel.com with ESMTP; 11 Jul 2018 09:39:34 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
	ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Wed, 11 Jul 2018 09:39:34 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.85]) by
	ORSMSX159.amr.corp.intel.com ([169.254.11.31]) with mapi id
	14.03.0319.002; Wed, 11 Jul 2018 09:39:33 -0700
From: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Jolley,
	Stephen K" <stephen.k.jolley@intel.com>, 
	"Eggleton, Paul" <paul.eggleton@intel.com>
Thread-Topic: QA cycle report for 2.3.4 RC1
Thread-Index: AdQYFM15jqq6V4xRQ8SWy9QoEbx81gBP+oyAAAfC8NA=
Date: Wed, 11 Jul 2018 16:39:33 +0000
Message-ID: <F76A3524AF85D345AD0CCA3E70E13D04936A9A97@ORSMSX106.amr.corp.intel.com>
References: <9DDD2658D1FE414E99172D2DB1E4D04335E7F876@PGSMSX109.gar.corp.intel.com>
	<f9f8617f880d57694c54585dcbb3c9737e509ceb.camel@linuxfoundation.org>
In-Reply-To: <f9f8617f880d57694c54585dcbb3c9737e509ceb.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzRjYmRmNTEtYzUzZi00NDQwLWE1NmMtNWNkMTlhM2QxMmIxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiIrYk0ydzhwQUZjTTlqdUhpVTMzWW4wemVIZHI2bEZUNHFsZmRRd0p6ejdtVmZBMWt0bXJHd0V3VzJ5VVVZazFXIn0=
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 11 Jul 2018 10:03:43 -0700
Subject: Re: QA cycle report for 2.3.4 RC1
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
X-List-Received-Date: Wed, 11 Jul 2018 16:39:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

KzEgdG8gcmVsZWFzZSBmcm9tIHRoZSBJbnRlbCBzaWRlIGFzIHdlbGwuDQoNCk5lY3Rhcg0KDQot
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogcmljaGFyZC5wdXJkaWVAbGludXhmb3Vu
ZGF0aW9uLm9yZyBbbWFpbHRvOnJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmddIA0K
U2VudDogV2VkbmVzZGF5LCBKdWx5IDExLCAyMDE4IDY6MjEgQU0NClRvOiBZZW9oLCBFZSBQZW5n
IDxlZS5wZW5nLnllb2hAaW50ZWwuY29tPjsgJ3lvY3RvQHlvY3RvcHJvamVjdC5vcmcnIDx5b2N0
b0B5b2N0b3Byb2plY3Qub3JnPjsgSm9sbGV5LCBTdGVwaGVuIEsgPHN0ZXBoZW4uay5qb2xsZXlA
aW50ZWwuY29tPjsgRWdnbGV0b24sIFBhdWwgPHBhdWwuZWdnbGV0b25AaW50ZWwuY29tPg0KQ2M6
IFNhbmdhbCwgQXBvb3J2IDxhcG9vcnYuc2FuZ2FsQGludGVsLmNvbT47IEtpcmtpcmlzLCBOZWN0
YXIgPG5lY3Rhci5raXJraXJpc0BpbnRlbC5jb20+DQpTdWJqZWN0OiBSZTogUUEgY3ljbGUgcmVw
b3J0IGZvciAyLjMuNCBSQzENCg0KT24gVHVlLCAyMDE4LTA3LTEwIGF0IDA2OjExICswMDAwLCBZ
ZW9oLCBFZSBQZW5nIHdyb3RlOg0KPiBUaGlzIGlzIHRoZSBmdWxsIHJlcG9ydCBmb3IgMi4zLjQu
cmMxOiANCj4gaHR0cHM6Ly93aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9XVzI1Xy1fMjAxOC0w
Ni0yMi1fRnVsbF9UZXN0X0N5Y2xlDQo+IF8tXzIuMy40X3JjMQ0KPiAgDQo+ID09PT09PT0gU3Vt
bWFyeSA9PT09PT09PQ0KPiAgDQo+IEFsbCBwbGFubmVkIHRlc3RzIHdlcmUgZXhlY3V0ZWQuICBU
aGVyZSB3ZXJlIHplcm8gaGlnaCBtaWxlc3RvbmUgDQo+IGRlZmVjdC4gIFRlYW0gaGFkIGZvdW5k
IDMgbmV3IGRlZmVjdHMgd2hlcmUgeW9jdG8tYnNwIGZhaWxlZCB0byBjcmVhdGUgDQo+IGJvb3Rh
YmxlIGltYWdlIHdpdGggbmV3IGJzcCBsYXllciBbMV0sIFFFTVUgZW5kZWQgdW5leHBlY3RlZGx5
IGR1cmluZyANCj4gZG9fdGVzdGltYWdlOmNvcmUtaW1hZ2UtbHNiLXNkayBbMl0sICYgdmFsZ3Jp
bmQgcHRlc3QgcGFzc2VkIGluIA0KPiAyLjMuMy5yYzEgZmFpbGVkIGF0IGN1cnJlbnQgcmVsZWFz
ZSBbM10uDQo+ICANCj4gPT09PT09PSBRQS1IaW50cz09PT09PT09DQo+ICANCj4gRm91bmQgMyBu
b24gY3JpdGljYWwgZGVmZWN0cy4gDQo+ICANCj4gPT09PT09PSBCdWdzID09PT09PT09DQoNClRo
YW5rcyBmb3IgdGhpcyBFZSBQZW5nIGFuZCB0ZWFtIQ0KDQo+IE5ldyBCdWdzDQo+IFsxXSBCdWcg
MTI4NDYgLSBbUUEgMi4zLjRyYzFdW01ldGEtWW9jdG9dW0Nhc2UgMzA5LCBDYXNlIDMxMF06IEFm
dGVyIA0KPiBjcmVhdGluZyBCU1AgbGF5ZXIgdXNpbmcgeW9jdG8tYnNwLCB0aGUgaW1hZ2UgY3Jl
YXRlZCBub3QgYWJsZSB0byBib290IA0KPiB1cCBhcyBsb2NhbCB2YXJpYWJsZSAncWJzeXMnIHJl
ZmVyZW5jZWQgYmVmb3JlIGFzc2lnbm1lbnQNCj4gaHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2pl
Y3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0xMjg0Ng0KDQpIYXMgdGhpcyBldmVyIHdvcmtlZD8gSSBh
Z3JlZSB3ZSBzaG91bGQgaGF2ZSBhIGJldHRlciBlcnJvciBtZXNzYWdlIGJ1dCB1bHRpbWF0ZWx5
IGl0cyBkdWUgdG8gcnVucWVtdSBub3QgdW5kZXJzdGFuZGluZyB0aGF0IE1BQ0hJTkUgbmFtZS4N
Cg0KSSBkb24ndCB0aGluayB0aGF0IGlzIGEgcmVsZWFzZSBibG9ja2VyLg0KDQo+IFsyXSBCdWcg
MTI4MTIgLSBbMi4zLjQgcmMxXSBRZW11IGVuZGVkIHVuZXhwZWN0ZWRseSBkdXJpbmcgDQo+IGRv
X3Rlc3RpbWFnZTpjb3JlLWltYWdlLWxzYi1zZGsNCj4gaHR0cHM6Ly9idWd6aWxsYS55b2N0b3By
b2plY3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0xMjgxMg0KDQpXZSBiZWxpZXZlIHRoaXMgaXMgZHVl
IHRvIHRoZSBpbmZhbW91cyBhcGljIGlzc3VlcyB3ZSd2ZSBoYWQgd2l0aCBjZXJ0YWluIGtlcm5l
bCB2ZXJzaW9ucyAoSUEgb25seSkuIEl0cyBhbm5veWluZyBhbmQgc29tZXRoaW5nIHdlIHNob3Vs
ZCBmaXggYnV0IG5vdCBhIHJlbGVhc2UgYmxvY2tlciBJTU8uDQogDQo+IFszXSBCdWcgMTI4NDcg
LSBbMi4zLjQgcmMxXSB2YWxncmluZCBwdGVzdCBmYWlsZWQNCj4gaHR0cHM6Ly9idWd6aWxsYS55
b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0xMjg0Nw0KDQpUaGlzIGlzIGFubm95aW5n
IGJ1dCB3ZSdkIHByb2JhYmx5IGZvY3VzIG9uIG1hc3RlciBmb3IgcHRlc3Qgd29yay4NCg0KTG9v
a2luZyBhdCB0aGUgdmFyaW91cyBidWdzIGZpbGVkIGFnYWluc3QgdGhlIHJlbGVhc2UgaW4gdGhl
IFFBIHJlcG9ydCwgSSB0aGluayB0aGVyZSBhcmUgc29tZSBhbm5veWluZyBpc3N1ZXMgYnV0IG5v
dGhpbmcgdG8gd2FycmFudCBhbiByYzIgZ2l2ZW4gb3VyIGN1cnJlbnQgcmVzb3VyY2Ugc2l0dWF0
aW9uIHNvIEknZCBzdWdnZXN0IHJlbGVhc2luZyByYzEuDQoNCkNoZWVycywNCg0KUmljaGFyZA0K
DQoNCg0K

