Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 562D7E011DA
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2011 21:18:20 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Aug 2011 21:18:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,348,1309762800"; d="scan'208";a="36236755"
Received: from unknown (HELO envy.home) ([10.255.14.241])
	by orsmga002.jf.intel.com with ESMTP; 09 Aug 2011 21:18:29 -0700
Message-ID: <4E420695.4030804@linux.intel.com>
Date: Tue, 09 Aug 2011 21:18:29 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: linux-yocto_3.0: pull powerpc compile fix for -0s in BOOTFLAGS
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
X-List-Received-Date: Wed, 10 Aug 2011 04:18:20 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Bruce,

The following patch is needed for qemuppc and fsl-mpc8315e-rdb (same
reasons as before). Can you pull this in from the 2.6.37 yocto tree?

commit 5ff609967ffe87c49d534d7861a7e0b150517726
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Thu Oct 14 16:38:00 2010 -0400

    powerpc/boot: remove -Os from BOOTFLAGS

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

