Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10429E002A5
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 15:52:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Jul 2012 15:52:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="168689826"
Received: from srifenb-mobl.amr.corp.intel.com (HELO envy.home)
	([10.7.199.145])
	by orsmga001.jf.intel.com with ESMTP; 19 Jul 2012 15:52:13 -0700
Message-ID: <50088F3C.5060500@linux.intel.com>
Date: Thu, 19 Jul 2012 15:50:36 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
X-Enigmail-Version: 1.4.3
Subject: New development mailing list for the linux-yocto kernel repository
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
X-List-Received-Date: Thu, 19 Jul 2012 22:52:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

The linux-yocto git repositories contain both Linux kernel sources as
well as the meta-data used to prepare the BSP specific source branches
and assemble the kernel config file. Much of this development has only
been visible when the SRCREV update request is sent to update the
various recipes.

In an effort to make this process more transparent, we decided all such
changes should hit a mailing list for review. However, we didn't feel it
was appropriate to use any of the existing lists as there is potential
for a large number of small patches, especially for meta-data cleanup
and reorganization, that will be of little interest to most of the
subscribers. As the sources are inherently different from any
recipe-based repositories, we created a new list:

https://lists.yoctoproject.org/listinfo/linux-yocto

"Development list for the linux-yocto git repositories. Patches for the
various KTYPE and BSP branches as well as meta-data should be sent to
this list for review and discussion."

If you are an active contributor to any of the linux-yocto*.git
repositories, please submit your patches there.

Please note that this is NOT for the linux-yocto recipes and classes
that are part of oe-core. Development discussions and patches for those
should remain on the oe-core mailing list as they deal with recipes that
are hosted in that repository.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel


