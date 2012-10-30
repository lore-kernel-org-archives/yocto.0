Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4536E00348
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 06:52:46 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Oct 2012 06:51:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,679,1344236400"; d="scan'208";a="234599330"
Received: from unknown (HELO [10.255.14.154]) ([10.255.14.154])
	by orsmga002.jf.intel.com with ESMTP; 30 Oct 2012 06:51:32 -0700
Message-ID: <1351605091.1762.1.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Oct 2012 08:51:31 -0500
In-Reply-To: <cover.1351551995.git.tom.zanussi@intel.com>
References: <cover.1351551995.git.tom.zanussi@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: dvhart@linux.intel.com
Subject: Re: [PATCH 0/2] Some meta-intel cleanup for 1.3
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
X-List-Received-Date: Tue, 30 Oct 2012 13:52:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Pulled into meta-intel/master.

Tom

On Mon, 2012-10-29 at 18:11 -0500, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> This patchset updates the kernel SRCREVs and adds KERNEL_VERSION for all
> the meta-intel BSPs.
> 
> It also removes the remaining linux-yocto-3.0 bbappends.
> 
> The following changes since commit 20c289289ef1fa84bbef323c77d2c39e9e8a9882:
> 
>   romley: add WEBTITLE & Compliance information (2012-10-29 14:59:37 -0500)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/meta-intel-contrib.git tzanussi/1.3-kernel-srcrevs
>   http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-contrib/log/?h=tzanussi/1.3-kernel-srcrevs
> 
> Tom Zanussi (2):
>   meta-intel: update kernel SRCREVs and pin LINUX_VERSION
>   meta-intel: remove linux-yocto*_3.0 bbappends
> 
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend       |  2 ++
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend       |  6 ++++--
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend       | 10 ++++++----
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend       | 10 ++++++----
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend       | 10 ++++++----
>  .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    |  8 --------
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend       |  9 ---------
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend       |  6 ++++--
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend       |  6 ++++--
>  .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    | 11 -----------
>  meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend | 11 -----------
>  meta-fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend | 10 ++++++----
>  meta-fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend |  2 ++
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend       |  2 ++
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend       |  6 ++++--
>  .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    | 10 ----------
>  meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend | 10 ----------
>  .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    |  8 --------
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend       |  8 --------
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend       |  6 ++++--
>  .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    |  8 --------
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend       |  8 --------
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend       |  6 ++++--
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend       |  6 ++++--
>  .../recipes-kernel/linux/linux-yocto-rt_3.0.bbappend    | 14 --------------
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend       | 17 -----------------
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend       | 10 ++++++----
>  27 files changed, 64 insertions(+), 156 deletions(-)
>  delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>  delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_3.0.bbappend
>  delete mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>  delete mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto_3.0.bbappend
>  delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>  delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_3.0.bbappend
>  delete mode 100644 meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>  delete mode 100644 meta-romley/recipes-kernel/linux/linux-yocto_3.0.bbappend
>  delete mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>  delete mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
>  delete mode 100644 meta-sys940x/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>  delete mode 100644 meta-sys940x/recipes-kernel/linux/linux-yocto_3.0.bbappend
> 



