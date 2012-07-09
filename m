Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F873E006AD
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 12:04:39 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 Jul 2012 12:04:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="120446252"
Received: from unknown (HELO [10.255.13.35]) ([10.255.13.35])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Jul 2012 12:04:37 -0700
Message-ID: <1341860672.6761.227.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Mon, 09 Jul 2012 14:04:32 -0500
In-Reply-To: <cover.1341578164.git.nitin.a.kamble@intel.com>
References: <cover.1341578164.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/7] move intel bsps to v3.4 kernel
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
X-List-Received-Date: Mon, 09 Jul 2012 19:04:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-07-06 at 05:38 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> These commits move Intel BSPs to v3.4 kernel.
> The crownbay v3.4 kernel is not quet ready yet, so for crown bay the default kerenl is still v3.2
> 
> The following changes since commit f5dcebe57832551219da048945237a7cf7bda369:
> 
>   linux-firmware: Fix FILESEXTRAPATHS typo (2012-06-20 13:12:12 -0700)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/meta-intel-contrib nitin/work
>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/work
> 
> Nitin A Kamble (7):
>   FishRiver: add recipe extention for linux-yocto_3.4
>   FishRiver: set v3.4 as the default kernel recipe version
>   emenlow: add recipe extention for linux-yocto_3.4
>   emenlow: set v3.4 as the default kernel recipe version
>   sugarbay: add recipe extention for linux-yocto_3.4
>   sugarbay: set v3.4 as the default kernel recipe version

Sorry for the delay, took awhile partly because some higher-priority
things intruded, and partly because I had doubts that emenlow would work
with just a simple version bump - historically emenlow has caused a lot
of pain with kernel upgrades and needed extensive modifications to work.
So I had to test it myself and found that indeed it works fine.

Pulled in all of the above, and added my Tested-by: to emenlow.

>   crownbay: add recipe extention for linux-yocto-3.4
> 

I didn't pull this in since as you mention, it breaks graphics, and we
really can't pull it in if that's the case, even if it isn't made the
default...

Thanks,

Tom

>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   15 +++++++++++++++
>  meta-emenlow/conf/machine/emenlow.conf             |    2 +-
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 ++++++++
>  meta-fishriver/conf/machine/fishriver.conf         |    2 +-
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 ++++++++
>  meta-sugarbay/conf/machine/sugarbay.conf           |    2 +-
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    9 +++++++++
>  7 files changed, 43 insertions(+), 3 deletions(-)
>  create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
>  create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend
>  create mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
>  create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
> 



