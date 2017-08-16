Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7670EE00BAB; Wed, 16 Aug 2017 16:56:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	URIBL_SBL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.6 URIBL_SBL Contains an URL's NS IP listed in the SBL blocklist
	*      [URIs: yoctoproject.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5102EE008D2;
	Wed, 16 Aug 2017 16:56:16 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Aug 2017 16:56:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,385,1498546800"; d="scan'208";a="890835192"
Received: from dwrussex-mobl1.amr.corp.intel.com ([10.254.82.146])
	by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2017 16:56:15 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <5994DB9E.3040409@intel.com>
Date: Wed, 16 Aug 2017 16:56:14 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Milestone 2 for Yocto Project 2.4 now available
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
X-List-Received-Date: Wed, 16 Aug 2017 23:56:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

The second milestone release for Yocto Project 2.4 is available for download now.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.4_M2/

eclipse-poky-mars 92aa0e79e8b01c56f0670af3cd8296ec68b43350
eclipse-poky-neon 83e0083ef3a71e10039ace7d18057dddc154408b
meta-qt3 f33b73a9563f2dfdfd0ee37b61d65d90197a456f
meta-qt4 d52c38ad9f0a617b9ad5048a872a9e97b3af5b44
poky 9ed748a542b520c1cb763d981969233c0f5efd4e

Test report:

https://wiki.yoctoproject.org/wiki/WW32_-_2017-08-09_-_Full_Test_Cycle_2.4_M2_rc3

Thank you.

Tracy Graydon
Yocto Project
Build and Release

