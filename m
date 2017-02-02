Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09AA3E009A0; Thu,  2 Feb 2017 14:37:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D68CE00998;
	Thu,  2 Feb 2017 14:37:26 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 02 Feb 2017 14:37:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,326,1477983600"; d="scan'208";a="929565447"
Received: from unknown (HELO localhost.localdomain) ([10.7.197.100])
	by orsmga003.jf.intel.com with ESMTP; 02 Feb 2017 14:37:26 -0800
From: Todor Minchev <todor.minchev@linux.intel.com>
To: yocto@yoctoproject.org, meta-intel@yoctoproject.org,
	jianxun.zhang@linux.intel.com
Date: Thu,  2 Feb 2017 14:37:09 -0800
Message-Id: <20170202223712.8164-1-todor.minchev@linux.intel.com>
X-Mailer: git-send-email 2.11.0
Cc: Todor Minchev <todor.minchev@linux.intel.com>
Subject: [PATCH 0/3] [meta-intel][rmc] Add fingerprint quering and database extraction functionality to RMC
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
X-List-Received-Date: Thu, 02 Feb 2017 22:37:30 -0000

This patchset adds database extraction and fingerprint quering
functionality to RMC

Example:

Output fingerprint contents to terminal:

./rmc -F -i rmc.fingerprint

Extract RMC database:

./rmc -E -d rmc.db

https://bugzilla.yoctoproject.org/show_bug.cgi?id=10092

Todor Minchev (3):
  Makefile: add verbosity and debug options to Makefile
  rmc: Enable reading the contents of an existing fingerprint file
  rmc: add database extraction functionality

 Makefile              |  31 ++++++----
 inc/rmc_api.h         |   9 +++
 src/lib/api.c         |  85 ++++++++++++++++++++++++++-
 src/lib/common/rmcl.c |   3 +-
 src/rmc.c             | 157 +++++++++++++++++++++++++++++++++-----------------
 5 files changed, 219 insertions(+), 66 deletions(-)

-- 
2.11.0


