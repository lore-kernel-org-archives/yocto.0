Return-Path: <Georgi.Georgiev@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6631E00C62; Tue,  4 Dec 2018 07:19:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 313 seconds by postgrey-1.32 at yocto-www;
	Tue, 04 Dec 2018 07:19:23 PST
Received: from Mail4.woodward.com (mail4.woodward.com [204.27.169.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7533E003E1
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2018 07:19:23 -0800 (PST)
Received: from pps.filterd (COIL-PMSGA1.woodward.com [127.0.0.1])
	by COIL-PMSGA1.woodward.com (8.16.0.22/8.16.0.22) with SMTP id
	wB4F6xBL013435; Tue, 4 Dec 2018 09:14:04 -0600
Received: from coil-exmb2.woodward.com ([10.51.100.65])
	by COIL-PMSGA1.woodward.com with ESMTP id 2p5b9whuy4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Tue, 04 Dec 2018 09:14:03 -0600
Received: from KempHC1.woodward.com (10.25.100.51) by COIL-ExMb2.woodward.com
	(10.51.100.65) with Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Tue, 4 Dec 2018 09:14:03 -0600
Received: from KempMail2.woodward.com ([169.254.2.232]) by
	KempHC1.woodward.com ([172.20.1.103]) with mapi;
	Tue, 4 Dec 2018 16:14:02 +0100
From: Georgi Georgiev <Georgi.Georgiev@woodward.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 4 Dec 2018 16:13:59 +0100
Thread-Topic: [EXTERNAL] Re: [yocto] Missing dependencies in recipe-sysroot
Thread-Index: AdSL240wzIpOb32DQD+rphxEwANu/gAAZ4gw
Message-ID: <B4ED84A4DCF0D84FB25CE972E5CF346A5D185E2557@KEMPMAIL2.woodward.com>
References: <B4ED84A4DCF0D84FB25CE972E5CF346A5D1831B68E@KEMPMAIL2.woodward.com>
	<CAJTo0LagP7=zjiXYSU=eXpm6dfH049HDhpF2N8frrB1oha3PZw@mail.gmail.com>
	<B4ED84A4DCF0D84FB25CE972E5CF346A5D185E24E6@KEMPMAIL2.woodward.com>
	<CAJTo0LbYmsR-khDHYfkG=D3nng7n4eLtPk+W1_hhoTPgCyOWTg@mail.gmail.com>
In-Reply-To: <CAJTo0LbYmsR-khDHYfkG=D3nng7n4eLtPk+W1_hhoTPgCyOWTg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	suspectscore=0 malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
	adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.0.1-1810050000 definitions=main-1812040129
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [EXTERNAL] Re: Missing dependencies in recipe-sysroot
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
X-List-Received-Date: Tue, 04 Dec 2018 15:19:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T0sgYnV0LiBJIGNhbiB1c2UgU0RLVEFSR0VUU1lTUk9PVCBpbiBteSBtYWtlZmlsZSBidXQgdGhl
biBpdCB3aWxsIGZhaWwgaW4geW9jdG8uLi5TbyBJIGNhbid0IGhhdmUgb25lIG1ha2VmaWxlIGZv
ciB5b2N0byBhbmQgY29tbWFuZCBsaW5lIGJ1aWxkLi4uSSBmb3VuZCBvbmUgdHJlYWQgZm9yIHNp
bWlsYXIgaXNzdWUgYW5kIEkgd2lsbCB0YWtlIGEgbG9vayBpbiBwb2t5L21ldGEvY29uZi9iaXRi
YWtlLmNvbmYgdG9tb3Jyb3cuIA0KDQpHZW9yZ2kNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCkZyb206IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0gDQpT
ZW50OiBUdWVzZGF5LCBEZWNlbWJlciAwNCwgMjAxOCA0OjEzIFBNDQpUbzogR2VvcmdpIEdlb3Jn
aWV2IDxHZW9yZ2kuR2VvcmdpZXZAd29vZHdhcmQuY29tPg0KQ2M6IFlvY3RvLW1haWxpbmctbGlz
dCA8eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZz4NClN1YmplY3Q6IFJlOiBbRVhURVJOQUxdIFJlOiBb
eW9jdG9dIE1pc3NpbmcgZGVwZW5kZW5jaWVzIGluIHJlY2lwZS1zeXNyb290DQoNCk9uIFR1ZSwg
NCBEZWMgMjAxOCBhdCAxNDowMiwgR2VvcmdpIEdlb3JnaWV2IDxHZW9yZ2kuR2VvcmdpZXZAd29v
ZHdhcmQuY29tPiB3cm90ZToNCj4gTElCIDo9IC1ML3Vzci9saWINCg0KXiBkb24ndCBkbyB0aGF0
LiAgVGhhdCdzIG5vdCB3aGVyZSB0aGUgbGlicmFyaWVzIGFyZS4NCg0KUm9zcw0K

