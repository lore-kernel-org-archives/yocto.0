Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CBD4E00CEE; Tue, 27 Mar 2018 23:19:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61D2BE00851
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 23:19:56 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Mar 2018 23:19:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,370,1517904000"; d="scan'208";a="211923817"
Received: from anmitta2-mobl1.gar.corp.intel.com (HELO
	anmitta2-MOBL1.png.intel.com) ([10.221.22.152])
	by orsmga005.jf.intel.com with ESMTP; 27 Mar 2018 23:19:55 -0700
From: Anuj Mittal <anuj.mittal@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 28 Mar 2018 14:19:36 +0800
Message-Id: <1522217979-669-1-git-send-email-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-yocto][PATCH v2 0/3] Update SRCREVs for genericx86* BSPs
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
X-List-Received-Date: Wed, 28 Mar 2018 06:19:58 -0000

This series replaces the earlier one sent by me. It syncs the genericx86*
BSP kernel revisions with the latest kernel series sent by Bruce for oe-core.
Sanity tested on NUC7 and Minnowboard.

Thanks,

Anuj Mittal (3):
  linux-yocto: update genericx86* SRCREVs for 4.12
  linux-yocto: update genericx86* SRCREVs for 4.14
  linux-yocto: update genericx86* SRCREVs for 4.15

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend | 8 ++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend | 8 ++++----
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend | 8 ++++----
 3 files changed, 12 insertions(+), 12 deletions(-)

-- 
2.7.4


