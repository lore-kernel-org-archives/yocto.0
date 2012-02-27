Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B709E0074A
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2012 05:53:13 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 27 Feb 2012 05:53:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="70692049"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Feb 2012 05:53:12 -0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Feb 2012 21:51:48 +0800
Message-ID: <1330350708.4803.15.camel@dongxiao-osel>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Subject: One question about taskdata and runqueue
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
X-List-Received-Date: Mon, 27 Feb 2012 13:53:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi list,

If I have two recipes, see following. Both of them provides
"virtual/test" and has package named "test-test", the only difference is
the RDEPENDS of the package "test-test".

test-a_1.0.bb

PROVIDES = "virtual/test"
PACKAGES = "test-test"
# Assume that the abcd package are provided by recipe abcd.bb
RDEPENDS_test-test = "abcd"


test-b_1.0.bb

PROVIDES = "virtual/test"
PACKAGES = "test-test"

In a certain configuration file, we have the PREFERRED_PROVIDER set as:
PREFERRED_PROVIDER_virtual/test = "test-a".

Then if a real recipe, for example, the 'v86d', depends on the
"virtual/test":
DEPENDS = "virtual/test"

Finally if I run the following command:
# bitbake v86d

We know that the recipe "abcd" will be included in the runqueue.

My question is, can we get the build dependency to recipe "abcd" through
taskdata? Or it is finalized until we create the RunQueue object?


Thanks for help!
-- Dongxiao


