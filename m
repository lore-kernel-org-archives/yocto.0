Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F27DE0044D
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 08:57:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Apr 2012 08:57:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="125687244"
Received: from unknown (HELO [10.255.12.119]) ([10.255.12.119])
	by orsmga001.jf.intel.com with ESMTP; 05 Apr 2012 08:57:10 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1204041718320.14168@oneiric>
References: <alpine.DEB.2.02.1204041718320.14168@oneiric>
Date: Thu, 05 Apr 2012 10:57:10 -0500
Message-ID: <1333641430.4601.3.camel@elnicho>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] scripts: Clarify "help" info for yocto-bsp and yocto-kernel
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
X-List-Received-Date: Thu, 05 Apr 2012 15:57:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-04-04 at 17:20 -0400, Robert P. J. Day wrote:
> Tweak the help info for both "yocto-bsp" and "yocto-kernel" to
> emphasize that those are the *complete* lists of commands, not just
> the most commonly used ones.
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 

Acked-by: Tom Zanussi <tom.zanussi@intel.com>

> ---
> 
> diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
> index 200a4f8..f78b09b 100644
> --- a/scripts/lib/bsp/help.py
> +++ b/scripts/lib/bsp/help.py
> @@ -83,7 +83,7 @@ yocto_bsp_usage = """
> 
>   usage: yocto-bsp [--version] [--help] COMMAND [ARGS]
> 
> - The most commonly used 'yocto-bsp' commands are:
> + Current 'yocto-bsp' commands are:
>      create            Create a new Yocto BSP
>      list              List available values for options and BSP properties
> 
> @@ -336,7 +336,7 @@ yocto_kernel_usage = """
> 
>   usage: yocto-kernel [--version] [--help] COMMAND [ARGS]
> 
> - The most commonly used 'yocto-kernel' commands are:
> + Current 'yocto-kernel' commands are:
>     config list       List the modifiable set of bare kernel config options for a BSP
>     config add        Add or modify bare kernel config options for a BSP
>     config rm         Remove bare kernel config options from a BSP
> 



