Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DB1CE0071A
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 12:06:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Aug 2011 12:06:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="41440840"
Received: from unknown (HELO envy.home) ([10.7.199.154])
	by orsmga001.jf.intel.com with ESMTP; 23 Aug 2011 12:06:30 -0700
Message-ID: <4E53FA35.9050306@linux.intel.com>
Date: Tue, 23 Aug 2011 12:06:29 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1314124511.git.sgw@linux.intel.com>
	<99367a7d66c6bdfc56780cc9cfc7d50b55095591.1314124511.git.sgw@linux.intel.com>
In-Reply-To: <99367a7d66c6bdfc56780cc9cfc7d50b55095591.1314124511.git.sgw@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] beagleboard.conf: set DEFAULT_TUNE to cortexa8
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
X-List-Received-Date: Tue, 23 Aug 2011 19:06:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/23/2011 11:36 AM, Saul Wold wrote:
>     [YOCTO #1381]
> 
>     lttng-ust generates an ICE when building for armv7, so change it to armv5
>     | vfprintf.c:956:1: error: unrecognizable insn:
>     | (insn 3968 3967 3969 145 (set (subreg:SI (reg/v:DI 160 [ _umax ]) 0)
>     |         (sign_extend:SI (mem:QI (plus:SI (mult:SI (reg/v:SI 166 [ nextarg ])
>     |                         (const_int 8 [0x8]))
>     |                     (reg/f:SI 370 [ argtable.7 ])) [0 *D.6937_569+0 S1
>     A32]))) vfprintf.c:555 -1
>     |      (nil))
>     | vfprintf.c:956:1: internal compiler error: in extract_insn, at recog.c:2109
> 
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
>  meta-yocto/conf/machine/beagleboard.conf |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
> 
> diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
> index 0b3cebc..9ed8c59 100644
> --- a/meta-yocto/conf/machine/beagleboard.conf
> +++ b/meta-yocto/conf/machine/beagleboard.conf
> @@ -18,6 +18,8 @@ MACHINE_EXTRA_RRECOMMENDS += "beagleboard-audio"
>  # Allow for MMC booting (required by the NAND-less Beagleboard XM)
>  EXTRA_IMAGEDEPENDS += "u-boot x-load"
>  
> +DEFAULT_TUNE = "cortexa8"
> +

Sorry, I didn't mean for this to be a final solution, just a means to
determine the problem. Removing neon eliminates the vector floating
point, which we do not want to do. The correct fix for this is probably
in gcc. I'd rather not build lttng for beagleboard than change the tune
default to DEFAULT_TUNE to "cortexa8".

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

