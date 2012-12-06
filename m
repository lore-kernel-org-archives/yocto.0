Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92319E00348
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 11:10:02 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Dec 2012 11:10:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,230,1355126400"; d="scan'208";a="253151736"
Received: from envy.jf.intel.com (HELO envy.home) ([10.7.199.70])
	by orsmga002.jf.intel.com with ESMTP; 06 Dec 2012 11:10:02 -0800
Message-ID: <50C0ED8A.2040707@linux.intel.com>
Date: Thu, 06 Dec 2012 11:10:02 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.4.6
Subject: Bugzilla Status Updates
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
X-List-Received-Date: Thu, 06 Dec 2012 19:10:02 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi All,

This is just an update to let you know that the Status field of the
Yocto Project bugzilla has some new fields to better track our workflow.
New values indicated with a *.

Status:
	New
	Accepted
	*In Progress Design
	*In Progress Design Complete
	*In Progress Implementation
	*In Progress Review
	Needinfo
	WaitForUpstream
	Resolved

The new "In Progress*" fields should be updated by the bug owner as they
work through the bug. If you have bugs assigned to you, please take a
moment to update their status accordingly. Bugs that remain in the New
or Accepted states appear to be languishing and generate some churn during
bug review meetings, etc.

Finally, if you use saved bugzilla queries, be advised that they may
require updating to include the new status values.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

