Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18305E006C7
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 22:42:33 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Apr 2012 22:42:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="134650192"
Received: from unknown (HELO envy.home) ([10.255.12.172])
	by orsmga001.jf.intel.com with ESMTP; 27 Apr 2012 22:42:32 -0700
Message-ID: <4F9B8329.6020705@linux.intel.com>
Date: Fri, 27 Apr 2012 22:42:01 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1335572520.git.tom.zanussi@intel.com>
	<b2adc618ce532d1a38ed895c06cceb538b3ffe8b.1335572520.git.tom.zanussi@intel.com>
In-Reply-To: <b2adc618ce532d1a38ed895c06cceb538b3ffe8b.1335572520.git.tom.zanussi@intel.com>
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
X-List-Received-Date: Sat, 28 Apr 2012 05:42:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/27/2012 05:25 PM, tom.zanussi@intel.com wrote:
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

