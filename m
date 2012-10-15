Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43079E00292
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 12:40:24 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Oct 2012 12:40:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,590,1344236400"; d="scan'208";a="205921062"
Received: from unknown (HELO [10.255.14.132]) ([10.255.14.132])
	by orsmga001.jf.intel.com with ESMTP; 15 Oct 2012 12:40:23 -0700
Message-ID: <1350330022.27257.10.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
Date: Mon, 15 Oct 2012 14:40:22 -0500
In-Reply-To: <cover.1350329479.git.kishore.k.bodke@intel.com>
References: <cover.1350329479.git.kishore.k.bodke@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] [meta-intel] meta-crystalforest: Update SRCREVs for meta
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
X-List-Received-Date: Mon, 15 Oct 2012 19:40:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-10-15 at 12:34 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Hi,
> 
> This updates the SRCREVs of meta branch to include the
> new PCI config options added to the Crystal Forest branch.
> 
> Please pull them into meta-intel/master.
> 

Pulled into meta-intel/master.

Thanks,

Tom

> Thanks
> Kishore.
> 
> The following changes since commit f521abf424beb841fed85107e79f37b618c3e833:
> 
>   emgd-driver-bin: add custom-licenses dir for emgd recipe Licenses (2012-10-12 08:41:50 -0500)
> 
> are available in the git repository at:
> 
>   git://git.pokylinux.org/meta-intel-contrib Kishore/CRF-srcrev
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=Kishore/CRF-srcrev
> 
> Kishore Bodke (1):
>   meta-crystalforest: Update SRCREV for meta.
> 
>  .../linux/linux-yocto-rt_3.4.bbappend              |    4 ++--
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 



