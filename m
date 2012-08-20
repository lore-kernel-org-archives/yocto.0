Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BDB5E0027E
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 15:11:12 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2012 15:11:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,799,1336374000"; d="scan'208";a="183150989"
Received: from unknown (HELO envy.home) ([10.7.199.146])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2012 15:11:12 -0700
Message-ID: <5032B588.60803@linux.intel.com>
Date: Mon, 20 Aug 2012 15:09:12 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: rahul.saxena@intel.com
References: <cover.1345497883.git.rahul.saxena@intel.com>
	<022960688d1a4e279d6e9223e787e453f9ec8b0b.1345497883.git.rahul.saxena@intel.com>
In-Reply-To: <022960688d1a4e279d6e9223e787e453f9ec8b0b.1345497883.git.rahul.saxena@intel.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] meta-cedartrail: update SRCREV for Cedartrail machine branch
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
X-List-Received-Date: Mon, 20 Aug 2012 22:11:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/20/2012 02:52 PM, rahul.saxena@intel.com wrote:
> From: Rahul Saxena <rahul.saxena@intel.com>
> 
> update SRCREV_machine_pn-linux-yocto_cedartrail

These typically include a reason for the update. Are you just bringing
it up to the most recent update from Bruce or is this to include some
update that you pushed to the cedartrail branch?

--
Darren

> 
> Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> index 7a0a2a3..48deb45 100644
> --- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> +++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> @@ -15,9 +15,9 @@ KMACHINE_cedartrail-nopvr  = "cedartrail"
>  KBRANCH_cedartrail-nopvr  = "yocto/standard/cedartrail"
>  KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
>  
> -SRCREV_machine_pn-linux-yocto_cedartrail ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
> +SRCREV_machine_pn-linux-yocto_cedartrail ?= "3b5b629560f2a36426c19f4f18e3633aa93c955e"
>  SRCREV_meta_pn-linux-yocto_cedartrail ?= "46e8fc2bbbe73514e8d99101adaaa373f760ffa7"
>  SRCREV_pvr_pn-linux-yocto_cedartrail ?= "997f5644664b31ebefd6e16c451c4a3729eb378a"
>  
> -SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
> +SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "3b5b629560f2a36426c19f4f18e3633aa93c955e"
>  SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

