Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web12.5087.1594960238216816055
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 21:30:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: JPT4IR15J4ojQC4yX5M8JrdhtewQuKXqeqyKQbl0KCsvCaZQwXbpQd+oK/ZgAw4AHi3fDmLLKV
 7TqCKM/Myi5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="148696605"
X-IronPort-AV: E=Sophos;i="5.75,361,1589266800"; 
   d="scan'208";a="148696605"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jul 2020 21:30:34 -0700
IronPort-SDR: otVrYtyOENUG0lc/jXUfnVIix3Q40yWNHZHPtpWpTv6SnXeDDn7hV9Fy0wT9ULZJXU2mMNZN/+
 QvusMmvv7/nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,361,1589266800"; 
   d="scan'208";a="430724731"
Received: from kmsmsx153.gar.corp.intel.com ([172.21.73.88])
  by orsmga004.jf.intel.com with ESMTP; 16 Jul 2020 21:30:33 -0700
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.140]) by
 KMSMSX153.gar.corp.intel.com ([169.254.5.147]) with mapi id 14.03.0439.000;
 Fri, 17 Jul 2020 12:30:29 +0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "rick.liu@broadcom.com" <rick.liu@broadcom.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-dpdk] is there a plan to support newer dpdk?
Thread-Topic: [yocto] [meta-dpdk] is there a plan to support newer dpdk?
Thread-Index: AQHWW6TpIm/EkpxzpEmZEahsaF50kakKqJgA
Date: Fri, 17 Jul 2020 04:30:29 +0000
Message-ID: <3d40d4675902012c9fd2b366eba4304a0962fb13.camel@intel.com>
References: <l237.1594926681038650358.mYoM@lists.yoctoproject.org>
In-Reply-To: <l237.1594926681038650358.mYoM@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.249.73.156]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <98302D0214DF134DBEA7F430E883E966@intel.com>
Content-Transfer-Encoding: base64

T24gVGh1LCAyMDIwLTA3LTE2IGF0IDEyOjExIC0wNzAwLCBSaWNrIExpdSB2aWEgbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZw0Kd3JvdGU6DQo+IEhpLA0KPiANCj4gRnJvbSBtZXRhLWRwZGsuZ2l0LCB0
aGUgbGF0ZXN0IGR1ZmVsbCBicmFuY2ggaXMgdXNpbmcgZHBkayAxOS4xMS4yLg0KPiBJcyB0aGVy
ZSBhIHBsYW4gdG8gc3VwcG9ydCBkcGRrIDIwLjB4PyANCj4gKGFuZCBtYXliZSB1c2luZyBtZWFz
b24vbmluamEgdG8gYnVpbGQ/KQ0KDQpOb3Qgb24gdGhlIGR1bmZlbGwgYnJhbmNoLiBJZiB5b3Ug
YWxyZWFkeSBoYXZlIHRoZSByZWNpcGUsIEkgY2FuIGFkZCBpdA0KdG8gbWFzdGVyIGJyYW5jaCB3
aGljaCBJIHRoaW5rIHNob3VsZCBidWlsZCBmaW5lIHdpdGggb2UtY29yZSBkdW5mZWxsDQp0b28u
DQoNClRoYW5rcywNCg0KQW51ag0K
