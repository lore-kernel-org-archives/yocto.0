Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FCCBE00DC2; Wed, 19 Oct 2016 03:45:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.181.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 146 seconds by postgrey-1.32 at yocto-www;
	Wed, 19 Oct 2016 03:45:02 PDT
Received: from smtp-out11.electric.net (smtp-out11.electric.net
	[185.38.181.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D2F5E00D73
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 03:45:02 -0700 (PDT)
Received: from 1bwoKQ-0000WF-TH by out11a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <sona.sarmadi@enea.com>)
	id 1bwoKQ-0000YZ-Uk; Wed, 19 Oct 2016 03:42:34 -0700
Received: by emcmailer; Wed, 19 Oct 2016 03:42:34 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out11a.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <sona.sarmadi@enea.com>)
	id 1bwoKQ-0000WF-TH; Wed, 19 Oct 2016 03:42:34 -0700
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0294.000; Wed, 19 Oct 2016 12:42:33 +0200
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] General policies for CVE fixes
Thread-Index: AdIops8PMQLs+sONS66i/C5NaWzGDwAEsoOAAE7zoIA=
Date: Wed, 19 Oct 2016 10:42:32 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48ABE9A5A1@SESTOEX04.enea.se>
References: <3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se>
	<CAMKF1sp_qLfdeFvHzi+VD-6tFbX-f372uiRmKjeXRG3w1WVwkQ@mail.gmail.com>
In-Reply-To: <CAMKF1sp_qLfdeFvHzi+VD-6tFbX-f372uiRmKjeXRG3w1WVwkQ@mail.gmail.com>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.142.231]
MIME-Version: 1.0
X-Outbound-IP: 192.36.1.72
X-Env-From: sona.sarmadi@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: General policies for CVE fixes
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
X-List-Received-Date: Wed, 19 Oct 2016 10:45:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQo+ID4gRnJvbSBodHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL1N0YWJsZV9icmFu
Y2hfbWFpbnRlbmFuY2U6DQo+ID4NCj4gPiBHZW5lcmFsIHBvbGljaWVzOg0KPiA+DQo+ID4gRml4
ZXMgbXVzdCBnbyBpbnRvIG1hc3RlciBmaXJzdCB1bmxlc3MgdGhleSBhcmUgYXBwbGljYWJsZSBv
bmx5IHRvIHRoZQ0KPiA+IHN0YWJsZSBicmFuY2g7IGlmIGJhY2stcG9ydGluZyB0byBhbiBvbGRl
ciBzdGFibGUgYnJhbmNoLCB0aGUgZml4DQo+ID4gc2hvdWxkIGZpcnN0IGJlIGFwcGxpZWQgdG8g
dGhlIG5ld2VyIHN0YWJsZSBicmFuY2hlcyBiZWZvcmUgYmVpbmcNCj4gPiBiYWNrLXBvcnRlZCB0
byB0aGUgb2xkZXIgYnJhbmNoDQo+ID4NCj4gPiBEb2VzIGFueW9uZSBrbm93IHRoZSByZWFzb24g
Zm9yIHRoZSBwb2xpY3kgYWJvdmUgaS5lLiB3aHkgZml4ZXMgaGF2ZQ0KPiA+IHRvIGdvIHRvIG1h
c3RlciBmaXJzdD8NCj4gPg0KPiA+IDEpICAgICAgSXQgbWFrZXMgbW9yZSBzZW5zZSBhdCBsZWFz
dCBmb3IgdXNlcnMgIHRvIGdldCBDVkUgZml4ZXMgYXMgc29vbiBhcw0KPiA+IHBvc3NpYmxlIGlu
IHRoZSBtYWludGVuYW5jZSBicmFuY2hlcy4NCj4gDQo+IHRoaXMgaXMgdG8gZW5zdXJlLCB0aGF0
IHdlIGRvIG5vdCByZWdyZXNzIG5leHQgdGltZSB3aGVuIHdlIHJlbGVhc2UgbmV4dA0KPiB2ZXJz
aW9uIGZyb20gbWFzdGVyLiBTbyBpdHMgaW1wb3J0YW50IHRvIGVuc3VyZSB0aGF0IHRoZSBmaXgg
aGFzIGJlZW4NCj4gYXBwbGllZCB0byBtYXN0ZXIgc29tZXRpbWVzIHlvdSBjYW4gYXNzZXJ0IHRo
YXQgdGhlIGZpeCBoYXMgZ29uZSBpbnRvIG5ldw0KPiB2ZXJzaW9uIG9mIGEgcGFja2FnZSB0aGF0
IGlzIGR1ZSB0byBiZSB1cHJldnZlZCBpbiBtYXN0ZXIgYW5kIHdpbGwgYmUNCj4gZG9uZSBzb29u
aXNoLiBTdWNoIGluZm9ybWF0aW9uIGlzIGhlbHBmdWwgd2hlbiBtYWtpbmcgc2VjdXJpdHkgcGF0
Y2hlcw0KPiBmb3IgcmVsZWFzZSBicmFuY2hlcy4NCj4gDQo+IEFjdHVhbGx5IHRoZXJlIHdhcyBh
IHN1Z2dlc3Rpb24gYXQgT0VERU0gb24gaW5mb3JtaW5nIENWRSBtbCB0aGF0IHdlDQo+IGhhdmUg
YXMgdGhlIENWRSBmaXhlcyBnZXQgYXBwbGllZCB0byBtZXRhZGF0YS4gVGhhdHMgYSBnb29kIHN1
Z2dlc3Rpb24gdG8NCj4gaGF2ZSBpbXBsZW1lbnRlZC4NCg0KDQpUaGFua3MgZXZlcnlvbmUgZm9y
IHlvdXIgZXhwbGFuYXRpb24uDQoNClllcyByZWdyZXNzaW9ucyAoZm9yZ2V0dGluZyB0byBmaXgg
YnVncyBpbiBtYXN0ZXIpIGFyZSBiYWQuICBJIGJlbGlldmUgdGhlcmUNCmFyZSBvdGhlciB3YXlz
IHRvIGF2b2lkIHRoaXMsIFlvY3RvIHByb2plY3QgaGFzIGEgYnVnIHJlcG9ydGluZyBzeXN0ZW0g
dG8gDQpoYXZlIHRyYWNrIG9mIHN1Y2ggdGhpbmdzLCByaWdodD8NCg0KTWFpbnRlbmFuY2UgYnJh
bmNoZXMgYXJlIGxpa2VseSBkZXBsb3llZCBpbiBwcm9kdWN0aW9uIHN5c3RlbXMsIEkgdGhpbmsN
CkZpeGluZyBzZWN1cml0eSBwcm9ibGVtcyBoZXJlIHNob3VsZCBoYXZlIGhpZ2hlciBwcmlvcml0
eS4gRG9uJ3QgeW91IGFncmVlPw0KDQpQZXJoYXBzIHdlIHNob3VsZCBkaXNjdXNzIHRoaXMgYXQg
bmV4dCBPRURFTSA6KQ0KDQpDaGVlcnMgLy9Tb25hDQo=

