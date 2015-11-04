Return-Path: <Martin.Hecht@avnet.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93F38E00AE4; Wed,  4 Nov 2015 06:03:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.34.102.151 listed in list.dnswl.org]
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Wed, 04 Nov 2015 06:03:31 PST
Received: from smtp1.avnet.eu (smtp1.avnet.eu [193.34.102.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D401E00ACE
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2015 06:03:31 -0800 (PST)
Received: from depoiy0mx08hub2.msg.avnet.eu (Not Verified[172.23.112.144]) by
	smtp1.avnet.eu (using TLS: TLSv1, AES256-SHA)
	id <B563a0ca90001>; Wed, 04 Nov 2015 14:48:25 +0100
Received: from DEPOIY0MX08MB03.msg.avnet.eu ([fe80::dc3d:167:c722:6c28]) by
	depoiy0mx08hub2.msg.avnet.eu ([fe80::2d49:fddb:ba86:d0f7%12]) with mapi
	id 14.03.0248.002; Wed, 4 Nov 2015 14:47:55 +0100
From: "Hecht, Martin (Silica)" <Martin.Hecht@avnet.eu>
To: Toby Gomersall <toby.gomersall@smartacoustics.co.uk>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] yocto on zynq, How to configure kernel to include drivers
Thread-Index: AQHRFwbPd6XUGDvPcE6r7QYadcGi3J6L4ARQ
Date: Wed, 4 Nov 2015 13:47:54 +0000
Message-ID: <1B92730CF2B23F4DB7A48AAE6E3CAA361461CA0B@DEPOIY0MX08MB03.msg.avnet.eu>
References: <563A09A3.4050706@smartacoustics.co.uk>
In-Reply-To: <563A09A3.4050706@smartacoustics.co.uk>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.252.22.15]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 04 Nov 2015 07:48:49 -0800
Subject: Re: yocto on zynq, How to configure kernel to include drivers
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
X-List-Received-Date: Wed, 04 Nov 2015 14:03:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgVG9ieSwNCg0KUGxlYXNlIGNvbXBhcmUgd2l0aCBodHRwOi8vd3d3Lndpa2kueGlsaW54LmNv
bS9MaW51eCtEcml2ZXJzLiBNb3N0IG9mIHRoZSBETUEgZHJpdmVycyBhcmVuJ3QgbWFpbmxpbmVk
IGJ5IG5vdy4gWW91IG5lZWQgdG8gYWRkIHRoZW0gYnkgeW91cnNlbGYgY3VycmVudGx5Lg0KDQpS
ZWdhcmRzLA0KTWFydGluDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHlv
Y3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLWJvdW5jZXNAeW9jdG9w
cm9qZWN0Lm9yZ10gT24gQmVoYWxmIE9mIFRvYnkgR29tZXJzYWxsDQpTZW50OiBNaXR0d29jaCwg
NC4gTm92ZW1iZXIgMjAxNSAxNDo0NA0KVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1Ympl
Y3Q6IFt5b2N0b10geW9jdG8gb24genlucSwgSG93IHRvIGNvbmZpZ3VyZSBrZXJuZWwgdG8gaW5j
bHVkZSBkcml2ZXJzDQoNCkknbSBxdWl0ZSBuZXcgdG8geW9jdG8gc28gc3RpbGwgaGF2ZSBhIGxv
dCB0byBsZWFybi4gSSdtIHRyeWluZyB0byBpbmNsdWRlIHRoZSBETUEgZHJpdmVycyBpbiBteSB5
b2N0byBidWlsZCBmb3IgYSBaeW5xIGJhc2VkIG9uIHRoZSBtZXRhLXhpbGlueCBsYXllciAoaHR0
cDovL2dpdC55b2N0b3Byb2plY3Qub3JnL2NnaXQvY2dpdC5jZ2kvbWV0YS14aWxpbngvKS4NCg0K
SSB0aG91Z2h0IEknZCBiZSBhYmxlIHRvIGFkZCB0aGVtIGluIHRoZSBrZXJuZWwgY29uZmlndXJh
dGlvbg0KKG1lbnVjb25maWcpIGJ5IHJ1bm5pbmcgKGZyb20gd2l0aGluIHRoZSBidWlsZCBkaXJl
Y3RvcnkpOg0KDQpiaXRiYWtlIGxpbnV4LXhsbnggLWMga2VybmVsX2NvbmZpZ21lIC1mIGJpdGJh
a2UgbGludXgteGxueCAtYyBtZW51Y29uZmlnDQoNCkkgY2FuJ3Qgc2VlIHRoZSBETUEgZHJpdmVy
cyBpbiBtZW51Y29uZmlnLiBIb3dldmVyIGlmIEkgcnVuIG1lbnVjb25maWcgd2l0aGluIHRoZSBs
aW51eC14bG54IHRyZWUgKHdoaWNoIGlzIHJlZmVyZW5jZWQgYnkgdGhlIFNSQ1VSSSkgSSBjYW4g
c2VlIHRoZSBETUEgZHJpdmVycy4gSXMgdGhlcmUgc29tZSByZWFzb24gdGhleSdyZSBoaWRkZW4g
aW4gdGhlIGJ1aWxkIG1lbnVjb25maWc/DQoNClRoYW5rcywNClRvYnkNCg0KDQo=

