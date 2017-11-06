Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 727B0E00C62; Mon,  6 Nov 2017 14:45:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E844AE00C62
	for <yocto@yoctoproject.org>; Mon,  6 Nov 2017 14:45:00 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Nov 2017 14:45:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,354,1505804400"; 
   d="scan'208";a="4184712"
Received: from scetola-mac01.jf.intel.com ([10.54.74.141])
	by orsmga002.jf.intel.com with ESMTP; 06 Nov 2017 14:44:59 -0800
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  6 Nov 2017 14:44:53 -0800
Message-Id: <20171106224457.8855-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.14.2
Cc: joshua.g.lock@intel.com
Subject: [yocto-autobuilder][PATCH 0/4] update meta-intel ab
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
X-List-Received-Date: Mon, 06 Nov 2017 22:45:01 -0000

There were a few changes that were not committed on the meta-intel
autobuilder, specifically in the buildset configs. These patches get
us back up to date with those changes.

There is also an update to meta-tlk which should not effect the yocto
autobuilder. Since we now have meta-tlk as a separate layer from
meta-intel, we need to add that layer's location based on
meta-intel's layer version.

Stephano Cetola (4):
  buildset-config.meta-intel: add oe-selftest buildsets
  intel-quark.conf: change the defaults for srcrev_meta and
    srcrev_machine
  buildset-config.meta-intel/nightly-meta-intel.conf: add rocko
  buildset-config.meta-intel: add meta-tlk

 .../intel-core2-32-lsb-rt.conf                     |  5 +++-
 buildset-config.meta-intel/intel-core2-32-lsb.conf |  4 +++
 buildset-config.meta-intel/intel-core2-32-rt.conf  |  5 +++-
 buildset-config.meta-intel/intel-core2-32.conf     |  4 +++
 .../intel-corei7-64-lsb-rt.conf                    |  4 +++
 .../intel-corei7-64-lsb.conf                       |  6 ++++-
 buildset-config.meta-intel/intel-corei7-64-rt.conf |  4 +++
 buildset-config.meta-intel/intel-corei7-64.conf    |  6 ++++-
 buildset-config.meta-intel/intel-quark.conf        | 12 ++++++---
 .../nightly-meta-intel-world.conf                  |  4 +++
 buildset-config.meta-intel/nightly-meta-intel.conf | 17 +++++++-----
 .../nightly-musl-core2-32.conf                     |  4 +++
 buildset-config.meta-intel/nightly-musl.conf       |  4 +++
 .../nightly-oe-selftest-core2-32.conf              | 31 ++++++++++++++++++++++
 .../nightly-oe-selftest-corei7.conf                | 31 ++++++++++++++++++++++
 .../nightly-oe-selftest-x86-64.conf                | 31 ++++++++++++++++++++++
 .../nightly-oe-selftest-x86.conf                   | 31 ++++++++++++++++++++++
 .../nightly-oe-selftest.conf                       | 30 +++++++++++++++++++++
 buildset-config.meta-intel/nightly-x32.conf        |  4 +++
 buildset-config.meta-intel/yoctoAB.conf            |  7 ++---
 .../autobuilder/buildsteps/CreateBBLayersConf.py   |  6 ++++-
 21 files changed, 231 insertions(+), 19 deletions(-)
 create mode 100644 buildset-config.meta-intel/nightly-oe-selftest-core2-32.conf
 create mode 100644 buildset-config.meta-intel/nightly-oe-selftest-corei7.conf
 create mode 100644 buildset-config.meta-intel/nightly-oe-selftest-x86-64.conf
 create mode 100644 buildset-config.meta-intel/nightly-oe-selftest-x86.conf
 create mode 100644 buildset-config.meta-intel/nightly-oe-selftest.conf

-- 
2.14.2


