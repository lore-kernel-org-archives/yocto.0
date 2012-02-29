Return-Path: <andrew.nicholson@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2047E00749
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2012 19:02:41 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Feb 2012 19:02:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="115910394"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 28 Feb 2012 19:02:36 -0800
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 28 Feb 2012 19:02:36 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.90]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.102]) with mapi id
	14.01.0355.002; Tue, 28 Feb 2012 19:02:36 -0800
From: "Nicholson, Andrew" <andrew.nicholson@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: current Quick Start manual bug?
Thread-Index: Acz2jpSmaXwajOhSTQGWq87S26mnJA==
Date: Wed, 29 Feb 2012 03:02:35 +0000
Message-ID: <3E01B2A353A25049A1184C4143C66DD107CC00@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: AToD BDJF D0S2 D/9k EosR FLJf FLYB FV3O Fhnc F0Mk GKtC
	G2i4 IGDh Iukd KCP2
	KNJy; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {60FEC579-C8C4-42A9-B22D-DDE840C37F44};
	YQBuAGQAcgBlAHcALgBuAGkAYwBoAG8AbABzAG8AbgBAAGkAbgB0AGUAbAAuAGMAbwBtAA==;
	Wed, 29 Feb 2012 03:02:32 GMT;
	YwB1AHIAcgBlAG4AdAAgAFEAdQBpAGMAawAgAFMAdABhAHIAdAAgAG0AYQBuAHUAYQBsACAAYgB1AGcAPwA=
x-cr-puzzleid: {60FEC579-C8C4-42A9-B22D-DDE840C37F44}
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: current Quick Start manual bug?
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
X-List-Received-Date: Wed, 29 Feb 2012 03:02:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm working through the experience for someone new to embedded Linux develo=
pment to use the Yocto Project, and I believe I found a problem with the cu=
rrent quick start manual.

I followed the instructions in the manual for "Building an Image" and the b=
itbake build failed.  I dug into the build logs and found that it appeared =
all the errors were due to the lack of a perl module.  I noticed that the c=
urrent manual doesn't list getting the "libxml-parser-perl" package, and th=
e "latest" manual does (thank you google).  I added that package and now ev=
erything works.

So I presume that the current manual is in error or there is a syncing prob=
lem?

I'm running ubuntu 11.10 32 bit and the poky-edison-6.0.tar.bz2 tarball as =
in the commands in the quick start manual.

Thanks!

p.s. yes I am keeping a lot of notes as I go through this process.  :-)

Andrew Nicholson
SoC SW Product Planner
Intel Corporation
ofc: 425-881-4843  mobile: 206-914-0127



