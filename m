Return-Path: <darren.hart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CB1DE011BB
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 16:30:11 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Dec 2011 16:30:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="83419757"
Received: from unknown (HELO envy.home) ([10.255.12.239])
	by azsmga001.ch.intel.com with ESMTP; 07 Dec 2011 16:30:10 -0800
Message-ID: <4EE0051E.9030900@intel.com>
Date: Wed, 07 Dec 2011 16:30:22 -0800
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>, 
	Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1323303722.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1323303722.git.dvhart@linux.intel.com>
Subject: Re: [PATCH 0/4][meta-intel] fri2: Update display, wifi, and serial console
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
X-List-Received-Date: Thu, 08 Dec 2011 00:30:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

This series applies to edison.

On 12/07/2011 04:29 PM, Darren Hart wrote:
> The following changes since commit c3e12aa981e97261093abee05bb0301c35f54c23:
> 
>   meta-emenlow: switch edison back to linux-yocto-2.6.37 kernel (2011-10-11 13:54:59 -0500)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/meta-intel-contrib dvhart/edison/fri2
>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=dvhart/edison/fri2
> 
> Darren Hart (4):
>   fri2: use ttyS0,115200 for serial console and syslinux
>   fri2: change preferred display order
>   linux-firmware: append support for the iwlwifi-6000g2a-5 firmware
>   fri2: include linux-firmware for iwlwifi in images
> 
>  meta-fri2/conf/machine/fri2-noemgd.conf            |    5 ++++-
>  meta-fri2/conf/machine/fri2.conf                   |    5 ++++-
>  .../xserver-xf86-config/fri2/xorg.conf             |    2 +-
>  .../linux-firmware/linux-firmware_git.bbappend     |   18 ++++++++++++++++++
>  4 files changed, 27 insertions(+), 3 deletions(-)
>  create mode 100644 meta-fri2/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> 


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

