Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51EA1E0143C
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2012 16:03:26 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Jun 2012 16:03:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="155094676"
Received: from unknown (HELO envy.home) ([10.255.12.197])
	by orsmga002.jf.intel.com with ESMTP; 08 Jun 2012 16:03:25 -0700
Message-ID: <4FD28477.9020201@linux.intel.com>
Date: Fri, 08 Jun 2012 16:02:15 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
References: <cover.1339194124.git.nitin.a.kamble@intel.com>
	<01b0f43cacd0beed93aebd108730bfe420ab2397.1339194124.git.nitin.a.kamble@intel.com>
In-Reply-To: <01b0f43cacd0beed93aebd108730bfe420ab2397.1339194124.git.nitin.a.kamble@intel.com>
X-Enigmail-Version: 1.4.2
Cc: yocto@yoctoproject.org
Subject: Re: [OE-core] [PATCH 1/1] eglibc: remove runtime dependency of perl from eglibc-mtrace
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
X-List-Received-Date: Fri, 08 Jun 2012 23:03:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/08/2012 03:23 PM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> perl needs eglibc to build.
> The presence of runtime dependency of
> perl for eglibc-mtrace caused bitbake to build perl before eglibc,
> which causes build failure of perl with poky-tiny distro
> 

So is this a circular dependency chain?

perl DEPENDS on eglibc
eglibc (because of eglibc-mtrace) RDEPENDS on perl?

If so, doesn't this solution leave eglibc-mtrace with an incomplete set
of dependencies in it's final package meta-data?

Would the correct solution be to break eglibc-mtrace out into a separate
recipe.

eglibc-mtrace.bb could then DEPENDS=eglibc and RDEPENDS=perl and
poky-tiny would need to be able to exclude eglibc-mtrace.


>   This fixes bug: [YOCTO #2523]
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  meta/recipes-core/eglibc/eglibc-package.inc |    1 -
>  1 files changed, 0 insertions(+), 1 deletions(-)
> 
> diff --git a/meta/recipes-core/eglibc/eglibc-package.inc b/meta/recipes-core/eglibc/eglibc-package.inc
> index ce37155..423729a 100644
> --- a/meta/recipes-core/eglibc/eglibc-package.inc
> +++ b/meta/recipes-core/eglibc/eglibc-package.inc
> @@ -55,7 +55,6 @@ FILES_${PN}-dbg += "${libexecdir}/*/.debug ${libdir}/audit/.debug"
>  FILES_catchsegv${PKGSUFFIX} = "${bindir}/catchsegv"
>  RDEPENDS_catchsegv${PKGSUFFIX} = "libsegfault"
>  RDEPENDS_${PN}-utils += "bash"
> -RDEPENDS_${PN}-mtrace += "perl"
>  FILES_${PN}-pcprofile = "${base_libdir}/libpcprofile.so"
>  FILES_eglibc-thread-db${PKGSUFFIX} = "${base_libdir}/libthread_db.so.* ${base_libdir}/libthread_db-*.so"
>  RPROVIDES_${PN}-dev += "libc-dev"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

