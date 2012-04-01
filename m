Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 362C5E0138D
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 22:14:37 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 31 Mar 2012 22:14:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="83960731"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by AZSMGA002.ch.intel.com with ESMTP; 31 Mar 2012 22:14:36 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sat, 31 Mar 2012 22:14:36 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.128]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.160]) with mapi id
	14.01.0355.002; Sat, 31 Mar 2012 22:14:35 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [yocto] [PATCH 3/3] poky-tiny: avoid eglibc locale packaging
Thread-Index: AQHNDsyr7JOPLuJolUys1aN/+AFpWJaFbo6w
Date: Sun, 1 Apr 2012 05:14:34 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C01380564@ORSMSX106.amr.corp.intel.com>
References: <512eae1ae0678b247076db900304725702acc91e.1333145263.git.nitin.a.kamble@intel.com>
	<f5f27094a325058b26b182ad0ea4a08b72f608af.1333145263.git.nitin.a.kamble@intel.com>
	<4F764130.4080204@linux.intel.com>
In-Reply-To: <4F764130.4080204@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 3/3] poky-tiny: avoid eglibc locale packaging
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
X-List-Received-Date: Sun, 01 Apr 2012 05:14:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGFycmVuIEhhcnQgW21h
aWx0bzpkdmhhcnRAbGludXguaW50ZWwuY29tXQ0KPiANCj4gVGhhbmtzIGZvciBsb29raW5nIGlu
dG8gdGhpcyBOaXRpbiEgSSdtIGZpbmUgd2l0aCB0aGlzIGZpeCBpZiBpdCBnZXRzDQo+IHRoaW5n
cyBnb2luZy4gSSB3b25kZXIgdGhvdWdoLCBJIHByZXN1bWUgb21pdHRpbmcgc29tZXRoaW5nIGZy
b20NCj4gRElTVFJPX0ZFQVRVUkVTX0xJQkMgaXMgd2hhdCB0cmlnZ2VycyB0aGlzIGJ1Zy4uLiBj
b3VsZCB0aGF0IHNhbWUNCj4gb21pc3Npb24gbm90IGJlIHRlc3RlZCB0byBhdm9pZCB0aGUgZmFp
bHVyZT8gU2VlbXMgc3RyYW5nZSB0byBoYXZlIHRvDQo+IGV4cGxpY2l0bHkgc2V0IFBBQ0tBR0Vf
Tk9fR0NPTlYuDQo+IA0KPiBUaG91Z2h0cz8NCg0KTWFrZXMgc2Vuc2UsIEkgd2lsbCBsb29rIGlu
dG8gc3VjaCBzb2x1dGlvbi4NCg0KTml0aW4NCg==

