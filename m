Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5002E0134D
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 11:55:04 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Jan 2012 11:55:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="94921292"
Received: from unknown (HELO [10.255.13.234]) ([10.255.13.234])
	by orsmga001.jf.intel.com with ESMTP; 10 Jan 2012 11:55:04 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <cover.1326216128.git.josh@linux.intel.com>
References: <cover.1326216128.git.josh@linux.intel.com>
Date: Tue, 10 Jan 2012 13:54:53 -0600
Message-ID: <1326225293.2413.49.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/3][meta-intel] Alsa enhancements
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
X-List-Received-Date: Tue, 10 Jan 2012 19:55:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-01-10 at 09:39 -0800, Joshua Lock wrote:
> CAVEAT: This series requires the alsa-state series recently submitted to the
> OE-Core mailing list.
> 

Nice.  Thanks for finally resolving this.  When the other patches hit
oe-core, I'll pull these in...

Tom

> This series enables alsa as a MACHINE_FEATURE by default in the ia32-base so
> that alsa is enabled for all current BSP's.
> 
> Following that the series drops the BSP-specific n450-audio recipe in favour
> of extending the common alsa-state recipe for alsa configuration.
> 
> Note: the n450-audio recipe was not working in any stock image as alsa was
> not a listed MACHINE_FEATURE and the amixer package is not included by
> default.
> 
> The following changes since commit 38f2b670bc37515bcb0fa7f98e338e5242d70386:
> 
>   meta-cedartrail: Create new layer for cedartrail System. (2012-01-09 17:55:07 -0600)
> 
> are available in the git repository at:
>   git://github.com/incandescant/meta-intel master
>   https://github.com/incandescant/meta-intel/tree/master
> 
> Joshua Lock (3):
>   ia32-base: add alsa to MACHINE_FEATURES
>   alsa-state: add alsa state for n450
>   n450-audio: drop this machine specific recipe in favour of alsa-state
> 
>  conf/machine/include/ia32-base.inc                 |    2 +-
>  meta-n450/conf/machine/n450.conf                   |    2 -
>  .../recipes-bsp/alsa-state/alsa-state.bbappend     |    1 +
>  .../alsa-state/alsa-state/n450/asound.state        |  450 ++++++++++++++++++++
>  meta-n450/recipes-bsp/n450-audio/n450-audio.bb     |   30 --
>  .../recipes-bsp/n450-audio/n450-audio/n450-audio   |   42 --
>  6 files changed, 452 insertions(+), 75 deletions(-)
>  create mode 100644 meta-n450/recipes-bsp/alsa-state/alsa-state.bbappend
>  create mode 100644 meta-n450/recipes-bsp/alsa-state/alsa-state/n450/asound.state
>  delete mode 100644 meta-n450/recipes-bsp/n450-audio/n450-audio.bb
>  delete mode 100644 meta-n450/recipes-bsp/n450-audio/n450-audio/n450-audio
> 



