Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9D07E007BA; Tue, 14 Feb 2017 14:37:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB358E00566;
	Tue, 14 Feb 2017 14:37:04 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Feb 2017 14:37:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,163,1484035200"; d="scan'208";a="44502735"
Received: from unknown (HELO localhost.localdomain) ([10.7.197.100])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2017 14:37:04 -0800
From: Todor Minchev <todor.minchev@linux.intel.com>
To: jianxun.zhang@linux.intel.com, yocto@yoctoproject.org,
	meta-intel@yoctoproject.org
Date: Tue, 14 Feb 2017 14:36:47 -0800
Message-Id: <20170214223652.88931-1-todor.minchev@linux.intel.com>
X-Mailer: git-send-email 2.11.1
Cc: Todor Minchev <todor.minchev@linux.intel.com>
Subject: [PATCH v3 0/5][meta-intel][rmc] Add fingerprint quering and database extraction functionality to RMC
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
X-List-Received-Date: Tue, 14 Feb 2017 22:37:08 -0000

This is V3 of the patchset. It addresses all feedback received in V2.

Changes from previous version:

* use mkdir() instead of system() to create output directories
* use ASCII representation of fingerprint signatures in hex as directory names
* remove extra verbosity from fingerprint dump

Todor Minchev (5):
  Makefile: disable silent mode in Makefiles
  Makefile: add debug target
  rmc: enable reading the contents of an existing fingerprint file
  rmc: remove unnecessary return variable
  rmc: add database extraction functionality

 Makefile              |  23 +++++----
 Makefile.efi          |  10 ++--
 inc/rmc_api.h         |   9 ++++
 inc/rmcl.h            |   7 +++
 src/lib/api.c         | 126 +++++++++++++++++++++++++++++++++++++++++++++++++-
 src/lib/common/rmcl.c |  17 ++++++-
 src/rmc.c             | 123 ++++++++++++++++++++++++++++++++----------------
 7 files changed, 256 insertions(+), 59 deletions(-)

-- 
2.11.1


