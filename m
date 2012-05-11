Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D042FE01425
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 09:26:22 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 May 2012 09:24:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151871476"
Received: from unknown (HELO envy.home) ([10.255.12.96])
	by fmsmga001.fm.intel.com with ESMTP; 11 May 2012 09:24:02 -0700
Message-ID: <4FAD3CF5.50108@linux.intel.com>
Date: Fri, 11 May 2012 09:23:17 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1336510378.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1336510378.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/3] meta-intel updates
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
X-List-Received-Date: Fri, 11 May 2012 16:27:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

For the series:

Acked-by: Darren Hart <dvhart@linux.intel.com>

On 05/08/2012 02:39 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> More updates for meta-intel 1.2
> 
> The following changes since commit 749a127f0b813d314c3515fc14dc144d0d44fcfb:
>   Darren Hart (1):
>         fri2: Update SRCREVs for 3.2 Kernel
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/meta-intel.git tzanussi/1.2-updates-2
>   http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/1.2-updates-2
> 
> Tom Zanussi (3):
>   meta-crownbay: remove smp options from recipe-space
>   meta-emenlow: remove smp options from recipe-space
>   meta-fishriver: remove smp options from recipe-space
> 
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    2 --
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    1 -
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    1 -
>  3 files changed, 0 insertions(+), 4 deletions(-)
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

