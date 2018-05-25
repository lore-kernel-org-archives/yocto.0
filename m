Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 585A7E00720; Thu, 24 May 2018 20:40:28 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C02E4E006B4
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 20:40:27 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 May 2018 20:40:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,438,1520924400"; d="scan'208";a="53705403"
Received: from kmsmsx154.gar.corp.intel.com ([172.21.73.14])
	by orsmga003.jf.intel.com with ESMTP; 24 May 2018 20:40:25 -0700
Received: from pgsmsx110.gar.corp.intel.com (10.221.44.111) by
	KMSMSX154.gar.corp.intel.com (172.21.73.14) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Fri, 25 May 2018 11:40:23 +0800
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.58]) by
	PGSMSX110.gar.corp.intel.com ([169.254.13.50]) with mapi id
	14.03.0319.002; Fri, 25 May 2018 11:40:22 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	yocto <yocto@yoctoproject.org>, "Velu, NagarajagopalX"
	<nagarajagopalx.velu@intel.com>, "Patil, Pravin ShankarX"
	<pravin.shankarx.patil@intel.com>, "Yadav, PankajX"
	<pankajx.yadav@intel.com>, "Das, Manish KumarX"
	<manish.kumarx.das@intel.com>, "Mohamad, Mazliana"
	<mazliana.mohamad@intel.com>
Thread-Topic: Release Candidate Build for yocto-2.4.3.rc2 now available.
Thread-Index: AQHT8zeMm99qpgElf0OPXEvCnwBi86Q/uR9A
Date: Fri, 25 May 2018 03:40:22 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335E1FCBE@PGSMSX109.gar.corp.intel.com>
References: <1527149747.16911.57.camel@linuxfoundation.org>
In-Reply-To: <1527149747.16911.57.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTA5ZjBjNDEtMjg0OC00Mjk5LWEyYjEtM2FmZmNlMDQ1MWFjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiY3VsNXIwKzZPQjBMa3pCd1dTUEo1Ym5aaDNxeTFzRHFlVUZGaHJwczlBWXptcW5vSkJYa1pNZzdXQW41dWszbCJ9
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 04 Jun 2018 01:11:40 -0700
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
Subject: Re: Release Candidate Build for yocto-2.4.3.rc2 now available.
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
X-List-Received-Date: Fri, 25 May 2018 03:40:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpCdWlsZCBmb3IgMi40LjMucmMyIGlzIHJlYWR5LiANClBsZWFzZSBnZXQgcmVh
ZHkgZm9yIHRoZSBRQS4NCg0KVGhhbmtzLA0KWWVvaCwgRWUgUGVuZw0KDQotLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KRnJvbTogcmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZyBb
bWFpbHRvOnJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmddIA0KU2VudDogVGh1cnNk
YXksIE1heSAyNCwgMjAxOCA0OjE2IFBNDQpUbzogeW9jdG8gPHlvY3RvQHlvY3RvcHJvamVjdC5v
cmc+DQpDYzogcGlkZ2VAdG9nYW5sYWJzLmNvbTsgb3RhdmlvQG9zc3lzdGVtcy5jb20uYnI7IFpo
YW8sIFlpIChXaW5kIFJpdmVyKSA8eWkuemhhb0B3aW5kcml2ZXIuY29tPjsgR3JheWRvbiwgVHJh
Y3kgPHRyYWN5LmdyYXlkb25AaW50ZWwuY29tPjsgc3RlcGhhbm8uY2V0b2xhQGxpbnV4LmludGVs
LmNvbTsgU2FuZ2FsLCBBcG9vcnYgPGFwb29ydi5zYW5nYWxAaW50ZWwuY29tPjsgWWVvaCwgRWUg
UGVuZyA8ZWUucGVuZy55ZW9oQGludGVsLmNvbT47IENoYW4sIEFhcm9uIENodW4gWWV3IDxhYXJv
bi5jaHVuLnlldy5jaGFuQGludGVsLmNvbT47IENoYW5nLCBSZWJlY2NhIFN3ZWUgRnVuIDxyZWJl
Y2NhLnN3ZWUuZnVuLmNoYW5nQGludGVsLmNvbT47IEFuZywgQ2hpbiBIdWF0IDxjaGluLmh1YXQu
YW5nQGludGVsLmNvbT47IEpvbGxleSwgU3RlcGhlbiBLIDxzdGVwaGVuLmsuam9sbGV5QGludGVs
LmNvbT47IEpvcmRhbiwgUm9iaW4gTCA8cm9iaW4ubC5qb3JkYW5AaW50ZWwuY29tPg0KU3ViamVj
dDogUmVsZWFzZSBDYW5kaWRhdGUgQnVpbGQgZm9yIHlvY3RvLTIuNC4zLnJjMiBub3cgYXZhaWxh
YmxlLg0KDQpBIHJlbGVhc2UgY2FuZGlkYXRlIGJ1aWxkIGZvciB5b2N0by0yLjQuMy5yYzIgaXMg
bm93IGF2YWlsYWJsZSBhdDoNCg0KDQrCoMKgwqDCoGh0dHBzOi8vYXV0b2J1aWxkZXIueW9jdG8u
aW8vcHViL3JlbGVhc2VzL3lvY3RvLTIuNC4zLnJjMg0KDQoNClBsZWFzZSBiZWdpbiBRQSBvbiB0
aGlzIGJ1aWxkIGFzIHNvb24gYXMgcG9zc2libGUuDQoNCg0KQnVpbGQgaGFzaCBpbmZvcm1hdGlv
bjrCoA0KbWV0YS1pbnRlbCA6IGY2NmNlNTFkMDU5ZDI5MWE0NDFkODk2ODU0YmU4ZGI3MGRlNWE1
NTTCoA0KbWV0YS1xdDQgOiBlMjkwNzM4NzU5ZWYzZjM5YzllMDc5ZWFhOWI2MDZhNjIxMDdlNWJh
wqANCm1ldGEtbWluZ3cgOiAxY2M2MjBiMzhmNmYzMGEwYmRkMTgxNzgzMjk3OTk4ZmUwNzMzODdm
wqANCm1ldGEtcXQzIDogOGVmNzI2MWEzMzFlMDg2OWEwNDYxYWIyZmI0NGUzOTk4MGNlZGMwMsKg
DQptZXRhLWdwbHYyIDogZjg3NWM2MGVjZDZmMzA3OTNiODBhNDMxYTI0MjNjNGI5OGU1MTU0OMKg
DQpwb2t5IDogN2U3ZWU2NjJmNWRlYTRkMDkwMjkzMDQ1Zjc0OTgwOTMzMjI4MDJjY8KgDQoNClRo
aXMgaXMgYW4gYXV0b21hdGVkIG1lc3NhZ2UgZnJvbSBUaGUgWW9jdG8gUHJvamVjdCBBdXRvYnVp
bGRlcg0KR2l0OiBnaXQ6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy95b2N0by1hdXRvYnVpbGRlcg0K

