Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3FBDE00A7B; Fri, 22 Jul 2016 16:12:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C984E00A11;
	Fri, 22 Jul 2016 16:12:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 22 Jul 2016 16:12:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,406,1464678000"; d="scan'208";a="1012231190"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by fmsmga001.fm.intel.com with ESMTP; 22 Jul 2016 16:12:00 -0700
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
	ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Fri, 22 Jul 2016 16:12:00 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.239]) by
	ORSMSX161.amr.corp.intel.com ([169.254.4.17]) with mapi id
	14.03.0248.002; Fri, 22 Jul 2016 16:12:00 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: "yocto-announce@yoctoproject.org" <yocto-announce@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [ANNOUNCEMENT] Milestone 1 for Yocto Project 2.2 now available.  
Thread-Index: AQHR5G5yeTxssfUS4U2oy6pRmffvYw==
Date: Fri, 22 Jul 2016 23:11:59 +0000
Message-ID: <D3B7F64D.EF70%tracy.graydon@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.6.6.160626
x-originating-ip: [10.254.18.69]
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Milestone 1 for Yocto Project 2.2 now available.
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
X-List-Received-Date: Fri, 22 Jul 2016 23:12:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <60BE78C8EC16154A88E7D762936D9C70@intel.com>
Content-Transfer-Encoding: base64

VGhlIGZpcnN0IG1pbGVzdG9uZSByZWxlYXNlIGZvciBZb2N0byBQcm9qZWN0IDIuMiBpcyBhdmFp
bGFibGUgZm9yDQpkb3dubG9hZCBub3cuDQoNCmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0
Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTIuMl9NMS8NCg0KVGhhbmsgeW91
IHRvIGV2ZXJ5b25lIGZvciB5b3VyIGNvbnRyaWJ1dGlvbnMuDQoNCmVjbGlwc2UtcG9reS9rZXBs
ZXItbWFzdGVyIGYzNTdjYzNmODk4MWFlM2Y0NDAxY2IyNDQzNWVmNDBhYjA5NWNiMzMudGFyLmJ6
Mg0KZWNsaXBzZS1wb2t5L2x1bmEtbWFzdGVyIDgzMTVkM2VjODQ1ZjM3YTcxMGJjNDJlMDFkZDMy
MDU4ZTRkYTdkMDEudGFyLmJ6Mg0KZWNsaXBzZS1wb2t5L21hcnMtbWFzdGVyIDA2ZmEyNjJkMzA5
NjI4ZTMxNjQ4OTk0YzU1MzI0YmM3MGY1ZDdkYzgudGFyLmJ6Mg0KbWV0YS1xdDMgN2Q5NThiOTI4
YTRhMzhhMTg2NzQ2ZmFiYmMwZDgxNjlkZDhiYjNhNi50YXIuYnoyDQptZXRhLXF0NCA4YjM0NmM0
NjVhNWVmYjI4MGY4ZDBkMjNmODY2MGY2OGJmOWFmNTlmLnRhci5iejINCnBva3kgNmYwYzU1Mzdl
MDJjNTllMWM4ZjNiMDhmNTk4ZGMwNDlmZjhlZTA5OC50YXIuYnoyDQoNCg0KVGVzdCByZXBvcnQ6
DQoNCg0KaHR0cHM6Ly93aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9XVzI2Xy1fMjAxNi0wNi0y
MV8tX0Z1bGxfVGVzdF9DeWNsZV8yLjJfDQpNMS5yYzINCg0KDQoNClRyYWN5IEdyYXlkb24NCllv
Y3RvIFByb2plY3QNCkJ1aWxkIGFuZCBSZWxlYXNlDQoNCg0KDQo=

