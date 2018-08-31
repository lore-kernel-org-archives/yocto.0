Return-Path: <AMardegan@luxoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43555E0074B; Fri, 31 Aug 2018 06:58:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [109.166.244.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Fri, 31 Aug 2018 06:58:42 PDT
Received: from ORO-EDGE-01.luxoft.com (oro-edge-01.luxoft.com [109.166.244.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2896E00566
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 06:58:42 -0700 (PDT)
Received: from oro-exch-03.luxoft.com (172.25.192.31) by
	oro-edge-01.luxoft.com (172.30.19.21) with Microsoft SMTP Server (TLS)
	id 14.3.382.0; Fri, 31 Aug 2018 16:57:33 +0300
Received: from oro-exch-03.luxoft.com (172.25.192.31) by
	oro-exch-03.luxoft.com (172.25.192.31) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id
	15.1.1466.3; Fri, 31 Aug 2018 16:57:41 +0300
Received: from oro-exch-03.luxoft.com ([fe80::4935:509f:bc19:9ace]) by
	oro-exch-03.luxoft.com ([fe80::4935:509f:bc19:9ace%13]) with mapi id
	15.01.1466.003; Fri, 31 Aug 2018 16:57:41 +0300
From: "Mardegan, Alberto" <AMardegan@luxoft.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Disabling building PTESTs in a bbappend
Thread-Index: AQHUQSvR+FAY2Rq3jEia79PoJf72RKTZpaWAgAAK3IA=
Date: Fri, 31 Aug 2018 13:57:41 +0000
Message-ID: <0188c823-e179-4c91-ddc5-264dd46bb19e@luxoft.com>
References: <e941ec4d-4888-a7e3-fff1-89dcdcfb0831@luxoft.com>
	<CAJTo0Lb94GwaNeHJ6Nfoyu=AnJSb5i05ZExbK35TbZALoF2o0g@mail.gmail.com>
In-Reply-To: <CAJTo0Lb94GwaNeHJ6Nfoyu=AnJSb5i05ZExbK35TbZALoF2o0g@mail.gmail.com>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.19.68]
MIME-Version: 1.0
Subject: Re: Disabling building PTESTs in a bbappend
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
X-List-Received-Date: Fri, 31 Aug 2018 13:58:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <8ED2DC2B6A68974E9947388897D91F12@luxoft.com>
Content-Transfer-Encoding: base64

T24gMzEvMDgvMjAxOCAxNjoxOCwgQnVydG9uLCBSb3NzIHdyb3RlOg0KPiBJbiBhIGxvY2FsLmNv
bmY6DQo+DQo+IFBURVNUX0VOQUJMRV9wbi1hcHBhcm1vciA9ICIwIg0KPg0KPiAodGhlIG92ZXJy
aWRlcyBhcmUgcHJlZml4ZWQgd2l0aCBwbi0pDQo+DQo+IEluIGEgYmJhcHBlbmQganVzdCBQVEVT
VF9FTkFCTEU9IjAiIHdpbGwgd29yay4NCg0KVGhhbmtzIFJvc3MsIEkgdHJpZWQgdGhlIGJiYXBw
ZW5kIHNvbHV0aW9uIGFuZCBpdCB3b3JrcyBpbmRlZWQgKGJ1dCBpdCdzDQpQVEVTVF9FTkFCTEVE
LCB3aXRoIHRoZSBmaW5hbCAiRCIpIQ0KDQpDaWFvLA0KICBBbGJlcnRvDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQoNClRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudChz
KSBhcmUgaW50ZW5kZWQgb25seSBmb3IgdGhlIHJlY2lwaWVudChzKSBuYW1lZCBhYm92ZSBhbmQg
b3RoZXJzIHdobyBoYXZlIGJlZW4gc3BlY2lmaWNhbGx5IGF1dGhvcml6ZWQgdG8gcmVjZWl2ZSB0
aGVtLiBUaGV5IG1heSBjb250YWluIGNvbmZpZGVudGlhbCBpbmZvcm1hdGlvbi4gSWYgeW91IGFy
ZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNlIGRvIG5vdCByZWFkIHRoaXMgZW1h
aWwgb3IgaXRzIGF0dGFjaG1lbnQocykuIEZ1cnRoZXJtb3JlLCB5b3UgYXJlIGhlcmVieSBub3Rp
ZmllZCB0aGF0IGFueSBkaXNzZW1pbmF0aW9uLCBkaXN0cmlidXRpb24gb3IgY29weWluZyBvZiB0
aGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnQocykgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4g
SWYgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyBlLW1haWwgaW4gZXJyb3IsIHBsZWFzZSBpbW1lZGlh
dGVseSBub3RpZnkgdGhlIHNlbmRlciBieSByZXBseWluZyB0byB0aGlzIGUtbWFpbCBhbmQgdGhl
biBkZWxldGUgdGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2htZW50KHMpIG9yIGNvcGllcyB0aGVy
ZW9mIGZyb20geW91ciBzeXN0ZW0uIFRoYW5rIHlvdS4NCg==

