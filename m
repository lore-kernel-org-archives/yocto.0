Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90348E00303
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 17:04:50 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Dec 2011 17:04:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="85617108"
Received: from unknown (HELO envy.home) ([10.255.12.30])
	by orsmga002.jf.intel.com with ESMTP; 09 Dec 2011 17:04:49 -0800
Message-ID: <4EE2B041.6080305@intel.com>
Date: Fri, 09 Dec 2011 17:05:05 -0800
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: "Ashfield, Bruce" <Bruce.Ashfield@windriver.com>, 
	Yocto Project <yocto@yoctoproject.org>
References: <4EE2911E.3090708@linux.intel.com>
In-Reply-To: <4EE2911E.3090708@linux.intel.com>
Subject: Re: linux-yocto: ktypes/tiny and some questions along the way
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
X-List-Received-Date: Sat, 10 Dec 2011 01:04:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/09/2011 02:52 PM, Darren Hart wrote:
> Bruce,
> 
> I'm looking at introducing a new kernel type, ktypes/tiny.
> 
> Tiny will define a core set of kernel policy options, such as proc, sys,
> devtmpfs, futex, epoll, elf bin format, etc. It will not enable any
> drivers, filesystems, debug options, or networking options by default.
> This would be the responsibility of the BSP to add a named feature
> implementing this.

I've created a meta/tiny branch (untested) demonstrating how
I'm going about this. Early critique is welcome:

http://git.infradead.org/users/dvhart/linux-yocto-3.0.git/shortlog/refs/heads/dvhart/meta/tiny

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

