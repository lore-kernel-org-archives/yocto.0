Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51EB4E013A6
	for <yocto@yoctoproject.org>; Sun, 11 Nov 2012 15:37:04 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 Nov 2012 15:36:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,759,1344236400"; d="scan'208";a="240397021"
Received: from unknown (HELO [10.255.12.144]) ([10.255.12.144])
	by orsmga002.jf.intel.com with ESMTP; 11 Nov 2012 15:37:03 -0800
Message-ID: <1352677023.20766.4.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: rahul.saxena@intel.com
Date: Sun, 11 Nov 2012 17:37:03 -0600
In-Reply-To: <cover.1352502494.git.rahul.saxena@intel.com>
References: <cover.1352502494.git.rahul.saxena@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2][meta-intel]meta-cedartrail: For cedartrail-nopvr, Update meta br SRCREV and add linux-yocto preferred version
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
X-List-Received-Date: Sun, 11 Nov 2012 23:37:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-11-09 at 15:17 -0800, rahul.saxena@intel.com wrote:
> From: Rahul Saxena <rahul.saxena@intel.com>
> 
> This patch set does the following:
> 
> Update kernel meta branch SRCREV for cedartrail-nopvr machine
> 
> Added PREFERRED_VERSION for linux-yocto for cedartrail-nopvr machine to avoid build warnings.
> 
> Please pull into danny-next branch

Pulled int meta-intel/danny-next.

(but I had to fix up patch 2 - the body ended up in the subject line -
missing newline?)

Tom

> 
> Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
> --
> The following changes since commit 41a33358619f6f29eccc2399ce701f9c3be65ab3:
> 
>   romley: Update README Instructions (2012-11-08 09:32:17 -0600)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/meta-intel-contrib rsaxena-danny-next
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=rsaxena-danny-next
> 
> Rahul Saxena (2):
>   cedartrail: Update kernel meta branch SRCREV for cedartrail-nopvr
>     machine
>   cedartrail: Add PREFERRED_VERSION for linux-yocto for
>     cedartrail-nopvr machine     Added PREFERRED_VERSION for
>     linux-yocto for cedartrail-nopvr  machine to     avoid build
>     warnings.
> 
>  meta-cedartrail/conf/machine/cedartrail-nopvr.conf |    2 +-
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 



