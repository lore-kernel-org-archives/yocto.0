Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE6A3E00B57; Sun, 11 Aug 2019 14:17:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D924E00A93
	for <yocto@yoctoproject.org>; Sun, 11 Aug 2019 14:17:30 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Aug 2019 14:17:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,374,1559545200"; d="scan'208";a="204521290"
Received: from syloh-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.156.154])
	by fmsmga002.fm.intel.com with ESMTP; 11 Aug 2019 14:17:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 12 Aug 2019 09:17:08 +1200
Message-Id: <cover.1565558135.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 0/4] dockersetup fixes (cover letter only)
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
X-List-Received-Date: Sun, 11 Aug 2019 21:17:31 -0000
Content-Transfer-Encoding: 8bit

Some fixes for the dockersetup.py script from the Clear Linux Dissector on
top of the set that was merged recently.


The following changes since commit 73198bd5483c16b9852121c6855dc6dac96a98a0:

  README: add reference to using import_layers to update (2019-08-06 12:04:17 +1200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/dissector-backports2
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/dissector-backports2

Paul Eggleton (4):
  dockersetup.py: add connectivity check
  docker: fix comment at top of Dockerfile
  dockersetup: proxy support fixes
  dockersetup: add uninstall option

 Dockerfile                   |   4 +-
 docker/connectivity_check.sh |  35 ++++++++
 docker/git-proxy             |  10 ++-
 dockersetup.py               | 167 ++++++++++++++++++++++++++++-------
 4 files changed, 181 insertions(+), 35 deletions(-)
 create mode 100755 docker/connectivity_check.sh

-- 
2.20.1


