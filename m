Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3B6534C8024E
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2011 19:23:40 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Apr 2011 17:23:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,283,1301900400"; d="scan'208";a="685663334"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 28 Apr 2011 17:23:39 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 29 Apr 2011 08:23:38 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 29 Apr 2011 08:23:38 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 29 Apr 2011 08:23:36 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: Joshua Lock <josh@linux.intel.com>
Date: Fri, 29 Apr 2011 08:23:34 +0800
Thread-Topic: [yocto] [PATCH 1/1] Resend:[Image-Creator]Make bitbake server
	type configurable (xmlrpc, none)
Thread-Index: AcwF49p3HiycLv4xRT+M2OAojDEhWwAH5whw
Message-ID: <789F9655DD1B8F43B48D77C5D30659734C09E3BF@shsmsx501.ccr.corp.intel.com>
References: <cover.1303968733.git.liping.ke@intel.com>
	<a1d0bb2c85741e8d21cefd00c7191f111664cc0a.1303968733.git.liping.ke@intel.com>
	<1304022697.2171.326.camel@vorpal>
In-Reply-To: <1304022697.2171.326.camel@vorpal>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] Resend:[Image-Creator]Make bitbake server type configurable (xmlrpc, none)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 29 Apr 2011 00:23:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIEpvc2gNCg0KVGhhbmtzIGZvciB5b3VyIHZlcnkgY2FyZWZ1bCByZXZpZXcgaW5kZWVkISBJ
IHdpbGwgY29ycmVjdCB0aGVtIGFuZCByZXNlbmQgdGhlIHBhdGNoIQ0KDQpSZWdhcmRzLA0KY3Jp
cGluZw0KDQoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKb3NodWEg
TG9jayBbbWFpbHRvOmpvc2hAbGludXguaW50ZWwuY29tXQ0KPiBTZW50OiBGcmlkYXksIEFwcmls
IDI5LCAyMDExIDQ6MzIgQU0NCj4gVG86IEtlLCBMaXBpbmcNCj4gQ2M6IHlvY3RvQHlvY3RvcHJv
amVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gW1BBVENIIDEvMV0gUmVzZW5kOltJbWFn
ZS1DcmVhdG9yXU1ha2UgYml0YmFrZSBzZXJ2ZXINCj4gdHlwZSBjb25maWd1cmFibGUgKHhtbHJw
Yywgbm9uZSkNCj4gDQo+IEhpIExpcGluZywNCj4gDQo+IFRoaXMgbG9va3MgZ29vZCB0byBtZS4g
VHdvIG1pbm9yIHR5cG8gbml0cyBiZWxvdywgb25jZSB0aGV5J3JlIGZpeGVkIEkNCj4gd2lsbCBj
cmVhdGUgYSBicmFuY2ggb24gcG9reS1jb250cmliIHRvIGNvbGxlY3QgaW1hZ2UtY3JlYXRvciBy
ZWxhdGVkDQo+IHBhdGNoZXMgdW50aWwgd2UncmUgcmVhZHkgdG8gc3dpdGNoIHRvIGRldmVsb3Bp
bmcgYWdhaW5zdCB1cHN0cmVhbQ0KPiBiaXRiYWtlLg0KPiANCj4gVGhhbmtzLA0KPiBKb3NodWEN
Cg==

