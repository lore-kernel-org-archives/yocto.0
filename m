Return-Path: <yaoxp@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DA11E00BDE; Mon, 16 Jun 2014 18:27:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A1F5E00B71
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 18:27:18 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.00,721,1396972800"; d="scan'208";a="31996678"
Received: from localhost (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 17 Jun 2014 09:24:37 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s5H1RFhT006554;
	Tue, 17 Jun 2014 09:27:15 +0800
Received: from G08CNEXMBPEKD03.g08.fujitsu.local ([10.167.33.86]) by
	G08CNEXCHPEKD02.g08.fujitsu.local ([10.167.33.83]) with mapi id
	14.03.0181.006; Tue, 17 Jun 2014 09:27:20 +0800
From: "yaoxp@cn.fujitsu.com" <yaoxp@cn.fujitsu.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Thread-Topic: [yocto] I want to know which BB files were compiled
Thread-Index: Ac+JEqxxfZMGsAUVS+SBWMcn1xHf5P//w8WA//5Te5A=
Date: Tue, 17 Jun 2014 01:27:17 +0000
Message-ID: <9AD1F2A584A7644C9605656D538412FEAA5517@G08CNEXMBPEKD03.g08.fujitsu.local>
References: <9AD1F2A584A7644C9605656D538412FEAA5214@G08CNEXMBPEKD03.g08.fujitsu.local>
	<CAP71Wjwn9eHV2w05w1wF5sNWb68v=tkf4v0a0M+iGQgO59oySA@mail.gmail.com>
In-Reply-To: <CAP71Wjwn9eHV2w05w1wF5sNWb68v=tkf4v0a0M+iGQgO59oySA@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.206]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: I want to know which BB files were compiled
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
X-List-Received-Date: Tue, 17 Jun 2014 01:27:26 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

dGhhbmsgeW91IHZlcnkgbXVjaC4NCg0KPiANCj4gT24gTW9uLCBKdW4gMTYsIDIwMTQgYXQgNToy
NyBBTSwgeWFveHBAY24uZnVqaXRzdS5jb20NCj4gPHlhb3hwQGNuLmZ1aml0c3UuY29tPiB3cm90
ZToNCj4gPiBIaSBldmVyeW9uZSwNCj4gPg0KPiA+IEkgd2FudCB0byBrbm93IHdoaWNoIEJCIGZp
bGVzIHdlcmUgY29tcGlsZWQgd2hlbiBJIHJ1biAnIGJpdGJha2UgPHRhcmdldD4nLg0KPiA+IEhv
dyB0byBhY2hpZXZlIGl0Pw0KPiA+DQo+ID4gZS5nLg0KPiA+ICMgYml0YmFrZSBjb3JlLWltYWdl
LW1pbmltYWwNCj4gPg0KPiA+IEkgd2FudCB0byBrbm93IGFsbCB0aGUgY29tcGlsZWQgQkIgZmls
ZXMsIGluY2x1ZGluZyBuYXRpdmUgQkIgZmlsZS4NCj4gDQo+IHBsZWFzZSBoYXZlIGEgbG9vayBh
dCB0aGlzIHRocmVhZCBmcm9tIGxhc3Qgd2VlazoNCj4gDQo+IGh0dHA6Ly93d3cubWFpbC1hcmNo
aXZlLmNvbS95b2N0b0B5b2N0b3Byb2plY3Qub3JnL21zZzE5NTgzLmh0bWwNCj4gDQo+IGJpdGJh
a2UgY3JlYXRlcyB0aGUgJ2Nvb2tlci5sb2cnIGZpbGUgdGhhdCBjb250YWlucyBsb2cgZm9yIGFs
bCB0YXNrcyBpdCBoYXMNCj4gZXhlY3V0ZWQgZHVyaW5nIGEgYnVpbGQuIHlvdSBjYW4gZ2V0IHRo
ZSBpbmZvcm1hdGlvbiB5b3Ugd2FudCBmcm9tIHRoZXJlLg0K

