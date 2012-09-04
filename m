Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D0CEE014A1
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 10:14:07 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Sep 2012 10:13:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,367,1344236400"; d="scan'208";a="188803580"
Received: from unknown (HELO envy.home) ([10.7.199.69])
	by orsmga001.jf.intel.com with ESMTP; 04 Sep 2012 10:13:58 -0700
Message-ID: <504636C0.9010709@linux.intel.com>
Date: Tue, 04 Sep 2012 10:13:36 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <6e74be58a9b03a774ab21ac72bca9b9d56a622d4.1346771837.git.tom.zanussi@intel.com>
	<16a7879b98352b70e8c17181912a26212d716c87.1346771837.git.tom.zanussi@intel.com>
In-Reply-To: <16a7879b98352b70e8c17181912a26212d716c87.1346771837.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.4
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/2] meta-emenlow: rename recipes-gnome bbappends
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
X-List-Received-Date: Tue, 04 Sep 2012 17:14:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 09/04/2012 08:23 AM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> The recipes these .bbappends correspond to were renamed, so rename
> them here as well.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  .../{task-core-sdk-gmae.bbappend => packagegroup-core-sdk-gmae.bbappend}  | 0
>  ...get.bbappend => packagegroup-core-standalone-gmae-sdk-target.bbappend} | 0
>  2 files changed, 0 insertions(+), 0 deletions(-)
>  rename meta-emenlow/recipes-gnome/tasks/{task-core-sdk-gmae.bbappend => packagegroup-core-sdk-gmae.bbappend} (100%)
>  rename meta-emenlow/recipes-gnome/tasks/{task-core-standalone-gmae-sdk-target.bbappend => packagegroup-core-standalone-gmae-sdk-target.bbappend} (100%)
> 
> diff --git a/meta-emenlow/recipes-gnome/tasks/task-core-sdk-gmae.bbappend b/meta-emenlow/recipes-gnome/tasks/packagegroup-core-sdk-gmae.bbappend
> similarity index 100%
> rename from meta-emenlow/recipes-gnome/tasks/task-core-sdk-gmae.bbappend
> rename to meta-emenlow/recipes-gnome/tasks/packagegroup-core-sdk-gmae.bbappend
> diff --git a/meta-emenlow/recipes-gnome/tasks/task-core-standalone-gmae-sdk-target.bbappend b/meta-emenlow/recipes-gnome/tasks/packagegroup-core-standalone-gmae-sdk-target.bbappend
> similarity index 100%
> rename from meta-emenlow/recipes-gnome/tasks/task-core-standalone-gmae-sdk-target.bbappend
> rename to meta-emenlow/recipes-gnome/tasks/packagegroup-core-standalone-gmae-sdk-target.bbappend
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

