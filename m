Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CABD8E008D3; Thu, 20 Oct 2016 10:36:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F1A4E00756
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 10:36:10 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga103.fm.intel.com with ESMTP; 20 Oct 2016 10:36:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,372,1473145200"; d="scan'208";a="22185088"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga004.jf.intel.com with ESMTP; 20 Oct 2016 10:36:10 -0700
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 20 Oct 2016 10:34:59 -0700
Message-Id: <1476984900-22569-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-mingw][krogoth][PATCH 0/1] binutils: enable plugins
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
X-List-Received-Date: Thu, 20 Oct 2016 17:36:12 -0000

This meta-mingw patch for jethro by Mark Hatle is also needed for
krogoth and morty/master as well, otherwise the linker will fail, not being able
to load lto plugins.

Original patch:
https://git.yoctoproject.org/cgit/cgit.cgi/meta-mingw-contrib/commit/?h=mgh/jetho/meta-mingw



Juro Bystricky (1):
  binutils-cross-canadian: Fix LTO failure

 recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.7.4


