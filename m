Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 047BAE01404
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 06:25:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Aug 2012 06:25:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="176176679"
Received: from unknown (HELO helios.localnet) ([10.252.121.75])
	by azsmga001.ch.intel.com with ESMTP; 02 Aug 2012 06:25:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Date: Thu, 02 Aug 2012 14:25:19 +0100
Message-ID: <149326656.Onma7Cj5xD@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-27-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <1343856302-23468-2-git-send-email-kevin.strasser@linux.intel.com>
References: <1343856302-23468-1-git-send-email-kevin.strasser@linux.intel.com>
	<1343856302-23468-2-git-send-email-kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH 2/2] webmin: remove nfsd check from exports-lib.pl
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
X-List-Received-Date: Thu, 02 Aug 2012 13:25:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Kevin,

Thanks for tracking this one down! A couple of minor stylistic issues though:

On Wednesday 01 August 2012 14:25:02 Kevin Strasser wrote:
> YOCTO #1719: Webmin expects the userspace version of nsfd and
> attempts to find its pid when applying a new set of nfs exports.
> This check fails because baryon is configured to install the
> kernelspace version. In result the command that is assigned to
> apply_cmd will never be executed, and the contents of /exports
> are not successfully exported.

The bug reference needs to be in square brackets i.e. [YOCTO #1719], and 
typically (at least the way I use it) appears after the main body of the 
commit message.

> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> ---
>  recipes-extended/webmin/files/exports-lib.pl.patch |   32
> ++++++++++++++++++++ recipes-extended/webmin/webmin_1.570.bb            |  
>  3 +-
>  2 files changed, 34 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-extended/webmin/files/exports-lib.pl.patch
> 
> diff --git a/recipes-extended/webmin/files/exports-lib.pl.patch
> b/recipes-extended/webmin/files/exports-lib.pl.patch new file mode 100644
> index 0000000..cdee355
> --- /dev/null
> +++ b/recipes-extended/webmin/files/exports-lib.pl.patch
> @@ -0,0 +1,32 @@
> +From 7eba4c98c6953fa6ea76c1620d19524bcfa3a576 Mon Sep 17 00:00:00 2001
> +From: Kevin Strasser <kevin.strasser@linux.intel.com>
> +Date: Wed, 1 Aug 2012 11:51:26 -0700
> +Subject: [PATCH] nfs export: remove nfsd check
> +
> +nfsd runs as a kernel process and does not have a pid. This means
> +that the command assigned to apply_cmd will never be executed when
> +the user tries to apply changes to nfs exports.
> +
> +Upstream-Status: Not appropriate [config]

Technically this should be "Inappropriate [config]".

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

