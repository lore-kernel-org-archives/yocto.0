Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19CC1E00B33; Thu,  6 Jun 2019 21:20:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18704E0053F
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 21:20:43 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Jun 2019 21:20:43 -0700
X-ExtLoop1: 1
Received: from pgsmsx114.gar.corp.intel.com ([10.108.55.203])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jun 2019 21:20:42 -0700
Received: from pgsmsx105.gar.corp.intel.com ([169.254.4.53]) by
	pgsmsx114.gar.corp.intel.com ([169.254.4.99]) with mapi id
	14.03.0415.000; Fri, 7 Jun 2019 12:20:40 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "gokulraj.kana@gmail.com" <gokulraj.kana@gmail.com>, "Burton, Ross"
	<ross.burton@intel.com>
Thread-Topic: [yocto] Error in building new recipe for Jool network translator
Thread-Index: AQHVHIS8O7nZmw4ta0ij5wA+ht5sz6aOS0yAgAAEWYCAAMHugA==
Date: Fri, 7 Jun 2019 04:20:40 +0000
Message-ID: <bdb3d41992ea076fe671a15def259bd3cd9e24f7.camel@intel.com>
References: <CAFP4eQ-pUhBiqESOk-5uNGcbRkHW+=+wOpi=dTZDQ55ygGgBJQ@mail.gmail.com>
	<CAJTo0LYb7YDwOPS36q0Jo5RJXRwCx4p5e+xQ2J7KofODOVARJg@mail.gmail.com>
	<CAFP4eQ_1fk7ZvafF7vxpmvx3x4ntnwpdBBMYUJGJCfG4mPtrEA@mail.gmail.com>
In-Reply-To: <CAFP4eQ_1fk7ZvafF7vxpmvx3x4ntnwpdBBMYUJGJCfG4mPtrEA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.151.83]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error in building new recipe for Jool network translator
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
X-List-Received-Date: Fri, 07 Jun 2019 04:20:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <3789C6B015999D4DB3AF4D52CEA96B45@intel.com>
Content-Transfer-Encoding: base64

T24gVGh1LCAyMDE5LTA2LTA2IGF0IDIyOjE2ICswNTMwLCBHb2t1bCBSYWogd3JvdGU6DQo+IEhp
IFJvc3MsDQo+IA0KPiBUaGFua3MgZm9yIHRoZSBzdWdnZXN0aW9uLiBJIGhhdmUgdHJpZWQgd2l0
aCBpbmhlcml0aW5nIGF1dG90b29scy0NCj4gYnJva2Vuc2VwIGJiY2xhc3MuIE5vdyBiaXRiYWtl
IGdvdCB0aGUgcGF0aCBmb3IgY29tcGlsYXRpb24uIEJ1dCwNCj4gYml0YmFrZSBjb21waWxhdGlv
biByZWZlcmluZyB0byBuYXRpdmUga2VybmVsIHNyYyBwYXRoIGZvciBtb2R1bGUNCj4gY29tcGls
YXRpb24uIEZvciB5b3VyIGluZm9ybWF0aW9uIHRoaXMgcGFja2FnZSBjb21lcyB3aXRoIGJvdGgg
a2VybmVsDQo+IG1vZHVsZSBhbmQgdXNlcnNwYWNlIGJpbmFyeS4gU2luZ2xlIG1ha2VmaWxlIGhl
bHBzIGJ1aWxkaW5nIGJvdGgNCj4ga2VybmVsIG1vZHVsZSBhbmQgdXNlcnNwYWNlIGJpbmFyeS4g
QXR0YWNoZWQgbG9nIGZvciB5b3VyIHJlZmVyZW5jZS4NCj4gDQo+IEFueSBzdWdnZXN0aW9uIHRv
IGNvbXBpbGUgdGhpcyBwYWNrYWdlLg0KDQpMb29raW5nIGF0IHRoZSBNYWtlZmlsZSwgSSB0aGlu
ayBhZGRpbmcgdGhpcyBtaWdodCBoZWxwOg0KDQpFWFRSQV9PRU1BS0U9J0tFUk5FTF9ESVI9IiR7
U1RBR0lOR19LRVJORUxfQlVJTERESVJ9IicNCg==

