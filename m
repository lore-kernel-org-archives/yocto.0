Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6757E01304
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 13:04:06 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 May 2012 13:04:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="169916057"
Received: from unknown (HELO [10.255.12.14]) ([10.255.12.14])
	by fmsmga002.fm.intel.com with ESMTP; 22 May 2012 13:04:05 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
In-Reply-To: <cover.1337621438.git.kishore.k.bodke@intel.com>
References: <cover.1337621438.git.kishore.k.bodke@intel.com>
Date: Tue, 22 May 2012 15:04:24 -0500
Message-ID: <1337717064.32464.33.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] [meta-intel] Update PVR Graphics drivers.
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
X-List-Received-Date: Tue, 22 May 2012 20:04:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-05-21 at 10:55 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Pointing to the latest version of PVR
> Graphics drivers for the Cedartrail BSP.
> 
> Please pull into meta-intel/denzil
> 

Pulled into meta-intel/master.

Thanks,

Tom

> Thanks
> Kishore.
> 
> The following changes since commit 7c1086df3f92d76ca1a062f9b4b1daf6823bfb63:
> 
>   emgd-driver-bin: skip insane ldflags check (2012-05-17 20:15:53 -0500)
> 
> are available in the git repository at:
> 
>   git://git.pokylinux.org/meta-intel-contrib kishore/cedartrail-pvrupdate
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/cedartrail-pvrupdate
> 
> Kishore Bodke (1):
>   meta-cedartrail: Update PVR Graphics drivers.
> 
>  .../xorg-driver/cdv-pvr-driver.inc                 |   14 +++---
>  .../xorg-driver/cdv-pvr-driver_1.0.bb              |   46 ++++++++++----------
>  2 files changed, 28 insertions(+), 32 deletions(-)
> 



