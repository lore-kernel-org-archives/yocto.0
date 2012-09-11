Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 434FEE004AB
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 13:56:47 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 11 Sep 2012 13:56:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,407,1344236400"; d="scan'208";a="191547959"
Received: from unknown (HELO [10.255.13.178]) ([10.255.13.178])
	by azsmga001.ch.intel.com with ESMTP; 11 Sep 2012 13:56:45 -0700
Message-ID: <1347397005.17386.4.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: rahul.saxena@intel.com
Date: Tue, 11 Sep 2012 15:56:45 -0500
In-Reply-To: <cover.1347297888.git.rahul.saxena@intel.com>
References: <cover.1347297888.git.rahul.saxena@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1][meta-intel] Add video acceleration Cedartrail BSP denzil branch
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
X-List-Received-Date: Tue, 11 Sep 2012 20:56:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-09-10 at 10:34 -0700, rahul.saxena@intel.com wrote:
> From: Rahul Saxena <rahul.saxena@intel.com>
> 
> This adds gstreamer and vaapi video acceleration components to enable video
> acceleration with pvr driver in meta-cedartrail BSP
> 
> Please pull into denzil branch.
>     

Pulled into meta-intel/denzil.

Thanks,

Tom

> Signed-off-by: Rahul Saxena  <rahul.saxena@intel.com>
> --
> The following changes since commit 63f88d16e50384ffab41b548af0ad9b536d22069:
> 
>   meta-cedartrail: Update PVR graphics driver to version 1.0.2 (2012-08-20 15:25:25 -0700)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/meta-intel-contrib rsaxena-denzel3-gsrtOK
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-denzel3-gsrtOK
> 
> Rahul Saxena (1):
>   meta-cedartrail: Add video acceleration
> 
>  meta-cedartrail/conf/machine/cedartrail.conf |    4 ++++
>  1 files changed, 4 insertions(+), 0 deletions(-)
> 



