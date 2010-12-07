Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8FE104C80050
	for <yocto@yoctoproject.org>; Tue,  7 Dec 2010 00:59:07 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Dec 2010 22:59:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="684618320"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2010 22:59:06 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 7 Dec 2010 14:59:00 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Tue, 7 Dec 2010
	14:58:59 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "Purdie, Richard" <richard.purdie@intel.com>
Date: Tue, 7 Dec 2010 14:58:56 +0800
Thread-Topic: On task "Toolchain Bootstrap Process"
Thread-Index: AcuV3Dd52ZpXR9juTlaCFp2q5MzZtw==
Message-ID: <33AB447FBD802F4E932063B962385B3531622525@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: On task "Toolchain Bootstrap Process"
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
X-List-Received-Date: Tue, 07 Dec 2010 06:59:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

When going through the task of "Toolchain Bootstrap Process" in M3 Sprint A=
, Kevin and I have one question: will this task be no longer needed if per-=
recipe sysroot support is ready? Per the task description, the goal to this=
 task is to resolve the sysroot conflict of toolchain boostrap process like=
 gcc-initial, gcc- intermediate. So when per-recipes sysroot is ready, the =
toolchain bootstraps will have their own per-recipe sysroot, then looks the=
 conflict should be resolved.  Is this understanding correct?

Regards
Ke

