Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16AE5E0027F
	for <yocto@yoctoproject.org>; Mon,  6 Aug 2012 11:04:56 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Aug 2012 11:04:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="177561706"
Received: from unknown (HELO helios.localnet) ([10.252.121.59])
	by azsmga001.ch.intel.com with ESMTP; 06 Aug 2012 11:04:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Date: Mon, 06 Aug 2012 19:04:52 +0100
Message-ID: <4559469.6bGh7n9htZ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-27-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <1343856302-23468-1-git-send-email-kevin.strasser@linux.intel.com>
References: <1343856302-23468-1-git-send-email-kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH 1/2] webmin: include webmin-module-acl
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
X-List-Received-Date: Mon, 06 Aug 2012 18:04:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 01 August 2012 14:25:01 Kevin Strasser wrote:
> Webmin's logging module depends on webmin-module-acl.
> 
> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> ---
>  recipes-extended/images/baryon-image.bb |    1 +
>  recipes-extended/webmin/webmin_1.570.bb |    2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/recipes-extended/images/baryon-image.bb
> b/recipes-extended/images/baryon-image.bb index dc6b197..56b160c 100644
> --- a/recipes-extended/images/baryon-image.bb
> +++ b/recipes-extended/images/baryon-image.bb
> @@ -22,6 +22,7 @@ IMAGE_INSTALL += "samba procps mdadm e2fsprogs-mke2fs
> util-linux \ webmin-module-webmincron \
>                       webmin-module-mediatomb \
>                       webmin-notice \
> +                     webmin-module-acl \
>                       mediatomb \
>                       proftpd"
> 
> diff --git a/recipes-extended/webmin/webmin_1.570.bb
> b/recipes-extended/webmin/webmin_1.570.bb index c30b050..b6c4965 100644
> --- a/recipes-extended/webmin/webmin_1.570.bb
> +++ b/recipes-extended/webmin/webmin_1.570.bb
> @@ -9,7 +9,7 @@ RDEPENDS_${PN} += "perl-module-warnings
> perl-module-warnings-register perl-modul RDEPENDS_${PN} +=
> "perl-module-fcntl perl-module-tie-hash perl-module-vars
> perl-module-time-local perl-module-config perl-module-constant"
> RDEPENDS_${PN} += "perl-module-file perl-module-file-glob
> perl-module-file-copy perl-module-sdbm perl-module-sdbm-file
> perl-module-timelocal perl-module-feature"
> 
> -PR = "r10"
> +PR = "r11"
> 
>  SRC_URI = "${SOURCEFORGE_MIRROR}/webadmin/webmin-${PV}.tar.gz \
>            file://setup.sh \

I've merged this patch (with a slight tweak to the commit message - it's the 
Logging configuration page within the main webmin module). Thanks!

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

