Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 10D544C80815
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 19:13:32 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Nov 2010 17:13:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,190,1288594800"; d="scan'208";a="573137395"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga002.jf.intel.com with ESMTP; 12 Nov 2010 17:13:29 -0800
Received: from [10.255.13.76] (10.255.13.76) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Fri, 12 Nov 2010 18:13:09 -0700
Message-ID: <4CDDE624.7010605@intel.com>
Date: Fri, 12 Nov 2010 17:13:08 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: "Wold, Saul" <saul.wold@intel.com>
Subject: [PULL] poky-qemu fixes
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
X-List-Received-Date: Sat, 13 Nov 2010 01:13:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

This fixes two bugs with poky-qemu when it is run from a standalone 
meta-toolchain setup. Thanks to Sachin Kumar for reporting them to the list.

Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: sgarman/poky-qemu-fixes
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/poky-qemu-fixes

Thanks,
     Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
   poky-qemu: Fix issues when running Yocto 0.9 release images

  scripts/poky-qemu |   64 
+++++++++++++++++++++++++++++-----------------------
  1 files changed, 36 insertions(+), 28 deletions(-)

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

