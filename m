Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE868E0094C; Thu,  9 Feb 2017 11:17:55 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F6FBE00924;
	Thu,  9 Feb 2017 11:17:52 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 09 Feb 2017 11:17:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,137,1484035200"; d="scan'208";a="42160649"
Received: from unknown (HELO localhost.localdomain) ([10.7.197.100])
	by orsmga002.jf.intel.com with ESMTP; 09 Feb 2017 11:17:52 -0800
From: Todor Minchev <todor.minchev@linux.intel.com>
To: yocto@yoctoproject.org, meta-intel@yoctoproject.org,
	jianxun.zhang@linux.intel.com
Date: Thu,  9 Feb 2017 11:17:35 -0800
Message-Id: <20170209191740.63387-1-todor.minchev@linux.intel.com>
X-Mailer: git-send-email 2.11.1
Cc: Todor Minchev <todor.minchev@linux.intel.com>
Subject: [PATCH v2 0/5] [meta-intel][rmc] Add fingerprint quering and database extraction functionality to RMC
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
X-List-Received-Date: Thu, 09 Feb 2017 19:17:55 -0000

This is V2 of the patchset. It addresses all feedback received in V1.

Changes from previous version:

* remove default silent mode from Makefile
* extract fingerprint with -E instead of -F
* add is_rmcdb(db_blob) for database validation
* add -o option to specify an output directory to extract the database to
* remove non-alphanumeric characters from fingerprint signatures before
  using the signatures as directory names

Todor Minchev (5):
  Makefile: disable silent mode in Makefiles
  Makefile: add debug target
  rmc: Enable reading the contents of an existing fingerprint file
  rmc: remove unnecessary return variable
  rmc: add database extraction functionality

 Makefile              |  23 ++++++----
 Makefile.efi          |  10 ++--
 inc/rmc_api.h         |   9 ++++
 inc/rmcl.h            |   7 +++
 src/lib/api.c         | 106 +++++++++++++++++++++++++++++++++++++++++-
 src/lib/common/rmcl.c |  17 ++++++-
 src/rmc.c             | 124 +++++++++++++++++++++++++++++++++-----------------
 7 files changed, 237 insertions(+), 59 deletions(-)

-- 
2.11.1


