Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45BFBE00AD7; Thu, 16 Nov 2017 15:12:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ADC7E009B4
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 15:12:15 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Nov 2017 15:12:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,405,1505804400"; d="scan'208";a="150285877"
Received: from $_hostname.zpn.intel.com (HELO lsandov1-mobl2.zpn.intel.com)
	([10.219.128.134])
	by orsmga004.jf.intel.com with ESMTP; 16 Nov 2017 15:12:14 -0800
Date: Thu, 16 Nov 2017 17:21:29 -0600
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Martyn Welch <martyn.welch@collabora.co.uk>
Message-ID: <20171116172129.11b89562@lsandov1-mobl2.zpn.intel.com>
In-Reply-To: <1510844758-20290-1-git-send-email-martyn.welch@collabora.co.uk>
References: <1510844758-20290-1-git-send-email-martyn.welch@collabora.co.uk>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [PATCH v4 1/3] image.bbclass: add prohibited-paths QA test
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
X-List-Received-Date: Thu, 16 Nov 2017 23:12:17 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

isn't it this class meta/classes/insane.bbclass for this type of checks?


On Thu, 16 Nov 2017 15:05:56 +0000
Martyn Welch <martyn.welch@collabora.co.uk> wrote:

> Sometimes we wish to ensure that files or directories are not installed
> somewhere that may prove detrimental to the operation of the system. For
> example, this may be the case if files are placed in a directory that is
> utilised as a mount point at run time, thus making them inaccessible once
> when the mount point is being utilised.
> 
> Implement the prohibited paths QA test, which enables such locations to be
> specified in a "IMAGE_QA_PROHIBITED_PATHS" variable. This implementation
> allows for a colon separated list of paths to be provided. Shell style
> wildcards can be used.
> 
> Signed-off-by: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
> Signed-off-by: Martyn Welch <martyn.welch@collabora.co.uk>
> ---
> Changes since v1:
>  - Correcting author and SOB.
> 
> Changes since v2:
>  - Reimplemented as image rather than package level QA test.
>  - Changed variable from PROHIBITED_PATH to PROHIBITED_PATHS to better
>    reflect its use.
> 
> Changes since v3:
>  - Rename variable to IMAGE_QA_PROHIBITED_PATHS.
>  - Use str.startswith().
>  - Simplify if statement.
> 
>  meta/classes/image.bbclass | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
> index d93de02..9053ce3 100644
> --- a/meta/classes/image.bbclass
> +++ b/meta/classes/image.bbclass
> @@ -296,6 +296,26 @@ python do_image_complete_setscene () {
>  }
>  addtask do_image_complete_setscene
>  
> +python image_check_prohibited_paths () {
> +    import glob
> +    from oe.utils import ImageQAFailed
> +
> +    rootfs = d.getVar('IMAGE_ROOTFS')
> +
> +    path = (d.getVar('IMAGE_QA_PROHIBITED_PATHS') or "")
> +    if path != "":
> +        for p in path.split(':'):
> +            if not p.startswith('/'):
> +                raise ImageQAFailed("IMAGE_QA_PROHIBITED_PATHS \"%s\" must be an absolute path" % p, image_check_prohibited_paths)
> +
> +            match = glob.glob("%s%s" % (rootfs, p))
> +            if match:
> +                loc = ", ".join(item.replace(rootfs, '') for item in match)
> +                raise ImageQAFailed("Match(es) for IMAGE_QA_PROHIBITED_PATHS \"%s\": %s" % (p, loc), image_check_prohibited_paths)
> +}
> +
> +IMAGE_QA_COMMANDS += "image_check_prohibited_paths"
> +
>  # Add image-level QA/sanity checks to IMAGE_QA_COMMANDS
>  #
>  # IMAGE_QA_COMMANDS += " \
> -- 
> 2.1.4
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

