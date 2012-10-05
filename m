Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2C06E00293
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 12:52:15 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 05 Oct 2012 12:52:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,541,1344236400"; d="scan'208";a="201094139"
Received: from unknown (HELO [10.255.13.195]) ([10.255.13.195])
	by azsmga001.ch.intel.com with ESMTP; 05 Oct 2012 12:52:14 -0700
Message-ID: <1349466734.8890.155.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Mihai Lindner <mihaix.lindner@linux.intel.com>
Date: Fri, 05 Oct 2012 14:52:14 -0500
In-Reply-To: <cover.1349435514.git.mihaix.lindner@linux.intel.com>
References: <cover.1349435514.git.mihaix.lindner@linux.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] meta-tlk: fix ignored SRC_URI appends
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
X-List-Received-Date: Fri, 05 Oct 2012 19:52:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-10-05 at 14:20 +0300, Mihai Lindner wrote:
> Fix SRC_URI appends ignored by meta-cedartrail and meta-crownbay. Used
> SRC_URI_append instead of SRC_URI.
> Also placed all variables in an .inc file to be required by all
> linux-yocto recipes in here, since all versions use the same.
> 
> [YOCTO #3217]
> 
> Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
> ---
> The following changes since commit 6eea475e2038c1de3fbbd5bcd0986862ff85bb9a:
> 
>   meta-crownbay: remove 3.0 kernel support (2012-10-04 20:20:52 -0500)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib mihai/bug3217
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mihai/bug3217
> 

Pulled into meta-intel/master.

Thanks,

Tom

> Mihai Lindner (1):
>   meta-tlk: fix ignored SRC_URI appends
> 
>  meta-tlk/recipes-kernel/linux/linux-yocto.inc          | 3 +++
>  meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend | 7 +------
>  meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend | 7 +------
>  meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend | 7 +------
>  4 files changed, 6 insertions(+), 18 deletions(-)
>  create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto.inc
> 



