Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76BA2E0049F
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 10:51:11 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 04 Oct 2012 10:51:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,537,1344236400"; d="scan'208";a="200632807"
Received: from unknown (HELO helios.localnet) ([10.252.122.37])
	by azsmga001.ch.intel.com with ESMTP; 04 Oct 2012 10:51:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mihai Lindner <mihaix.lindner@linux.intel.com>
Date: Thu, 04 Oct 2012 18:51:08 +0100
Message-ID: <1594004.RBn6gvQsN0@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-31-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <14ad4ba67528eeb935fe8e07e382463f8aa5685c.1349372542.git.mihaix.lindner@linux.intel.com>
References: <cover.1349372542.git.mihaix.lindner@linux.intel.com>
	<14ad4ba67528eeb935fe8e07e382463f8aa5685c.1349372542.git.mihaix.lindner@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-tlk: fix ignored SRC_URI appends
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
X-List-Received-Date: Thu, 04 Oct 2012 17:51:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Mihai,

On Thursday 04 October 2012 20:47:08 Mihai Lindner wrote:
> Fix SRC_URI appends ignored by meta-cedartrail and meta-crownbay. Used
> SRC_URI_append instead of SRC_URI.
> Also placed all variables in an .inc file to be required by all
> linux-yocto recipes in here, since all versions use the same.
> 
> [YOCTO #3217]
> 
> Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
> ---
>  meta-tlk/recipes-kernel/linux/linux-yocto.inc          | 3 +++
>  meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend | 7 +------
>  meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend | 7 +------
>  meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend | 7 +------
>  4 files changed, 6 insertions(+), 18 deletions(-)
>  create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto.inc
> 
> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto.inc
> b/meta-tlk/recipes-kernel/linux/linux-yocto.inc new file mode 100644
> index 0000000..96a3adf
> --- /dev/null
> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto.inc
> @@ -0,0 +1,3 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +SRC_URI_append += "file://time-limited-kernel.cfg"

You should use SRC_URI_append = " file://time-limited-kernel.cfg" (note leading 
space) here. Obviously what you have done does work, but we want to avoid 
_append += as it can be confusing.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

