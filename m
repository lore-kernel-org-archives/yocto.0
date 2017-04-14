Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86793E009B2; Fri, 14 Apr 2017 14:02:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 583B4E009B2;
	Fri, 14 Apr 2017 14:02:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Apr 2017 14:02:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,200,1488873600"; d="scan'208";a="1135763079"
Received: from weshephe-mobl1.amr.corp.intel.com ([10.254.45.138])
	by fmsmga001.fm.intel.com with ESMTP; 14 Apr 2017 14:02:20 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <58F138DB.90509@intel.com>
Date: Fri, 14 Apr 2017 14:02:19 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Milestone 3 for Yocto Project 2.3 now available.
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
X-List-Received-Date: Fri, 14 Apr 2017 21:02:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

The third milestone release for Yocto Project 2.3 is available for download now.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.3_M3/

eclipse-poky/mars-master 92aa0e79e8b01c56f0670af3cd8296ec68b43350
eclipse-poky/neon-master 83e0083ef3a71e10039ace7d18057dddc154408b
meta-qt3 f33b73a9563f2dfdfd0ee37b61d65d90197a456f
meta-qt4 2c7f8df9039be498f8a2232d1428adb7f4e5e800
poky 415b72ffcbd26e5f3664370d8b2a9b8105fb6342

Test report:

https://wiki.yoctoproject.org/wiki/WW06_-_2017-02-03_-_Full_Test_Cycle_2.3_M2_rc3

Thank you.

Tracy Graydon
Yocto Project
Build and Release

