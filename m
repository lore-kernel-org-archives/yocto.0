Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D11A9E003C8
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 13:46:18 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Aug 2012 13:46:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,748,1336374000"; d="scan'208";a="206562040"
Received: from unknown (HELO [10.255.12.203]) ([10.255.12.203])
	by fmsmga002.fm.intel.com with ESMTP; 10 Aug 2012 13:46:17 -0700
Message-ID: <1344631576.2808.2.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
Date: Fri, 10 Aug 2012 15:46:16 -0500
In-Reply-To: <cover.1344624483.git.kishore.k.bodke@intel.com>
References: <cover.1344624483.git.kishore.k.bodke@intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/3] [meta-intel] Move Matrox MGA Xorg driver to common
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
X-List-Received-Date: Fri, 10 Aug 2012 20:46:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-08-10 at 12:02 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Hi,
> 
> These patches are for moving the Matrox MGA Xorg driver from
> meta-romley to meta-intel/common and adding a variable to 
> include the mga recipe in the respective BSPs which uses them.
> 
> Romley BSP has been successfully booted with sato desktop.
> 
> Please pull into meta-intel/master.
> 

Thanks for making those changes, Kishore.

Pulled into meta-intel/master.

Tom

> Thanks
> Kishore.
> 
> The following changes since commit ff7fdafba88a5b7676f601b3d16a97ce7d48c4a9:
> 
>   crownbay: make v3.4 the default kernel (2012-07-31 23:08:05 -0500)
> 
> are available in the git repository at:
> 
>   git://git.pokylinux.org/meta-intel-contrib kishore/matrox-mga
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/matrox-mga
> 
> Kishore Bodke (3):
>   meta-romley: Move Matrox MGA Xorg driver to meta-intel/common
>   meta-intel:Add a MATROX MGA variable to ia32-base.inc
>   meta-romley: Add Matrox MGA variable to romley.conf
> 
>  .../xorg-driver/xf86-video-mga_1.4.13.bb           |    0
>  conf/machine/include/ia32-base.inc                 |    4 ++++
>  meta-romley/conf/machine/romley.conf               |    3 +--
>  3 files changed, 5 insertions(+), 2 deletions(-)
>  rename {meta-romley => common}/recipes-graphics/xorg-driver/xf86-video-mga_1.4.13.bb (100%)
> 



