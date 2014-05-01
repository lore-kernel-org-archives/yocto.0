Return-Path: <james.woodyatt@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD699E00A71; Thu,  1 May 2014 12:04:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 May 2014 12:04:52 PDT
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69640E009C5
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 12:04:52 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 May 2014 12:03:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,966,1389772800"; d="scan'208";a="426489138"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by azsmga001.ch.intel.com with ESMTP; 01 May 2014 12:03:39 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 1 May 2014 12:03:39 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.80]) by
	ORSMSX113.amr.corp.intel.com ([169.254.7.62]) with mapi id
	14.03.0123.003; Thu, 1 May 2014 12:03:39 -0700
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: Yocto Project Main <yocto@yoctoproject.org>
Thread-Topic: [PATCH 0/2] meta-darwin on dylan branch
Thread-Index: AQHPZXAPla/wwU6zeEyEzIsrJ6U/rw==
Date: Thu, 1 May 2014 19:03:38 +0000
Message-ID: <AEB6E6A7-4CD1-478D-8F31-429512AEF59F@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.24.19]
MIME-Version: 1.0
Subject: [PATCH 0/2] meta-darwin on dylan branch
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
X-List-Received-Date: Thu, 01 May 2014 19:04:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <A4CDE47F838ABE479A975E11B3EAED20@intel.com>
Content-Transfer-Encoding: quoted-printable

Everyone=97

I=92ve discovered some errors in the meta-darwin layer on the dylan branch =
that currently prevent the meta-toolchain target from building the componen=
ts included in the OS X variant of the Arduino for Intel Galileo IDE.  Foll=
ow-ups to comprise the two patches that solve the problem.  These changes m=
ay need to be merged upstream, but I haven=92t looked.

Here are summary descriptions of the patches:

1. Properly configure util-linux when ncurses is configured =97with-libterm=
=3Dtinfo.
2. Remove usage of =91new typename=92 constructors in ld64 part of odcctool=
s2 package.


=97
james woodyatt <james.woodyatt@intel.com>
Software Architect, New Devices Group


