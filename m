Return-Path: <jussi.laako@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DDC7E00405; Thu,  5 Jan 2017 06:36:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9180FE003E1
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 06:36:13 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga105.jf.intel.com with ESMTP; 05 Jan 2017 06:36:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,321,1477983600"; d="scan'208";a="1079532967"
Received: from jlaako-lnx.fi.intel.com (HELO jlaako-lnx.fi.intel.com.)
	([10.237.72.67])
	by orsmga001.jf.intel.com with ESMTP; 05 Jan 2017 06:36:11 -0800
From: Jussi Laako <jussi.laako@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  5 Jan 2017 16:35:58 +0200
Message-Id: <20170105143559.19780-1-jussi.laako@linux.intel.com>
X-Mailer: git-send-email 2.11.0
Subject: yocto-kernel-cache: [PATCH 0/1] Update audio support v2
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
X-List-Received-Date: Thu, 05 Jan 2017 14:36:16 -0000

This patch update adds small tweak by setting the sound support as module and adds high
resolution timer support.


