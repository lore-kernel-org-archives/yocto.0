Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45C46E00D05; Tue, 24 Oct 2017 14:50:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3132E00CFF
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 14:50:10 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Oct 2017 14:50:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,430,1503385200"; d="scan'208";a="164502307"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga005.jf.intel.com with ESMTP; 24 Oct 2017 14:50:10 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Oct 2017 14:49:23 -0700
Message-Id: <cover.1508881202.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: [layerindex-web][patch v3 0/1] Send email notification on publication
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
X-List-Received-Date: Tue, 24 Oct 2017 21:50:11 -0000

Changed the publishemail template to use django conditional statements in creating the list of maintainer 
names, as well as checking whether there is more than one maintainer.

The following changes since commit ad1aac4ea5d4f2b327f7bd9611aed13f7c31ff7e:

  Show note if layer branch hasn't been indexed (2017-10-04 13:49:00 +1300)

are available in the git repository at:

  git://git.yoctoproject.org/layerindex-web abrindle/email_notification_publication
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=abrindle/email_notification_publication

Amanda Brindle (1):
  Send email notification on publication

 layerindex/views.py                          | 34 +++++++++++++++++++++++++++-
 templates/layerindex/publishemail.txt        |  9 ++++++++
 templates/layerindex/publishemailsubject.txt |  1 +
 3 files changed, 43 insertions(+), 1 deletion(-)
 create mode 100644 templates/layerindex/publishemail.txt
 create mode 100644 templates/layerindex/publishemailsubject.txt

-- 
2.7.4


