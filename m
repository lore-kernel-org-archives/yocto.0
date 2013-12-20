Return-Path: <james.woodyatt@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 324E1E007CB
	for <yocto@yoctoproject.org>; Fri, 20 Dec 2013 12:37:44 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Dec 2013 12:33:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,523,1384329600"; d="scan'208";a="428003315"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2013 12:37:43 -0800
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
	ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 20 Dec 2013 12:37:43 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.51]) by
	ORSMSX115.amr.corp.intel.com ([10.22.240.11]) with mapi id
	14.03.0123.003; Fri, 20 Dec 2013 12:37:43 -0800
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: Yocto Discussion <yocto@yoctoproject.org>
Thread-Topic: building OS X toolchain with meta-darwin
Thread-Index: AQHO/cNUpvUppXd3JUiO3QRkAQx9Rg==
Date: Fri, 20 Dec 2013 20:37:42 +0000
Message-ID: <CED9EA96.C00%james.woodyatt@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.24.16]
MIME-Version: 1.0
Subject: building OS X toolchain with meta-darwin
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
X-List-Received-Date: Fri, 20 Dec 2013 20:37:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <7083DCE450BAC44EA6928B2969D0541A@intel.com>
Content-Transfer-Encoding: quoted-printable

Everyone=8B

I=B9m not sure where is the best place to take this question.  Please excus=
e
me, I=B9m new.

I=B9m struggling to build an OS X toolchain reliably and repeatably.  I=B9v=
e
checked out the current top of the =8Cdylan=B9 branch of Poky, meta-darwin,
meta-intel and (for reasons I=B9m not sure I understand) the OpenEmbedded
meta-oe layer.  I am not succeeding to build the OS X tool chain on my
Linux VM running under Parallels (according to the arcane manual procedure
required for using the MacOSX10.Y.sdk extracted from Xcode while
respecting the Apple Xcode license) using SDKMACHINE=3Di386-darwin.

An annoying failure, but I can work around it, is that the OpenDarwin
cctools have a dependency on something that isn=B9t reflected in the recipe=
,
so you have to do repeated =B3bitbake =ADk=B2 runs until it succeeds its
do_configure method.  I=B9m not asking about that right now.

The failure I have been struggling with is that ncurses-5.9 won=B9t build
for OS X.

1. The almost-stock ncurses-5.9 in the dylan branch has a known issue
where if it is configured for darwin targets, the compiler is passed the
=8Bno-precomp-cpp option, which is deprecated. The GCC we are building in
the cross toolchain for OS X doesn=B9t support that option, so the configur=
e
script fails.

2. I tried to patch the ncurses recipe so that it applies the 2013-05-04
rollup patch from the FSF upstream, which contains the fix for the the
=8Bno-precomp-cpp option problem, but that doesn=B9t work because GCC 4.7
isn=B9t compatible with the C++ standard library headers in the OS X SDK
(which are for a much older version of GCC that Apple still uses=8B for
reasons, you all know them).

I can=B9t figure out why ncurses should even need to be build for the OS X
hosted toolchain.  This seems like an unnecessary dependency, and I don=B9t
see how to stop requiring it.  Can anybody please help me turn off the
requirement to build ncurses for deployment in the OS X toolchain when
building with SDKMACHINE=3D*-darwin, please please please?  Thanks.

--=20
james woodyatt <james.woodyatt@intel.com>

Software Architect, New Devices Group


