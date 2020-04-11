Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1372.1586585373901034954
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Apr 2020 23:09:34 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: anuj.mittal@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78BAEE019B5; Fri, 10 Apr 2020 23:09:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www; Fri, 10 Apr 2020 23:09:32 PDT
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB2CCE01964
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2020 23:09:32 -0700 (PDT)
IronPort-SDR: /RKJcFdQ14e2lWhp/RXaSSHqXrSAxMZYwukXkWyeqwvy5edfYaJW1Ype7xRKkesIkFEgv0oT+i
 cbzH2d+d+E+A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Apr 2020 23:08:29 -0700
IronPort-SDR: PU04gHSteTQ1WT0SfwIC23jxcblHPFPsOVnEOFUwtDNfTdxx8OyQaRuZj2vy7DrhwfukrRvbo3
 o0ZezzoXnlog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,368,1580803200"; 
   d="scan'208";a="426127053"
Received: from kmsmsx153.gar.corp.intel.com ([172.21.73.88])
  by orsmga005.jf.intel.com with ESMTP; 10 Apr 2020 23:08:28 -0700
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.234]) by
 KMSMSX153.gar.corp.intel.com ([169.254.5.209]) with mapi id 14.03.0439.000;
 Sat, 11 Apr 2020 14:08:28 +0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: Leon Woestenberg <leon@sidebranch.com>
CC: yocto <yocto@yoctoproject.org>
Subject: Re: [yocto] meta-intel: Override SERIAL_CONSOLES variable
Thread-Topic: [yocto] meta-intel: Override SERIAL_CONSOLES variable
Thread-Index: AQHWDwUlwPzcmtt5EUqTyeyslf4b0ahyTloAgAEiqBA=
Date: Sat, 11 Apr 2020 06:08:27 +0000
Message-ID: <C0207330DF60C5409302EC78C3FE68F313E533D4@PGSMSX101.gar.corp.intel.com>
References: <CAAfyv35mccyzb9fqtjpvmExtz-zZQ6a5Xk5mcn7k1pUJx+T7WQ@mail.gmail.com>
 <CAMjhiJisHc1+jooqtqm7v51-ONDVQTPXCZ1RvAmuCCsa0A7p6A@mail.gmail.com>
In-Reply-To: <CAMjhiJisHc1+jooqtqm7v51-ONDVQTPXCZ1RvAmuCCsa0A7p6A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q291bGQgeW91IHNlbmQgYSBwYXRjaCBwbGVhc2U/DQoNClRoYW5rcywNCg0KQW51ag0KDQo+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVj
dC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBMZW9u
IFdvZXN0ZW5iZXJnDQo+IFNlbnQ6IFNhdHVyZGF5LCBBcHJpbCAxMSwgMjAyMCAwNDo0OCBBTQ0K
PiBUbzogTWFyZWsgQmVsaXNrbyA8bWFyZWsuYmVsaXNrb0BnbWFpbC5jb20+DQo+IENjOiB5b2N0
byA8eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZz4NCj4gU3ViamVjdDogUmU6IFt5b2N0b10gbWV0YS1p
bnRlbDogT3ZlcnJpZGUgU0VSSUFMX0NPTlNPTEVTIHZhcmlhYmxlDQo+IA0KPiBIaSBhbGwsDQo+
IA0KPiBPbiBGcmksIEFwciAxMCwgMjAyMCBhdCA4OjU2IEFNIE1hcmVrIEJlbGlza28gPG1hcmVr
LmJlbGlza29AZ21haWwuY29tPiB3cm90ZToNCj4gPg0KPiA+IEhpLA0KPiA+DQo+ID4gaW4gbWV0
YS1pbnRlbCBpbiBtYWNoaW5lIGNvbmZpZ3VyYXRpb24gU0VSSUFMX0NPTlNPTEVTIGFyZSBkZWZp
bmVkIGFzDQo+ID4gOiBTRVJJQUxfQ09OU09MRVMgPSAiMTE1MjAwO3R0eVMwIDExNTIwMDt0dHlT
MSAxMTUyMDA7dHR5UzIiDQo+ID4NCj4gRm9yIGEgbW9yZSBnZW5lcmljIHNvbHV0aW9uLCBjb3Vs
ZCB0aGlzIGJlIG1hZGUgIGEgd2VhayBhc3NpZ25tZW50Pw0KPiANCj4gSSBhbSBvbiBhIFNNQVJD
IHg4Ni02NCBtb2R1bGUgd2hpY2ggb25seSBvbmUgc2VyaWFsIGlzIHVzZWZ1bCwgc28gSSB3b3Vs
ZCBsaWtlIHRvDQo+IGRvd250dW5lIHRoaXMgdmFyaWFibGUgYXMgd2VsbC4NCj4gDQo+IFJlZ2Fy
ZHMsDQo+IA0KPiBMZW9uLg0K
