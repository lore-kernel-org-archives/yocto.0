Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60584E003D9; Mon,  6 Aug 2018 04:27:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F357EE0034A
	for <yocto@yoctoproject.org>; Mon,  6 Aug 2018 04:27:53 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Aug 2018 04:27:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,452,1526367600"; d="scan'208";a="73079085"
Received: from abazhenx-mobl1.ccr.corp.intel.com (HELO localhost.localdomain)
	([10.252.51.151])
	by orsmga003.jf.intel.com with ESMTP; 06 Aug 2018 04:27:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  6 Aug 2018 13:27:11 +0200
Message-Id: <cover.1533554743.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [layerindex-web][PATCH 0/9] Layer index fixes (cover letter only)
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
X-List-Received-Date: Mon, 06 Aug 2018 11:27:54 -0000

Some fixes for the Docker setup and bulkchange, plus a couple of
unrelated patches.


The following changes since commit 65d058237f96a151c913a70ba4d639c7aa0fb0b5:

  Dockerfile: Reduce image size by merging RUN stages together (2018-07-23 08:40:00 +0200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes5
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/fixes5

Paul Eggleton (9):
  docker: drop names/emails from settings.py
  docker: fix copying .gitconfig for proxy setup
  README: tweak to make Docker setup more prominent
  docker/README: use -v option for volume mounts
  docker/README: fix setup to allow bulk change to work
  bulkchange: make script more robust
  bulkchange: fix missing closing div for form errors
  admin: improve layer maintainer handling
  Update TODO list

 Dockerfile                               | 12 ++---
 README                                   | 64 ++++++++++++++++--------
 TODO                                     | 22 +++++---
 docker/README                            | 36 +++++++------
 docker/settings.py                       |  3 +-
 layerindex/admin.py                      |  1 +
 layerindex/bulkchange.py                 | 21 +++++---
 layerindex/models.py                     |  2 +-
 templates/layerindex/bulkchangeedit.html |  3 ++
 9 files changed, 104 insertions(+), 60 deletions(-)

-- 
2.17.1


