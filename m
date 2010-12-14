Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 81F5F4C811B9
	for <yocto@yoctoproject.org>; Tue, 14 Dec 2010 01:41:12 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Dec 2010 23:41:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,341,1288594800"; d="scan'208";a="636115448"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2010 23:41:11 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 14 Dec 2010 15:40:52 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 14 Dec 2010 15:40:52 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Date: Tue, 14 Dec 2010 15:40:48 +0800
Thread-Topic: Questions about the name of qemu bin file for different archs
Thread-Index: AcubYjla3FLSVM3zRtS0UyOc4lxtMQ==
Message-ID: <789F9655DD1B8F43B48D77C5D3065973313A6A37@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: Abfq AqS7 BzXs CGZ3 CX4d C3is C/uq DlP7 ElWX FY/q GPTP
	G9jd HCLk Htvd IHzc
	Im7k; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {F7A6B96F-656F-4D2D-81FB-54F8A9845B8D};
	bABpAHAAaQBuAGcALgBrAGUAQABpAG4AdABlAGwALgBjAG8AbQA=; Tue,
	14 Dec 2010 07:40:48 GMT;
	UQB1AGUAcwB0AGkAbwBuAHMAIABhAGIAbwB1AHQAIAB0AGgAZQAgAG4AYQBtAGUAIABvAGYAIABxAGUAbQB1ACAAYgBpAG4AIABmAGkAbABlACAAZgBvAHIAIABkAGkAZgBmAGUAcgBlAG4AdAAgAGEAcgBjAGgAcwA=
x-cr-puzzleid: {F7A6B96F-656F-4D2D-81FB-54F8A9845B8D}
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Questions about the name of qemu bin file for different archs
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
X-List-Received-Date: Tue, 14 Dec 2010 07:41:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica

I found qemu bin file name convention is different for different archs, for=
 example, for x86, it is bzImage-qemuXXX.
For arm, it is zImage-qemuXXX. My question is why it is bzXXX or zXXX, is t=
here any reason of such naming convention?

Or I must did name translate for each kind of arch qemu bin file?=20


Thanks& Regards,
criping

