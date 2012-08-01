Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25DE3E00283
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 21:21:57 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 31 Jul 2012 21:21:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="173915155"
Received: from unknown (HELO [10.255.12.108]) ([10.255.12.108])
	by orsmga001.jf.intel.com with ESMTP; 31 Jul 2012 21:21:56 -0700
Message-ID: <1343794913.2353.41.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Tue, 31 Jul 2012 23:21:53 -0500
In-Reply-To: <cover.1343570184.git.nitin.a.kamble@intel.com>
References: <cover.1343570184.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/4] update emgd driver recipe and yocto-kernel for crownbay BSP
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
X-List-Received-Date: Wed, 01 Aug 2012 04:21:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2012-07-29 at 06:59 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> The following changes since commit 7bd163e41f6b861448ab19a13ded4b7c48e16641:
> 
>   gnu-efi_3.0m.bb: Fix tabs with spaces in python snippet (2012-07-27 11:41:17 -0700)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/meta-intel-contrib nitin/work
>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/work
> 
> Nitin A Kamble (4):
>   emgd-driver-bin: upgrade from 1.10 to 1.14
>   crownbay: customize the xorg.conf for the flat panel on the kit
>   crownbay: add recipe extension for linux-yocto-3.4
>   crownbay: make v3.4 the default kernel


Build- and runtime-tested (2d, 3d graphics and video all work well).

All except the xorg.conf patch merged into meta-intel/master, thanks.

Tom

>  ...-driver-bin_1.10.bb => emgd-driver-bin_1.14.bb} |   17 +++++++++--------
>  meta-crownbay/README                               |    8 ++++----
>  meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 +-
>  meta-crownbay/conf/machine/crownbay.conf           |    2 +-
>  .../xserver-xf86-config/crownbay/xorg.conf         |   14 ++++++++++++++
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   20 ++++++++++++++++++++
>  6 files changed, 49 insertions(+), 14 deletions(-)
>  rename common/recipes-graphics/xorg-xserver/{emgd-driver-bin_1.10.bb => emgd-driver-bin_1.14.bb} (88%)
>  create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
> 



