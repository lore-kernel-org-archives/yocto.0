Return-Path: <james.woodyatt@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DC93E006EF; Wed, 14 May 2014 17:18:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga02.intel.com (unknown [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 013EEE0053B
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 17:18:54 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 May 2014 17:18:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,1055,1389772800"; d="scan'208";a="540613154"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga002.jf.intel.com with ESMTP; 14 May 2014 17:18:53 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 14 May 2014 17:18:53 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.80]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.138]) with mapi id
	14.03.0123.003; Wed, 14 May 2014 17:18:53 -0700
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: "Purdie, Richard" <richard.purdie@intel.com>
Thread-Topic: my recent change to the dylan branch of meta-darwin
Thread-Index: AQHPb9NAMzlWwZxry02Z1CZflmMYuw==
Date: Thu, 15 May 2014 00:18:52 +0000
Message-ID: <B6C50B5A-EFE4-4865-B40C-794A237D1A75@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.24.30]
MIME-Version: 1.0
Cc: Yocto Project Main <yocto@yoctoproject.org>
Subject: my recent change to the dylan branch of meta-darwin
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
X-List-Received-Date: Thu, 15 May 2014 00:18:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <F99FEDEB98AE9F41B6F313498CD3B6EA@intel.com>
Content-Transfer-Encoding: quoted-printable

Richard=97

I think I broke the meta-darwin layer with this commit.

> commit f4122e22257c784e9eb1b564e8ef16cd2e83cd03
> Author: Woodyatt, James <james.woodyatt@intel.com>
> Date:   Thu May 1 19:03:41 2014 +0000
>=20
>     odcctools2: Remove use of "new typename" constructors
>    =20
>     These are specific to gcc 4.8 and removing these allows the build
>     to succeed on host systemd with have gcc 4.7.
>    =20
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

This fixes the build on GCC 4.4, but it now breaks with GCC 4.6.3.  Not an =
improvement.  I think this change should be rolled back in the Yocto projec=
t =91dylan=92 branch.  My sincere apologies for this error.  I will work on=
 a better patch that more precisely addresses the issue.

=97
james woodyatt <james.woodyatt@intel.com>
Software Architect, New Devices Group


