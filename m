Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C766E009AC; Sun, 29 Sep 2019 15:12:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 696D7E0098A
	for <yocto@yoctoproject.org>; Sun, 29 Sep 2019 15:12:55 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Sep 2019 15:12:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,564,1559545200"; d="scan'208";a="190084586"
Received: from szeyannt-mobl1.gar.corp.intel.com (HELO linux.fritz.box)
	([10.255.153.79])
	by fmsmga008.fm.intel.com with ESMTP; 29 Sep 2019 15:12:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 30 Sep 2019 11:12:17 +1300
Message-Id: <cover.1569794507.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 00/15] More dockersetup/import fixes [cover letter only]
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
X-List-Received-Date: Sun, 29 Sep 2019 22:12:56 -0000
Content-Transfer-Encoding: 8bit

A few more improvements from the Clear Linux Dissector [1] for dockersetup,
import_layers, and update_classic_status.

[1] https://github.com/intel/clear-linux-dissector-web


The following changes since commit b78e498c2086e4cb6631d73f36db059d37ad70ad:

  import_layers: fix updating build dependencies (2019-09-17 15:35:44 +1200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/dissector-backports2
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/dissector-backports2

Paul Eggleton (15):
  dockersetup.py: add connectivity check
  docker: fix comment at top of Dockerfile
  dockersetup: proxy support fixes
  dockersetup: add uninstall option
  dockersetup: handle ArgumentTypeError properly
  dockersetup: allow updating if proxy config set in environment
  dockersetup: minor command line comment fix
  update_classic_status: tweak single-object queries
  update_classic_status: switch to argparse
  update_classic_status: add cover status import/export
  dockersetup: ensure letsencrypt volume change gets undone
  import_layers: use vcs_last_rev to check if record is updated
  import_layers: tweak debug logging to be a bit more useful
  README.devel: touch up a few things
  update_classic_status: ensure fields are correctly ordered

 Dockerfile                                |   4 +-
 README.devel                              |  29 +-
 docker/connectivity_check.sh              |  35 ++
 docker/git-proxy                          |  10 +-
 dockersetup.py                            | 191 ++++++++--
 layerindex/tools/import_layers.py         |  12 +-
 layerindex/tools/update_classic_status.py | 423 +++++++++++++---------
 7 files changed, 481 insertions(+), 223 deletions(-)
 create mode 100755 docker/connectivity_check.sh

-- 
2.20.1


