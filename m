Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23D27E00DF1; Wed, 12 Jun 2019 21:09:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68619E00AD5
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 21:09:00 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Jun 2019 21:08:59 -0700
X-ExtLoop1: 1
Received: from pgsmsx102.gar.corp.intel.com ([10.221.44.80])
	by orsmga003.jf.intel.com with ESMTP; 12 Jun 2019 21:08:58 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.97]) by
	PGSMSX102.gar.corp.intel.com ([169.254.6.79]) with mapi id
	14.03.0415.000; Thu, 13 Jun 2019 12:08:57 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"pokybuild@debian9-ty-1.yocto.io" <pokybuild@debian9-ty-1.yocto.io>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA notification for completed autobuilder build
	(yocto-2.8_M1.rc2)
Thread-Index: AQHVIDLHVpE/OxKP8kW2QigdnkDqC6aY+dzA
Date: Thu, 13 Jun 2019 04:08:56 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634E36081@PGSMSX110.gar.corp.intel.com>
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
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiY2VlYjMxZmUtMDVjMS00NmVlLTkwYTQtODE0YjY3NTZhYTZiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMEJKTFhDOUpkQzdrcjBRaU14WjZXVEhyZEJKTWlGUTYwbGwrMW1hU1wvUEdmK0FURkJFSGFBTUtjQWlnQ0tRUTIifQ==
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
X-List-Received-Date: Thu, 13 Jun 2019 04:09:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gQWxsLA0KDQpJbnRlbCBhbmQgV1IgWVAgUUEgaXMgbm93IHdvcmtpbmcgb24gUUEgZXhl
Y3V0aW9uIGZvciBZUCBidWlsZCAyLjggTTEgUkMyLg0KV2UgYXJlIHBsYW5uaW5nIHRvIGV4ZWN1
dGUgZm9sbG93aW5nIHRlc3RzIGZvciB0aGlzIGN5Y2xlOg0KDQpPRVFBLW1hbnVhbCB0ZXN0cyBm
b3IgZm9sbG93aW5nIG1vZHVsZToNCg0KMS4gT0UtQ29yZQ0KMi4gQlNQLWh3DQozLiBCU1AtUWVt
dQ0KDQpSdW50aW1lIGF1dG8gdGVzdCBmb3IgZm9sbG93aW5nIHBsYXRmb3JtczoNCg0KMS4gTWlu
bm93VHVyYm90IDMyLWJpdA0KMi4gQ29mZmVlIExha2UNCjMuIE5VQyA3DQo0LiBOVUMgNg0KNS4g
RWRnZXJvdXRlcg0KNi4gTVBDODMxNWUtcmRiDQo3LiBCZWFnbGVib25lDQoNCkVUQSBmb3IgY29t
cGxldGlvbiBpcyBGcmlkYXksIDE1IEp1bmUuDQoNCg0KVGhhbmtzICYgUmVnYXJkcywNClNhbmdl
ZXRhIEphaW4NCg0KPi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogcmljaGFyZC5w
dXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZyA8cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9u
Lm9yZz4NCj5TZW50OiBUdWVzZGF5LCAxMSBKdW5lLCAyMDE5IDQ6NTEgUE0NCj5UbzogcG9reWJ1
aWxkQGRlYmlhbjktdHktMS55b2N0by5pbzsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPkNjOiBv
dGF2aW9Ab3NzeXN0ZW1zLmNvbS5icjsgeWkuemhhb0B3aW5kcml2ZXIuY29tOyBTYW5nYWwsIEFw
b29ydg0KPjxhcG9vcnYuc2FuZ2FsQGludGVsLmNvbT47IFllb2gsIEVlIFBlbmcgPGVlLnBlbmcu
eWVvaEBpbnRlbC5jb20+OyBDaGFuLA0KPkFhcm9uIENodW4gWWV3IDxhYXJvbi5jaHVuLnlldy5j
aGFuQGludGVsLmNvbT47IEFuZywgQ2hpbiBIdWF0DQo+PGNoaW4uaHVhdC5hbmdAaW50ZWwuY29t
PjsgYWt1c3RlcjgwOEBnbWFpbC5jb207IHNqb2xsZXkueXAucG1AZ21haWwuY29tOw0KPkphaW4s
IFNhbmdlZXRhIDxzYW5nZWV0YS5qYWluQGludGVsLmNvbT4NCj5TdWJqZWN0OiBSZTogUUEgbm90
aWZpY2F0aW9uIGZvciBjb21wbGV0ZWQgYXV0b2J1aWxkZXIgYnVpbGQgKHlvY3RvLTIuOF9NMS5y
YzIpDQo+DQo+T24gVHVlLCAyMDE5LTA2LTExIGF0IDAzOjMyICswMDAwLCBwb2t5YnVpbGRAZGVi
aWFuOS10eS0xLnlvY3RvLmlvDQo+d3JvdGU6DQo+PiBBIGJ1aWxkIGZsYWdnZWQgZm9yIFFBICh5
b2N0by0yLjhfTTEucmMyKSB3YXMgY29tcGxldGVkIG9uIHRoZQ0KPj4gYXV0b2J1aWxkZXIgYW5k
IGlzIGF2YWlsYWJsZSBhdDoNCj4+DQo+Pg0KPj4gICAgIGh0dHBzOi8vYXV0b2J1aWxkZXIueW9j
dG8uaW8vcHViL3JlbGVhc2VzL3lvY3RvLTIuOF9NMS5yYzINCj4+DQo+DQo+U29tZSBub3RlcyBm
b3IgUUE6DQo+DQo+VGhlcmUgd2FzIGEgZmFpbHVyZSBpbiB0aGlzIGJ1aWxkIGluIHFlbXV4ODYg
b2Utc2VsZnRlc3QuIEl0IGxvb2tzIHRvIGJlIGEgcmFjZSBpc3N1ZQ0KPndoZXJlIHFlbXUgd2Fz
IHNodXR0aW5nIGRvd24uIFRoaXMgbmVlZHMgYSBidWcgYW5kIGxvb2tpbmcgaW50byBidXQgaXMg
YSBtaW5vcg0KPmlzc3VlIHdoaWNoIHdvdWxkbid0IGJsb2NrIHRoZSBtaWxlc3RvbmUgcmVsZWFz
ZSBvciBmdXJ0aGVyIFFBLg0KPg0KPlRoZXJlIGFyZSB0aHJlZSB0aW1lb3V0cyBpbiBwdGVzdCwg
YWNsLCBibHVlejUgKCMxMzM2NikgYW5kIG1kYWRtICgjMTMzNjgpLg0KPlRoZXNlIGFyZSBhbHNv
IG5vdCBnb2luZyB0byBibG9jayB0aGUgbWlsZXN0b25lIHJlbGVhc2UuIFRoZQ0KPmJsdWV6NSBp
c3N1ZSBpcyBnY2M5IHJlbGF0ZWQsIG1kYWRtIHdhcyBleHBvc2VkIGJ5IHdpZGVyIHRlc3Rpbmcg
aW4gbWFzdGVyLiBUaGUNCj5hY2wgaXNzdWUgbmVlZHMgYSBidWcgb3BlbmluZyBhbmQgaW52ZXN0
aWdhdGlvbiBhcyB0aGF0IGlzIGEgcmVncmVzc2lvbi4NCj4NCj5UaGVyZSBpcyBhIGxvdCBtb3Jl
IHRlc3RpbmcgaGFwcGVuaW5nIHVuZGVyIGF1dG9tYXRpb24gdGhhbiBpbiBwcmV2aW91cyBidWls
ZHMsDQo+cGFydGljdWxhcmx5IG9uIGFybSBob3N0cy90YXJnZXRzLg0KPg0KPkNoZWVycywNCj4N
Cj5SaWNoYXJkDQoNCg==

