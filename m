Return-Path: <hgovind@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26606E00C71; Sun, 16 Oct 2016 13:49:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.86.76 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Sun, 16 Oct 2016 13:49:06 PDT
Received: from rcdn-iport-5.cisco.com (rcdn-iport-5.cisco.com [173.37.86.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78FD5E00C6A
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 13:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=4754; q=dns/txt; s=iport;
	t=1476650946; x=1477860546;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-transfer-encoding:mime-version;
	bh=0jiI31tkX86yoHcQPnbNiNVi9hJQl+FMxTA72vLIuWU=;
	b=kXv68PfRM8RIgfFtCxWSchlFaEiF7NqwRNRHbZKXgk8Ie1jxZOXoFDJk
	GsLdr+Wv6yC6kxbjbW7gLacbzxkpk35q5J0pQfwnfrIG4oa+MSVkDqO1F
	e538TbQSgdg6kJv+NV1xVEwvAjmBV1B87lJ2xZrUNQGKiJhZeiC3nR/np 0=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AgAQCo5gNY/5hdJa1cGQEBAQEBAQEBA?=
	=?us-ascii?q?QEBBwEBAQEBgzwBAQEBAR2BUweNLZcEh16MWoIIhiICGoF5OBQBAgEBAQEBAQF?=
	=?us-ascii?q?eJ4RhAQEBBCMRRQwEAgEIEQQBAQECAiMDAgICHxEUAQgIAQEEDgUIiDADF7U7i?=
	=?us-ascii?q?HYNg28BAQEBAQEBAQEBAQEBAQEBAQEBAQEdgQeFNoRVgkeFBII+HQWINYdGhDC?=
	=?us-ascii?q?FJjUBjHWDB4F1hGeJIIhlhBaDfwEeNlKCfhyBU3KHA4EAAQEB?=
X-IronPort-AV: E=Sophos;i="5.31,355,1473120000"; d="scan'208";a="160549329"
Received: from rcdn-core-1.cisco.com ([173.37.93.152])
	by rcdn-iport-5.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Oct 2016 20:48:03 +0000
Received: from XCH-RTP-002.cisco.com (xch-rtp-002.cisco.com [64.101.220.142])
	by rcdn-core-1.cisco.com (8.14.5/8.14.5) with ESMTP id u9GKm2nE025064
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Sun, 16 Oct 2016 20:48:03 GMT
Received: from xch-rtp-003.cisco.com (64.101.220.143) by XCH-RTP-002.cisco.com
	(64.101.220.142) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Sun, 16 Oct 2016 16:48:01 -0400
Received: from xch-rtp-003.cisco.com ([64.101.220.143]) by
	XCH-RTP-003.cisco.com ([64.101.220.143]) with mapi id 15.00.1210.000;
	Sun, 16 Oct 2016 16:48:01 -0400
From: "Harshal Govind (hgovind)" <hgovind@cisco.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] building uclibc based image for arm
Thread-Index: AdIk7kCpcQmT3ppAQ8q/CckET7JCDwCkAZ4AABvzNhA=
Date: Sun, 16 Oct 2016 20:48:01 +0000
Message-ID: <853f6e67657040b5a99e5d3a17fb858e@XCH-RTP-003.cisco.com>
References: <354bb7fd02a644249f3422a333f3f0ec@XCH-RTP-003.cisco.com>
	<CAMKF1sr7R6CiCrKRcmAj6O0UK-vpZs2enWpzNRYc7qXskKprhw@mail.gmail.com>
In-Reply-To: <CAMKF1sr7R6CiCrKRcmAj6O0UK-vpZs2enWpzNRYc7qXskKprhw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.27.46]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 17 Oct 2016 07:30:12 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: building uclibc based image for arm
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
X-List-Received-Date: Sun, 16 Oct 2016 20:49:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIFJhaiENCg0KSSB3YXMgcHVsbGluZyB5b2N0byAxLjcuMiBhbmQgZGlkIG5vdCBhZGQg
YW55IGN1c3RvbSByZWNpcGUgb3IgdGFyZ2V0LiBJIGp1c3QgYnVpbGQgY29yZS1pbWFnZS1taW5p
bWFsIGltYWdlIHdpdGggZW5hYmxpbmcgdWNsaWJjIGluICJtZXRhL2NvbmYvZGlzdHJvL2RlZmF1
bHRzZXR1cC5jb25mIiAoI1RDTElCQyA/PSAidWNsaWJjIikNCg0KQnV0IGlmIEkgZG8gc2FtZSB0
aGluZyB3aXRoIHlvY3RvIDIuMCBvciAyLjEsIGl0IGdvZXMgc3VjY2Vzc2Z1bCBhbmQgYnVpbGRz
IHVjbGliYyBiYXNlZCBpbWFnZXMuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9t
OiBLaGVtIFJhaiBbbWFpbHRvOnJhai5raGVtQGdtYWlsLmNvbV0gDQpTZW50OiBTYXR1cmRheSwg
T2N0b2JlciAxNSwgMjAxNiA4OjI0IFBNDQpUbzogSGFyc2hhbCBHb3ZpbmQgKGhnb3ZpbmQpIDxo
Z292aW5kQGNpc2NvLmNvbT4NCkNjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBS
ZTogW3lvY3RvXSBidWlsZGluZyB1Y2xpYmMgYmFzZWQgaW1hZ2UgZm9yIGFybQ0KDQpPbiBXZWQs
IE9jdCAxMiwgMjAxNiBhdCA2OjA4IFBNLCBIYXJzaGFsIEdvdmluZCAoaGdvdmluZCkgPGhnb3Zp
bmRAY2lzY28uY29tPiB3cm90ZToNCj4gSGksDQo+DQo+DQo+DQo+DQo+DQo+IEkgYW0gdHJ5aW5n
IGJ1aWxkIHVjbGliYyBiYXNlZCBpbWFnZS4gQnV0IGdldHRpbmcgZm9sbG93aW5nIGVycm9yLg0K
Pg0KPiBOb3RlOg0KPg0KPiAtICAgICAgICAgIEkgYW0gdXNpbmcgeW9jdG8tMS43LjINCj4NCj4g
LSAgICAgICAgICBTZXQgVENMSUJDID89ICJ1Y2xpYmMiIGluIGRpc3Ryby9kZWZhdWx0c2V0dXAu
Y29uZg0KPg0KPiAtICAgICAgICAgIEJ1aWxkaW5nIGZvciBhcm0NCj4NCj4NCj4NCj4gIyBiaXRi
YWtlIGNvcmUtaW1hZ2UtbWluaW1hbA0KPg0KPg0KPg0KPiBOT1RFOiBQcmVwYXJpbmcgcnVucXVl
dWUNCj4NCj4gTk9URTogRXhlY3V0aW5nIFNldFNjZW5lIFRhc2tzDQo+DQo+IE5PVEU6IEV4ZWN1
dGluZyBSdW5RdWV1ZSBUYXNrcw0KPg0KPiBFUlJPUjogRnVuY3Rpb24gZmFpbGVkOiBkb19pbnN0
YWxsIChsb2cgZmlsZSBpcyBsb2NhdGVkIGF0DQo+IC9ob21lL2hnb3ZpbmQvcHJvamVjdHMvdGVt
cC90ZXN0LXNkay9hcC1zZGsveXBfYXAvdG1wL3dvcmsvYXJtdjdhLXZmcC0NCj4gbmVvbi1wb2t5
LWxpbnV4LXVjbGliY2VhYmkvZ2xpYmMtbG9jYWxlLzIuMjAtcjAvdGVtcC9sb2cuZG9faW5zdGFs
bC4yOQ0KPiA0NDUpDQo+DQo+IEVSUk9SOiBMb2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVkIGluOg0K
PiAvaG9tZS9oZ292aW5kL3Byb2plY3RzL3RlbXAvdGVzdC1zZGsvYXAtc2RrL3lwX2FwL3RtcC93
b3JrL2FybXY3YS12ZnAtDQo+IG5lb24tcG9reS1saW51eC11Y2xpYmNlYWJpL2dsaWJjLWxvY2Fs
ZS8yLjIwLXIwL3RlbXAvbG9nLmRvX2luc3RhbGwuMjkNCj4gNDQ1DQo+DQo+IExvZyBkYXRhIGZv
bGxvd3M6DQo+DQo+IHwgREVCVUc6IEV4ZWN1dGluZyBzaGVsbCBmdW5jdGlvbiBkb19pbnN0YWxs
DQo+DQo+IHwgbHM6IGNhbm5vdCBhY2Nlc3MNCj4gL2hvbWUvaGdvdmluZC9wcm9qZWN0cy90ZW1w
L3Rlc3Qtc2RrL2FwLXNkay95cF9hcC90bXAvc3lzcm9vdHMvYXAzay1seGMvdXNyL2luY2x1ZGUv
Z2xpYmMtbG9jYWxlLWludGVybmFsLWFybXY3YS12ZnAtbmVvbi1wb2t5LWxpbnV4LXVjbGliY2Vh
YmkvL3Vzci9iaW46DQo+IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkNCj4NCj4gfCBsczogY2Fu
bm90IGFjY2Vzcw0KPiAvaG9tZS9oZ292aW5kL3Byb2plY3RzL3RlbXAvdGVzdC1zZGsvYXAtc2Rr
L3lwX2FwL3RtcC9zeXNyb290cy9hcDNrLWx4Yy91c3IvaW5jbHVkZS9nbGliYy1sb2NhbGUtaW50
ZXJuYWwtYXJtdjdhLXZmcC1uZW9uLXBva3ktbGludXgtdWNsaWJjZWFiaS8vdXNyL2xpYi9sb2Nh
bGU6DQo+IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkNCj4NCj4gfCBjcDogY2Fubm90IHN0YXQN
Cj4gJy9ob21lL2hnb3ZpbmQvcHJvamVjdHMvdGVtcC90ZXN0LXNkay9hcC1zZGsveXBfYXAvdG1w
L3N5c3Jvb3RzL2FwM2stbHhjL3Vzci9pbmNsdWRlL2dsaWJjLWxvY2FsZS1pbnRlcm5hbC1hcm12
N2EtdmZwLW5lb24tcG9reS1saW51eC11Y2xpYmNlYWJpL1NVUFBPUlRFRCc6DQo+IE5vIHN1Y2gg
ZmlsZSBvciBkaXJlY3RvcnkNCj4NCj4gfCBXQVJOSU5HOiBleGl0IGNvZGUgMSBmcm9tIGEgc2hl
bGwgY29tbWFuZC4NCj4NCj4gfCBFUlJPUjogRnVuY3Rpb24gZmFpbGVkOiBkb19pbnN0YWxsIChs
b2cgZmlsZSBpcyBsb2NhdGVkIGF0DQo+IC9ob21lL2hnb3ZpbmQvcHJvamVjdHMvdGVtcC90ZXN0
LXNkay9hcC1zZGsveXBfYXAvdG1wL3dvcmsvYXJtdjdhLXZmcC0NCj4gbmVvbi1wb2t5LWxpbnV4
LXVjbGliY2VhYmkvZ2xpYmMtbG9jYWxlLzIuMjAtcjAvdGVtcC9sb2cuZG9faW5zdGFsbC4yOQ0K
PiA0NDUpDQo+DQo+IEVSUk9SOiBUYXNrIDEwOTQNCj4gKC9ob21lL2hnb3ZpbmQvcHJvamVjdHMv
dGVtcC90ZXN0LXNkay9hcC1zZGsvc3lzL3lvY3RvLTEuNy9wb2t5LWRpenp5LQ0KPiAxMi4wLjIv
bWV0YS9yZWNpcGVzLWNvcmUvZ2xpYmMvZ2xpYmMtbG9jYWxlXzIuMjAuYmIsDQo+IGRvX2luc3Rh
bGwpIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScNCj4NCj4gTk9URTogVGFza3MgU3VtbWFyeTog
QXR0ZW1wdGVkIDc4MCB0YXNrcyBvZiB3aGljaCA3MDMgZGlkbid0IG5lZWQgdG8gDQo+IGJlIHJl
cnVuIGFuZCAxIGZhaWxlZC4NCj4NCj4gV2FpdGluZyBmb3IgMCBydW5uaW5nIHRhc2tzIHRvIGZp
bmlzaDoNCj4NCj4NCj4NCj4gU3VtbWFyeTogMSB0YXNrIGZhaWxlZDoNCj4NCj4NCj4gL2hvbWUv
aGdvdmluZC9wcm9qZWN0cy90ZW1wL3Rlc3Qtc2RrL2FwLXNkay9zeXMveW9jdG8tMS43L3Bva3kt
ZGl6enktMQ0KPiAyLjAuMi9tZXRhL3JlY2lwZXMtY29yZS9nbGliYy9nbGliYy1sb2NhbGVfMi4y
MC5iYiwNCj4gZG9faW5zdGFsbA0KPg0KPiBTdW1tYXJ5OiBUaGVyZSB3YXMgMSBFUlJPUiBtZXNz
YWdlIHNob3duLCByZXR1cm5pbmcgYSBub24temVybyBleGl0IGNvZGUuDQo+DQo+DQo+DQo+DQo+
DQo+IENvdWxkIHlvdSBwbGVhc2UgbGV0IG1lIGtub3cgaWYgSSBhbSBmb2xsb3dpbmcgY29ycmVj
dCBzdGVwcyB0byBjcmVhdGUgDQo+IHVjbGliYyBiYXNlZCBpbWFnZT8NCj4NCg0Kd2hlbiB1c2lu
ZyB1Y2xpYmMsIGl0IHNob3VsZCBub3QgcHVsbCBhbnkgZ2xpYmMgY29tcG9uZW50cyBmb3IgdGFy
Z2V0cy4gYnV0IGl0cyBoYXBwZW5pbmcgZm9yIHlvdXIgY2FzZSBzbyBmaWd1cmUgb3V0IGhvdyB0
aGlzIGlzIGdldHRpbmcgaW50byBkZXBlbmRlbmNpZXMuIE1heSBiZSB5b3UgYXJlIGluY2x1ZGlu
ZyBpdCBleHBsaWNpdGx5IG9yIGl0cyBjb21pbmcgdmlhIGluZGlyZWN0IGRlcHMuIHlvdSBjYW4g
dXNlIGJpdGJha2UgLWcgdG8gZ2VuZXJhdGUgZGVwIGluZm8gYW5kIGluc3BlY3QgaXQNCg==

