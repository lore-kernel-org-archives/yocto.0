Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08FE7E00AF8; Tue, 23 May 2017 19:15:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4C10E009A5
	for <yocto@yoctoproject.org>; Tue, 23 May 2017 19:15:34 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v4O2FWiB007144
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 23 May 2017 19:15:32 -0700 (PDT)
Received: from ALA-MBC.corp.ad.wrs.com ([fe80::fcbe:9b7:1141:89a1]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0294.000;
	Tue, 23 May 2017 19:15:32 -0700
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] [meta-security][PATCH 2/2 v2] ecryptfs-utils: add new
	recipe
Thread-Index: AQHS09RfEdpjCljT2UKW0L5wZrpHsqICv2sA
Date: Wed, 24 May 2017 02:15:31 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AA014B7B04FA@ALA-MBC.corp.ad.wrs.com>
References: <cover.1495517079.git.jackie.huang@windriver.com>
	<8e6767cb65d32fa715ac54c70e775e072c2b2533.1495517079.git.jackie.huang@windriver.com>
	<CAMKF1srRCZ4=wpK+QTPLF=xMs8wQR9CGVPvbVGNX1JZAY9kLwg@mail.gmail.com>
In-Reply-To: <CAMKF1srRCZ4=wpK+QTPLF=xMs8wQR9CGVPvbVGNX1JZAY9kLwg@mail.gmail.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.176.114]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH 2/2 v2] ecryptfs-utils: add new recipe
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
X-List-Received-Date: Wed, 24 May 2017 02:15:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2hlbSBSYWogW21haWx0
bzpyYWoua2hlbUBnbWFpbC5jb21dDQo+IFNlbnQ6IFR1ZXNkYXksIE1heSAyMywgMjAxNyAyMjo1
Mw0KPiBUbzogSHVhbmcsIEppZSAoSmFja2llKQ0KPiBDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9y
Zw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBbbWV0YS1zZWN1cml0eV1bUEFUQ0ggMi8yIHYyXSBl
Y3J5cHRmcy11dGlsczogYWRkIG5ldw0KPiByZWNpcGUNCj4gDQo+IE9uIE1vbiwgTWF5IDIyLCAy
MDE3IGF0IDEwOjMwIFBNLCAgPGphY2tpZS5odWFuZ0B3aW5kcml2ZXIuY29tPiB3cm90ZToNCj4g
PiArICAgICAgICBpbnN0YWxsIC1kICR7RH0ke3N5c3RlbWRfc3lzdGVtX3VuaXRkaXJ9DQo+ID4g
KyAgICAgICAgaW5zdGFsbCAtbSAwNjQ0ICR7V09SS0RJUn0vZWNyeXB0ZnMuc2VydmljZQ0KPiAk
e0R9JHtzeXN0ZW1kX3N5c3RlbV91bml0ZGlyfQ0KPiANCj4geW91IGNvdWxkIHNxdWFzaCBhYm92
ZSBpbnRvIGluc3RhbGwgLUQgLW0gMDY0NA0KPiAke1dPUktESVJ9L2VjcnlwdGZzLnNlcnZpY2UN
Cj4gJHtEfSR7c3lzdGVtZF9zeXN0ZW1fdW5pdGRpcn0vZWNyeXB0ZnMuc2VydmljZQ0KDQpPaywg
SSB3aWxsIGNoYW5nZSBhbmQgc2VuZCB2MyBmb3IgdGhpcywgdGhhbmtzIQ0KDQpUaGFua3MsDQpK
YWNraWUNCg0K

