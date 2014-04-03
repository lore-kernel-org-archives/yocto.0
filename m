Return-Path: <yejun.guo@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD363E00C92
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 01:55:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Apr 2014 01:55:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,785,1389772800"; d="scan'208";a="513960654"
Received: from fmsmsx107.amr.corp.intel.com ([10.19.9.54])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2014 01:55:09 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
	FMSMSX107.amr.corp.intel.com (10.19.9.54) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 3 Apr 2014 01:55:09 -0700
Received: from shsmsx152.ccr.corp.intel.com (10.239.6.52) by
	fmsmsx109.amr.corp.intel.com (10.18.116.9) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 3 Apr 2014 01:55:09 -0700
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.11]) by
	SHSMSX152.ccr.corp.intel.com ([169.254.6.130]) with mapi id
	14.03.0123.003; Thu, 3 Apr 2014 16:54:41 +0800
From: "Guo, Yejun" <yejun.guo@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] how to set LICENSE for llvm in .bb file
Thread-Index: AQHPTwJbXUl4nhctYUGwuDhThGUdIZr/j5uA
Date: Thu, 3 Apr 2014 08:54:40 +0000
Message-ID: <854E8DBA9F41904AB047E03BB6963AE501A0F8F6@SHSMSX101.ccr.corp.intel.com>
References: <854E8DBA9F41904AB047E03BB6963AE501A0E62E@SHSMSX101.ccr.corp.intel.com>
	<CAJTo0LYkrBTcbrSOAyce0tZN6WZJ=9jPOSjYpdr1WnCEY5bfwA@mail.gmail.com>
In-Reply-To: <CAJTo0LYkrBTcbrSOAyce0tZN6WZJ=9jPOSjYpdr1WnCEY5bfwA@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to set LICENSE for llvm in .bb file
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
X-List-Received-Date: Thu, 03 Apr 2014 08:55:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91IFJvc3MsIHdoYXQgSSBhY3R1YWxseSBuZWVkIGlzIGxsdm0rY2xhbmcsIGl0IGlz
IGEgdmVyeSBnb29kIHJlZmVyZW5jZSBmb3IgbWUgdG8gcmVzb2x2ZSB0aGUgbGljZW5zZSBpc3N1
ZSwgYW5kIHRoZSBTWVNST09UX1BSRVBST0NFU1NfRlVOQ1Mga25vd2xlZGdlIHRvIHJlc29sdmUg
bGx2bS1jb25maWcgaXNzdWUuDQoNCg0KVGhhbmtzDQpZZWp1bg0KDQoNCi0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tDQpGcm9tOiBCdXJ0b24sIFJvc3MgW21haWx0bzpyb3NzLmJ1cnRvbkBpbnRl
bC5jb21dIA0KU2VudDogVGh1cnNkYXksIEFwcmlsIDAzLCAyMDE0IDI6MDEgUE0NClRvOiBHdW8s
IFllanVuDQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10g
aG93IHRvIHNldCBMSUNFTlNFIGZvciBsbHZtIGluIC5iYiBmaWxlDQoNCk9uIDMgQXByaWwgMjAx
NCAwMzoxNiwgR3VvLCBZZWp1biA8eWVqdW4uZ3VvQGludGVsLmNvbT4gd3JvdGU6DQo+IEknbSBh
ZGRpbmcgcGFja2FnZSBsbHZtIHdoaWNoIGhhcyBpdHMgb3duIGxpY2Vuc2U6IFVuaXZlcnNpdHkg
b2YgSWxsaW5vaXMvTkNTQSBPcGVuIFNvdXJjZSBMaWNlbnNlLCBzZWUgYXQgaHR0cDovL2xsdm0u
b3JnL3JlbGVhc2VzLzMuNC9MSUNFTlNFLlRYVCAuICBJIHRyaWVkIHNvbWV0aGluZyBmb3IgTElD
RU5TRSBpbiAuYmIgZmlsZSwgYnV0IGlzIG5vdCByZWNvZ25pemVkIGJ5IHRoZSBzeXN0ZW0uIENv
dWxkIHlvdSBwbGVhc2UgbGV0IG1lIGtub3cgaG93IHRvIHNldCB0aGlzIHZhbHVlPyBUaGFua3Mg
YSBsb3QhDQoNCkxMVk0gaXMgYWxyZWFkeSBwYWNrYWdlZCBvdXRzaWRlIG9mIG9lLWNvcmU6DQoN
Cmh0dHA6Ly9sYXllcnMub3BlbmVtYmVkZGVkLm9yZy9sYXllcmluZGV4L2JyYW5jaC9tYXN0ZXIv
cmVjaXBlcy8/cT1sbHZtDQoNClJvc3MNCg==

