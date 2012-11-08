Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DACEE003DA
	for <yocto@yoctoproject.org>; Thu,  8 Nov 2012 07:33:40 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 08 Nov 2012 07:33:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,738,1344236400"; d="scan'208";a="244158427"
Received: from unknown (HELO [10.255.12.37]) ([10.255.12.37])
	by fmsmga001.fm.intel.com with ESMTP; 08 Nov 2012 07:33:39 -0800
Message-ID: <1352388819.28181.2.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
Date: Thu, 08 Nov 2012 09:33:39 -0600
In-Reply-To: <cover.1352330314.git.kishore.k.bodke@intel.com>
References: <cover.1352330314.git.kishore.k.bodke@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] [meta-inte] romley: update README Instructions
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
X-List-Received-Date: Thu, 08 Nov 2012 15:33:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-11-07 at 15:21 -0800, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Add instructions on how to get the Intel DPDK
> recipes for the Romley BSP.
> 
> Please pull into meta-intel/danny.
> 

Pulled into meta-intel/danny-next and meta-intel/master.

Thanks,

Tom

> Thanks
> Kishore.
> 
> The following changes since commit 1a5ab65544830dd571a368b9d9f6ec782ffc94ac:
> 
>   mesa-dri.bbappend: avoid conflict with emgd-driver-bin (2012-11-01 08:35:40 -0500)
> 
> are available in the git repository at:
> 
>   git://git.pokylinux.org/meta-intel-contrib kishore/romley-readme
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/romley-readme
> 
> Kishore Bodke (1):
>   romley: Update README Instructions
> 
>  meta-romley/README |   10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 



