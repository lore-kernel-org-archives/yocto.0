Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B551BE007DA; Fri, 25 May 2018 01:56:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A47DE00720
	for <yocto@yoctoproject.org>; Fri, 25 May 2018 01:56:00 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 May 2018 01:55:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,439,1520924400"; d="scan'208";a="58412570"
Received: from kmsmsx156.gar.corp.intel.com ([172.21.138.133])
	by fmsmga001.fm.intel.com with ESMTP; 25 May 2018 01:55:58 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.58]) by
	KMSMSX156.gar.corp.intel.com ([169.254.1.238]) with mapi id
	14.03.0319.002; Fri, 25 May 2018 16:54:59 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "Purdie, Richard" <richard.purdie@intel.com>, yocto
	<yocto@yoctoproject.org>, "Velu, NagarajagopalX"
	<nagarajagopalx.velu@intel.com>, "Patil, Pravin ShankarX"
	<pravin.shankarx.patil@intel.com>, "Yadav, PankajX"
	<pankajx.yadav@intel.com>, "Das, Manish KumarX"
	<manish.kumarx.das@intel.com>, OTC Embedded Malaysia
	<otc.embedded.malaysia@intel.com>
Thread-Topic: Release Candidate Build for yocto-2.2.4.rc1 now available.
Thread-Index: AQHT82P0zSU/lwKBKkaL3YKnfi6BZKRAJRqw
Date: Fri, 25 May 2018 08:54:59 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335E1FFD5@PGSMSX109.gar.corp.intel.com>
References: <1527168770.16911.59.camel@intel.com>
In-Reply-To: <1527168770.16911.59.camel@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjUzNjYyYjMtY2M5My00YzA5LTlmNDUtYjAyNjY1OTExYzNhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRTBHczdiVjZRbk1ISlJ2UWloOW1tZ0h0V3FGZklCbzFoaWsyWVBDSmxaeFdXT0h2UjZzSGlGVmxHZzRsb0ZOTyJ9
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 04 Jun 2018 01:11:40 -0700
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
Subject: Re: Release Candidate Build for yocto-2.2.4.rc1 now available.
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
X-List-Received-Date: Fri, 25 May 2018 08:56:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpCdWlsZCBmb3IgMi4yLjQucmMxIGlzIHJlYWR5LiANClBsZWFzZSBnZXQgcmVh
ZHkgZm9yIHRoZSBRQS4NClRlc3RvcGlhIGFuZCB3aWtpIHBhZ2Ugd2VyZSByZWFkeS4gDQpodHRw
czovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpLzIuMl9RQV9TdGF0dXMNCg0KVGhhbmtzLA0K
WWVvaCBFZSBQZW5nDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiByaWNoYXJk
LnB1cmRpZUBpbnRlbC5jb20gW21haWx0bzpyaWNoYXJkLnB1cmRpZUBpbnRlbC5jb21dIA0KU2Vu
dDogVGh1cnNkYXksIE1heSAyNCwgMjAxOCA5OjMzIFBNDQpUbzogeW9jdG8gPHlvY3RvQHlvY3Rv
cHJvamVjdC5vcmc+DQpDYzogcGlkZ2VAdG9nYW5sYWJzLmNvbTsgb3RhdmlvQG9zc3lzdGVtcy5j
b20uYnI7IFpoYW8sIFlpIChXaW5kIFJpdmVyKSA8eWkuemhhb0B3aW5kcml2ZXIuY29tPjsgR3Jh
eWRvbiwgVHJhY3kgPHRyYWN5LmdyYXlkb25AaW50ZWwuY29tPjsgc3RlcGhhbm8uY2V0b2xhQGxp
bnV4LmludGVsLmNvbTsgU2FuZ2FsLCBBcG9vcnYgPGFwb29ydi5zYW5nYWxAaW50ZWwuY29tPjsg
WWVvaCwgRWUgUGVuZyA8ZWUucGVuZy55ZW9oQGludGVsLmNvbT47IENoYW4sIEFhcm9uIENodW4g
WWV3IDxhYXJvbi5jaHVuLnlldy5jaGFuQGludGVsLmNvbT47IENoYW5nLCBSZWJlY2NhIFN3ZWUg
RnVuIDxyZWJlY2NhLnN3ZWUuZnVuLmNoYW5nQGludGVsLmNvbT47IEFuZywgQ2hpbiBIdWF0IDxj
aGluLmh1YXQuYW5nQGludGVsLmNvbT47IEpvbGxleSwgU3RlcGhlbiBLIDxzdGVwaGVuLmsuam9s
bGV5QGludGVsLmNvbT47IEpvcmRhbiwgUm9iaW4gTCA8cm9iaW4ubC5qb3JkYW5AaW50ZWwuY29t
Pg0KU3ViamVjdDogUmVsZWFzZSBDYW5kaWRhdGUgQnVpbGQgZm9yIHlvY3RvLTIuMi40LnJjMSBu
b3cgYXZhaWxhYmxlLg0KDQpBIHJlbGVhc2UgY2FuZGlkYXRlIGJ1aWxkIGZvciB5b2N0by0yLjIu
NC5yYzEgaXMgbm93IGF2YWlsYWJsZSBhdDoNCg0KDQrCoMKgwqDCoGh0dHBzOi8vYXV0b2J1aWxk
ZXIueW9jdG8uaW8vcHViL3JlbGVhc2VzL3lvY3RvLTIuMi40LnJjMQ0KDQoNClBsZWFzZSBiZWdp
biBRQSBvbiB0aGlzIGJ1aWxkIGFzIHNvb24gYXMgcG9zc2libGUuDQoNCg0KQnVpbGQgaGFzaCBp
bmZvcm1hdGlvbjrCoA0KbWV0YS1pbnRlbCA6IGM3ODE1MTBhNWE2YjQ1ZTYwY2MzMmI2NjE0ZGRj
Y2UzZjE0NTIxMjHCoA0KbWV0YS1xdDQgOiBmMzg5MzY4ZGM4NmU3NDVkZjE0Y2FiOWVlYjlhOTRi
YzAyYmQyNzNlwqANCm1ldGEtbWluZ3cgOiBmNWY2NzZkOWVlOWY4ZTIwNTM2M2VhY2U3YTg0NmEw
MzYwOTk4NjM0wqANCm1ldGEtcXQzIDogZjMzYjczYTk1NjNmMmRmZGZkMGVlMzdiNjFkNjVkOTAx
OTdhNDU2ZsKgDQptZXRhLWdwbHYyIDogZDc2ODdkNDA0YmJjOWJhM2Y0NGVjNDNlYTg4MjhkOTA3
MTAzMzUxM8KgDQpwb2t5IDogZGY3NjY2OWJkZDcwYWEwZDkwM2M0MjExZGRlNzMxMjIxYzdlNzU2
ZMKgDQoNClRoaXMgaXMgYW4gYXV0b21hdGVkIG1lc3NhZ2UgZnJvbVxuVGhlIFlvY3RvIFByb2pl
Y3QgQXV0b2J1aWxkZXINCkdpdDogZ2l0Oi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcveW9jdG8tYXV0
b2J1aWxkZXINCg==

