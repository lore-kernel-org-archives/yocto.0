Return-Path: <jussi.laako@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D3FAE0049F; Wed,  4 Jan 2017 07:20:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E450FE0049A
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2017 07:19:56 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 04 Jan 2017 07:19:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,459,1477983600"; d="scan'208";a="26086907"
Received: from jlaako-lnx.fi.intel.com (HELO jlaako-lnx.fi.intel.com.)
	([10.237.72.67])
	by orsmga002.jf.intel.com with ESMTP; 04 Jan 2017 07:19:53 -0800
From: Jussi Laako <jussi.laako@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  4 Jan 2017 17:19:35 +0200
Message-Id: <20170104151937.14632-1-jussi.laako@linux.intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH 0/2] yocto-kernel-cache: Update audio support and add Firewire support
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
X-List-Received-Date: Wed, 04 Jan 2017 15:20:00 -0000

Here are two patches for yocto-kernel-cache:
1) Updates audio support configuration and removes some legacy stuff
2) Adds kernel feature for Firewire support


