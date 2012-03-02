Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3159E003E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 08:41:47 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Mar 2012 08:41:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="132422437"
Received: from unknown (HELO envy.home) ([10.255.15.86])
	by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2012 08:41:47 -0800
Message-ID: <4F50F81F.6000703@linux.intel.com>
Date: Fri, 02 Mar 2012 08:41:03 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <873e25e86273c9263e32c02c296d96d06230e70e.1330663414.git.tom.zanussi@intel.com>
	<ebb9cbcd2cdf5a45fd35d59e6b4b2490dd94542b.1330663414.git.tom.zanussi@intel.com>
In-Reply-To: <ebb9cbcd2cdf5a45fd35d59e6b4b2490dd94542b.1330663414.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/8] yocto-bsp-tools: add bsp library
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
X-List-Received-Date: Fri, 02 Mar 2012 16:41:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Responded privately to Tom on this one...

On 03/01/2012 11:01 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Create a home for the yocto bsp tools.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  scripts/lib/bsp/__init__.py |   17 +++++++++++++++++
>  1 files changed, 17 insertions(+), 0 deletions(-)
>  create mode 100644 scripts/lib/bsp/__init__.py
> 
> diff --git a/scripts/lib/bsp/__init__.py b/scripts/lib/bsp/__init__.py
> new file mode 100644
> index 0000000..978c2e4
> --- /dev/null
> +++ b/scripts/lib/bsp/__init__.py
> @@ -0,0 +1,17 @@
> +#
> +# Yocto BSP tools library
> +#
> +# Copyright (C) 2012 Tom Zanussi
> +#
> +# This program is free software; you can redistribute it and/or modify
> +# it under the terms of the GNU General Public License version 2 as
> +# published by the Free Software Foundation.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +# GNU General Public License for more details.
> +#
> +# You should have received a copy of the GNU General Public License along
> +# with this program; if not, write to the Free Software Foundation, Inc.,
> +# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

