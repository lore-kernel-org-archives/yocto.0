Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E21E3E0086B; Thu, 25 Sep 2014 01:22:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 67CDEE00868
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 01:22:34 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0158.001; Thu, 25 Sep 2014 10:22:24 +0200
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: "Burton, Ross" <ross.burton@intel.com>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: CVE-2014-6271: remote code execution through bash
Thread-Index: Ac/YmbY3bUJpuijYRhe71kl9VOEtng==
Date: Thu, 25 Sep 2014 08:22:24 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E4825731D03@SESTOEX04.enea.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.6]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: CVE-2014-6271: remote code execution through bash
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
X-List-Received-Date: Thu, 25 Sep 2014 08:22:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U2VjdXJpdHkgYnVnIGluIGJhc2g6DQoNCmh0dHA6Ly9zZWNsaXN0cy5vcmcvb3NzLXNlYy8yMDE0
L3EzLzY0OQ0KDQovU29uYQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0NCj4gU2VudDogZGVu
IDI0IHNlcHRlbWJlciAyMDE0IDIyOjU5DQo+IFRvOiBTb25hIFNhcm1hZGkNCj4gQ2M6IEpvbGxl
eSwgU3RlcGhlbiBLOyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbeW9j
dG9dIE1pbnV0ZXM6IFlvY3RvIFByb2plY3QgVGVjaG5pY2FsIFRlYW0gTWVldGluZyAtDQo+IFR1
ZXNkYXksIFNlcHRlbWJlciA5LCAyMDE0IDg6MDAgQU0gVVMgUGFjaWZpYyBUaW1lDQo+IA0KPiBP
biAyNCBTZXB0ZW1iZXIgMjAxNCAxMjo0NCwgU29uYSBTYXJtYWRpIDxzb25hLnNhcm1hZGlAZW5l
YS5jb20+DQo+IHdyb3RlOg0KPiA+PiBBcyB3ZWxsIGFzIHNlY3VyaXR5IGZpeGVzIGZvciB0aGUg
a2VybmVsLCBkbyB5b3UgYWxzbyBjb3ZlciBzZWN1cml0eQ0KPiA+PiBmaXhlcyBmb3IgdGhlIHVz
ZXJzcGFjZSAoaS5lLiBldmVyeXRoaW5nIGVsc2UgaW4gb2UtY29yZSk/ICBIZWxwDQo+ID4+IGtl
ZXBpbmcgdGhlIHJlc3Qgb2YgdGhlIHN5c3RlbSBzYWZlLCBhbmQgcmVsZXZhbnQgZml4ZXMgYmFj
a3BvcnRlZCB0bw0KPiA+PiB0aGUgc3RhYmxlIHJlbGVhc2VzLCBpcyBhbHdheXMgd2VsY29tZS4N
Cj4gPg0KPiA+IFllcywgd2UgbW9uaXRvciBvc3Mtc2VjdXJpdHkgcHVibGljIG1haWxpbmcgbGlz
dCwgYXMgc29vbiBhIG5ldyB2dWxuZXJhYmlsaXR5DQo+IChDVkUpIGluIHRoZSBMaW51eCBrZXJu
ZWwgb3IgdXNlcnNwYWNlIGlzIGFubm91bmNlZCBpbiB0aGF0IGxpc3QsIHdlIHRyeSB0bw0KPiBj
YXRjaCB0aGVtIGFuZCBiYWNrcG9ydCBhbGwgd2hpY2ggYXJlIHJlbGV2YW50LiBXZSBsb29rIGZv
ciBvdGhlciBzb3VyY2VzIGFzDQo+IHdlbGwgYnV0IG9zcy1zZWN1cml5IChvc3Mtc2VjdXJpdHlA
bGlzdHMub3BlbndhbGwuY29tKSBpcyBhIGdvb2QNCj4gc291cmNlL21haWxpbmcgbGlzdC8gdG8g
ZGV0ZWN0IHZ1bG5lcmFiaWxpdGllcyBpbiBvcGVuIHNvdXJjZSBwcm9kdWN0cyAoa2VybmVsDQo+
ICYgdXNlcnNwYWNlKS4NCj4gDQo+IA0KPiBXZWxsIHRoaXMgaXMgY29udmVuaWVudCB0aW1pbmcu
Li4gIEknbSBzdXJlIHlvdSd2ZSBub3RpY2VkIHRoZSBDVkUgaW4gYmFzaCwgd2lsbA0KPiB5b3Vy
IHRlYW0gYmUgYWJsZSB0byBzdWJtaXQgcGF0Y2hlcyBmb3IgdGhlIHJlbGVhc2VzIHdlIGFyZSBz
dXBwb3J0aW5nICgxLjQNCj4gb253YXJkcyk/DQo+IA0KPiBSb3NzDQo=

