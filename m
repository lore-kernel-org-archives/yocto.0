Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B04E44C80050
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2011 20:45:10 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Mar 2011 18:45:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,256,1297065600"; d="scan'208";a="608478625"
Received: from unknown (HELO [10.255.12.102]) ([10.255.12.102])
	by orsmga002.jf.intel.com with ESMTP; 02 Mar 2011 18:45:09 -0800
Message-ID: <4D6F00B5.2050102@intel.com>
Date: Wed, 02 Mar 2011 18:45:09 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Adrian Alonso <aalonso@secretlab.ca>
References: <cover.1299015730.git.aalonso@secretlab.ca>
In-Reply-To: <cover.1299015730.git.aalonso@secretlab.ca>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/5][PULL] meta-xilinx powerpc bsp
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
X-List-Received-Date: Thu, 03 Mar 2011 02:45:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/01/2011 02:30 PM, Adrian Alonso wrote:
> Several fixes for meta-xilinx powerpc bsp support
>
> Pull URL: git://git.pokylinux.org/meta-xilinx.git
>    Branch: powerpc-support
>    Browse: http://git.pokylinux.org/cgit.cgi/meta-xilinx/log/?h=powerpc-support
>
> Thanks,
>      Adrian Alonso<aalonso@secretlab.ca>
> ---
>
>
> Adrian Alonso (5):
>    virtex4: add u-boot image to rootfs
>    virtex5: add u-boot image to rootfs
>    u-boot-xilinx: fix missing license definition
>    openssl: Fix files search path
>    linux-xilinx: update kernel version
>
>   conf/machine/virtex4.conf                          |    2 +
>   conf/machine/virtex5.conf                          |    2 +
>   recipes-bsp/uboot/u-boot-xilinx_git.bb             |    6 +-
>   ...enssl-linux-gnueabi-powerpc-configuration.patch |    0
>   .../openssl/openssl_0.9.8p.bbappend                |    5 +-
>   recipes-kernel/linux/linux-xilinx_git.bb           |    8 +-
>   recipes-kernel/linux/linux.inc                     |   95 ++++++++++++++++++++
>   7 files changed, 109 insertions(+), 9 deletions(-)
>   rename recipes-connectivity/openssl/{openssl-0.9.8p =>  files}/openssl-linux-gnueabi-powerpc-configuration.patch (100%)
>   create mode 100644 recipes-kernel/linux/linux.inc
>
Merged these into meta-xilinx

Thanks
	Sau!


