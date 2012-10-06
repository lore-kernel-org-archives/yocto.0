Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68551E0045E
	for <yocto@yoctoproject.org>; Sat,  6 Oct 2012 08:51:29 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Oct 2012 08:51:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,543,1344236400"; d="scan'208";a="201348562"
Received: from unknown (HELO [10.255.13.196]) ([10.255.13.196])
	by azsmga001.ch.intel.com with ESMTP; 06 Oct 2012 08:51:28 -0700
Message-ID: <1349538687.1543.0.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Mihai Lindner <mihaix.lindner@linux.intel.com>
Date: Sat, 06 Oct 2012 10:51:27 -0500
In-Reply-To: <cover.1349536496.git.mihaix.lindner@linux.intel.com>
References: <cover.1349536496.git.mihaix.lindner@linux.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] meta-tlk: fix included file name
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
X-List-Received-Date: Sat, 06 Oct 2012 15:51:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Pulled into meta-intel/master.

Thanks,

Tom

On Sat, 2012-10-06 at 18:16 +0300, Mihai Lindner wrote:
> PN in linux-yocto-tlk.inc takes the .inc file name and becomes
> linux-yocto-tlk. Renamed to linux-yocto_tlk.inc to avoid confusions.
> Related to: [YOCTO #3217]
> 
> Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
> ---
> The following changes since commit 7228f6b0c81817c8a8455ea78271abfd5d66fed8:
> 
>   meta-tlk: fix ignored SRC_URI appends (2012-10-05 14:47:55 -0500)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib mihai/bug3217
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mihai/bug3217
> 
> Mihai Lindner (1):
>   meta-tlk: fix included file name
> 
>  meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend                  | 2 +-
>  meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend                  | 2 +-
>  meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend                  | 2 +-
>  .../recipes-kernel/linux/{linux-yocto-tlk.inc => linux-yocto_tlk.inc}   | 0
>  4 files changed, 3 insertions(+), 3 deletions(-)
>  rename meta-tlk/recipes-kernel/linux/{linux-yocto-tlk.inc => linux-yocto_tlk.inc} (100%)
> 



