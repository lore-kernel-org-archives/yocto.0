Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEDF4E013EF
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 06:30:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Sep 2012 06:30:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,453,1344236400"; d="scan'208";a="195315130"
Received: from unknown (HELO helios.localnet) ([10.252.121.248])
	by orsmga001.jf.intel.com with ESMTP; 20 Sep 2012 06:30:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Liu <treebody@embedstudy.com>
Date: Thu, 20 Sep 2012 14:30:52 +0100
Message-ID: <2159663.pk8dcrpkPj@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <tencent_072CFA5F099397A10638EA9F@qq.com>
References: <tencent_072CFA5F099397A10638EA9F@qq.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to do the specified tasks instead of many default
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
X-List-Received-Date: Thu, 20 Sep 2012 13:30:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 20 September 2012 21:11:49 Liu wrote:
>      I have some packages built by a set of Makefiles,and want to build them
> using bitbake.So I used recipes to invoke Makefiles to do
> fetch,unpack,patch,compile tasks.But I do not need to do the following
> tasks like do_build,do_package.
> In the default conditions,there exist list
> of packages by using the command like "bitbake busybox -c listtasks". With
> your idea I can disable tasks by do_package[noexec] = "1". But then it
> needs to do many similar works to disable tasks I do not need in all my
> package recipes.So I want to know if there is a direct way to disable
> default tasks defined in .bbclass. Thanks,

I understand what you are trying to do but I still don't understand why. Do 
you not want to be able to produce images?

If you really do want to do this you could set this at a global level either 
in local.conf or a distro configuration file. If you do this however you will at 
least need to allow do_populate_sysroot to run or many things will break.

I won't be surprised if you experience other problems as well. I think it's 
fair to say you are stepping outside of the bounds of what is normally 
supported with the metadata we provide (although it is not outside of 
supported BitBake behaviour).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

