Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C694E00744; Mon, 22 Sep 2014 15:25:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E86CEE00566
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 15:25:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Sep 2014 15:25:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,574,1406617200"; d="scan'208";a="603676748"
Received: from qana.jf.intel.com ([10.7.198.170])
	by fmsmga002.fm.intel.com with ESMTP; 22 Sep 2014 15:25:13 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 0F0CB1260797; Mon, 22 Sep 2014 15:23:44 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Sep 2014 15:23:39 -0700
Message-Id: <1411424619-12779-1-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.9.0
Subject: [AUTOBUILDER PATCH] Initial commit of Yocto Autobuilder Dev Docs
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
X-List-Received-Date: Mon, 22 Sep 2014 22:25:27 -0000

The first pass of the yocto-autobuilder developer document is available at:

http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?h=eflanagan/docs

The document still has some TODOs and missing spots, but at 23 pages long it's 
reached the point where the community should find it somewhat useful.

Development is occuring for the time being on Google Docs at:

https://docs.google.com/document/d/1VeShmhDnqN27HXMX5emgmHFoK8Cu9SzVYilmGjtMTtI

Elizabeth Flanagan (1):
  Initial Commit of Documentation

 docs/YoctoAutobuilderDevelopersDocument.html |   1 +
 docs/images/image00.png                      | Bin 0 -> 67622 bytes
 2 files changed, 1 insertion(+)
 create mode 100644 docs/YoctoAutobuilderDevelopersDocument.html
 create mode 100644 docs/images/image00.png

-- 
1.9.0


