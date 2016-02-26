Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D37CE00D2B; Thu, 25 Feb 2016 17:39:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 659E8E00D1F;
	Thu, 25 Feb 2016 17:39:24 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 25 Feb 2016 17:39:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,498,1449561600"; d="scan'208";a="753468989"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by orsmga003.jf.intel.com with ESMTP; 25 Feb 2016 17:39:23 -0800
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Thu, 25 Feb 2016 17:39:23 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.244]) by
	ORSMSX113.amr.corp.intel.com ([169.254.9.125]) with mapi id
	14.03.0248.002; Thu, 25 Feb 2016 17:39:23 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: "yocto-announce@yoctoproject.org" <yocto-announce@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [ANNOUNCEMENT] Milestone 2 for Yocto Project 2.1 now available.  
Thread-Index: AQHRcDaE0sjo8RrF/UOXV1WBnDMFmA==
Date: Fri, 26 Feb 2016 01:39:22 +0000
Message-ID: <D2F4ECCA.8D4C%tracy.graydon@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.6.1.160122
x-originating-ip: [10.254.109.185]
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Milestone 2 for Yocto Project 2.1 now available.
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
X-List-Received-Date: Fri, 26 Feb 2016 01:39:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <40C9FB8C77E3A64187ED098CE99735D0@intel.com>
Content-Transfer-Encoding: base64

VGhlIHNlY29uZCBtaWxlc3RvbmUgcmVsZWFzZSBmb3IgWW9jdG8gUHJvamVjdCAyLjEgaXMgYXZh
aWxhYmxlIGZvcg0KZG93bmxvYWQgbm93Lg0KDQpodHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVj
dC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by0yLjFfTTIvDQoNClRoYW5rIHlv
dSB0byBldmVyeW9uZSBmb3IgeW91ciBjb250cmlidXRpb25zLg0KDQplY2xpcHNlLXBva3kva2Vw
bGVyLW1hc3RlciBjZjYwYWMyOTM2MjlmYzhlY2Q2YzRlYjM3MDlhNmYzMzRiNDk5ZDBjDQplY2xp
cHNlLXBva3kvbHVuYS1tYXN0ZXIgNDVhYTVjNzc1MjNiZGYwNTFkNTQ4ZmZmNDMwNTM4Mjk0MmRi
MmViYg0KZWNsaXBzZS1wb2t5L21hcnMtbWFzdGVyIDFkMTc5ZGRjYmQxOTgzYmY3YmNmZTk4ZWZk
Y2JiMTg2YmRjY2NhNGYNCm1ldGEtcXQzIDdkOTU4YjkyOGE0YTM4YTE4Njc0NmZhYmJjMGQ4MTY5
ZGQ4YmIzYTYNCm1ldGEtcXQ0IDQwNThiMDc3MzM4MWY4OTRkOTE1ZWEzZGZhYzVmZTA1MmQ4MmE5
YTcNCnBva3kgMTUyOTE0ZjI5ODNjNWQ2OTAwMWRlMWQ0NmNlOTk1NDdmYTFlNzVmZQ0KDQpUZXN0
IHJlcG9ydCBhdDoNCg0KaHR0cHM6Ly93aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9XVzA4Xy1f
MjAxNi0wMi0xN18tX0Z1bGxfUGFzc18yLjFfTTIucmMzDQoNCg0KVHJhY3kgR3JheWRvbg0KWW9j
dG8gUHJvamVjdA0KQnVpbGQgYW5kIFJlbGVhc2UNCg0K

