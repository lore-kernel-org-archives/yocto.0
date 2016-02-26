Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20A94E00DB1; Fri, 26 Feb 2016 12:08:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1B38E00DA6
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 12:08:39 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Feb 2016 12:08:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,504,1449561600"; d="scan'208";a="924712497"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga002.fm.intel.com with ESMTP; 26 Feb 2016 12:08:38 -0800
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Fri, 26 Feb 2016 12:08:38 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.244]) by
	ORSMSX111.amr.corp.intel.com ([169.254.12.9]) with mapi id
	14.03.0248.002; Fri, 26 Feb 2016 12:08:37 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [ANNOUNCEMENT] Milestone 2 for Yocto Project 2.1 now available.  
Thread-Index: AQHRcDaE0sjo8RrF/UOXV1WBnDMFmJ8+woeA
Date: Fri, 26 Feb 2016 20:08:37 +0000
Message-ID: <D2F5F079.917E%tracy.graydon@intel.com>
References: <D2F4ECCA.8D4C%tracy.graydon@intel.com>
In-Reply-To: <D2F4ECCA.8D4C%tracy.graydon@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.6.1.160122
x-originating-ip: [10.255.74.149]
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
X-List-Received-Date: Fri, 26 Feb 2016 20:08:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <82CA3BC78A0471468220A69F7D16F6F5@intel.com>
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
dG8gUHJvamVjdA0KQnVpbGQgYW5kIFJlbGVhc2UNCg0KDQoNCg0K

