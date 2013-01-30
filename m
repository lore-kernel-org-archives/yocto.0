Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 953F2E006C2
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 14:11:15 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Jan 2013 14:10:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,572,1355126400"; d="scan'208";a="278771647"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga002.jf.intel.com with ESMTP; 30 Jan 2013 14:11:15 -0800
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 30 Jan 2013 14:11:14 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.84]) with mapi id
	14.01.0355.002; Wed, 30 Jan 2013 14:11:14 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Eddy Lai GMail <eddy.lai.tw@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] install and use "bitbake -c populate_sdk"
Thread-Index: AQHN+jpGKsH8FfJyJU+L65diAkGXVJhid/sg
Date: Wed, 30 Jan 2013 22:11:14 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DDAE59@ORSMSX101.amr.corp.intel.com>
References: <CAHUNapRAcCu=82B3JX0WQweEhz0-m+5sYhdR8gtX+U3UyiKnkg@mail.gmail.com>
	<CAJTo0LZGXAgvCMDD4B+12JTSb_tjNS3xn0mrabFb5DSob8AJnw@mail.gmail.com>
	<510092A1.6050009@windriver.com> <51013BCB.8080208@gmail.com>
In-Reply-To: <51013BCB.8080208@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: install and use "bitbake -c populate_sdk"
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
X-List-Received-Date: Wed, 30 Jan 2013 22:11:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Eddy,

The SDK is meant to be used on development host for cross development inste=
ad of target.  Sounds like you need an sdk image which contains the develop=
ment tools and needed development library and kernel sources.  Please refer=
 to  core-image-sato-sdk for how to customize your image to allow your do d=
evelopment work on target.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Eddy Lai GMail
Sent: Thursday, January 24, 2013 5:49 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] install and use "bitbake -c populate_sdk"

Hi,

I have build and boot the image from USB flash disk with the .hddimg create=
d by "bitbake -k core-image-basic"
have added ssh server inside and make sure the ethernet works well, then us=
e "bitbake -c populate_sdk core-image-basic" to create the "poky_eglibc_xx.=
sh" under "tmp/deploy/sdk" directory, my plan is to install the sdk into th=
e target system and compile my kernel module there, but now the problem is:
1. even I have 8GB USB flash disk, the .hddimg is 420MB only, "df"
command from target said there's 85MB available only,
     but the sdk .sh installer image is about 300MB, how can I "extend"
the target system to use the rest USB disk space? ( it's FAT file system)
     or how to modify configuration to force build the .hddimg create ~"8GB=
" file system?
2. after that SDK installed into my target system, can I copy (scp) my own =
kernel module driver source code into the target system then
     make/compile and try insmod/debug the .ko there?
     or should I install the sdk on host system, then copy only the compile=
d .ko into target system for test/debugging?

Eddy
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

