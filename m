Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FFA4E003E4
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 09:17:55 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 02 Mar 2012 09:17:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="72855175"
Received: from unknown (HELO envy.home) ([10.255.15.86])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Mar 2012 09:17:54 -0800
Message-ID: <4F510096.9050604@linux.intel.com>
Date: Fri, 02 Mar 2012 09:17:10 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <873e25e86273c9263e32c02c296d96d06230e70e.1330663414.git.tom.zanussi@intel.com>
	<4a6834300e57ea9189d418d8fd77da9b71095c7a.1330663414.git.tom.zanussi@intel.com>
In-Reply-To: <4a6834300e57ea9189d418d8fd77da9b71095c7a.1330663414.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 5/8] yocto-bsp-tools: add help/usage
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
X-List-Received-Date: Fri, 02 Mar 2012 17:17:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/01/2012 11:01 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> This is essentially 'the documentation' for the Yocto BSP tools, along
> with a few related functions.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  scripts/lib/bsp/help.py |  588 +++++++++++++++++++++++++++++++++++++++++++++++
>  1 files changed, 588 insertions(+), 0 deletions(-)
>  create mode 100644 scripts/lib/bsp/help.py
> 
> diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
> new file mode 100644
> index 0000000..c7c6e6a
> --- /dev/null
> +++ b/scripts/lib/bsp/help.py
> @@ -0,0 +1,588 @@
> +# ex:ts=4:sw=4:sts=4:et
> +# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
> +#
> +# Copyright 2012 Intel Corporation
> +# Authored-by:  Tom Zanussi <tom.zanussi@intel.com>

Same comment here...

Otherwise, all looks very nice.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

