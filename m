Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 84B284C80FD4
	for <yocto@yoctoproject.org>; Thu, 23 Dec 2010 19:44:15 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2010 17:44:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,221,1291622400"; d="scan'208";a="586825614"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 23 Dec 2010 17:44:14 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 24 Dec 2010 09:43:48 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 24 Dec 2010 09:43:48 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 24 Dec 2010 09:43:46 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Purdie, Richard" <richard.purdie@intel.com>
Date: Fri, 24 Dec 2010 09:43:45 +0800
Thread-Topic: A question about libtool-cross
Thread-Index: AcujDADM8XYY2hVEQjqhOvWWBnt8+A==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A319A5510@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: A question about libtool-cross
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
X-List-Received-Date: Fri, 24 Dec 2010 01:44:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

When looking at libtool-cross recipe, I found that it doesn't inherit the c=
ross.bbclass, thus its files are populated into target sysroot. Is it on pu=
rpose or its inherit is missing?=20
BTW, for other cross recipes, like gcc-cross, binutils-cross, etc, they all=
 inherit cross.bbclass

Thanks,
Dongxiao =

