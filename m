Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A011AE006D1
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 17:04:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Oct 2011 17:04:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,412,1315206000"; d="scan'208";a="82811331"
Received: from unknown (HELO [10.255.15.57]) ([10.255.15.57])
	by fmsmga002.fm.intel.com with ESMTP; 26 Oct 2011 17:04:02 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "kishore.k.bodke@intel.com" <kishore.k.bodke@intel.com>
In-Reply-To: <47f32fe03f3c90064b1fb312070ece3d22fa012e.1319666230.git.kishore.k.bodke@intel.com>
References: <cover.1319666230.git.kishore.k.bodke@intel.com>
	<47f32fe03f3c90064b1fb312070ece3d22fa012e.1319666230.git.kishore.k.bodke@intel.com>
Date: Wed, 26 Oct 2011 19:03:20 -0500
Message-ID: <1319673800.3945.32.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 6/7] Romley BSP tested against master branch and with new xorg changes.
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
X-List-Received-Date: Thu, 27 Oct 2011 00:04:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-10-26 at 16:25 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 

This .bbappend was added in the initial BSP and goes away in the next
patch, so please squash it with the others...

Tom

> ---
>  .../linux/linux-yocto_2.6.37.bbappend              |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/meta-romley/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> index e48f8b0..4e0af5a 100644
> --- a/meta-romley/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> +++ b/meta-romley/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> @@ -1,6 +1,6 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>  
> -COMPATIBLE_MACHINE_sugarbay = "romley"
> +COMPATIBLE_MACHINE_romley = "romley"
>  KMACHINE_romley  = "yocto/standard/common-pc-64/romley"
>  
>  SRCREV_machine_pn-linux-yocto_romley ?= "7f495be2ccaa209bf505b8a8899cea64cfd968bb"



