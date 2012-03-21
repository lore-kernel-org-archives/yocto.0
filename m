Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E80B7E0059A
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2012 18:00:09 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Mar 2012 18:00:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="121313804"
Received: from unknown (HELO [10.255.15.160]) ([10.255.15.160])
	by azsmga001.ch.intel.com with ESMTP; 20 Mar 2012 17:59:08 -0700
Message-ID: <4F6927DC.6030800@linux.intel.com>
Date: Tue, 20 Mar 2012 17:59:08 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Lianhao Lu <lianhao.lu@intel.com>
References: <cover.1331713200.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1331713200.git.lianhao.lu@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] perfer older version of lttng-ust in poky distro
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
X-List-Received-Date: Wed, 21 Mar 2012 01:00:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/14/2012 01:27 AM, Lianhao Lu wrote:
> Set the PREFERRED_VERSION of lttng-ust to use lttng-ust instead of
> lttng2-ust in poky distro. This fixed yocto bug #2062.
>
> The lttng2 is very different in terms of architecture and usage model, compared
> to lttng. The eclipse upstream lttng plugin won't be able to support lttng2 until
> the eclipse Juno release(Jun 27th, 2012).
>
This patch seems to break the lttng-2.0/lttng-tools build.  Please 
verify that we can build lttng-2.0 bits or somehow handle both.

I am not sure the kernel will support the older lttng, in which case 
using lttng-ust from the older release will not work, so we can not use 
the eclipse with it anyways.

Sau!

> The following changes since commit 8e9f6fc77ac4763f4ed1f6e7b720420c220ba6e2:
>    Richard Purdie (1):
>          dates: Fix unpackaged files warning
>
> are available in the git repository at:
>
>    git://git.pokylinux.org/poky-contrib llu/bug2062
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug2062
>
> Lianhao Lu (1):
>    poky.conf: Prefer lttng-ust instead of lttng2-ust.
>
>   meta-yocto/conf/distro/poky.conf |    3 +++
>   1 files changed, 3 insertions(+), 0 deletions(-)
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

