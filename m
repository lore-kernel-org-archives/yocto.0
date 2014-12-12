Return-Path: <yannick.koehler@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE9B2E0085D; Fri, 12 Dec 2014 07:05:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [15.217.128.51 listed in list.dnswl.org]
Received: from g2t2352.austin.hp.com (g2t2352.austin.hp.com [15.217.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E7EEE0084D
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 07:05:17 -0800 (PST)
Received: from G2W4316.americas.hpqcorp.net (g2w4316.austin.hp.com
	[16.197.9.73]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g2t2352.austin.hp.com (Postfix) with ESMTPS id C9EFE248
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 15:05:16 +0000 (UTC)
Received: from G2W4314.americas.hpqcorp.net (16.197.24.50) by
	G2W4316.americas.hpqcorp.net (16.197.9.73) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Fri, 12 Dec 2014 15:03:32 +0000
Received: from G1W3650.americas.hpqcorp.net ([169.254.8.62]) by
	G2W4314.americas.hpqcorp.net ([16.197.24.50]) with mapi id
	14.03.0169.001; Fri, 12 Dec 2014 15:03:31 +0000
From: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Package Feature compile/runtime dependency
Thread-Index: AQHQFhvPlSIJhs8RjkWUDUaVwptfa5yMC5Mg
Date: Fri, 12 Dec 2014 15:03:31 +0000
Message-ID: <95CF81BBD42FB348A182716C4D4310A80548C51C@G1W3650.americas.hpqcorp.net>
References: <95CF81BBD42FB348A182716C4D4310A80548C44C@G1W3650.americas.hpqcorp.net>
	<CAJTo0LZwnFS6h51KRMfXECzftLq8N1CdYx4c2ZPnUWnVbZECdA@mail.gmail.com>
In-Reply-To: <CAJTo0LZwnFS6h51KRMfXECzftLq8N1CdYx4c2ZPnUWnVbZECdA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.25]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package Feature compile/runtime dependency
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
X-List-Received-Date: Fri, 12 Dec 2014 15:05:29 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQgd291bGQgZGVmaW5pdGVseSBtYWtlIHNlbnNlIHRvIGhhdmUgYSBkaXN0cm8gbGV2ZWwgZmVh
dHVyZSBjYWxsZWQgaW5pdC1idXN5Ym94aW5pdC9pbml0LXN5c3Zpbml0L2luaXQtc3lzdGVtZC9p
bml0LXVwc3RhcnQgb3Igc29tZXRoaW5nIGFsb25nIHRob3NlIGxpbmUuICBJcyB0aGlzIGFscmVh
ZHkgaW4gcGxhY2U/DQoNCkl0IHdvdWxkIHRoZW4gaGF2ZSB0byBwdWxsIHRoZSBwYWNrYWdlIGFu
ZCB0aGVpciBhcHByb3ByaWF0ZSBwYWNrYWdlIGZlYXR1cmUgc2V0IHRvIGdldCB0aGVyZS4NCg0K
WWFubmljayBLb2VobGVyDQpIUCBOZXR3b3JraW5nIE1vYmlsaXR5DQoNCkRlwqA6IEJ1cnRvbiwg
Um9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0gDQpFbnZvecOpwqA6IERlY2VtYmVy
LTEyLTE0IDk6NTYgQU0NCsOAwqA6IEtvZWhsZXIsIFlhbm5pY2sgKEhQIE5ldHdvcmtpbmcpDQpD
Y8KgOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpPYmpldMKgOiBSZTogW3lvY3RvXSBQYWNrYWdl
IEZlYXR1cmUgY29tcGlsZS9ydW50aW1lIGRlcGVuZGVuY3kNCg0KDQpPbiAxMiBEZWNlbWJlciAy
MDE0IGF0IDE0OjEzLCBLb2VobGVyLCBZYW5uaWNrIChIUCBOZXR3b3JraW5nKSA8eWFubmljay5r
b2VobGVyQGhwLmNvbT4gd3JvdGU6DQrCoCDCoCDCoCDCoCBERVBFTkRTPSJsaW51eC15b2N0by10
aW55OmZoYW5kbGUsYXV0b2ZzNCxpcHY2PyxkZXZ0bXBmcyxsaWJjOmZ0cmF2ZXJzZSxwb3NpeC1j
bGFuZy13Y2hhcixzcGF3bix1dG1weCINCg0KRXRjLi4uwqAgRGlzcmVnYXJkIHRoZSBzeW50YXgg
YXMgaXQgaXMgc2ltcGx5IGFuIGlkZWEvZXhhbXBsZSBhbmQgbm90IGludGVuZGVkIGFzIGEgc3Bl
Y2lmaWNhdGlvbi4NCg0KQSBsb3Qgb2YgdGhvc2UgZmVhdHVyZXMgYXJlIERJU1RST19GRUFUVVJF
Uywgc28gdGhlcmUgc2hvdWxkIGJlIGhlYXZpZXIgdXNlciBvZiB0aGUgZGlzdHJvX2ZlYXR1cmVz
X2NoZWNrIGNsYXNzLsKgIEZvciBleGFtcGxlLCB0aGVyZSBhcmUgcmVjaXBlcyB0aGF0IHJlcXVp
cmUgc3lzdGVtZCB0byBiZSB1c2VkLCBzbyB0aGV5IHNldCBSRVFVSVJFRF9ESVNUUk9fRkVBVFVS
RVM9c3lzdGVtZC4NCg0KUm9zcw0K

