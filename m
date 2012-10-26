Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B701AE0049B
	for <yocto@yoctoproject.org>; Fri, 26 Oct 2012 12:11:48 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Oct 2012 12:11:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,654,1344236400"; d="scan'208";a="209819744"
Received: from unknown (HELO [10.255.14.211]) ([10.255.14.211])
	by azsmga001.ch.intel.com with ESMTP; 26 Oct 2012 12:11:47 -0700
Message-ID: <1351278706.28073.53.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: rahul.saxena@intel.com
Date: Fri, 26 Oct 2012 14:11:46 -0500
In-Reply-To: <cover.1351210370.git.rahul.saxena@intel.com>
References: <cover.1351210370.git.rahul.saxena@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1][meta-intel]meta-cedartrail: add WEBTITLE & Compliance information
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
X-List-Received-Date: Fri, 26 Oct 2012 19:11:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-10-25 at 17:20 -0700, rahul.saxena@intel.com wrote:
> From: Rahul Saxena <rahul.saxena@intel.com>
> 
> The WEBTITLE will be used to publish the BSP on the Yocto Project Website.
> Also adding the Yocto Project Compliance information for the 1.3 release.
> 

Pulled into meta-intel/master.

Thanks,

Tom

> Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
> --
> The following changes since commit c19e9f51ebbdc603124994f3694fc79b0a83cf41:
> 
>   sugarbay: add WEBTITLE & Compliance information (2012-10-25 15:05:49 -0500)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/meta-intel-contrib rsaxena-webtitle25Oct
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-webtitle25Oct
> 
> Rahul Saxena (1):
>   cedartrail: add WEBTITLE & Compliance information
> 
>  meta-cedartrail/README                             |   16 +++++++++++++---
>  meta-cedartrail/conf/machine/cedartrail-nopvr.conf |    8 +++++---
>  meta-cedartrail/conf/machine/cedartrail.conf       |    8 +++++---
>  3 files changed, 23 insertions(+), 9 deletions(-)
> 



