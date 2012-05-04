Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71F92E00596
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 13:41:18 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 May 2012 13:41:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="149471919"
Received: from unknown (HELO [10.255.12.135]) ([10.255.12.135])
	by fmsmga001.fm.intel.com with ESMTP; 04 May 2012 13:41:17 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
In-Reply-To: <cover.1336157346.git.kishore.k.bodke@intel.com>
References: <cover.1336157346.git.kishore.k.bodke@intel.com>
Date: Fri, 04 May 2012 15:41:05 -0500
Message-ID: <1336164065.21923.18.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] [meta-intel] Cedartrail: Update SRCREV of yocto/pvr kernel branch
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
X-List-Received-Date: Fri, 04 May 2012 20:41:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Pulled into master.  (meta-intel/denzil is just a placeholder for
documentation at this point).

Tom

On Fri, 2012-05-04 at 11:55 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> This patch is to update the SRCREVs for the yocto/pvr
> to pull in the new kernel patches.
> 
> Please pull into meta-intel/denzil.
> 
> Thanks
> Kishore.
> 
> The following changes since commit bde31fd7e66faea865d24ff0858a9006b89e4e54:
> 
>   meta-emenlow: update kernel SRCREVs (2012-04-26 15:24:31 -0500)
> 
> are available in the git repository at:
> 
>   git://git.pokylinux.org/meta-intel-contrib kishore/denzil
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/denzil
> 
> Kishore Bodke (1):
>   Cedartrail: Update SRCREV of yocto/pvr kernel branch
> 
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 



