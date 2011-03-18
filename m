Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E46C84C800A6
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2011 11:56:45 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Mar 2011 09:56:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="614758127"
Received: from unknown (HELO [10.255.12.119]) ([10.255.12.119])
	by orsmga002.jf.intel.com with ESMTP; 18 Mar 2011 09:56:45 -0700
Message-ID: <4D838ECD.4030606@linux.intel.com>
Date: Fri, 18 Mar 2011 09:56:45 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <cover.1300455727.git.josh@linux.intel.com>
	<71249ae1f3c337db4c1394697488b6f6d34946fa.1300455727.git.josh@linux.intel.com>
In-Reply-To: <71249ae1f3c337db4c1394697488b6f6d34946fa.1300455727.git.josh@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] emenlow.conf: no need to set PACKAGE_EXTRA_ARCHS
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
X-List-Received-Date: Fri, 18 Mar 2011 16:56:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 03/18/2011 06:43 AM, Joshua Lock wrote:
> From: Joshua Lock<josh@linux.intel.com>
>
> x86 and core2 are added to this variable by the tune-atom.inc file
>
> Signed-off-by: Joshua Lock<josh@linux.intel.com>

Pulling into meta-intel bernard and master, thanks,

> ---
>   meta-emenlow/conf/machine/emenlow.conf |    1 -
>   1 files changed, 0 insertions(+), 1 deletions(-)
>
> diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
> index 78fec25..db98706 100644
> --- a/meta-emenlow/conf/machine/emenlow.conf
> +++ b/meta-emenlow/conf/machine/emenlow.conf
> @@ -5,7 +5,6 @@
>   # Webs-2120 box.
>
>   TARGET_ARCH = "i586"
> -PACKAGE_EXTRA_ARCHS = "x86 core2"
>
>   include conf/machine/include/tune-atom.inc
>

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

