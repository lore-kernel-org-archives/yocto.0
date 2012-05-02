Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 942BBE00723
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 18:17:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 May 2012 18:17:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="160697678"
Received: from unknown (HELO [10.255.12.170]) ([10.255.12.170])
	by fmsmga002.fm.intel.com with ESMTP; 01 May 2012 18:16:59 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <866d9b1b42ec7c5057077e5e74a739d164292b40.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
	<866d9b1b42ec7c5057077e5e74a739d164292b40.1335909082.git.dvhart@linux.intel.com>
Date: Tue, 01 May 2012 20:17:01 -0500
Message-ID: <1335921421.27056.192.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/7] linux-firmware: Move fri2 linux-firmware append to common
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
X-List-Received-Date: Wed, 02 May 2012 01:17:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-05-01 at 15:12 -0700, Darren Hart wrote:
> In preparation for linux-firmware updates from new BSPs, move
> the fri2 linux-firmware bbappend into meta-intel/common. Eventually
> this should be moved into oe-core.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>

Acked-by: Tom Zanussi <tom.zanussi@intel.com>

> ---
>  .../linux-firmware/linux-firmware_git.bbappend     |    0
>  1 files changed, 0 insertions(+), 0 deletions(-)
>  rename {meta-fri2 => common}/recipes-kernel/linux-firmware/linux-firmware_git.bbappend (100%)
> 
> diff --git a/meta-fri2/recipes-kernel/linux-firmware/linux-firmware_git.bbappend b/common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> similarity index 100%
> rename from meta-fri2/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> rename to common/recipes-kernel/linux-firmware/linux-firmware_git.bbappend



