Return-Path: <jessica.zhang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FD23E00BA0; Thu, 22 May 2014 11:04:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga09.intel.com (unknown [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4154E00A2F
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 11:04:20 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 22 May 2014 10:59:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,888,1392192000"; d="scan'208";a="545069726"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by orsmga002.jf.intel.com with ESMTP; 22 May 2014 11:04:09 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 22 May 2014 11:04:08 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.198]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.231]) with mapi id
	14.03.0123.003; Thu, 22 May 2014 11:04:08 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [eclipse][PATCH 0/2] Add oecore sysroot variable to
	CMAKE_FIND_ROOT_PATH
Thread-Index: AQHPdaWwEnWP+ne6oUeC8/ayTPgI+ptM5SDg
Date: Thu, 22 May 2014 18:04:08 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C805D667B@ORSMSX103.amr.corp.intel.com>
References: <cover.1400752777.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1400752777.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [eclipse][PATCH 0/2] Add oecore sysroot variable to	CMAKE_FIND_ROOT_PATH
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
X-List-Received-Date: Thu, 22 May 2014 18:04:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Pulled into eclipse-poky-kepler master.  Thanks for the contribution!  - Je=
ssica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Thursday, May 22, 2014 3:05 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [eclipse][PATCH 0/2] Add oecore sysroot variable to CMAKE_=
FIND_ROOT_PATH

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

we were not considering the oecore sysroot variables provided by the enviro=
nment script when constructing the CMAKE_FIND_ROOT_PATH in the toolchain cm=
ake. As the other used variables do not necessarily contain values the CMAK=
E_FIND_ROOT_PATH can be empty. This can lead to issues when searching paths=
 or libraries with CMake.

By using the oecore sysroot variables we make sure, that the CMAKE_FIND_ROO=
T_PATH contains sane values and all the find methods of CMake are at least =
searching the provided sysroot.

01: Refactors the CMAKE_ROOT_PATH construction to ease the future addition =
or removal of variables
02: Adds the oecore sysroot varaibles

Best regards,
Timo

Timo Mueller (2):
  plugins/cmake: Refactor creation of CMAKE_FIND_ROOT_PATH
  plugins/cmake: Add oecore sysroot variables to CMAKE_FIND_ROOT_PATH

 .../YoctoCMakeMakefileGenerator.java               | 37 +++++++++++++++---=
----
 1 file changed, 25 insertions(+), 12 deletions(-)

--
1.9.0

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

