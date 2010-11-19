Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A0EA14C80A74
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 17:14:38 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Nov 2010 15:14:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,226,1288594800"; d="scan'208";a="679253898"
Received: from doubt.jf.intel.com (HELO [10.7.199.159]) ([10.7.199.159])
	by orsmga001.jf.intel.com with ESMTP; 19 Nov 2010 15:14:13 -0800
Message-ID: <4CE704C6.6010203@linux.intel.com>
Date: Fri, 19 Nov 2010 15:14:14 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: RFC: Rapid iterative development
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
X-List-Received-Date: Fri, 19 Nov 2010 23:14:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

While working on a single package, I need to be able to tweak a variable 
in the new recipe, change the MACHINE in local.conf, etc. I'd like to be 
able to rapidly test my changes, but some of these changes trigger a 
long list of dependencies for various commands. While working on a new 
linux kernel recipe, I found it rebuilding a number of things that were 
either -native (can I force it to use the system version rather than 
building one) or seemed unrelated to the process at hand.

Are there some best practices for iterative recipe development that 
speed things along?

Thanks,

-- 
Darren Hart
Yocto Linux Kernel

