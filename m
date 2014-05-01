Return-Path: <james.woodyatt@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19B47E00B1E; Thu,  1 May 2014 16:04:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2D12E009C5
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 16:04:49 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 May 2014 16:03:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,967,1389772800"; d="scan'208";a="532221783"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga002.fm.intel.com with ESMTP; 01 May 2014 16:02:56 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 1 May 2014 16:02:55 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.80]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.220]) with mapi id
	14.03.0123.003; Thu, 1 May 2014 16:02:54 -0700
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: Yocto Project Main <yocto@yoctoproject.org>
Thread-Topic: [PATCH 0/1] dylan: fix C++ standard library headers on OS X
Thread-Index: AQHPZZF8WOn44Wy+HkyYREe8Vfqf3Q==
Date: Thu, 1 May 2014 23:02:54 +0000
Message-ID: <EF363EB9-139F-4D0B-92BC-B28172B107ED@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.24.19]
MIME-Version: 1.0
Subject: [PATCH 0/1] dylan: fix C++ standard library headers on OS X
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
X-List-Received-Date: Thu, 01 May 2014 23:04:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <5B843B0D25F77A40AF7DAC7C15B92E10@intel.com>
Content-Transfer-Encoding: quoted-printable

Everyone=97

Another issue discovered on the dylan branch.  The GCC configuration applie=
s the wrong path to the =97with-gxx-include-dir option.  The follow-up comp=
rises the patch.


=97
james woodyatt <james.woodyatt@intel.com>
Software Architect, New Devices Group


