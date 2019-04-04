Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71259E00D15; Wed,  3 Apr 2019 22:40:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6CA1E00872
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 22:40:07 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Apr 2019 22:40:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,306,1549958400"; d="scan'208";a="139861819"
Received: from kmsmsx154.gar.corp.intel.com ([172.21.73.14])
	by orsmga003.jf.intel.com with ESMTP; 03 Apr 2019 22:40:01 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.210]) by
	KMSMSX154.gar.corp.intel.com ([169.254.12.227]) with mapi id
	14.03.0415.000; Thu, 4 Apr 2019 13:40:00 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	Poky Build User <pokybuild@ubuntu1604-ty-1.yocto.io>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>, Yi Zhao <yi.zhao@windriver.com>
Thread-Topic: [yocto] QA notification for completed autobuilder build
	(yocto-2.6.2.rc3)
Thread-Index: AQHU6f5qaDv8Jb6aFUmLcOIvpWvqFqYqv4YAgAC5cYA=
Date: Thu, 4 Apr 2019 05:39:59 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D043481AECCA@PGSMSX109.gar.corp.intel.com>
References: <20190328033000.C90DF1C2149@ubuntu1604-ty-1.yocto.io>
	<015AB11D45F2C442929CB2765DAE738634DB02DA@PGSMSX110.gar.corp.intel.com>
	<8322586b16a5bda01770480f7096837c13d26f6b.camel@linuxfoundation.org>
	<015AB11D45F2C442929CB2765DAE738634DC0126@PGSMSX110.gar.corp.intel.com>
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634DC0126@PGSMSX110.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWNlMDhhMzktNTlhNi00OWFmLTgzYTAtNjU0YjBhODE1Nzg1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZFAyRUt1a3BQeG9kUzFiR2JzVTdsY1FlbE5qUXl6MzJQczI0N3oybGF5dzdpRlp2ZjArTHExUW50VUFYS2lYeiJ9
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "akuster808@gmail.com" <akuster808@gmail.com>, "Chan, Aaron Chun
	Yew" <aaron.chun.yew.chan@intel.com>,
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
X-List-Received-Date: Thu, 04 Apr 2019 05:40:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCg0KU29ycnkgZm9yIHRoZSBjb25mdXNpb24uDQpZZXMsIHB1YmxpYyBhdXRv
YnVpbGRlciBoYWQgYWxyZWFkeSBjb3ZlcmVkIGFsbCBhdXRvbWF0ZWQgcnVudGltZSBxZW11IHRl
c3RzLiBXZSBkbyBub3QgcGxhbiB0byBydW4gYW55IGF1dG9tYXRlZCBydW50aW1lIHFlbXUgdGVz
dHMuIA0KDQpGb3IgYXV0b21hdGVkIHNlbGZ0ZXN0LCB3ZSBwbGFuIHRvIHJ1biBhIHN1YnNldCBv
ZiBzZWxmdGVzdCB0ZXN0cyBmb3IgYSBsaXN0IG9mIHFlbXUgYXJjaGl0ZWN0dXJlIChxZW11LXNo
dXRkb3duICYgbWV0YS1pZGUpLiAgRm9yIHRoZXNlIHN1YnNldCBvZiBzZWxmdGVzdCwgY291bGQg
d2UgZW5hYmxlZCB0aGVtIHRvIGJlIHJ1biBieSBwdWxpYyBhdXRvYnVpbGRlciBhcyBpdCBvbmx5
IHJlcXVpcmVkIGNoYW5naW5nIE1BQ0hJTkUgY29uZmlndXJhdGlvbiB0byBjb3ZlciBhbGwgcWVt
dSBhcmNoaXRlY3R1cmVzPyANCg0KSG9wZSB0aGlzIGhlbHAgdG8gY2xhcmlmeSB0aGUgY29uZnVz
aW9uLiBQbGVhc2UgbGV0IHVzIGtub3cgaWYgeW91IGhhdmUgYW55IG1vcmUgcXVlc3Rpb25zLiAN
Cg0KQmVzdCByZWdhcmRzLA0KWWVvaCBFZSBQZW5nIA0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KRnJvbTogSmFpbiwgU2FuZ2VldGEgDQpTZW50OiBUaHVyc2RheSwgQXByaWwgNCwgMjAx
OSAxMDoxOSBBTQ0KVG86IHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc7IFBva3kg
QnVpbGQgVXNlciA8cG9reWJ1aWxkQHVidW50dTE2MDQtdHktMS55b2N0by5pbz47IHlvY3RvQHlv
Y3RvcHJvamVjdC5vcmc7IHNqb2xsZXkueXAucG1AZ21haWwuY29tOyBZaSBaaGFvIDx5aS56aGFv
QHdpbmRyaXZlci5jb20+DQpDYzogb3RhdmlvQG9zc3lzdGVtcy5jb20uYnI7IENoYW4sIEFhcm9u
IENodW4gWWV3IDxhYXJvbi5jaHVuLnlldy5jaGFuQGludGVsLmNvbT47IGFrdXN0ZXI4MDhAZ21h
aWwuY29tOyBZZW9oLCBFZSBQZW5nIDxlZS5wZW5nLnllb2hAaW50ZWwuY29tPjsgU2FuZ2FsLCBB
cG9vcnYgPGFwb29ydi5zYW5nYWxAaW50ZWwuY29tPg0KU3ViamVjdDogUkU6IFt5b2N0b10gUUEg
bm90aWZpY2F0aW9uIGZvciBjb21wbGV0ZWQgYXV0b2J1aWxkZXIgYnVpbGQgKHlvY3RvLTIuNi4y
LnJjMykNCg0KSGkgUmljaGFyZCwNCg0KDQo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj5G
cm9tOiByaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnIA0KPjxyaWNoYXJkLnB1cmRp
ZUBsaW51eGZvdW5kYXRpb24ub3JnPg0KPlNlbnQ6IFdlZG5lc2RheSwgMyBBcHJpbCwgMjAxOSA1
OjIwIFBNDQo+VG86IEphaW4sIFNhbmdlZXRhIDxzYW5nZWV0YS5qYWluQGludGVsLmNvbT47IFBv
a3kgQnVpbGQgVXNlciANCj48cG9reWJ1aWxkQHVidW50dTE2MDQtdHktMS55b2N0by5pbz47IHlv
Y3RvQHlvY3RvcHJvamVjdC5vcmc7IA0KPnNqb2xsZXkueXAucG1AZ21haWwuY29tOyBZaSBaaGFv
IDx5aS56aGFvQHdpbmRyaXZlci5jb20+DQo+Q2M6IG90YXZpb0Bvc3N5c3RlbXMuY29tLmJyOyBD
aGFuLCBBYXJvbiBDaHVuIFlldyANCj48YWFyb24uY2h1bi55ZXcuY2hhbkBpbnRlbC5jb20+OyBh
a3VzdGVyODA4QGdtYWlsLmNvbTsgWWVvaCwgRWUgUGVuZyANCj48ZWUucGVuZy55ZW9oQGludGVs
LmNvbT47IFNhbmdhbCwgQXBvb3J2IDxhcG9vcnYuc2FuZ2FsQGludGVsLmNvbT4NCj5TdWJqZWN0
OiBSZTogW3lvY3RvXSBRQSBub3RpZmljYXRpb24gZm9yIGNvbXBsZXRlZCBhdXRvYnVpbGRlciBi
dWlsZCANCj4oeW9jdG8tDQo+Mi42LjIucmMzKQ0KPg0KPkhpLA0KPg0KPlRoaXMgaXMgZ29vZCBp
bmZvcm1hdGlvbiBhbmQgaGVscHMgYSBsb3QsIHRoYW5rcyEgSSBoYWQgYSBxdWVzdGlvbiBiZWxv
dy4NCj4NCj5PbiBXZWQsIDIwMTktMDQtMDMgYXQgMDg6MDYgKzAwMDAsIEphaW4sIFNhbmdlZXRh
IHdyb3RlOg0KPj4gSW50ZWwgYW5kIFdSIFlQIFFBIGlzIG5vdyB3b3JraW5nIG9uIFFBIGV4ZWN1
dGlvbiBmb3IgWVAgYnVpbGQgMi42LjIgDQo+PiBSQzMuIFdlIGFyZSBwbGFubmluZyB0byBleGVj
dXRlIGZvbGxvd2luZyB0ZXN0cyBmb3IgdGhpcyBjeWNsZToNCj4+DQo+PiBPRVFBLU1hbnVhbCB0
ZXN0cyBmb3IgZm9sbG93aW5nIG1vZHVsZXM6DQo+PiAxLglTREsNCj4+IDIuCUVjbGlwc2UtcGx1
Z2luDQo+PiAzLglLZXJuZWwNCj4+IDQuCVRvYXN0ZXINCj4+IDUuCUJpdGJha2UgKG9lLWNvcmUp
DQo+PiA2LglCdWlsZC1hcHBsaWFuY2UNCj4+IDcuCUNyb3BzDQo+PiA4LglDb21wbGlhbmNlLXRl
c3QNCj4+IDkuCUJzcC1odw0KPj4gMTAuCUJzcC1xZW11DQo+Pg0KPj4gUnVudGltZSBhdXRvIHRl
c3QgZm9yIGZvbGxvd2luZyBwbGF0Zm9ybXM6DQo+Pg0KPj4gMS4JTWlubm93VHVyYm8gMzJiaXQN
Cj4+IDIuCU1pbm5vd1R1cmJvdCA2NCBiaXQNCj4+IDMuCU5VQyA3DQo+PiA0LglOVUMgNg0KPj4g
NS4JRWRnZXJvdXRlcg0KPj4gNi4JTVBDODMxNWUtcmRiDQo+PiA3LglCZWFnbGVib25lDQo+PiA4
LglRZW11YXJtDQo+PiA5LglRZW11YXJtLTY0DQo+PiAxMC4JUWVtdXBwYw0KPj4gMTEuCVFlbXVt
aXBzDQo+PiAxMi4JUWVtdW1pcHM2NA0KPg0KPkknbSB3b25kZXJpbmcgaWYgdGhlcmUgaXMgYW55
IGRpZmZlcmVuY2UgYmV0d2VlbiBpdGVtcyA4LTEyIGhlcmUgYW5kIA0KPnRoZSBydW50aW1lIHRl
c3Rpbmcgd2UgcnVuIG9uIHRoZSBwdWJsaWMgYXV0b2J1aWxkZXI/IElzIHRoZXJlIHNvbWUgDQo+
dGVzdGluZyB3ZSdyZSBtaXNzaW5nIG9uIHRoZSBwdWJsaWMgYXV0b2J1aWxkZXI/DQoNCldlIHdp
bGwgYmUgcnVubmluZyBvZS1zZWxmdGVzdCBmb3IgbWFjaGluZXMgOC0xMiwgd2hpY2ggaXMgbWlz
c2luZyBpbiBhdXRvYnVpbGRlciByZXN1bHRzLg0KDQpBbHNvLCBJIGRvbid0IHNlZSBhbnkgcHRl
c3QgcmVzdWx0cyBmb3IgMi42LjIucmMzIG9uIHB1YmxpYyBhdXRvYnVpbGRlci4gRG8geW91IGhh
dmUgYW55IHBsYW5zIHRvIHJ1biB0aGVtIGFuZCBzaGFyZSB0aGUgcmVzdWx0cyBvbiBhdXRvYnVp
bGRlcj8NCg0KDQo+DQo+Q2hlZXJzLA0KPg0KPlJpY2hhcmQNCj4NCg0KVGhhbmtzICYgUmVnYXJk
cywNClNhbmdlZXRhIEphaW4NCg==

