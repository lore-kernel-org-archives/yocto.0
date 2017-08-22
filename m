Return-Path: <libertad.cruz@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18E7DE00C3A; Tue, 22 Aug 2017 16:36:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35359E00970
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 16:36:36 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Aug 2017 16:36:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,414,1498546800"; d="scan'208";a="143456466"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by fmsmga006.fm.intel.com with ESMTP; 22 Aug 2017 16:36:36 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Tue, 22 Aug 2017 16:36:36 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.150]) by
	fmsmsx111.amr.corp.intel.com ([169.254.12.90]) with mapi id
	14.03.0319.002; Tue, 22 Aug 2017 16:36:35 -0700
From: "Cruz, Libertad" <libertad.cruz@intel.com>
To: "Purdie, Richard" <richard.purdie@intel.com>, "Perez Carranza, Jose"
	<jose.perez.carranza@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Release Candidate Build for yocto-2.3.1. now available.
Thread-Index: AQHTGqeD/XYXghM2uUqpfslwFTe5GaKPoFuAgAAcF4CAAUfeQA==
Date: Tue, 22 Aug 2017 23:36:35 +0000
Message-ID: <58D9E2E50A021A45AD740492365FCDC532A0D1ED@fmsmsx107.amr.corp.intel.com>
References: <1503338452.584579.56219@fedora25.yocto.io>
	<0A5D9A624DF90343892F8F3FE7DE525A16A36FCE@fmsmsx101.amr.corp.intel.com>
	<1503348235.32591.69.camel@intel.com>
In-Reply-To: <1503348235.32591.69.camel@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzg5NTY5YjgtMjU2OC00MjE1LWE2OGQtOGU5NzgwM2UxOTE5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE2LjUuOS4zIiwiVHJ1c3RlZExhYmVsSGFzaCI6ImNQb0d0aXJNVCtzZjlIMFNRV0NLNnVBVTRBc0xZNHV6R212YmV5MXcxYmc9In0=
x-ctpclassification: CTP_IC
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Lock,
	Joshua G" <joshua.g.lock@intel.com>
Subject: Re: Release Candidate Build for yocto-2.3.1. now available.
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
X-List-Received-Date: Tue, 22 Aug 2017 23:36:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCkkgaGF2ZSBpbnZlc3RpZ2F0ZWQgb24gdGhlIHRlc3QgY292ZXJhZ2Ugb24gdGhl
IEVTREsgZnVuY3Rpb25hbGl0eS4gIFRoZSB0ZXN0Y2FzZXMgd2VyZSBjcmVhdGVkIHRvIGNvdmVy
IHRoZSByZXF1aXJlbWVudCBtZW50aW9uZWQgaW46DQpodHRwczovL3dpa2kueW9jdG9wcm9qZWN0
Lm9yZy93aWtpL0V4dGVuc2libGVfU0RLX1Rlc3RfUGxhbl8oZVNESykjUmVxdWlyZW1lbnRzDQoN
Ckl0IHdhcyBub3QgdGFrZW4gaW50byBhY2NvdW50IHRoZSBpbnN0YWxsYXRpb24gb3IgYnVpbGQg
cHJvY2Vzcy4gVGhlIHRvb2wgY2hhaW4gd2FzIGJ1aWx0IGxvY2FsbHksIHRoZW4gaW5zdGFsbGVk
Lg0KCWVjaG8gJ1NES19FWFRfVFlQRSA9ICJtaW5pbWFsIicgPj4gY29uZi9sb2NhbC5jb25mDQoJ
Yml0YmFrZSBjb3JlLWltYWdlLW1pbmltYWwgIC1jIHBvcHVsYXRlX3Nka19leHQNCgllY2hvICdJ
TkhFUklUICs9ICJ0ZXN0c2RrIicgPj4gY29uZi9sb2NhbC5jb25mDQoNCkhlbmNlIHRoZSBzY2Vu
YXJpbyB3aGVyZSBFU0RLIGFydGlmYWN0cyBhcmUgZG93bmxvYWRlZCBtYW51YWxseSBmcm9tIHRo
ZSBzZXJ2ZXIgd2hlcmUgbmV2ZXIgdGVzdGVkLiBXZSBhcmUgbWlzc2luZyAgbWFudWFsIHNjZW5h
cmlvcyB0byBjb3ZlciBFU0RLIGluc3RhbGxhdGlvbiBvcHRpb25zLiBJIGhhdmUgb3BlbmVkIGEg
YnVnIHRvIGNvdmVyIHRoaXMgb24gdGhlIG5leHQgdGVzdHJ1biBodHRwczovL2J1Z3ppbGxhLnlv
Y3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTExOTYzDQoNCg0KDQpCZXN0IFJlZ2FyZHMN
CkxpYmVydGFkIEcuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBQdXJkaWUs
IFJpY2hhcmQgDQpTZW50OiBNb25kYXksIEF1Z3VzdCAyMSwgMjAxNyAzOjQ0IFBNDQpUbzogUGVy
ZXogQ2FycmFuemEsIEpvc2UgPGpvc2UucGVyZXouY2FycmFuemFAaW50ZWwuY29tPjsgeW9jdG9A
eW9jdG9wcm9qZWN0Lm9yZw0KQ2M6IHBpZGdlQHRvZ2FubGFicy5jb207IENydXosIExpYmVydGFk
IDxsaWJlcnRhZC5jcnV6QGludGVsLmNvbT47IG90YXZpb0Bvc3N5c3RlbXMuY29tLmJyOyBaaGFv
LCBZaSAoV2luZCBSaXZlcikgPHlpLnpoYW9Ad2luZHJpdmVyLmNvbT47IEdyYXlkb24sIFRyYWN5
IDx0cmFjeS5ncmF5ZG9uQGludGVsLmNvbT47IExvY2ssIEpvc2h1YSBHIDxqb3NodWEuZy5sb2Nr
QGludGVsLmNvbT47IE1pY2hhZWwgSGFsc3RlYWQgPG1oYWxzdGVhZEBsaW51eGZvdW5kYXRpb24u
b3JnPg0KU3ViamVjdDogUmU6IFJlbGVhc2UgQ2FuZGlkYXRlIEJ1aWxkIGZvciB5b2N0by0yLjMu
MS4gbm93IGF2YWlsYWJsZS4NCg0KT24gTW9uLCAyMDE3LTA4LTIxIGF0IDEyOjAzIC0wNzAwLCBQ
ZXJleiBDYXJyYW56YSwgSm9zZSB3cm90ZToNCj4gVGhpcyBtYWlsIGlzIGtpbmQgb2Ygc3RyYW5n
ZSwgYXJ0aWZhY3RzIGFyZSBub3QgcHVibGlzaGVkLCB0aGVyZSBhcmUgDQo+IG5vdCByYyBzcGVj
aWZpZWQgYW5kIGFmYWl1IHdlIHdvcmtlZCBvbiBRQSBmb3IgcHlybyAyLjMuMSBsYXN0IG1vbnRo
Lg0KPiANCj4gQ2FuIGFueW9uZSBjbGFyaWZ5IHRoaXM/DQoNClRoZSBlU0RLIGFydGVmYWN0cyBp
biAyLjMuMSB3ZXJlIGJyb2tlbiBhbmQgaXRzIGhhZCB0byBiZSByZWJ1aWx0IGFzIHRoZXkgd2Vy
ZSBub3QgZnVuY3Rpb25hbC4gV2UncmUgaGF2aW5nIHNvbWUgaXNzdWVzIHdpdGggdGhlIHJlYnVp
bGRzIHRvbyA6KC4NCg0KQ2hlZXJzLA0KDQpSaWNoYXJkDQoNCg==

