Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44F32E00DDC; Tue, 11 Jun 2019 17:51:35 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EDE5E00D45
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2019 17:51:34 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Jun 2019 17:51:33 -0700
X-ExtLoop1: 1
Received: from pgsmsx114.gar.corp.intel.com ([10.108.55.203])
	by orsmga002.jf.intel.com with ESMTP; 11 Jun 2019 17:51:32 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.97]) by
	pgsmsx114.gar.corp.intel.com ([169.254.4.185]) with mapi id
	14.03.0415.000; Wed, 12 Jun 2019 08:51:31 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"pokybuild@debian9-ty-1.yocto.io" <pokybuild@debian9-ty-1.yocto.io>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA notification for completed autobuilder build
	(yocto-2.8_M1.rc2)
Thread-Index: AQHVIDLHVpE/OxKP8kW2QigdnkDqC6aXKFaA
Date: Wed, 12 Jun 2019 00:51:31 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634E32E41@PGSMSX110.gar.corp.intel.com>
References: <20190611033223.498F7E00D73@yocto-www.yoctoproject.org>
	<b4ef68996131d5a09e26e597a5b9c76874a0b2a3.camel@linuxfoundation.org>
In-Reply-To: <b4ef68996131d5a09e26e597a5b9c76874a0b2a3.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTEwZjNmNTUtYTIwYS00ZDI3LTllOTYtYzNkYWYzNTY4NWM3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRDhvUmZrdEtzSm9QS0JNOUFmR1N0blBycFwvdUx5NlY5SHJmdEJGcVNDZFV6bXRNczRiSzJLTVhhbk1DU3FuR04ifQ==
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.8_M1.rc2)
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
X-List-Received-Date: Wed, 12 Jun 2019 00:51:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCg0KPi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogcmljaGFyZC5wdXJkaWVA
bGludXhmb3VuZGF0aW9uLm9yZyA8cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZz4N
Cj5TZW50OiBUdWVzZGF5LCAxMSBKdW5lLCAyMDE5IDQ6NTEgUE0NCj5UbzogcG9reWJ1aWxkQGRl
YmlhbjktdHktMS55b2N0by5pbzsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPkNjOiBvdGF2aW9A
b3NzeXN0ZW1zLmNvbS5icjsgeWkuemhhb0B3aW5kcml2ZXIuY29tOyBTYW5nYWwsIEFwb29ydg0K
PjxhcG9vcnYuc2FuZ2FsQGludGVsLmNvbT47IFllb2gsIEVlIFBlbmcgPGVlLnBlbmcueWVvaEBp
bnRlbC5jb20+OyBDaGFuLA0KPkFhcm9uIENodW4gWWV3IDxhYXJvbi5jaHVuLnlldy5jaGFuQGlu
dGVsLmNvbT47IEFuZywgQ2hpbiBIdWF0DQo+PGNoaW4uaHVhdC5hbmdAaW50ZWwuY29tPjsgYWt1
c3RlcjgwOEBnbWFpbC5jb207IHNqb2xsZXkueXAucG1AZ21haWwuY29tOw0KPkphaW4sIFNhbmdl
ZXRhIDxzYW5nZWV0YS5qYWluQGludGVsLmNvbT4NCj5TdWJqZWN0OiBSZTogUUEgbm90aWZpY2F0
aW9uIGZvciBjb21wbGV0ZWQgYXV0b2J1aWxkZXIgYnVpbGQgKHlvY3RvLTIuOF9NMS5yYzIpDQo+
DQo+T24gVHVlLCAyMDE5LTA2LTExIGF0IDAzOjMyICswMDAwLCBwb2t5YnVpbGRAZGViaWFuOS10
eS0xLnlvY3RvLmlvDQo+d3JvdGU6DQo+PiBBIGJ1aWxkIGZsYWdnZWQgZm9yIFFBICh5b2N0by0y
LjhfTTEucmMyKSB3YXMgY29tcGxldGVkIG9uIHRoZQ0KPj4gYXV0b2J1aWxkZXIgYW5kIGlzIGF2
YWlsYWJsZSBhdDoNCj4+DQo+Pg0KPj4gICAgIGh0dHBzOi8vYXV0b2J1aWxkZXIueW9jdG8uaW8v
cHViL3JlbGVhc2VzL3lvY3RvLTIuOF9NMS5yYzINCj4+DQo+DQo+U29tZSBub3RlcyBmb3IgUUE6
DQpUaGFua3MgUmljaGFyZCBmb3Igc2hhcmluZyB0aGlzLg0KPg0KPlRoZXJlIHdhcyBhIGZhaWx1
cmUgaW4gdGhpcyBidWlsZCBpbiBxZW11eDg2IG9lLXNlbGZ0ZXN0LiBJdCBsb29rcyB0byBiZSBh
IHJhY2UgaXNzdWUNCj53aGVyZSBxZW11IHdhcyBzaHV0dGluZyBkb3duLiBUaGlzIG5lZWRzIGEg
YnVnIGFuZCBsb29raW5nIGludG8gYnV0IGlzIGEgbWlub3INCj5pc3N1ZSB3aGljaCB3b3VsZG4n
dCBibG9jayB0aGUgbWlsZXN0b25lIHJlbGVhc2Ugb3IgZnVydGhlciBRQS4NCg0KV2UgYXJlIGFu
YWx5c2luZyB0aGUgZmFpbHVyZXMgYW5kIHdpbGwgZmlsZSB0aGUgYnVncyBhcyBzdWdnZXN0ZWQu
DQo+DQo+VGhlcmUgYXJlIHRocmVlIHRpbWVvdXRzIGluIHB0ZXN0LCBhY2wsIGJsdWV6NSAoIzEz
MzY2KSBhbmQgbWRhZG0gKCMxMzM2OCkuDQo+VGhlc2UgYXJlIGFsc28gbm90IGdvaW5nIHRvIGJs
b2NrIHRoZSBtaWxlc3RvbmUgcmVsZWFzZS4gVGhlDQo+Ymx1ZXo1IGlzc3VlIGlzIGdjYzkgcmVs
YXRlZCwgbWRhZG0gd2FzIGV4cG9zZWQgYnkgd2lkZXIgdGVzdGluZyBpbiBtYXN0ZXIuIFRoZQ0K
PmFjbCBpc3N1ZSBuZWVkcyBhIGJ1ZyBvcGVuaW5nIGFuZCBpbnZlc3RpZ2F0aW9uIGFzIHRoYXQg
aXMgYSByZWdyZXNzaW9uLg0KDQpMb29rcyBsaWtlIHNvbWUgZGlzY29ubmVjdCBoZXJlLiBJbiB0
ZXN0IHJlc3VsdCByZXBvcnQsIG5vIHRpbWVvdXQgaXNzdWUgcmVwb3J0ZWQgZm9yIGFjbCBwdGVz
dC4NCldlIGFyZSByZWZlcnJpbmcgdG8gdGVzdCByZXN1bHRzIGF0IHlvY3RvLXRlc3RyZXN1bHRz
IHVuZGVyIHRhZyAiIG1hc3Rlci81NDU3My1nOTkxMGEzNjMxY2U5NTNiOGRkOGYzZDU3ZDZlMTIy
YzdmZDhjYjQ2Mi8xIg0KPg0KPlRoZXJlIGlzIGEgbG90IG1vcmUgdGVzdGluZyBoYXBwZW5pbmcg
dW5kZXIgYXV0b21hdGlvbiB0aGFuIGluIHByZXZpb3VzIGJ1aWxkcywNCj5wYXJ0aWN1bGFybHkg
b24gYXJtIGhvc3RzL3RhcmdldHMuDQpUaGFua3MgZm9yIGluY3JlYXNlZCBjb3ZlcmFnZS4NCg0K
Pg0KPkNoZWVycywNCj4NCj5SaWNoYXJkDQoNClRoYW5rcyAmIFJlZ2FyZHMsDQpTYW5nZWV0YSBK
YWluDQoNCg==

