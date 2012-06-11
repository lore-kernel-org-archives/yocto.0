Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9414CE006D9
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 08:20:39 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 Jun 2012 08:20:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="156198764"
Received: from unknown (HELO envy.home) ([10.255.12.43])
	by orsmga002.jf.intel.com with ESMTP; 11 Jun 2012 08:20:39 -0700
Message-ID: <4FD60C82.7000702@linux.intel.com>
Date: Mon, 11 Jun 2012 08:19:30 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1339385977.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1339385977.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.2
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/6] meta-intel: remove linux-yocto-2.6.37
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
X-List-Received-Date: Mon, 11 Jun 2012 15:20:39 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/10/2012 08:42 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Remove 2.6.37 .bbappends to match recent oe-core linux-yocto-2.6.37 removal.

For the series:

Acked-by: Darren Hart <dvhart@linux.intel.com>

> 
> The following changes since commit a2c22fb791eb70b230a5f8169d3580f4f3a4f967:
>   Kishore Bodke (1):
>         meta-cedartrail: update SRCREV
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/meta-intel.git tzanussi/rm-linux-yocto--2.6.37
>   http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/rm-linux-yocto--2.6.37
> 
> Tom Zanussi (6):
>   meta-sugarbay: remove linux-yocto-2.6.37 .bbappend
>   meta-crownbay: remove linux-yocto-2.6.37 .bbappend
>   meta-emenlow: remove linux-yocto-2.6.37 .bbappend
>   meta-fishriver: remove linux-yocto-2.6.37 .bbappend
>   meta-jasperforest: remove linux-yocto-2.6.37 .bbappend
>   meta-n450: remove linux-yocto-2.6.37 .bbappend
> 
>  .../linux/linux-yocto_2.6.37.bbappend              |   15 ---------------
>  .../linux/linux-yocto_2.6.37.bbappend              |    6 ------
>  .../linux/linux-yocto_2.6.37.bbappend              |    6 ------
>  .../linux/linux-yocto_2.6.37.bbappend              |    8 --------
>  .../linux/linux-yocto_2.6.37.bbappend              |   10 ----------
>  .../linux/linux-yocto_2.6.37.bbappend              |    7 -------
>  6 files changed, 0 insertions(+), 52 deletions(-)
>  delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>  delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>  delete mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>  delete mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>  delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>  delete mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

