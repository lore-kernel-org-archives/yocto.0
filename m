Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0517BE00293
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 15:53:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Oct 2012 15:52:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,562,1344236400"; d="scan'208";a="203630784"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga001.jf.intel.com with ESMTP; 09 Oct 2012 15:53:02 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Tue,  9 Oct 2012 15:53:05 -0700
Message-Id: <1349823186-29019-1-git-send-email-dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Subject: [PATCH 0/1][meta-intel] Fix use of PRINC in meta-intel BSPs
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
X-List-Received-Date: Tue, 09 Oct 2012 22:53:15 -0000

This patch has been tested on cedartrail formfactor and linux-yocto builds with
the meta-tlk layer incorporated. All the other affected machines are currently
running builds, but no machine specific impact is expected.


