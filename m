Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E623E00CB4; Wed,  6 Sep 2017 18:39:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9D36E00BB7;
	Wed,  6 Sep 2017 18:39:51 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Sep 2017 18:39:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,356,1500966000"; d="scan'208";a="897853100"
Received: from athirugn-mobl.gar.corp.intel.com ([10.254.185.144])
	by FMSMGA003.fm.intel.com with ESMTP; 06 Sep 2017 18:39:50 -0700
To: meta-intel@yoctoproject.org, yocto-announce@yoctoproject.org,
	yocto@yoctoproject.org
From: Tracy Graydon <tracy.graydon@intel.com>
Message-ID: <59B0A366.6010509@intel.com>
Date: Wed, 6 Sep 2017 18:39:50 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] meta-intel 8.0 for Yocto Project "rocko" 2.4_M3 (Milestone 3) now available
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
X-List-Received-Date: Thu, 07 Sep 2017 01:39:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

All,

The meta-intel 8.0 layer for the Yocto Project 2.4 Milestone 3 “rocko" release is now available.

repo: git://git.yoctoproject.org/meta-intel branch: master
tag: 8.0-rocko-2.4_M3
hash: 8d44e72d6eff173d96eb5b2571e8c1e10de53816
download: http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.4_M3/meta-intel-8.0-rocko-2.4_M3.tar.bz2
md5sum: 881788c2aeb272a9c1c826a97c8da6e6

Known issue: 
The hddimg's fail to boot or install correct with m3 and
meta-intel BSP machines
https://bugzilla.yoctoproject.org/show_bug.cgi?id=12048

WIC images do boot correctly, and this issue has been fixed in OE-Core
master.


Tracy Graydon 
Intel Corporation

