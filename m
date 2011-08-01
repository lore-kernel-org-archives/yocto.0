Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF2984C80059
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2011 02:45:15 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Aug 2011 00:45:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,299,1309762800"; d="scan'208";a="33690942"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 01 Aug 2011 00:45:14 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 1 Aug 2011 15:44:43 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Mon, 1 Aug 2011
	15:44:42 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Ke, Liping"
	<liping.ke@intel.com>
Date: Mon, 1 Aug 2011 15:44:40 +0800
Thread-Topic: POKY_DISTRO_VERSION or OECORE_DISTRO_VERSION?
Thread-Index: AcxQHt8hPoJ0FXH3TgGADW6cAFR/Pg==
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F2C844F9745@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: POKY_DISTRO_VERSION or OECORE_DISTRO_VERSION?
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
X-List-Received-Date: Mon, 01 Aug 2011 07:45:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,

I noticed the we still use POKY_DISTRO_VERSION in the environment while som=
e other variables have changed their prefix to OECORE_ (e.g. OECORE_NATIVE_=
SYSROOT, etc.)

Which prefix should we use for those version related variables in the envir=
onment files? OECORE_ or POKY_?

-Lianhao

