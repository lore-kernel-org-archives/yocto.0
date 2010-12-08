Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id AED914C81227
	for <yocto@yoctoproject.org>; Wed,  8 Dec 2010 14:49:29 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oB8KnSop020473;
	Wed, 8 Dec 2010 12:49:28 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 8 Dec 2010 12:49:28 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 8 Dec 2010 12:49:28 -0800
Message-ID: <4CFFEF57.800@windriver.com>
Date: Wed, 08 Dec 2010 15:49:27 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: rpurdie@linux.intel.com
References: <cover.1291786378.git.bruce.ashfield@windriver.com>
	<64f083b7e51bae434b4ae449edc81795e89f9f1c.1291786378.git.bruce.ashfield@windriver.com>
In-Reply-To: <64f083b7e51bae434b4ae449edc81795e89f9f1c.1291786378.git.bruce.ashfield@windriver.com>
X-OriginalArrivalTime: 08 Dec 2010 20:49:28.0507 (UTC)
	FILETIME=[680118B0:01CB9719]
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] yocto-kernel: factor common routes, update to 2.6.37 and branch renaming
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
X-List-Received-Date: Wed, 08 Dec 2010 20:49:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-12-08 09:35 AM, Bruce Ashfield wrote:
> In order to extend and create more kernel recipes based on the
> supported yocto kernel common routines need to be placed in
> re-usable blocks.
>
> To accomplish this meta/recipes-kernel/linux/linux-yocto_git.bb
> is broken into three parts:
>

<snip>

>   }
>
> -COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|atom-pc|routerstationpro|mpc8315e-rdb|beagleboard)"
> -
> -LINUX_VERSION = "v2.6.34"
> -LINUX_VERSION_EXTENSION = "-wr-${LINUX_KERNEL_TYPE}"
> -PR = "r13"
> +SRC_URI = "git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \


Richard,

This URI is only accessible via ssh, but the contents of the kernel
are definitely there. What do we need to change to make this
beastie public ? This is what is causing part of my SRCREV issues.

Cheers,

Bruce


> +           git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;noclone=1;branch=meta;name=meta"
>
> -S = "${WORKDIR}/linux"
> -B = "${WORKDIR}/linux-${KMACHINE}-${LINUX_KERNEL_TYPE}-build"

