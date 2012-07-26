Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEBE7E002A8
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 08:29:43 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Jul 2012 08:29:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="173521571"
Received: from unknown (HELO helios.localnet) ([10.252.121.37])
	by azsmga001.ch.intel.com with ESMTP; 26 Jul 2012 08:29:35 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Date: Thu, 26 Jul 2012 16:29:34 +0100
Message-ID: <1667209.y2xKaOcnIW@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-27-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <1343254783-2974-1-git-send-email-kevin.strasser@linux.intel.com>
References: <1343254783-2974-1-git-send-email-kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH] webmin: fixed nfs exports configuration
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
X-List-Received-Date: Thu, 26 Jul 2012 15:29:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 25 July 2012 15:19:43 Kevin Strasser wrote:
> No longer attempting to kill any rpc.nfsd processes. Also, fixed a
> reference to the nfsserver init script.
> 
> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> ---
>  recipes-extended/webmin/webmin_1.570.bb |    5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/recipes-extended/webmin/webmin_1.570.bb
> b/recipes-extended/webmin/webmin_1.570.bb index d787324..c30b050 100644
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
> -PR = "r9"
> +PR = "r10"
> 
>  SRC_URI = "${SOURCEFORGE_MIRROR}/webadmin/webmin-${PV}.tar.gz \
>            file://setup.sh \
> @@ -50,7 +50,8 @@ do_configure() {
>      echo "excludefs=devpts,devtmpfs,usbdevfs,proc,tmpfs,sysfs" >>
> mount/config-generic-linux
> 
>      mv exports/config-debian-linux exports/config-generic-linux
> -    sed -i "s/netstd_nfs/nfsserver/" exports/config-generic-linux
> +    sed -i "s/killall -HUP rpc.nfsd && //" exports/config-generic-linux
> +    sed -i "s/netstd_nfs/nfsserver/g" exports/config-generic-linux
> 
>      # Fix insane naming that causes problems at packaging time (must be
> done before deleting below) find . -name "*\**" | while read from

Merged to meta-baryon master, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

