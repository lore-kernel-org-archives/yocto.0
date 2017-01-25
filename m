Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7B26E00947; Wed, 25 Jan 2017 09:29:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8282CE004E5
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 09:29:11 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga105.jf.intel.com with ESMTP; 25 Jan 2017 09:29:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,284,1477983600"; d="scan'208";a="1087227940"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by orsmga001.jf.intel.com with ESMTP; 25 Jan 2017 09:29:11 -0800
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
	ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Wed, 25 Jan 2017 09:29:11 -0800
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.23]) by
	ORSMSX158.amr.corp.intel.com ([169.254.10.135]) with mapi id
	14.03.0248.002; Wed, 25 Jan 2017 09:29:11 -0800
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: "Hatle, Mark G (Wind River)" <mark.hatle@windriver.com>, Yocto Project
	<yocto@yoctoproject.org>
Thread-Topic: [meta-mingw] Morty branch?
Thread-Index: AQHSbDQXfArqCqMKjUqElPl/58gH/6FJiBpg
Date: Wed, 25 Jan 2017 17:29:10 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B6118F7794@ORSMSX112.amr.corp.intel.com>
References: <04eb27c4-8d41-b866-1f88-6e64be6d5acf@windriver.com>
In-Reply-To: <04eb27c4-8d41-b866-1f88-6e64be6d5acf@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [meta-mingw] Morty branch?
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
X-List-Received-Date: Wed, 25 Jan 2017 17:29:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gTWFyaywNCnRoZSBtZXRhLW1pbmd3IG1vcnR5IGJyYW5jaCB3YXMgY3JlYXRlZCBhIGZl
dyBtb21lbnRzIGFnby4NClBsZWFzZSBoYXZlIGEgbG9vay4NCg0KVGhhbmtzDQoNCkp1cm8NCg0K
DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1hcmsgSGF0bGUgW21haWx0
bzptYXJrLmhhdGxlQHdpbmRyaXZlci5jb21dDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAx
MSwgMjAxNyA5OjU3IEFNDQo+IFRvOiBZb2N0byBQcm9qZWN0IDx5b2N0b0B5b2N0b3Byb2plY3Qu
b3JnPg0KPiBDYzogQnlzdHJpY2t5LCBKdXJvIDxqdXJvLmJ5c3RyaWNreUBpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFttZXRhLW1pbmd3XSBNb3J0eSBicmFuY2g/DQo+IA0KPiBJIGRvbid0IHNlZSBh
bnkgc3BlY2lmaWMgTW9ydHkgYnJhbmNoIGF2YWlsYWJsZSBmb3IgbWV0YS1taW5ndy4gIEFsc28g
bWFueQ0KPiBvZg0KPiB0aGUgcGF0Y2hlcyB0aGF0IHdlcmUgaW4gcHJvZ3Jlc3MgaGF2ZSBub3Qg
YmVlbiBpbnRlZ3JhdGVkIHRvIHRoZSBtYXN0ZXINCj4gYnJhbmNoDQo+IGVpdGhlci4NCj4gDQo+
IEkndmUgcG9zdGVkIHRoZSBXaW5kIFJpdmVyIHZlcnNpb24gb2YgbWV0YS1taW5ndyBmb3IgdXNl
IHdpdGggTW9ydHkgYmFzZWQNCj4gcHJvZHVjdHMgdG86DQo+IA0KPiBodHRwOi8vZ2l0LnlvY3Rv
cHJvamVjdC5vcmcvY2dpdC9jZ2l0LmNnaS9tZXRhLW1pbmd3LWNvbnRyaWIvDQo+IA0KPiBnaXQ6
Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9tZXRhLW1pbmd3LWNvbnRyaWINCj4gDQo+IFRoZSAnbWdo
L21vcnR5JyBicmFuY2guDQo+IA0KPiAtLU1hcmsNCg==

