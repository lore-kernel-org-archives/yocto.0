Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECA64E0027F
	for <yocto@yoctoproject.org>; Mon,  6 Aug 2012 11:05:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Aug 2012 11:05:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="176636609"
Received: from unknown (HELO helios.localnet) ([10.252.121.59])
	by orsmga001.jf.intel.com with ESMTP; 06 Aug 2012 11:05:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Date: Mon, 06 Aug 2012 19:05:39 +0100
Message-ID: <1785460.8y8G3QQZyM@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-27-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <1343928013-3514-1-git-send-email-kevin.strasser@linux.intel.com>
References: <1343928013-3514-1-git-send-email-kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] webmin: remove nfsd check from exports-lib.pl
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
X-List-Received-Date: Mon, 06 Aug 2012 18:05:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 02 August 2012 10:20:13 Kevin Strasser wrote:
> Webmin expects the userspace version of nsfd and attempts to
> find its pid when applying a new set of nfs exports. This check
> fails because baryon is configured to install the kernelspace
> version. In result the command that is assigned to apply_cmd
> will never be executed, and the contents of /exports are not
> successfully exported.
> 
> Fixes [YOCTO #1719]
> 
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
> index 0000000..140ae7e
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
> +Upstream-Status: Inappropriate [config]
> +
> +Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> +---
> + exports/exports-lib.pl |    2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/exports/exports-lib.pl b/exports/exports-lib.pl
> +index 22891c0..1c67494 100755
> +--- a/exports/exports-lib.pl
> ++++ b/exports/exports-lib.pl
> +@@ -273,7 +273,7 @@ return !&has_command("rpc.nfsd") &&
> !&has_command("nfsd") && + sub restart_mountd
> + {
> + # Try exportfs -r first
> +-if ($config{'apply_cmd'} && &find_byname("nfsd") &&
> &find_byname("mountd")) { ++if ($config{'apply_cmd'} &&
> &find_byname("mountd")) {
> + 	local $out = &backquote_logged("$config{'apply_cmd'} 2>&1 </dev/null");
> + 	if (!$? && $out !~ /invalid|error|failed/i) {
> + 		# Looks like it worked!
> +--
> +1.7.9.5
> +
> diff --git a/recipes-extended/webmin/webmin_1.570.bb
> b/recipes-extended/webmin/webmin_1.570.bb index b6c4965..8cda8f0 100644
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
> -PR = "r11"
> +PR = "r12"
> 
>  SRC_URI = "${SOURCEFORGE_MIRROR}/webadmin/webmin-${PV}.tar.gz \
>            file://setup.sh \
> @@ -19,6 +19,7 @@ SRC_URI =
> "${SOURCEFORGE_MIRROR}/webadmin/webmin-${PV}.tar.gz \
> file://remove-startup-option.patch \
>            file://disable-version-check.patch \
>            file://nfs-export.patch \
> +          file://exports-lib.pl.patch \
>            file://mount-excludefs.patch \
>            file://samba-config-fix.patch \
>            file://proftpd-config-fix.patch \

Merged to meta-baryon (with a typo fix nsfd -> nfsd in the commit message), 
thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

