Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17FCDE00747
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 10:06:07 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 05 Sep 2013 10:02:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,848,1371106800"; d="scan'208";a="391603226"
Received: from unknown (HELO helios.localnet) ([10.252.123.106])
	by fmsmga001.fm.intel.com with ESMTP; 05 Sep 2013 10:05:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Joe Slater <jslater@windriver.com>
Date: Thu, 05 Sep 2013 18:05 +0100
Message-ID: <3573701.ovexZDZeie@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-29-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <1378399896-28502-1-git-send-email-jslater@windriver.com>
References: <1378399896-28502-1-git-send-email-jslater@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, joe.slater@windriver.com
Subject: Re: [PATCH 1/1] tar: add acl dependency information
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Sep 2013 17:06:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Joe,

On Thursday 05 September 2013 09:51:36 Joe Slater wrote:
> If acl is a distro feature, we want to depend
> on it.  Note that without the xattrs patch, tar
> cannot deal with acl information.
> 
> Signed-off-by: Joe Slater <jslater@windriver.com>
> ---
>  recipes-extended/tar/tar_1.26.bbappend |   10 +++++++++-
>  1 files changed, 9 insertions(+), 1 deletions(-)
> 
> diff --git a/recipes-extended/tar/tar_1.26.bbappend
> b/recipes-extended/tar/tar_1.26.bbappend index 4b971c5..972a7b8 100644
> --- a/recipes-extended/tar/tar_1.26.bbappend
> +++ b/recipes-extended/tar/tar_1.26.bbappend
> @@ -1,7 +1,15 @@
> -PR .= ".2"
> +PR .= ".selinux3"
> 
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> 
>  SRC_URI += "file://tar-1.24-xattrs.patch"
> 
>  inherit enable-selinux
> +
> +
> +PACKAGECONFIG += "${@base_contains('DISTRO_FEATURES', 'acl', 'acl', '',
> d)}" +
> +# configure has no acl enable/disable options!
> +#
> +PACKAGECONFIG[acl] = ",,acl,"
> +

Should this have been marked as [meta-selinux] ?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

