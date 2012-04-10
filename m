Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD266E0030B
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 08:16:14 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 10 Apr 2012 08:16:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="87380860"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Apr 2012 08:16:13 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 10 Apr 2012 08:16:13 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.125]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.142]) with mapi id
	14.01.0355.002; Tue, 10 Apr 2012 23:16:11 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Thread-Topic: autobuilder failure
	http://autobuilder.pokylinux.org:8010/builders/nightly-x86/builds/433
Thread-Index: Ac0XLNv4Z7andcq9S0KEcduOqasM/Q==
Date: Tue, 10 Apr 2012 15:16:10 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FD33D27@SHSMSX102.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: autobuilder failure http://autobuilder.pokylinux.org:8010/builders/nightly-x86/builds/433
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
X-List-Received-Date: Tue, 10 Apr 2012 15:16:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Saul,

I think I might have some clues why the python-nativesdk failed at http://a=
utobuilder.pokylinux.org:8010/builders/nightly-x86/builds/433. It's due to =
the commit http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=
=3Dstage/master_under_test&id=3Da1f1cc4c27b5091870b1dbd9ede7c24c38d765dd.=20

I guess the above commit which changed eglibc-nativesdk to version 2.15 has=
 some conflict to the sstate-cache the autobuilder used, which might contai=
ns content from old eglibc-nativesdk 2.13.

-Lianhao

