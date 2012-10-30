Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5402E00348
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 06:50:41 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Oct 2012 06:50:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,679,1344236400"; d="scan'208";a="234599142"
Received: from unknown (HELO [10.255.14.154]) ([10.255.14.154])
	by orsmga002.jf.intel.com with ESMTP; 30 Oct 2012 06:50:39 -0700
Message-ID: <1351605038.1762.0.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
Date: Tue, 30 Oct 2012 08:50:38 -0500
In-Reply-To: <cover.1351553989.git.kishore.k.bodke@intel.com>
References: <cover.1351553989.git.kishore.k.bodke@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2][meta-intel] CrystalForest: Add WEBTITLE and update README
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
X-List-Received-Date: Tue, 30 Oct 2012 13:50:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-10-29 at 16:44 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Hi,
> 
> This Adds the WEBTITLE and Compliance information for the Crystal Forest
> and update the README for the instructions to build the custom Image.
> 
> Please pull them into meta-intel/master.
> 

Pulled into meta-intel/master.

Thanks,

Tom

> Thanks
> Kishore.
> 
> The following changes since commit 20c289289ef1fa84bbef323c77d2c39e9e8a9882:
> 
>   romley: add WEBTITLE & Compliance information (2012-10-29 14:59:37 -0500)
> 
> are available in the git repository at:
> 
>   git://git.pokylinux.org/meta-intel-contrib kishore/crf-webtitle
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/crf-webtitle
> 
> Kishore Bodke (2):
>   crystalforest: add WEBTITLE & Compliance information
>   crystalforest: Update the README Instructions.
> 
>  meta-crystalforest/README                          |   25 +++++++++++++++++---
>  .../conf/machine/crystalforest-gladden.conf        |    8 +++++--
>  .../conf/machine/crystalforest-server.conf         |    8 +++++--
>  3 files changed, 34 insertions(+), 7 deletions(-)
> 



