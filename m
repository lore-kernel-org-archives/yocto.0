Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F915E003D6
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 12:41:17 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 18 Oct 2012 12:41:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,608,1344236400"; d="scan'208";a="157810902"
Received: from unknown (HELO [10.255.14.120]) ([10.255.14.120])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Oct 2012 12:41:15 -0700
Message-ID: <1350589275.7443.30.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: rahul.saxena@intel.com
Date: Thu, 18 Oct 2012 14:41:15 -0500
In-Reply-To: <cover.1350519099.git.rahul.saxena@intel.com>
References: <cover.1350519099.git.rahul.saxena@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/3][meta-intel]meta-cedartrail: Update README, Fix Package Rename issue & Add dev headers
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
X-List-Received-Date: Thu, 18 Oct 2012 19:41:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-10-17 at 17:27 -0700, rahul.saxena@intel.com wrote:
> From: Rahul Saxena <rahul.saxena@intel.com>
> 
> This patch series does the following:
> -- Update README with product name and state Gfx acceleration support
> -- Fix package naming issue: Yocto bugzilla  bug  #3286. 
> -- Add development headers in  pvr driver recipe
> 
> Pl pull into master branch
> 

Pulled into meta-intel/master.

Thanks,

Tom

> Thanks
> Rahul
> --
> The following changes since commit 5164713bfbef16e1a49bc599ec0d738df52ab254:
> 
>   meta-crystalforest: Update SRCREV for meta. (2012-10-15 14:38:40 -0500)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/meta-intel-contrib master16oct-rsaxena
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=master16oct-rsaxena
> 
> Rahul Saxena (3):
>   meta-cedartrail: Update README with product name and state Gfx
>     acceleration support
>   meta-cedartrail: Fix package naming issue
>   meta-cedartrail: Add development packages to pvr driver recipe
> 
>  meta-cedartrail/README                             |    7 ++++
>  .../xorg-driver/cdv-pvr-driver_1.0.3.bb            |   39 +++++++++++++++++++-
>  2 files changed, 45 insertions(+), 1 deletions(-)
> 



