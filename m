Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0957E01374
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 01:10:22 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Dec 2011 01:10:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="49317235"
Received: from unknown (HELO localhost) ([10.255.12.104])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Dec 2011 01:10:01 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 21 Dec 2011 01:09:29 -0800
Message-Id: <1324458570-20804-1-git-send-email-dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.4
Subject: [PATCH 0/1] Example meta-intel poky-tiny support for fri2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Dec 2011 09:10:22 -0000

This patch adds a similar linux-yocto-tiny recipe for fri2 that
my poky-tiny patch provides for qemux86. This one adds the necessary
bits to boot poky-tiny on fri2. The kernel increases in size by some
200k to accomodate the EFI, EG20T, and USB support. As with qemux86,
these fragments will be removed in favor of those provided in-tree
by the 3.2 linux-yocto kernel when it becomes available.


