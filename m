Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1583AE00B58; Tue, 24 Nov 2015 08:47:10 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2AB2E00B45
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 08:47:09 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 24 Nov 2015 08:47:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,338,1444719600"; d="scan'208";a="828103684"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.145])
	by orsmga001.jf.intel.com with ESMTP; 24 Nov 2015 08:47:09 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Nov 2015 08:39:06 -0800
Message-Id: <1448383148-2344-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 1.9.1
Cc: jurobystricky@hotmail.com
Subject: [PSPLASH 0/2] Few fixes for psplash
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
X-List-Received-Date: Tue, 24 Nov 2015 16:47:10 -0000

These patches fix https://bugzilla.yoctoproject.org/show_bug.cgi?id=7236                                                
Considering there was a bug in the BGR888 detection, it is probaly safe to 
assume it was never used. I modified handling of 24BPP modes somewhat as well,
but did not test it. 24BPP changes only affect big endian mode, little endian
should be the same as before. (If you are aware of anybody actually using 24BPP
modes, please let me know)
Tested with jethro/core-image-sato (qemuppc, qemumips, qemuarm).


Juro Bystricky (2):
  psplash-fb.c: Fix BGR888 detection
  psplash-fb.c: Fix some endian issues

 psplash-fb.c | 31 ++++++++++++++++++++++++++-----
 1 file changed, 26 insertions(+), 5 deletions(-)

-- 
1.9.1


