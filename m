Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C004E002A9
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 09:56:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Aug 2012 09:56:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="201501165"
Received: from unknown (HELO [10.255.12.204]) ([10.255.12.204])
	by fmsmga002.fm.intel.com with ESMTP; 02 Aug 2012 09:56:28 -0700
Message-ID: <1343926582.2353.145.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Thu, 02 Aug 2012 11:56:22 -0500
In-Reply-To: <cover.1343839498.git.nitin.a.kamble@intel.com>
References: <cover.1343839498.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, darren.hart@intel.com
Subject: Re: [PATCH 0/1] Fixes for meta-intel/denzil
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
X-List-Received-Date: Thu, 02 Aug 2012 16:56:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-08-01 at 09:46 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> I found the emgd recipe was failing due to packaging QA errors on the denzil branch.
> this pull request fixes it.
> 

Hmm, why are you upgrading denzil to emgd 1.14?

Tom

> Thanks,
> Nitin
> 
> The following changes since commit a1a32b20ee7677f05cc01ab7428f256127657e98:
> 
>   fri2: Update README (2012-07-30 16:24:01 -0700)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/meta-intel-contrib nitin/denzil
>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/denzil
> 
> Nitin A Kamble (1):
>   emgd-driver-bin_1.14: avoid QA warnings
> 
>  .../xorg-xserver/emgd-driver-bin_1.14.bb           |   92 ++++++++++++++++++++
>  1 files changed, 92 insertions(+), 0 deletions(-)
>  create mode 100644 common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.14.bb
> 



