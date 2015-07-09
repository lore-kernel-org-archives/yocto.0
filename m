Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AC74E009D7; Thu,  9 Jul 2015 08:39:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83FD5E009A7
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 08:39:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 09 Jul 2015 08:39:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,440,1432623600"; d="scan'208";a="761326783"
Received: from mlopezva-mobl2.zpn.intel.com ([10.219.24.79])
	by orsmga002.jf.intel.com with ESMTP; 09 Jul 2015 08:39:21 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Thu,  9 Jul 2015 10:39:11 -0500
Message-Id: <1436456354-6416-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [rrs][PATCH 0/3] Change behavior of the percentage done
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
X-List-Received-Date: Thu, 09 Jul 2015 15:39:25 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

This patches changes the behavior of the percentage done to
display the percentage of out to date recipes that were
updated in the period.

models.py: Added SQL queries
views.py: Changed the behavior
base_toplevel.html: Changed format of the webpage

Mariano Lopez (3):
  models.py: Added Raw SQL for percentage updated
  views.py: Changed the behavior of percentage done
  base_toplevel.html: Changed format of percentage done

 rrs/models.py                    | 44 ++++++++++++++++++++++++++++++++++++++++
 rrs/views.py                     | 33 ++++++++++++++++++++++--------
 templates/rrs/base_toplevel.html |  2 +-
 3 files changed, 69 insertions(+), 10 deletions(-)

-- 
1.9.1


