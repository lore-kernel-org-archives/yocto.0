Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DFDAE00D6F; Fri, 10 May 2019 00:02:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AD00E00A7D;
	Fri, 10 May 2019 00:02:44 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 May 2019 00:02:44 -0700
X-ExtLoop1: 1
Received: from pgsmsx107.gar.corp.intel.com ([10.221.44.105])
	by fmsmga008.fm.intel.com with ESMTP; 10 May 2019 00:02:43 -0700
Received: from pgsmsx105.gar.corp.intel.com ([169.254.4.8]) by
	PGSMSX107.gar.corp.intel.com ([169.254.7.67]) with mapi id
	14.03.0415.000; Fri, 10 May 2019 15:02:42 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "yocto-bsp@yoctoproject.org" <yocto-bsp@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"linux-yocto@yoctoproject.org" <linux-yocto@yoctoproject.org>,
	"ashish.emailaddress@gmail.com" <ashish.emailaddress@gmail.com>
Thread-Topic: [yocto] Timestamp error between zImage & uname-a [ Yocto-2.6.1
	+ Qemux86 ]
Thread-Index: AQHVBv5cCdZ1lqAZHUOj6ZvZdT8ZXA==
Date: Fri, 10 May 2019 07:02:42 +0000
Message-ID: <4823d30b2edfc0eea9fcdec81f68e6e8f113f015.camel@intel.com>
References: <CAOe0dAUYH83APXjXi8FiT3492zi0EVcsT4MfT69LJO+nJ5er8w@mail.gmail.com>
In-Reply-To: <CAOe0dAUYH83APXjXi8FiT3492zi0EVcsT4MfT69LJO+nJ5er8w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.221.21.157]
MIME-Version: 1.0
Subject: Re: Timestamp error between zImage & uname-a [ Yocto-2.6.1 + Qemux86 ]
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
X-List-Received-Date: Fri, 10 May 2019 07:02:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <17768AC9597A0849AFEEC67689AEFDFA@intel.com>
Content-Transfer-Encoding: base64

SXQncyBwaWNraW5nIHVwIHRoZSBtaW5pbWFsIGltYWdlIGluc3RlYWQgb2YgZnVsbC1jbWRsaW5l
PyBDYW4geW91IHRyeToNCg0KcnVucWVtdSB0bXAvZGVwbG95L2ltYWdlcy9xZW11eDg2LzxxZW11
Ym9vdC5jb25mPg0Kb3INCnJ1bnFlbXUgcWVtdXg4NiBjb3JlLWltYWdlLWZ1bGwtY21kbGluZQ0K
DQpUaGFua3MsDQoNCkFudWoNCg0KT24gRnJpLCAyMDE5LTA1LTEwIGF0IDA2OjQ2ICswMDAwLCBB
c2hpc2hLdW1hciBNaXNocmEgd3JvdGU6DQo+IEhJIE1lbWJlcnMgLCANCj4gR29vZCBBZnRlcm5v
b24uIA0KPiANCj4gSSBhbSB0cnlpbmcgdG8gcmVjb21waWxlIHRoZSBrZXJuZWwgYWZ0ZXIgY2hh
bmdpbmcga2VybmVsLWNvbmZpZyANCj4gb3B0aW9uIGFuZCB0aGVuIHJlY29tcGlsZSB0aGUga2Vy
bmVsIHVzaW5nIGJlbG93IG1lbnRpb25lZCBzdGVwcw0KPiAgICAgMSkgYml0YmFrZSAtYyBtZW51
Y29uZmlnIHZpcnR1YWwva2VybmVsDQo+ICAgICAyKSBiaXRiYWtlIC1jIGRpZmZjb25maWcgdmly
dHVhbC9rZXJuZWwgKCBjb3B5IHRoZSBjb25maWctDQo+IGZyYWdtZW50IHRvIH4vRGVza3RvcCkN
Cj4gICAgIDMpIGJpdGJha2UgLUMgZGVwbG95IGxpbnV4LXlvY3RvICAgICAgICggdG8gcmVjb21w
aWxlIGtlcm5lbCApDQo+ICAgICA0KSBydW5xZW11IHFlbXV4ODYNCj4gDQo+IFRoZSB0aW1lc3Rh
bXAgb2YgZmlsZXMgaW4gdG1wL2RlcGxveS9pbWFnZXMvcWVtdXg4Ni8qIGlzIHVwZGF0ZWQgDQo+
IHByb3Blcmx5IGJ1dCB0aGUgdGltZSBzaG93biBieSBjb21tYW5kICJ1bmFtZSAtYSIgYWx3YXlz
IHNob3dzIA0KPiBvbGRlciB0aW1lICYgaXMgbm90IHNob3dpbmcgcmVjZW50bHkgY29tcGlsZWQg
dGltZXMuDQo+IA0KPiBJIGNoZWNrZWQgdGhlIGtlcm5lbCBjb25maWcgb3B0aW9ucyBpbiBpbWFn
ZSAsIGkgY2FuIHNlZSB0aGUgY2hhbmdlcw0KPiBpIGRpZCANCj4gZnJvbSBtZW51Y29uZmlnICwg
YnV0IG5vdCBzdXJlIC8gY29uZnVzZWQgYXMgdG8gd2h5IHRoZSB0aW1lIHNob3duIA0KPiBieSAi
dW5hbWUgLWEiIGlzIG5vdCBnZXR0aW5nIHVwZGF0ZWQuIA0KPiANCj4gQmFzaWNhbGx5IGkgYW0g
dHJ5aW5nIHRvIGNoYW5nZSBzb21lIGtlcm5lbC1jb25maWcgJiBjaGVjayBpZiB0aGUNCj4gY29t
cGlsZWQgDQo+IGtlcm5lbCBpcyBnZXR0aW5nIHVwZGF0ZWQgb3Igbm90LiANCj4gDQo+IEF0dGFj
aGVkIGFsb25nIGFyZSB0aGUgc25hcHNob3QgZm9yIHRoZSBlcnJvci4gDQo+IA0KPiBDYW4gbWVt
YmVycyBwbGVhc2UgbGV0IG1lIGtub3cgd2hhdCBhbSBpIGRvaW5nIHdyb25nIGhlcmUgb3IgbWlz
c2luZywNCj4gDQo+IFRoYW5rcyANCj4gQXNoaXNoLg0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0K
PiANCg0K

