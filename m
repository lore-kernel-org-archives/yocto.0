Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4604AE00D46; Thu, 19 Oct 2017 14:27:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B41BE00D41
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 14:27:40 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Oct 2017 14:27:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,403,1503385200"; d="scan'208";a="140178440"
Received: from arbrindl-dev.jf.intel.com ([10.7.197.61])
	by orsmga004.jf.intel.com with ESMTP; 19 Oct 2017 14:27:39 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Oct 2017 14:27:07 -0700
Message-Id: <cover.1508448262.git.amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: paul.eggleton@linux.intel.com, Amanda Brindle <amanda.r.brindle@intel.com>
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
X-List-Received-Date: Thu, 19 Oct 2017 21:27:42 -0000

Before, if there were multiple maintainers, this sent an individual email to each maintainer. Now, this will send one email to all maintainers. The email will also provide instructions for how the maintainer can make changes to the layer's index entry in the future.

The following changes since commit ad1aac4ea5d4f2b327f7bd9611aed13f7c31ff7e:

  Show note if layer branch hasn't been indexed (2017-10-04 13:49:00 +1300)

are available in the git repository at:

  git://git.yoctoproject.org/layerindex-web abrindle/email_notification_publication
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=abrindle/email_notification_publication

Amanda Brindle (1):
  Send email notification on publication

 layerindex/views.py                          | 45 +++++++++++++++++++++++++++-
 templates/layerindex/publishemail.txt        |  9 ++++++
 templates/layerindex/publishemailsubject.txt |  1 +
 3 files changed, 54 insertions(+), 1 deletion(-)
 create mode 100644 templates/layerindex/publishemail.txt
 create mode 100644 templates/layerindex/publishemailsubject.txt

-- 
2.7.4


