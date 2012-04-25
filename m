Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F895E0070C
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2012 15:10:22 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Apr 2012 15:10:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="158381104"
Received: from unknown (HELO helios.localnet) ([10.252.120.32])
	by fmsmga002.fm.intel.com with ESMTP; 25 Apr 2012 15:10:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Joshua Lock <josh@linux.intel.com>
Date: Wed, 25 Apr 2012 23:10:20 +0100
Message-ID: <2095272.zv0re6Ed7q@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.0.0-17-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <1335388451-4697-1-git-send-email-josh@linux.intel.com>
References: <1335388451-4697-1-git-send-email-josh@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH] webmin: add SRC_URI checksums
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
X-List-Received-Date: Wed, 25 Apr 2012 22:10:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 25 April 2012 14:14:11 Joshua Lock wrote:
> Without checksums do_fetch fails, add the md5 and sha256 checksums
> reported by BitBake to the recipe.
> 
> Signed-off-by: Joshua Lock <josh@linux.intel.com>
> ---
>  recipes-extended/webmin/webmin_1.570.bb |    3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/recipes-extended/webmin/webmin_1.570.bb
> b/recipes-extended/webmin/webmin_1.570.bb index 1d10507..150d920 100644
> --- a/recipes-extended/webmin/webmin_1.570.bb
> +++ b/recipes-extended/webmin/webmin_1.570.bb
> @@ -25,6 +25,9 @@ SRC_URI =
> "${SOURCEFORGE_MIRROR}/webadmin/webmin-${PV}.tar.gz \
> file://net-lib.pl.patch \
>            file://media-tomb.patch"
> 
> +SRC_URI[md5sum] = "20b4f488637366c39458b9b93162eff3"
> +SRC_URI[sha256sum] =
> "3b8ad51dee0e61e330c8137b3d8cff91a00cf31d710b68e272fe02db25baaf54" +
>  inherit allarch perlnative update-rc.d
> 
>  do_configure() {

Merged to meta-baryon master, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

