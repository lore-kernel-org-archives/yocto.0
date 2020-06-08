Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.25811.1591606166895358862
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Jun 2020 01:49:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: cn.fujitsu.com, ip: 140.211.169.56, mailfrom: zhengrq.fnst@cn.fujitsu.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64B81E01BF2; Mon,  8 Jun 2020 01:49:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [183.91.158.132 listed in list.dnswl.org]
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21C5BE01BEE
	for <yocto@yoctoproject.org>; Mon,  8 Jun 2020 01:49:24 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.73,487,1583164800"; 
   d="scan'208";a="94079070"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 08 Jun 2020 16:49:20 +0800
Received: from G08CNEXMBPEKD05.g08.fujitsu.local (unknown [10.167.33.204])
	by cn.fujitsu.com (Postfix) with ESMTP id 86A654BCC8BF;
	Mon,  8 Jun 2020 16:49:15 +0800 (CST)
Received: from G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206) by
 G08CNEXMBPEKD05.g08.fujitsu.local (10.167.33.204) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Mon, 8 Jun 2020 16:49:18 +0800
Received: from G08CNEXMBPEKD06.g08.fujitsu.local ([fe80::2585:ff76:6709:8cf2])
 by G08CNEXMBPEKD06.g08.fujitsu.local ([fe80::2585:ff76:6709:8cf2%14]) with
 mapi id 15.00.1497.006; Mon, 8 Jun 2020 16:49:17 +0800
From: "zhengruoqin" <zhengrq.fnst@cn.fujitsu.com>
To: Stefano Babic <sbabic@denx.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
CC: swupdate <swupdate@googlegroups.com>
Subject: Re: [yocto] [PATCH] [meta-swupdate] Fix build error of dependence.
Thread-Topic: [yocto] [PATCH] [meta-swupdate] Fix build error of dependence.
Thread-Index: AQHWOh/jjz+D+HroF06r0LtQeA9hjajHh1AAgAbnHVA=
Date: Mon, 8 Jun 2020 08:49:17 +0000
Message-ID: <2e85067adbff4d4a93bd9acabf8424b2@G08CNEXMBPEKD06.g08.fujitsu.local>
References: <1591273565-20422-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
 <b4d88124-4292-d5f2-8275-3c450551844e@denx.de>
In-Reply-To: <b4d88124-4292-d5f2-8275-3c450551844e@denx.de>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.167.225.35]
MIME-Version: 1.0
X-yoursite-MailScanner-ID: 86A654BCC8BF.AC804
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: zhengrq.fnst@cn.fujitsu.com
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgU3RlZmFubw0KDQo+IHRoZXJlIGlzIGEgTUwgZm9yIFNXVXBkYXRlIGFuZCBtZXRhLXN3dXBk
YXRlIChzZWUgQ0MpLCB3ZSBhcmUgY3Jvc3MtDQo+IHBvc3RpbmcgaGVyZToNClRoYW5rIHlvdSwg
SSBnb3QgaXQuDQoNCj4gb3BlblNTTCBpcyBub3QgdGhlIG9ubHkgc3VwcG9ydGVkIFNTTCBsaWJy
YXJ5LCB0aGUgV2Vic2VydmVyIHJ1bnMgYWxzbyB3aXRoDQo+IG1iZWRUTFMuIFRoaXMgcGF0Y2gg
Zm9yY2VzIHRvIHVzZSBvcGVuU1NMIGFuZCBjb25mbGljdHMgaW4gY2FzZSBtYmVkVExTIGlzDQo+
IHVzZWQgYXMgc2lnbmluZyBhbmQgY3J5cHRvIGxpYnJhcnkuDQo+IA0KPiA+ICAgICAgIGlmICdD
T05GSUdfSlNPTj15XG4nIGluIGZlYXR1cmVzOg0KPiA+ICAgICAgICAgICBkZXBlbmRzICs9ICcg
anNvbi1jJw0KT0ssIEknbGwgdXBkYXRlIG15IHBhdGNoIGFuZCBzZW5kIFYyIHZlcnNpb24uDQoN
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpaaGVu
ZyBSdW9xaW4NCk5hbmppbmcgRnVqaXRzdSBOYW5kYSBTb2Z0d2FyZSBUZWNoLiBDby4sIEx0ZC4o
Rk5TVCkNCkFERFIuOiBOby42IFdlbnpodSBSb2FkLCBTb2Z0d2FyZSBBdmVudWUsDQogICAgICAg
TmFuamluZywgMjEwMDEyLCBDaGluYQ0KTUFJTCA6IHpoZW5ncnEuZm5zdEBjbi5mdWppc3R1LmNv
bQ0KDQoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTdGVmYW5vIEJh
YmljIDxzYmFiaWNAZGVueC5kZT4NCj4gU2VudDogVGh1cnNkYXksIEp1bmUgNCwgMjAyMCAzOjIy
IFBNDQo+IFRvOiBaaGVuZywgUnVvcWluL+mDkSDoi6XpkqYgPHpoZW5ncnEuZm5zdEBjbi5mdWpp
dHN1LmNvbT47DQo+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gQ2M6IHN3dXBkYXRlIDxzd3Vw
ZGF0ZUBnb29nbGVncm91cHMuY29tPg0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBbUEFUQ0hdIFtt
ZXRhLXN3dXBkYXRlXSBGaXggYnVpbGQgZXJyb3Igb2YgZGVwZW5kZW5jZS4NCj4gDQo+IEhpIFpo
ZW5nLA0KPiANCj4gdGhlcmUgaXMgYSBNTCBmb3IgU1dVcGRhdGUgYW5kIG1ldGEtc3d1cGRhdGUg
KHNlZSBDQyksIHdlIGFyZSBjcm9zcy0NCj4gcG9zdGluZyBoZXJlOg0KPiANCj4gT24gMDQuMDYu
MjAgMTQ6MjYsIHpoZW5ncnVvcWluIHdyb3RlOg0KPiA+ICAgLWMgLW8gbW9uZ29vc2UvbW9uZ29v
c2UubyBtb25nb29zZS9tb25nb29zZS5jDQo+ID4gfCBtb25nb29zZS9tb25nb29zZS5jOjQ0OTY6
MTA6IGZhdGFsIGVycm9yOiBvcGVuc3NsL3NzbC5oOiBObyBzdWNoDQo+ID4gfCBmaWxlDQo+ID4g
b3IgZGlyZWN0b3J5DQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBaaGVuZyBSdW9xaW5nIDx6aGVu
Z3JxLmZuc3RAY24uZnVqaXRzdS5jb20+DQo+ID4gLS0tDQo+ID4gICByZWNpcGVzLXN1cHBvcnQv
c3d1cGRhdGUvc3d1cGRhdGUuaW5jIHwgMyArKysNCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9yZWNpcGVzLXN1cHBvcnQvc3d1cGRh
dGUvc3d1cGRhdGUuaW5jDQo+ID4gYi9yZWNpcGVzLXN1cHBvcnQvc3d1cGRhdGUvc3d1cGRhdGUu
aW5jDQo+ID4gaW5kZXggOWVhMGE4YS4uM2Q5YTNmYSAxMDA2NDQNCj4gPiAtLS0gYS9yZWNpcGVz
LXN1cHBvcnQvc3d1cGRhdGUvc3d1cGRhdGUuaW5jDQo+ID4gKysrIGIvcmVjaXBlcy1zdXBwb3J0
L3N3dXBkYXRlL3N3dXBkYXRlLmluYw0KPiA+IEBAIC0xMjMsNiArMTIzLDkgQEAgcHl0aG9uICgp
IHsNCj4gPiAgICAgICBlbGlmICdDT05GSUdfU1NMX0lNUExfTUJFRFRMUz15XG4nIGluIGZlYXR1
cmVzOg0KPiA+ICAgICAgICAgICBkZXBlbmRzICs9ICcgbWJlZHRscycNCj4gPg0KPiA+ICsgICAg
aWYgJ0NPTkZJR19NT05HT09TRVNTTD15XG4nIGluIGZlYXR1cmVzOg0KPiA+ICsgICAgICAgIGRl
cGVuZHMgKz0gJyBvcGVuc3NsJw0KPiA+ICsNCj4gDQo+IG9wZW5TU0wgaXMgbm90IHRoZSBvbmx5
IHN1cHBvcnRlZCBTU0wgbGlicmFyeSwgdGhlIFdlYnNlcnZlciBydW5zIGFsc28gd2l0aA0KPiBt
YmVkVExTLiBUaGlzIHBhdGNoIGZvcmNlcyB0byB1c2Ugb3BlblNTTCBhbmQgY29uZmxpY3RzIGlu
IGNhc2UgbWJlZFRMUyBpcw0KPiB1c2VkIGFzIHNpZ25pbmcgYW5kIGNyeXB0byBsaWJyYXJ5Lg0K
PiANCj4gPiAgICAgICBpZiAnQ09ORklHX0pTT049eVxuJyBpbiBmZWF0dXJlczoNCj4gPiAgICAg
ICAgICAgZGVwZW5kcyArPSAnIGpzb24tYycNCj4gPg0KPiA+DQo+ID4NCj4gPiANCj4gPg0KPiAN
Cj4gQmVzdCByZWdhcmRzLA0KPiBTdGVmYW5vIEJhYmljDQo+IA0KPiANCj4gDQo+IA0KPiANCg0K
Cgo=
