Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id F12564C80546
	for <yocto@yoctoproject.org>; Mon, 28 Feb 2011 20:53:24 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Feb 2011 18:53:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,245,1297065600"; d="scan'208";a="714423825"
Received: from eflanaga-mobl.jf.intel.com (HELO [10.7.198.50]) ([10.7.198.50])
	by orsmga001.jf.intel.com with ESMTP; 28 Feb 2011 18:53:24 -0800
Message-ID: <4D6C5FA1.8050609@intel.com>
Date: Mon, 28 Feb 2011 18:53:21 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <789F9655DD1B8F43B48D77C5D306597332E26AA1@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D306597332E26AA1@shsmsx501.ccr.corp.intel.com>
Subject: Release Readiness Review for Bernard RC1
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
X-List-Received-Date: Tue, 01 Mar 2011 02:53:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

All,

This morning we had the Yocto RC1 Release Readiness Review. Notes follow.

Attendees:  Beth, Dave, Jessica, Paul, Joshua, Julie,  Saul, Jeff O, Richard

Feature Status:
  * We are currently feature complete!

Status of the Release Candidate Build:
  * Build infrastructure issues noted on weekend were mostly fixed.
  * builder02 is fixed.
  * package-index issue is being worked on by Beth and Jessica; may be related to the fact that building two meta-tool
chains at once.
  * builder02 moved on Thursday and needed network config issues checked.  Sanity tests failed b/c builder02 couldn't
resolve "localhost."  This was corrected.  Tests passed except for zipper (known issue).
  * Tarball generation build step was made branch aware this morning.  Still needs to be implemented this afternoon.
  * Beth needs to nail down targets we are building.  She sent out an email to verify we are building the right targets.

Sanity tests
  * Zypper-search failure still exists.

BSP Issues:
  * do-kernel_checkout is failing
  * Beagleboard failed doing runstrip on uboot during do_populate_sysroot

Jiajun sent out a QA report to mailing list.
 * BSP tests were blocked because builds were missing BSP images due to failures
 * Open issues have been assigned.

Decision:  RC1 is not the Gold release, but no data that shows we can't code freeze on March 18th.

RC2 will kick off Friday afternoon.  Remember to match master and Bernard branch.  Keep in mind master branch is
undergoing changes due to alignment with OE structure.

For this next cycle, the team priorities are:
1) Fix autobuilder failures.
2) Fix anything that fails in sanity tests <-- Those bugs are highest priority.
3) Fix bugs in bugzilla (in priority order).

