Return-Path: <ulf.hofemeier@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C67CEE00890; Mon, 27 Mar 2017 09:38:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B00BE007BA
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 09:38:47 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga104.jf.intel.com with ESMTP; 27 Mar 2017 09:38:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,232,1486454400"; d="scan'208";a="1127661605"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga001.fm.intel.com with ESMTP; 27 Mar 2017 09:38:46 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.44]) by
	ORSMSX105.amr.corp.intel.com ([169.254.2.29]) with mapi id
	14.03.0319.002; Mon, 27 Mar 2017 09:38:45 -0700
From: "Hofemeier, Ulf" <ulf.hofemeier@intel.com>
To: Sebastien D <sebastien@iot.bzh>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Is CROPS the right option for Automotive Grade Linux
	SDK ?
Thread-Index: AQHSpuERnKYOfFXctkisWCPutJxj6aGo3t+A
Date: Mon, 27 Mar 2017 16:38:44 +0000
Message-ID: <52BAB51D-FC39-4767-8244-41C8E61C894E@intel.com>
References: <9f434631-d18d-5582-dd86-13d9f5187af8@iot.bzh>
In-Reply-To: <9f434631-d18d-5582-dd86-13d9f5187af8@iot.bzh>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.20.0.170309
x-originating-ip: [10.24.8.205]
MIME-Version: 1.0
Subject: Re: Is CROPS the right option for Automotive Grade Linux SDK ?
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
X-List-Received-Date: Mon, 27 Mar 2017 16:38:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <AF34D0A407E2B04FB0A6839EC93D3DC2@intel.com>
Content-Transfer-Encoding: base64

SGkgU2ViYXN0aWVuLA0KDQpZb3Ugc2hvdWxkIGJlIGFibGUgdG8gY3Jvc3MgY29tcGlsZSBBR0wg
YXBwbGljYXRpb25zIHVzaW5nIHRoZSBZb2N0byBwcm9qZWN0IGFzIGlzLg0KDQpQbGVhc2Ugb3Bl
bjogaHR0cDovL3d3dy55b2N0b3Byb2plY3Qub3JnL2RvY3MvY3VycmVudC9zZGstbWFudWFsL3Nk
ay1tYW51YWwuaHRtbCN0aGUtY3Jvc3MtZGV2ZWxvcG1lbnQtdG9vbGNoYWluIGZvciBtb3JlIGlu
Zm9ybWF0aW9uLg0KDQpUaGFua3MuDQoNClVsZiBIb2ZlbWVpZXINCg0KDQoNCk9uIDMvMjcvMTcs
IDM6MDAgQU0sICJ5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgb24gYmVoYWxmIG9mIFNl
YmFzdGllbiBEIiA8eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIG9uIGJlaGFsZiBvZiBz
ZWJhc3RpZW5AaW90LmJ6aD4gd3JvdGU6DQoNCiAgICAgIEhpLA0KICAgIA0KICAgIEknbSB3b3Jr
aW5nIG9uIEF1dG9tb3RpdmUgR3JhZGUgTGludXggKEFHTCkgcHJvamVjdCBbMV0gdGhhdCBpcyBi
YXNlZCBvbiANCiAgICBZb2N0byBhbmQgT3BlbkVtYmVkZGVkIGFuZCBJJ20gd29uZGVyaW5nIGlm
IENST1BTIFsyXSBpcyB0aGUgcmlnaHQgdG9vbCANCiAgICB0byBjcm9zcy1idWlsZCBhbiBBR0wg
YXBwbGljYXRpb24gPw0KICAgIEknbSBsb29raW5nIGZvciBhIGZyYW1ld29yayB3aGljaCBhbGxv
d3MgZGV2ZWxvcGVycyB0byBlYXNpbHkgDQogICAgY3Jvc3MtY29tcGlsZSBhcHBsaWNhdGlvbiB3
aGF0ZXZlciBpcyB0aGUgaG9zdCBhcmNoaXRlY3R1cmUgKFdpbmRvd3MsIA0KICAgIExpbnV4LCBN
YWMpLg0KICAgIA0KICAgIFNvIENyb3BzIHByb2plY3Qgc2VlbXMgdG8gbWF0Y2ggbXkgbmVlZHMg
YnV0IHRoaXMgcHJvamVjdCBpcyBubyBsb25nZXIgDQogICAgYWN0aXZlLiBBdCBsZWFzdCB0aGUg
Y29tbXVuaWNhdGlvbiBtZWNoYW5pc20gc2VlbXMgdG8gYmUgc3VwZXJzZWRlZCBieSANCiAgICBh
biBlY2xpcHNlIHBsdWdpbiBbM10gdGhhdCBjb21tdW5pY2F0ZXMgZGlyZWN0bHkgd2l0aCB0aGUg
Y29udGFpbmVycy4NCiAgICBCdXQgdGhpcyBzb2x1dGlvbiAoZnJvbSBteSBwb2ludCBvZiB2aWV3
KSBpcyB0b28gcmVzdHJpY3RpdmUgY29tcGFyZWQgdG8gDQogICAgdGhlIGluaXRpYWwgb25lLg0K
ICAgIA0KICAgIEFueSBjb21tZW50cyBhcmUgYXBwcmVjaWF0ZWQuDQogICAgDQogICAgUmVnYXJk
cywNCiAgICBTZWJhc3RpZW4uDQogICAgDQogICAgDQogICAgWzFdIDogaHR0cHM6Ly93d3cuYXV0
b21vdGl2ZWxpbnV4Lm9yZy8NCiAgICBbMl0gOiBodHRwczovL2dpdGh1Yi5jb20vY3JvcHMvY3Jv
cHMNCiAgICBbM10gOiBodHRwczovL2dpdGh1Yi5jb20vY3JvcHMvZWNsaXBzZS1jcm9wcw0KICAg
IA0KICAgIC0tIA0KICAgIF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQogICAgeW9jdG8gbWFpbGluZyBsaXN0DQogICAgeW9jdG9AeW9jdG9wcm9qZWN0Lm9y
Zw0KICAgIGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0KICAg
IA0KDQo=

