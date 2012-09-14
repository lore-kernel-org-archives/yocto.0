Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17687E01430
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 18:26:27 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Sep 2012 18:26:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,420,1344236400"; d="scan'208";a="221834646"
Received: from unknown (HELO [10.255.13.148]) ([10.255.13.148])
	by fmsmga002.fm.intel.com with ESMTP; 13 Sep 2012 18:26:26 -0700
Message-ID: <1347585985.19399.116.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: rahul.saxena@intel.com
Date: Thu, 13 Sep 2012 20:26:25 -0500
In-Reply-To: <cover.1347490630.git.rahul.saxena@intel.com>
References: <cover.1347490630.git.rahul.saxena@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1][meta-intel]meta-cedartrail:Cover letter to update PVR graphics driver to v1.0.3 - denzil branch
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
X-List-Received-Date: Fri, 14 Sep 2012 01:26:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-09-12 at 16:01 -0700, rahul.saxena@intel.com wrote:
> From: Rahul Saxena <rahul.saxena@intel.com>
> 
> This driver update fixes a memory leak bug
> 
> Please pull into meta-intel/denzil

Pulled into meta-intel/denzil.

Thanks,

Tom

> 
> Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
> --
> The following changes since commit 418f6d3936bcd871102042167c699c3773bded3e:
> 
>   meta-cedartrail: Add video acceleration (2012-09-11 13:58:04 -0500)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/meta-intel-contrib rsaxena-denzilpvr103r1
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-denzilpvr103r1
> 
> Rahul Saxena (1):
>   meta-cedartrail: Update PVR graphics driver to version 1.0.3
> 
>  meta-cedartrail/README                             |    2 +-
>  ...pvr-driver_1.0.2.bb => cdv-pvr-driver_1.0.3.bb} |   52 ++++++++++----------
>  2 files changed, 27 insertions(+), 27 deletions(-)
>  rename meta-cedartrail/recipes-graphics/xorg-driver/{cdv-pvr-driver_1.0.2.bb => cdv-pvr-driver_1.0.3.bb} (81%)
> 



