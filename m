Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49658E0079D; Thu, 23 Aug 2018 22:00:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C631DE0043F
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 22:00:19 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Aug 2018 22:00:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,281,1531810800"; d="scan'208";a="84510711"
Received: from pradhand-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.140.136])
	by orsmga001.jf.intel.com with ESMTP; 23 Aug 2018 22:00:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 24 Aug 2018 16:59:49 +1200
Message-Id: <cover.1535086706.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [layerindex-web][PATCH 0/3] Minor layer index fixes
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
X-List-Received-Date: Fri, 24 Aug 2018 05:00:20 -0000

A couple of minor fixes for the recent RRS and other distro integration,
plus one additional debugging feature for the update script.


The following changes since commit b3e9cb05d22e0961341d87dce3128eeb273544f6:

  Include errors/warnings in main log in error/warning counts for updates (2018-08-14 15:09:36 +0200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/fixes6
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/fixes6

Paul Eggleton (3):
  rrs: fix recipe/maintainer count showing at top
  Hide navbar on comparison select page
  update: add option to stop immediately on parse errors

 layerindex/update.py                          |  8 ++++
 layerindex/update_layer.py                    | 39 ++++++++++++-------
 templates/base_toplevel.html                  |  2 +
 .../layerindex/comparisonrecipeselect.html    |  3 ++
 templates/rrs/maintainers.html                |  6 +--
 templates/rrs/recipes.html                    |  6 +--
 6 files changed, 43 insertions(+), 21 deletions(-)

-- 
2.17.1


