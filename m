Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8828F4C800A3
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2011 08:28:33 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Mar 2011 06:28:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,303,1297065600"; d="scan'208";a="896271922"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 11 Mar 2011 06:28:28 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 11 Mar 2011 22:27:56 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 11 Mar 2011 22:27:55 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>
Date: Fri, 11 Mar 2011 22:27:52 +0800
Thread-Topic: current status for ADT
Thread-Index: Acvf+IF8zpZ/jJ5ZTSKwQOqE5LZDMw==
Message-ID: <789F9655DD1B8F43B48D77C5D306597332F5FA0F@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: current status for ADT
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
X-List-Received-Date: Fri, 11 Mar 2011 14:28:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica

We use today's latest poky master which includes all our own fixes to build
(arm, i586, mips) target fs and cross toolchains. And then we run below tes=
t:


Test environment:

1. For the available repo, use adt-installer installed toolchain:  i686-arm=
.

2. For meta-toolchainsdk installed toolchain: i686-i586, i686-arm, i686-mip=
s.

3. target: Qemu x86

Test project:

Against our selected test c++/c/libtool projects. All works fine.

All those tests are under command line with our automatic test scripts.
We have not tested Eclipse plugin UI yet.

One thing to do is that we need to set up test adt repos for more archs aga=
inst newer changeset
so that we can cover more adt-installer tests against different archs.

Thanks & Regards,
criping

