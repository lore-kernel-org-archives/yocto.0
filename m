Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0109E0030B
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 16:48:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Apr 2012 16:48:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="137223436"
Received: from unknown (HELO envy.home) ([10.255.12.63])
	by azsmga001.ch.intel.com with ESMTP; 30 Apr 2012 16:48:50 -0700
Message-ID: <4F9F24C4.1050907@linux.intel.com>
Date: Mon, 30 Apr 2012 16:48:20 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1335812928.git.tom.zanussi@intel.com>
	<3cea3e5b38f503cb2ac22bedf88e1ba14391c2ab.1335812928.git.tom.zanussi@intel.com>
In-Reply-To: <3cea3e5b38f503cb2ac22bedf88e1ba14391c2ab.1335812928.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/2] yocto-kernel: use BUILDDIR to find bblayers.conf
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
X-List-Received-Date: Mon, 30 Apr 2012 23:48:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 04/30/2012 12:12 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> The current code assumes that builddir == srcdir/build, which it
> obviously isn't sometimes.  Use BUILDDIR to get the actual builddir
> being used.
> 
> Fixes [YOCTO #2219].
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  scripts/lib/bsp/kernel.py |    7 ++++++-
>  1 files changed, 6 insertions(+), 1 deletions(-)
> 
> diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
> index 360851b..8b3aa72 100644
> --- a/scripts/lib/bsp/kernel.py
> +++ b/scripts/lib/bsp/kernel.py
> @@ -37,7 +37,12 @@ def find_bblayers(scripts_path):
>      """
>      Find and return a sanitized list of the layers found in BBLAYERS.
>      """
> -    bblayers_conf = os.path.join(scripts_path, "../build/conf/bblayers.conf")
> +    try:
> +        builddir = os.environ["BUILDDIR"]
> +    except KeyError:
> +        print "BUILDDIR not found, exiting. (Did you forget to source oe-init-build-env?)"
> +        sys.exit(1)
> +    bblayers_conf = os.path.join(builddir, "conf/bblayers.conf")
>  
>      layers = []
>  

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

