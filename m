Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE3DEE00BAF; Fri, 30 Jun 2017 13:36:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ABCFE00B9F;
	Fri, 30 Jun 2017 13:36:54 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Jun 2017 13:36:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,288,1496127600"; d="scan'208";a="121473842"
Received: from yzhi-mobl1.amr.corp.intel.com ([10.255.231.7])
	by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2017 13:36:53 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <5956B665.9030103@intel.com>
Date: Fri, 30 Jun 2017 13:36:53 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Milestone 1 for Yocto Project 2.4 now available.
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
X-List-Received-Date: Fri, 30 Jun 2017 20:36:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

The first milestone release for Yocto Project 2.4 is available for download now.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.4_M1/

eclipse-poky-mars 92aa0e79e8b01c56f0670af3cd8296ec68b43350
eclipse-poky-neon 83e0083ef3a71e10039ace7d18057dddc154408b
meta-qt3 f33b73a9563f2dfdfd0ee37b61d65d90197a456f
meta-qt4 033509ebc1eb0d13290a7a3f0c2772ed58712c34
poky 6964efddd31c479386d1643c1025bc102710392f

Test report:

https://wiki.yoctoproject.org/wiki/WW25_-_2017-06-22_-_Full_Test_Cycle_2.4_M1_rc1

Thank you.

Tracy Graydon
Yocto Project
Build and Release

