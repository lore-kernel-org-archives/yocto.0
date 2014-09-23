Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27CD4E00874; Mon, 22 Sep 2014 20:14:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EE72E00871
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 20:14:38 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,576,1406563200"; d="scan'208";a="36312867"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 23 Sep 2014 11:11:32 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s8N3EbpS029491;
	Tue, 23 Sep 2014 11:14:37 +0800
Received: from G08CNEXMBPEKD01.g08.fujitsu.local ([10.167.33.81]) by
	G08CNEXCHPEKD03.g08.fujitsu.local ([10.167.33.85]) with mapi id
	14.03.0181.006; Tue, 23 Sep 2014 11:14:34 +0800
From: "Lei, Maohui" <leimaohui@cn.fujitsu.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] [PATCH 1/2] spdx:It is necessary to define source
	directory for spdx.
Thread-Index: AQHP1nHcdJdyQcffikSm8FjdrEq5OJwOAlfw
Date: Tue, 23 Sep 2014 03:14:37 +0000
Message-ID: <1B56A49860EB2D45ADE3731B15C959FDAB8920@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <1411124599-6843-1-git-send-email-leimaohui@cn.fujitsu.com>
	<CAJTo0LbwSch45mZcEDg=RPX_JF1je3hMyroBHFZRq3Vx8Kg8qg@mail.gmail.com>
In-Reply-To: <CAJTo0LbwSch45mZcEDg=RPX_JF1je3hMyroBHFZRq3Vx8Kg8qg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.75]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/2] spdx:It is necessary to define source directory for spdx.
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
X-List-Received-Date: Tue, 23 Sep 2014 03:14:46 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQo+IE9uIDIyIFNlcHRlbWJlciAyMDE0IDEwOjMxLCBCdXJ0b24sIFJvc3MgW21haWx0bzpyb3Nz
LmJ1cnRvbkBpbnRlbC5jb21dIHdyb3RlOg0KPiA+IFRvIG1ha2Ugc3VyZSB0aGF0IHdoZW4gUyBk
aXJlY3RvcnkgaXMgY2hhbmdlZCwgdGhlIHNwZHggaW5mbyBvZiB0aGUgcGFja2FnZQ0KPiB3aWxs
IG5vdCBtaXNzLg0KPiANCj4gSXQgdG9vayBtZSBhIGZldyBtaW51dGVzIGFuZCBsb29raW5nIGF0
IHRoZSBvdGhlciBwYXRjaGVzIHRvIHVuZGVyc3RhbmQgd2hhdA0KPiB0aGlzIGlzIGRvaW5nLiAg
DQoNCg0KU29ycnnvvIxteSBzdW1tYXJ5IGlzIG5vdCBlYXN5IHRvIHVuZGVyc3RhbmQuDQoNCj4g
QSBiZXR0ZXIgc3VtbWFyeSB3b3VsZCBiZToNCj4gIkFkZCBTUERYLXNwZWNpZmljIHNvdXJjZSB0
cmVlIHZhcmlhYmxlIGZvciByZWNpcGVzIHdoZXJlICRTIGlzIGEgc3ViZGlyZWN0b3J5DQo+IG9m
IHRoZSBzb3VyY2UgdHJlZSINCj4gDQo+IFRvIGF2b2lkIHBvbGx1dGluZyBiaXRiYWtlLmJiY2xh
c3MgdGhpcyBtaWdodCB3b3JrIHdpdGggU1BEWF9TID89ICIke1N9IiBpbg0KPiBzcGR4LmJiY2xh
c3MuDQoNClRoYW5rIHlvdSBmb3IgeW91ciByZXNwb25zZS5JIHdpbGwgbW9kaWZ5IG15IHBhdGNo
ZXMgLGFuZCB0aGVuIHJlIHN1Ym1pdCB0aGVtIGxhdGVyLg0KDQpUaGFua3MsDQpMZWkgTWFvaHVp
DQo=

