Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAC53E00A9C; Thu, 12 Oct 2017 11:14:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7C43E007EF
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 11:14:09 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Oct 2017 11:14:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,367,1503385200"; d="scan'208";a="159842596"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga005.jf.intel.com with ESMTP; 12 Oct 2017 11:14:08 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org,
	paul.eggleton@linux.intel.com
Date: Thu, 12 Oct 2017 11:11:10 -0700
Message-Id: <cover.1507831664.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [PATCH 0/1] Send email notification on publication
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
X-List-Received-Date: Thu, 12 Oct 2017 18:14:12 -0000

The following changes since commit ad1aac4ea5d4f2b327f7bd9611aed13f7c31ff7e:

  Show note if layer branch hasn't been indexed (2017-10-04 13:49:00 +1300)

are available in the git repository at:

  git://git.yoctoproject.org/layerindex-web abrindle/email_notification_publication
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=abrindle/email_notification_publication

Amanda Brindle (1):
  Send email notification on publication

 layerindex/views.py                          | 22 +++++++++++++++++++++-
 templates/layerindex/publishemail.txt        |  7 +++++++
 templates/layerindex/publishemailsubject.txt |  1 +
 3 files changed, 29 insertions(+), 1 deletion(-)
 create mode 100644 templates/layerindex/publishemail.txt
 create mode 100644 templates/layerindex/publishemailsubject.txt

-- 
2.7.4


