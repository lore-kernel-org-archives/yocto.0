Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38ADAE00C43; Wed,  6 Feb 2019 14:01:36 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2AF9E00C06
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2019 14:01:34 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Feb 2019 14:01:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.58,341,1544515200"; d="scan'208";a="124504939"
Received: from skdora9-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.180.13])
	by orsmga003.jf.intel.com with ESMTP; 06 Feb 2019 14:01:31 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Feb 2019 11:00:45 +1300
Message-Id: <cover.1549490398.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.2
Subject: [PATCH 00/10] Misc fixes (cover letter only)
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
X-List-Received-Date: Wed, 06 Feb 2019 22:01:36 -0000

The following changes since commit 61e9b048591adab88d1996646286e1d7df024bea:

  Fix drop-down alignment on duplicates page (2018-11-20 11:58:42 +1300)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes12
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/fixes12

Paul Eggleton (10):
  Send people an email when another user adds them as a maintainer
  Add links to other branch recipes in recipe detail
  Fix errors due to races deleting bitbake temp files
  local.conf: allow for upstream_tracking.inc to be missing
  Use try...finally or with to ensure files get closed
  Replace use of assert with exceptions
  docker: add wget to dependencies
  RRS: fix sorting arrow positioning
  rrs_maintainer_history: check out layer branch before looking for
    maintainers.inc
  RRS: add tool to import/export upstream history data

 Dockerfile                                 |   1 +
 conf/local.conf                            |   2 +-
 layerindex/bulkchange.py                   |  18 +-
 layerindex/update.py                       |   4 +-
 layerindex/update_layer.py                 |  14 +-
 layerindex/utils.py                        |  21 ++-
 layerindex/views.py                        |  70 ++++++--
 rrs/tools/historytool.py                   | 196 +++++++++++++++++++++
 rrs/tools/rrs_distros.py                   |  19 +-
 rrs/tools/rrs_maintainer_history.py        |  45 ++---
 rrs/tools/rrs_upgrade_history.py           |   4 +-
 rrs/tools/rrs_upstream_history.py          |   3 +-
 rrs/tools/upgrade_history_internal.py      |   3 +-
 rrs/views.py                               |   2 +
 templates/layerindex/maintemail.txt        |   9 +
 templates/layerindex/maintemailsubject.txt |   1 +
 templates/layerindex/recipedetail.html     |  27 +++
 templates/rrs/maintainers.html             |   2 +-
 templates/rrs/recipedetail.html            |  27 +++
 templates/rrs/recipes.html                 |   2 +-
 20 files changed, 392 insertions(+), 78 deletions(-)
 create mode 100755 rrs/tools/historytool.py
 create mode 100644 templates/layerindex/maintemail.txt
 create mode 100644 templates/layerindex/maintemailsubject.txt

-- 
2.17.2


