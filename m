Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF284E013D4
	for <yocto@yoctoproject.org>; Sun, 10 Jun 2012 20:34:12 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Jun 2012 20:34:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="163971844"
Received: from unknown (HELO [10.255.12.138]) ([10.255.12.138])
	by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2012 20:34:11 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
In-Reply-To: <cover.1339105415.git.kishore.k.bodke@intel.com>
References: <cover.1339105415.git.kishore.k.bodke@intel.com>
Date: Sun, 10 Jun 2012 22:33:58 -0500
Message-ID: <1339385638.9024.0.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] [meta-intel] meta-cedartrail: update SRCREV
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
X-List-Received-Date: Mon, 11 Jun 2012 03:34:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


On Thu, 2012-06-07 at 14:48 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Removed the kernel feature set from the BSP area.
> These have been added to kernel meta branch.
> So update the SRCREV for meta to pull in these changes.
> 
> Please pull into meta-intel/denzil.
> 

Pulled into meta-intel/denzil and meta-intel/master.

Thanks,

Tom

> Thanks
> Kishore.
> 
> The following changes since commit 8bc2fa135060e941bcbb4dcfb664e175a3eb871d:
> 
>   meta-fri2: add video acceleration (2012-06-06 16:16:24 -0500)
> 
> are available in the git repository at:
> 
>   git://git.pokylinux.org/meta-intel-contrib kishore/cedartrail-update
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/cedartrail-update
> 
> Kishore Bodke (1):
>   meta-cedartrail: update SRCREV
> 
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 



