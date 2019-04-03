Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4D6AE00C93; Wed,  3 Apr 2019 03:24:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B45BE00872
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 03:24:30 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Apr 2019 03:24:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,304,1549958400"; d="scan'208";a="146218271"
Received: from kmsmsx154.gar.corp.intel.com ([172.21.73.14])
	by FMSMGA003.fm.intel.com with ESMTP; 03 Apr 2019 03:24:28 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.173]) by
	KMSMSX154.gar.corp.intel.com ([169.254.12.175]) with mapi id
	14.03.0415.000; Wed, 3 Apr 2019 18:24:27 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: akuster808 <akuster808@gmail.com>, "Jain, Sangeeta"
	<sangeeta.jain@intel.com>, Poky Build User
	<pokybuild@ubuntu1604-ty-1.yocto.io>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>, Yi Zhao <yi.zhao@windriver.com>
Thread-Topic: [yocto] QA notification for completed autobuilder build
	(yocto-2.6.2.rc3)
Thread-Index: AQHU5RaPej/hC8FinUi89Gk7eb4QDqYqOzDbgAAI6qA=
Date: Wed, 3 Apr 2019 10:24:26 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D043481A421C@PGSMSX109.gar.corp.intel.com>
References: <20190328033000.C90DF1C2149@ubuntu1604-ty-1.yocto.io>
	<015AB11D45F2C442929CB2765DAE738634DB02DA@PGSMSX110.gar.corp.intel.com>
	<171c360d-16c9-7f7f-2c7f-6825878b5d51@gmail.com>
In-Reply-To: <171c360d-16c9-7f7f-2c7f-6825878b5d51@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOWM5NjFkZjgtYThlZS00MTJiLWFjNDItOWQ1MTI1MTdhODk1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZldaMG9YaDNTSGd2VVlKUVNvdzBBTnFWVUxueXI4UGE1QnN3bzhnMzVGTXNHeEhrUHB1XC9QeWUra0t2M0tjeWQifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.2.rc3)
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
X-List-Received-Date: Wed, 03 Apr 2019 10:24:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQXJtaW4sDQoNCkZvciAyLjYuMi5yYzMsIFFBIHRlYW0gc2hhbGwgdHJ5IHRvIHJ1biB0aGUg
ZXhlY3V0aW9uIGJ5IHJlZmVycmluZyB0byB0aGUgbWFudWFsIHRlc3RjYXNlcyBmcm9tIG1hc3Rl
ci4gDQoNClRoYW5rcywNClllb2ggRWUgUGVuZyANCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCkZyb206IGFrdXN0ZXI4MDggW21haWx0bzpha3VzdGVyODA4QGdtYWlsLmNvbV0gDQpTZW50
OiBXZWRuZXNkYXksIEFwcmlsIDMsIDIwMTkgNTo1MCBQTQ0KVG86IEphaW4sIFNhbmdlZXRhIDxz
YW5nZWV0YS5qYWluQGludGVsLmNvbT47IFBva3kgQnVpbGQgVXNlciA8cG9reWJ1aWxkQHVidW50
dTE2MDQtdHktMS55b2N0by5pbz47IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc7IHJpY2hhcmQucHVy
ZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc7IHNqb2xsZXkueXAucG1AZ21haWwuY29tOyBZaSBaaGFv
IDx5aS56aGFvQHdpbmRyaXZlci5jb20+DQpDYzogb3RhdmlvQG9zc3lzdGVtcy5jb20uYnI7IENo
YW4sIEFhcm9uIENodW4gWWV3IDxhYXJvbi5jaHVuLnlldy5jaGFuQGludGVsLmNvbT47IFllb2gs
IEVlIFBlbmcgPGVlLnBlbmcueWVvaEBpbnRlbC5jb20+OyBTYW5nYWwsIEFwb29ydiA8YXBvb3J2
LnNhbmdhbEBpbnRlbC5jb20+DQpTdWJqZWN0OiBSZTogW3lvY3RvXSBRQSBub3RpZmljYXRpb24g
Zm9yIGNvbXBsZXRlZCBhdXRvYnVpbGRlciBidWlsZCAoeW9jdG8tMi42LjIucmMzKQ0KDQpIZWxs
bywNCg0KT24gNC8zLzE5IDE6MDYgQU0sIEphaW4sIFNhbmdlZXRhIHdyb3RlOg0KPiBJbnRlbCBh
bmQgV1IgWVAgUUEgaXMgbm93IHdvcmtpbmcgb24gUUEgZXhlY3V0aW9uIGZvciBZUCBidWlsZCAy
LjYuMiBSQzMuIFdlIGFyZSBwbGFubmluZyB0byBleGVjdXRlIGZvbGxvd2luZyB0ZXN0cyBmb3Ig
dGhpcyBjeWNsZToNCj4NCj4gT0VRQS1NYW51YWwgdGVzdHMgZm9yIGZvbGxvd2luZyBtb2R1bGVz
Og0KPiAxLglTREsNCj4gMi4JRWNsaXBzZS1wbHVnaW4NCj4gMy4JS2VybmVsDQo+IDQuCVRvYXN0
ZXINCj4gNS4JQml0YmFrZSAob2UtY29yZSkNCj4gNi4JQnVpbGQtYXBwbGlhbmNlDQo+IDcuCUNy
b3BzDQo+IDguCUNvbXBsaWFuY2UtdGVzdA0KPiA5LglCc3AtaHcNCj4gMTAuCUJzcC1xZW11DQpJ
IGRpZCBub3QgYmFja3BvcnQgdGhlIG1hbnVhbCB0ZXN0IGZyb20gbWFzdGVyIG9yIHRodWQuIEFy
ZSB0aGVzZSB0aGUgb3JpZ2luYWwgc2V0Pw0KDQoNCnJlZ2FyZHMsDQpBcm1pbg0KPiBSdW50aW1l
IGF1dG8gdGVzdCBmb3IgZm9sbG93aW5nIHBsYXRmb3JtczoNCj4NCj4gMS4JTWlubm93VHVyYm8g
MzJiaXQNCj4gMi4JTWlubm93VHVyYm90IDY0IGJpdA0KPiAzLglOVUMgNw0KPiA0LglOVUMgNg0K
PiA1LglFZGdlcm91dGVyDQo+IDYuCU1QQzgzMTVlLXJkYg0KPiA3LglCZWFnbGVib25lDQo+IDgu
CVFlbXVhcm0NCj4gOS4JUWVtdWFybS02NA0KPiAxMC4JUWVtdXBwYw0KPiAxMS4JUWVtdW1pcHMN
Cj4gMTIuCVFlbXVtaXBzNjQNCj4NCj4gT3RoZXIgYXV0byB0ZXN0czogDQo+DQo+IDEuCVFlbXUt
c2VsZnRlc3QNCj4gMi4JUWVtdS1tZXRhLWlkZQ0KPg0KPiBFVEEgZm9yIGNvbXBsZXRpb24gaXMg
V2VkbmVzZGF5LCAxMCBBcHJpbC4NCj4NCj4gVGhhbmtzICYgUmVnYXJkcywNCj4gU2FuZ2VldGEg
SmFpbg0KPg0KPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4+IEZyb206IHlvY3RvLWJv
dW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnPiAN
Cj4+IE9uIEJlaGFsZiBPZiBQb2t5IEJ1aWxkIFVzZXINCj4+IFNlbnQ6IFRodXJzZGF5LCAyOCBN
YXJjaCwgMjAxOSAxMTozMCBBTQ0KPj4gVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4+IENj
OiBvdGF2aW9Ab3NzeXN0ZW1zLmNvbS5icjsgQ2hhbiwgQWFyb24gQ2h1biBZZXcgDQo+PiA8YWFy
b24uY2h1bi55ZXcuY2hhbkBpbnRlbC5jb20+OyBha3VzdGVyODA4QGdtYWlsLmNvbQ0KPj4gU3Vi
amVjdDogW3lvY3RvXSBRQSBub3RpZmljYXRpb24gZm9yIGNvbXBsZXRlZCBhdXRvYnVpbGRlciBi
dWlsZCANCj4+ICh5b2N0by0yLjYuMi5yYzMpDQo+Pg0KPj4NCj4+IEEgYnVpbGQgZmxhZ2dlZCBm
b3IgUUEgKHlvY3RvLTIuNi4yLnJjMykgd2FzIGNvbXBsZXRlZCBvbiB0aGUgDQo+PiBhdXRvYnVp
bGRlciBhbmQgaXMgYXZhaWxhYmxlIGF0Og0KPj4NCj4+DQo+PiAgICBodHRwczovL2F1dG9idWls
ZGVyLnlvY3RvLmlvL3B1Yi9yZWxlYXNlcy95b2N0by0yLjYuMi5yYzMNCj4+DQo+Pg0KPj4gQnVp
bGQgaGFzaCBpbmZvcm1hdGlvbjoNCj4+DQo+PiBiaXRiYWtlOiA3YzFlYjUxZDFlOGE0YzVmMzli
ZjlkZGRmMDVmYjBiMzU5OGRhNzJiDQo+PiBlY2xpcHNlLXBva3ktbmVvbjogY2Q4NmYxNjdiZTU4
YTExYjI4OWFmNGVmMjM2YjRhZGVjNTdlYzMxNg0KPj4gZWNsaXBzZS1wb2t5LW94eWdlbjogMjEw
YzU4YzVhNzE0NzEyN2Y5Yzg0MDcxOGM2Y2QyYTU2ZTg3MTcxOA0KPj4gbWV0YS1ncGx2MjogYWFi
YzMwZjNiZDAzZjk3MzI2ZmI4NTk2OTEwYjk0NjM5ZmVhNzU3NQ0KPj4gbWV0YS1pbnRlbDogMjdk
YWRjZmM3YmMwZGU3MDMyOGIwMmZlY2I4NDE2MDgzODlkMjJmYw0KPj4gbWV0YS1taW5ndzogNjU1
NmNkZTE2ZmJkZjQyYzdlZGFlODliYjE4NmU1YWU0OTgyZWZmNQ0KPj4gbWV0YS1xdDM6IDIzZDc1
NDNlYmQ3ZTgyYmE5NWNiZTE5MDQzYWU0MjI5YmRiM2I2YjENCj4+IG1ldGEtcXQ0OiBiMzdkOGI5
MzkyNGIzMTRkZjM1OTFiNGE2MWUxOTRmZjNmZWI1NTE3DQo+PiBvZWNvcmU6IDQ1MDMyZTMwYmU3
MDUwM2ZhZWVlNDY4MTU5YjIxNjAzMWI3MjkzMDkNCj4+IHBva3k6IGZhZWIzNjZiYzNlYjMyMmY1
ZjIwM2NmZTA4ZGM0Y2Y1MjlhODIyZTkNCj4+DQo+Pg0KPj4NCj4+IFRoaXMgaXMgYW4gYXV0b21h
dGVkIG1lc3NhZ2UgZnJvbSB0aGUgWW9jdG8gUHJvamVjdCBBdXRvYnVpbGRlcg0KPj4gR2l0OiBn
aXQ6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy95b2N0by1hdXRvYnVpbGRlcjINCj4+IEVtYWlsOiBy
aWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnDQo+Pg0KPj4NCj4+DQo+PiAtLQ0KPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+IHlvY3Rv
IG1haWxpbmcgbGlzdA0KPj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPj4gaHR0cHM6Ly9saXN0
cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQoNCg==

