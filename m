Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 925BBE0030B
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 16:56:48 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Apr 2012 16:56:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="137636240"
Received: from unknown (HELO envy.home) ([10.7.199.60])
	by orsmga002.jf.intel.com with ESMTP; 27 Apr 2012 16:56:48 -0700
Message-ID: <4F9B3222.9050109@linux.intel.com>
Date: Fri, 27 Apr 2012 16:56:18 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1334784305.git.tom.zanussi@intel.com>
	<e181fc2fd029f7853acab1ba7b66bc9f5c87126d.1334784305.git.tom.zanussi@intel.com>
In-Reply-To: <e181fc2fd029f7853acab1ba7b66bc9f5c87126d.1334784305.git.tom.zanussi@intel.com>
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
X-List-Received-Date: Fri, 27 Apr 2012 23:56:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/27/2012 12:00 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> The current code assumes that builddir == srcdir/build, which it
> obviously isn't sometimes.  Use BUILDDIR to get the actual builddir
> being used.
> 
> Fixes [YOCTO #2219].
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
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

We should probably update the bsp tools to use the logging module, I'll
open a feature request for that.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=2375

This should make it easier to instrument the code with verbosity levels
as well as make these go to the right file descriptor. I believe this is
consistent with the rest of the source though, so this looks fine as is.


> +        sys.exit(1)
> +    bblayers_conf = os.path.join(builddir, "conf/bblayers.conf")
>  
>      layers = []
>  

Acked-by: Darren Hart <dvhart@linux.intel.com>

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

