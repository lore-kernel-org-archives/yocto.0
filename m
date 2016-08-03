Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D62EEE00DDE; Tue,  2 Aug 2016 21:59:30 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A9C9E00DD1;
	Tue,  2 Aug 2016 21:59:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 02 Aug 2016 21:59:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,464,1464678000"; d="scan'208";a="1007443702"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by orsmga001.jf.intel.com with ESMTP; 02 Aug 2016 21:59:26 -0700
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
	ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Tue, 2 Aug 2016 21:59:25 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.239]) by
	ORSMSX158.amr.corp.intel.com ([169.254.10.109]) with mapi id
	14.03.0248.002; Tue, 2 Aug 2016 21:59:25 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-announce@yoctoproject.org" <yocto-announce@yoctoproject.org>
Thread-Topic: [ANNOUNCEMENT] Milestone 2 for Yocto Project 2.2 now available.
Thread-Index: AQHR7UPOYvfF53cOW0ervqcSscYHfg==
Date: Wed, 3 Aug 2016 04:59:24 +0000
Message-ID: <D3C6C5C8.F921%tracy.graydon@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.6.6.160626
x-originating-ip: [10.254.6.35]
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Milestone 2 for Yocto Project 2.2 now available.
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
X-List-Received-Date: Wed, 03 Aug 2016 04:59:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <32DAC9899AC33844BAF134AF2BB6D584@intel.com>
Content-Transfer-Encoding: base64

DQpUaGUgc2Vjb25kIG1pbGVzdG9uZSByZWxlYXNlIGZvciBZb2N0byBQcm9qZWN0IDIuMiBpcyBh
dmFpbGFibGUgZm9yDQpkb3dubG9hZCBub3cuDQoNCmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9q
ZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTIuMl9NMi8NCjxodHRwOi8v
ZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0
by0yLjJfTTEvPg0KDQpUaGFuayB5b3UgdG8gZXZlcnlvbmUgZm9yIHlvdXIgY29udHJpYnV0aW9u
cy4NCg0KZWNsaXBzZS1wb2t5L2tlcGxlci1tYXN0ZXIgZjQwMmY5YTI0MTE0ZjI2YzlhMDU3YTc0
MjA2YmRjYTg3NDczMzY3Yg0KZWNsaXBzZS1wb2t5L2x1bmEtbWFzdGVyIDE1NWFlZmJkZDdlYTc3
NjUwNGRlZGViNzQ2OGRiMmVjZDQyMjg2MjkNCmVjbGlwc2UtcG9reS9tYXJzLW1hc3RlciBlMzhj
ZTk5ZjQxM2I4MzJiZTRhOGM2ZGI1ZjczOWZlZDAwNDFkMmY0DQptZXRhLXF0MyA0NGNiYzY0Y2Nh
ZWUyMDUwZDFjMWQ1NzU1MDIzYzBiZjYwNDYxNWExDQptZXRhLXF0NCBkMGNiNDIwMzU1N2E4ZTRi
ZTA3MDQyMTFkYjgzMDZkNDgzNGU5N2VlDQpwb2t5IDM2ZmViMzgwNDViN2EyYWY4NmVjZTE0N2Zl
YzU0YjBkYjNiZjQ5MWYNCg0KDQpUZXN0IHJlcG9ydDoNCg0KaHR0cHM6Ly93aWtpLnlvY3RvcHJv
amVjdC5vcmcvd2lraS9XVzMwXy1fMjAxNi0wNy0yMV8tX0Z1bGxfVGVzdF9DeWNsZV8yLjJfDQpN
Mi5yYzENCg0KDQoNClRyYWN5IEdyYXlkb24NCllvY3RvIFByb2plY3QNCkJ1aWxkIGFuZCBSZWxl
YXNlDQoNCg==

