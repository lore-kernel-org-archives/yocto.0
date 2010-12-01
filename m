Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8E2934C80039
	for <yocto@yoctoproject.org>; Wed,  1 Dec 2010 04:06:26 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Dec 2010 02:06:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,282,1288594800"; d="scan'208";a="863050899"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 01 Dec 2010 02:06:25 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 1 Dec 2010 18:06:24 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Wed, 1 Dec 2010
	18:06:23 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>, "Tian, Kevin" <kevin.tian@intel.com>
Date: Wed, 1 Dec 2010 18:06:12 +0800
Thread-Topic: yocto_installer test script update
Thread-Index: AcuRP2G+ThJAQacvTRywh28cpIwTgQ==
Message-ID: <789F9655DD1B8F43B48D77C5D30659732FF6C134@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: WaI= AGMW A7He BMQz BkpN CGS/ Cbxz Dbxs DxiP D2LR D9ld
	FBPu FZv1 F0Sf F4iR
	GFRS; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {2BA4799B-794B-49DF-BA17-1A2553B5A10C};
	bABpAHAAaQBuAGcALgBrAGUAQABpAG4AdABlAGwALgBjAG8AbQA=; Wed,
	01 Dec 2010 10:06:12 GMT;
	eQBvAGMAdABvAF8AaQBuAHMAdABhAGwAbABlAHIAIAB0AGUAcwB0ACAAcwBjAHIAaQBwAHQAIAB1AHAAZABhAHQAZQA=
x-cr-puzzleid: {2BA4799B-794B-49DF-BA17-1A2553B5A10C}
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: yocto_installer test script update
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
X-List-Received-Date: Wed, 01 Dec 2010 10:06:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica

The newer version of the installer is in lianhao's location. You can direct=
ly run ./yocto_installer
http://llu-piketon.sh.intel.com/ Today we tested both on 32 bit and 64 bit =
ubuntu host.

It's very initial and rough, I will move many non-root required ops into th=
e outer wrapper script later.=20

Any early comments are welcomed, just let me know.

Thanks& Regards,
criping



