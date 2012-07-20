Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DD01E00282
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 10:04:04 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Jul 2012 10:04:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="181488833"
Received: from unknown (HELO [10.255.12.215]) ([10.255.12.215])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jul 2012 10:04:03 -0700
Message-ID: <1342803841.2330.11.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Fri, 20 Jul 2012 12:04:01 -0500
In-Reply-To: <1342752804-18293-1-git-send-email-raj.khem@gmail.com>
References: <1342752804-18293-1-git-send-email-raj.khem@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel][PATCH] va-intel.bb: Add compatible host x86/x86_64
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
X-List-Received-Date: Fri, 20 Jul 2012 17:04:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-07-19 at 19:53 -0700, Khem Raj wrote:
> This lets meta-intel to play well in multi-bsp
> setup
> 

Pulled into meta-intel/master, thanks!

Tom

> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  common/recipes-multimedia/libva/va-intel.bb |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/common/recipes-multimedia/libva/va-intel.bb b/common/recipes-multimedia/libva/va-intel.bb
> index 3ce857a..69633aa 100644
> --- a/common/recipes-multimedia/libva/va-intel.bb
> +++ b/common/recipes-multimedia/libva/va-intel.bb
> @@ -18,3 +18,4 @@ ALLOW_EMPTY = "1"
>  RDEPENDS_va-intel = " \
>      ${VA_IMPL} \
>      "
> +COMPATIBLE_HOST = '(i.86|x86_64).*-linux*'



