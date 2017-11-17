Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85DE4E00CF1; Fri, 17 Nov 2017 10:09:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDBC6E00CEC
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 10:09:52 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Nov 2017 10:09:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,410,1505804400"; 
   d="scan'208";a="3865097"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.134])
	by fmsmga001.fm.intel.com with ESMTP; 17 Nov 2017 10:09:50 -0800
Date: Fri, 17 Nov 2017 12:19:06 -0600
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Volker Vogelhuber <v.vogelhuber@digitalendoscopy.de>
Message-ID: <20171117121906.1df67b31@lsandov1-mobl2.zpn.intel.com>
In-Reply-To: <20171117161948.9700-2-v.vogelhuber@digitalendoscopy.de>
References: <20171117161948.9700-1-v.vogelhuber@digitalendoscopy.de>
	<20171117161948.9700-2-v.vogelhuber@digitalendoscopy.de>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Allow specifying subdir for rootfs when using wic -e
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
X-List-Received-Date: Fri, 17 Nov 2017 18:09:53 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

wic stuff goes into the openembededde-core mailing list. in fact, most files under the scripts folder goes into the latter.

On Fri, 17 Nov 2017 17:19:48 +0100
Volker Vogelhuber <v.vogelhuber@digitalendoscopy.de> wrote:

> ---
>  scripts/lib/wic/ksparser.py              | 1 +
>  scripts/lib/wic/partition.py             | 1 +
>  scripts/lib/wic/plugins/source/rootfs.py | 7 ++++---
>  3 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/scripts/lib/wic/ksparser.py b/scripts/lib/wic/ksparser.py
> index 99b66eebc5..a9e07fcd2f 100644
> --- a/scripts/lib/wic/ksparser.py
> +++ b/scripts/lib/wic/ksparser.py
> @@ -146,6 +146,7 @@ class KickStart():
>          part.add_argument("--overhead-factor", type=overheadtype)
>          part.add_argument('--part-type')
>          part.add_argument('--rootfs-dir')
> +        part.add_argument('--rootfs-subdir')
>  
>          # --size and --fixed-size cannot be specified together; options
>          # ----extra-space and --overhead-factor should also raise a parser
> diff --git a/scripts/lib/wic/partition.py b/scripts/lib/wic/partition.py
> index b623bb9e6d..b42529ce48 100644
> --- a/scripts/lib/wic/partition.py
> +++ b/scripts/lib/wic/partition.py
> @@ -53,6 +53,7 @@ class Partition():
>          self.overhead_factor = args.overhead_factor
>          self.part_type = args.part_type
>          self.rootfs_dir = args.rootfs_dir
> +        self.rootfs_subdir = args.rootfs_subdir
>          self.size = args.size
>          self.fixed_size = args.fixed_size
>          self.source = args.source
> diff --git a/scripts/lib/wic/plugins/source/rootfs.py b/scripts/lib/wic/plugins/source/rootfs.py
> index aec720fb22..8dcf5a2872 100644
> --- a/scripts/lib/wic/plugins/source/rootfs.py
> +++ b/scripts/lib/wic/plugins/source/rootfs.py
> @@ -83,7 +83,7 @@ class RootfsPlugin(SourcePlugin):
>  
>          part.rootfs_dir = cls.__get_rootfs_dir(rootfs_dir)
>  
> -        new_rootfs = None
> +        new_rootfs = part.rootfs_dir
>          # Handle excluded paths.
>          if part.exclude_path is not None:
>              # We need a new rootfs directory we can delete files from. Copy to
> @@ -121,6 +121,7 @@ class RootfsPlugin(SourcePlugin):
>                  else:
>                      # Delete whole directory.
>                      shutil.rmtree(full_path)
> -
> +        if not part.rootfs_subdir is None:
> +            new_rootfs = os.path.join(new_rootfs, part.rootfs_subdir)
>          part.prepare_rootfs(cr_workdir, oe_builddir,
> -                            new_rootfs or part.rootfs_dir, native_sysroot)
> +                            new_rootfs, native_sysroot)
> -- 
> 2.11.0
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

