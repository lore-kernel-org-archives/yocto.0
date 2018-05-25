Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE130E007D4; Fri, 25 May 2018 01:49:40 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8C69E006F1
	for <yocto@yoctoproject.org>; Fri, 25 May 2018 01:49:39 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 May 2018 01:49:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,439,1520924400"; d="scan'208";a="42110603"
Received: from kmsmsx155.gar.corp.intel.com ([172.21.73.106])
	by fmsmga007.fm.intel.com with ESMTP; 25 May 2018 01:49:37 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.58]) by
	KMSMSX155.gar.corp.intel.com ([169.254.15.135]) with mapi id
	14.03.0319.002; Fri, 25 May 2018 16:49:35 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	yocto <yocto@yoctoproject.org>, "Velu, NagarajagopalX"
	<nagarajagopalx.velu@intel.com>, "Patil, Pravin ShankarX"
	<pravin.shankarx.patil@intel.com>, "Yadav, PankajX"
	<pankajx.yadav@intel.com>, "Das, Manish KumarX"
	<manish.kumarx.das@intel.com>, OTC Embedded Malaysia
	<otc.embedded.malaysia@intel.com>
Thread-Topic: Release Candidate Build for yocto-2.3.4.rc1 now available.
Thread-Index: AQHT8eKcWGLPhWsLGESUxjbKi7W2gKRAJhDA
Date: Fri, 25 May 2018 08:49:35 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335E1FF8A@PGSMSX109.gar.corp.intel.com>
References: <1527003338.8937.180.camel@linuxfoundation.org>
In-Reply-To: <1527003338.8937.180.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWUwNWVkNDMtYTQ4Mi00ODIwLWE0OGQtYTkyOTBkMjg2ZTk2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRGZaeFdNTExHMkxTelRNb3F0NXhJbVJBNjU4U0hvRTl6a1lQNXpcL1N3N3lIQ0dqdE4rYUNUS0VMXC9nQ2VPcm9cLyJ9
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 04 Jun 2018 01:11:40 -0700
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
Subject: Re: Release Candidate Build for yocto-2.3.4.rc1 now available.
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
X-List-Received-Date: Fri, 25 May 2018 08:49:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpCdWlsZCBmb3IgMi4zLjQucmMxIGlzIHJlYWR5LiANClBsZWFzZSBnZXQgcmVh
ZHkgZm9yIHRoZSBRQS4NClRlc3RvcGlhIGFuZCB3aWtpIHBhZ2Ugd2VyZSByZWFkeS4gDQpodHRw
czovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpLzIuM19RQV9TdGF0dXMNCg0KVGhhbmtzLA0K
RWUgUGVuZyANCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHJpY2hhcmQucHVy
ZGllQGxpbnV4Zm91bmRhdGlvbi5vcmcgW21haWx0bzpyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5k
YXRpb24ub3JnXSANClNlbnQ6IFR1ZXNkYXksIE1heSAyMiwgMjAxOCAxMTozNiBQTQ0KVG86IHlv
Y3RvIDx5b2N0b0B5b2N0b3Byb2plY3Qub3JnPg0KQ2M6IHBpZGdlQHRvZ2FubGFicy5jb207IG90
YXZpb0Bvc3N5c3RlbXMuY29tLmJyOyBaaGFvLCBZaSAoV2luZCBSaXZlcikgPHlpLnpoYW9Ad2lu
ZHJpdmVyLmNvbT47IEdyYXlkb24sIFRyYWN5IDx0cmFjeS5ncmF5ZG9uQGludGVsLmNvbT47IHN0
ZXBoYW5vLmNldG9sYUBsaW51eC5pbnRlbC5jb207IFNhbmdhbCwgQXBvb3J2IDxhcG9vcnYuc2Fu
Z2FsQGludGVsLmNvbT47IFllb2gsIEVlIFBlbmcgPGVlLnBlbmcueWVvaEBpbnRlbC5jb20+OyBD
aGFuLCBBYXJvbiBDaHVuIFlldyA8YWFyb24uY2h1bi55ZXcuY2hhbkBpbnRlbC5jb20+OyBDaGFu
ZywgUmViZWNjYSBTd2VlIEZ1biA8cmViZWNjYS5zd2VlLmZ1bi5jaGFuZ0BpbnRlbC5jb20+OyBB
bmcsIENoaW4gSHVhdCA8Y2hpbi5odWF0LmFuZ0BpbnRlbC5jb20+OyBKb2xsZXksIFN0ZXBoZW4g
SyA8c3RlcGhlbi5rLmpvbGxleUBpbnRlbC5jb20+OyBKb3JkYW4sIFJvYmluIEwgPHJvYmluLmwu
am9yZGFuQGludGVsLmNvbT4NClN1YmplY3Q6IFJlbGVhc2UgQ2FuZGlkYXRlIEJ1aWxkIGZvciB5
b2N0by0yLjMuNC5yYzEgbm93IGF2YWlsYWJsZS4NCg0KQSByZWxlYXNlIGNhbmRpZGF0ZSBidWls
ZCBmb3IgeW9jdG8tMi4zLjQucmMxIGlzIG5vdyBhdmFpbGFibGUgYXQ6DQrCoA0KwqANCsKgIMKg
IMKgaHR0cHM6Ly9hdXRvYnVpbGRlci55b2N0by5pby9wdWIvcmVsZWFzZXMveW9jdG8tMi4zLjQu
cmMxDQrCoA0KwqANClBsZWFzZSBiZWdpbiBRQSBvbiB0aGlzIGJ1aWxkIGFzIHNvb24gYXMgcG9z
c2libGUuDQrCoA0KwqANCsKgQnVpbGQgaGFzaCBpbmZvcm1hdGlvbjrCoA0KwqBtZXRhLWludGVs
IDogOWIzNzk1MmQ2YWYzNjM1OGI2Mzk3Y2VkZjNkZDUzZWM4OTYyYjZiZsKgDQrCoG1ldGEtcXQ0
IDogODg5ODlhZTNhYmU5OGIzMDA4OWU3NTE4ZDNhZGFiZTk5MGM0MGExMMKgDQrCoG1ldGEtbWlu
Z3cgOiBjNmRiMTkzNGZjNDNmYjA2YjkzYWZmM2U1NjM0ZDg5Y2MyYjY1Yjc3wqANCsKgbWV0YS1x
dDMgOiBmMzNiNzNhOTU2M2YyZGZkZmQwZWUzN2I2MWQ2NWQ5MDE5N2E0NTZmwqANCsKgbWV0YS1n
cGx2MiA6IDYyNzE0Nzk5NDk0M2RkNTYyY2MyOTRiN2NjZmQ0NDMyNTc0NDk1NmTCoA0KwqBwb2t5
IDogZWJiNDJhZjI4MjllZGZjYTFhMjNjN2E1MWE0MzFjNjU2ZmZjMjA5MMKgDQrCoA0KVGhpcyBp
cyBhbiBhdXRvbWF0ZWQgbWVzc2FnZSBmcm9tIFRoZSBZb2N0byBQcm9qZWN0IEF1dG9idWlsZGVy
DQpHaXQ6IGdpdDovL2dpdC55b2N0b3Byb2plY3Qub3JnL3lvY3RvLWF1dG9idWlsZGVyDQoNCg==

