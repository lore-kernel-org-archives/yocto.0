Return-Path: <darren.hart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AE5AE006AB
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 13:17:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Aug 2011 13:17:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="39791093"
Received: from btwarden-mobl1.amr.corp.intel.com (HELO envy.home)
	([10.7.199.156])
	by orsmga001.jf.intel.com with ESMTP; 18 Aug 2011 13:17:10 -0700
Message-ID: <4E4D7347.7090108@intel.com>
Date: Thu, 18 Aug 2011 13:17:11 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: bruce.ashfield@windriver.com, tom.zanussi@intel.com, 
	yocto@yoctoproject.org
References: <cover.1313093647.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1313093647.git.dvhart@linux.intel.com>
Cc: "Wold, Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 0/2] preempt-rt support for meta-yocto BSPs
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
X-List-Received-Date: Thu, 18 Aug 2011 20:17:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I haven't seen this merged yet, been a week. Is there a concern with the
series, or maybe it just got lost in the mix?

Thanks,

Darren

On 08/11/2011 04:08 PM, Darren Hart wrote:
> This series add build and boot tested support for the atom-pc and mpc8315e-rdb.
> The routerstationpro and beagleboard still suffer from build failures and are
> commented out.
> 
> The following changes since commit 760d79558c5e35b9b0e73734bb90ebadf427f208:
> 
>   recipes-rt: add a README documenting the contents of recipes-rt (2011-08-11 12:36:02 -0700)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib dvhart/rt-yocto
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/rt-yocto
> 
> Darren Hart (2):
>   meta-yocto: allow for virtual/kernel override
>   meta-yocto: add linux-yocto-rt support for all meta-yocto machines
> 
>  meta-yocto/conf/machine/mpc8315e-rdb.conf          |    2 +-
>  meta-yocto/conf/machine/routerstationpro.conf      |    2 +-
>  .../linux/linux-yocto-rt_3.0.bbappend              |   25 ++++++++++++++++++++
>  3 files changed, 27 insertions(+), 2 deletions(-)
>  create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> 


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

