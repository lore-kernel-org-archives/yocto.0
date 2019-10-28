Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4788E00D85; Mon, 28 Oct 2019 14:27:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 551F4E004F6
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2019 14:27:01 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Oct 2019 14:27:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,241,1569308400"; d="scan'208";a="210962196"
Received: from mng-mobl.gar.corp.intel.com (HELO shodan.fritz.box)
	([10.249.76.230])
	by fmsmga001.fm.intel.com with ESMTP; 28 Oct 2019 14:26:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 29 Oct 2019 10:26:49 +1300
Message-Id: <cover.1572297910.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 0/2] dependency updates
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
X-List-Received-Date: Mon, 28 Oct 2019 21:27:02 -0000
Content-Transfer-Encoding: 8bit

Updates to python dependencies in requirements.txt, including one
upstream CVE fix.


The following changes since commit fae9771604097896f10a4aec2f2aee7fefd8ec86:

  Fix cgit commit URL setting (2019-10-21 12:02:44 +1300)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/requirements1
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/requirements1

Paul Eggleton (2):
  requirements.txt: update to fix CVE-2019-16865
  requirements.txt: bump a couple more versions

 requirements.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
2.20.1


