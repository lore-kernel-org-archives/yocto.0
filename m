Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id EFA8C4C800B0
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 14:09:36 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 May 2011 12:09:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,238,1304319600"; 
   d="scan'208";a="4142033"
Received: from unknown (HELO [10.255.12.58]) ([10.255.12.58])
	by fmsmga002.fm.intel.com with ESMTP; 19 May 2011 12:09:35 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Marc Ferland <marc.ferland@gmail.com>
In-Reply-To: <1305828031-10355-1-git-send-email-ferlandm@sonatest.com>
References: <1305828031-10355-1-git-send-email-ferlandm@sonatest.com>
Date: Thu, 19 May 2011 14:09:27 -0500
Message-ID: <1305832167.2638.56.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Marc Ferland <ferlandm@sonatest.com>
Subject: Re: [PATCH] Add SMP support to crownbay.
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
X-List-Received-Date: Thu, 19 May 2011 19:09:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Marc,

Thanks for the patch - it looks good.  Could I get you to reply with
your Signed-off-by: though? e.g. something like:

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

but with your info.

Thanks,

Tom

On Thu, 2011-05-19 at 11:00 -0700, Marc Ferland wrote:
> This patch fixes Yocto BUG #1015. It adds support for SMP on the crownbay 
> architecture from the meta-intel branch.
> ---
>  .../linux/linux-yocto-stable_git.bbappend          |    2 ++
>  .../recipes-kernel/linux/linux-yocto_git.bbappend  |    2 ++
>  2 files changed, 4 insertions(+), 0 deletions(-)
> 
> diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
> index 8309478..44f892f 100644
> --- a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
> +++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
> @@ -2,6 +2,8 @@ FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
>  
>  COMPATIBLE_MACHINE_crownbay = "crownbay"
>  KMACHINE_crownbay  = "crownbay"
> +KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
>  
>  COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
>  KMACHINE_crownbay-noemgd  = "crownbay"
> +KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
> diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
> index 176acd3..387c207 100644
> --- a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
> +++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
> @@ -2,6 +2,8 @@ FILESEXTRAPATHS := "${FILESEXTRAPATHS}:${THISDIR}/${PN}"
>  
>  COMPATIBLE_MACHINE_crownbay = "crownbay"
>  KMACHINE_crownbay  = "yocto/standard/crownbay"
> +KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
>  
>  COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
>  KMACHINE_crownbay-noemgd  = "yocto/standard/crownbay"
> +KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"



