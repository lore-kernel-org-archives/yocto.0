Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 89AD24C8108C
	for <yocto@yoctoproject.org>; Mon, 10 Jan 2011 03:07:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jan 2011 01:06:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,299,1291622400"; d="scan'208";a="875985895"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 10 Jan 2011 01:06:32 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 10 Jan 2011 17:05:29 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 10 Jan 2011 17:05:28 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Xu, Jiajun" <jiajun.xu@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>
Date: Mon, 10 Jan 2011 17:05:25 +0800
Thread-Topic: About adding sanity test for unfs qemu
Thread-Index: AcuwpYSidcgu4NqyTXaMYK4UPgysxg==
Message-ID: <789F9655DD1B8F43B48D77C5D30659733165851C@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: About adding sanity test for unfs qemu
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
X-List-Received-Date: Mon, 10 Jan 2011 09:07:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jiajun=20

since sanity test works fine now, just want to know if there's any possible=
 for adding some test cases for SDK side.

1. We want to know whether unfs qemu could work fine. Since we only support=
 booting unfs qemu in with our SDK plugins (Eclipse, ANJUTA)
2. When our SDK installer is ready (after setting up repository), automatic=
ally running SDK installer, whether
   a) SDK installer works
   b) Go on running something such as compiling/debugging in command line, =
testing whether toolchains works.


How do you think of it? If yes, what should we do?

Thanks& Regards,
criping



