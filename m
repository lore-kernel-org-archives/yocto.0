Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CA20E00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 10:47:45 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Apr 2012 10:47:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="126944360"
Received: from unknown (HELO [10.255.12.48]) ([10.255.12.48])
	by orsmga001.jf.intel.com with ESMTP; 09 Apr 2012 10:47:44 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
In-Reply-To: <cover.1333496206.git.kishore.k.bodke@intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
Date: Mon, 09 Apr 2012 12:46:57 -0500
Message-ID: <1333993617.2335.57.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/7] [meta-intel] Cedartrail BSP updates with pvr Graphics driver
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
X-List-Received-Date: Mon, 09 Apr 2012 17:47:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


On Tue, 2012-04-03 at 16:43 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> These patches are for adding the PVR graphics driver, EFI Support, 
> and to add Cedartrail Audio and Video files .
> 
> These also updates the SRCREVS for build with pvr and no-pvr versions.
> 
> Please pull into meta-intel/master.
> 

Hi Kishore,

Sorry this has been delayed, just getting back to things now after being
out last week for conferences.

In general, thanks for breaking things up more this time, but there are
still a couple things I think should be done, which I'll comment on in
those patches.

Also, I don't think it makes sense to pull in the audio recipe since
that has changed between edison and master - I think the way to do the
same thing you're doing there is using asound.state (see
meta-intel/meta-n450/recipes-bsp/alsa-state/alsa-state/n450/asound.state
as an example).

Also, I'm wondering if it makes sense to have the image bbappends rather
than just differently-named image recipes - otherwise, you can't build a
regular sato image for example without also including all the test
files.

Finally, as a new BSP in master, I think there should also be support
for the 3.2 kernel, or is there some reason you couldn't do that?

Thanks,

Tom

> Thanks
> Kishore.
> 
> The following changes since commit f89405e115d73426c8a6450b6e795b5885d6bdf3:
> 
>   MAINTAINERS: Add FRI2 maintainer (2012-03-23 09:46:15 -0700)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/meta-intel-contrib kishore/cedartrail-pvr-updates
>   http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=kishore/cedartrail-pvr-updates
> 
> Kishore Bodke (7):
>   Cedartrail: Add PVR graphics support.
>   Cedartrail: Update SRCREVS and add EFI Support.
>   Cedartrail: Add new recipes for audio and video samples.
>   Cedartrail: Add bbappend files to install Audio and Video files.
>   Cedartrail: Separte out machine.conf files.
>   Cedartrail: Add a new recipe for Audio.
>   Cedartrail: Update the README.
> 
>  conf/machine/include/ia32-base.inc                 |    2 +
>  meta-cedartrail/README                             |   41 ++++++++-
>  meta-cedartrail/conf/machine/cedartrail-nopvr.conf |   21 ++++
>  meta-cedartrail/conf/machine/cedartrail.conf       |   13 ++-
>  .../cedartrail-audio/cedartrail-audio.bb           |   30 ++++++
>  .../cedartrail-audio/cedartrail-audio              |   42 ++++++++
>  .../formfactor/cedartrail-nopvr/machconfig         |    3 +
>  .../tasks/task-core-tools-profile.bbappend         |    2 +-
>  .../xorg-driver/cdv-pvr-driver.inc                 |   39 ++++++++
>  .../xorg-driver/cdv-pvr-driver_1.0.bb              |  101 ++++++++++++++++++++
>  .../xserver-xf86-config/cedartrail-nopvr/xorg.conf |   26 +++++
>  .../xserver-xf86-config/cedartrail/xorg.conf       |   24 ++---
>  .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   16 +++-
>  .../ogg-CC-BY-3.0-music-samples_0.1.bb             |   23 +++++
>  .../video-samples/bigbuckbunny-ogg.bb              |   24 +++++
>  .../images/core-image-sato-dev.bbappend            |    2 +
>  .../images/core-image-sato-sdk.bbappend            |    2 +
>  .../recipes-sato/images/core-image-sato.bbappend   |    1 +
>  19 files changed, 396 insertions(+), 24 deletions(-)
>  create mode 100644 meta-cedartrail/conf/machine/cedartrail-nopvr.conf
>  create mode 100644 meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio.bb
>  create mode 100644 meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio/cedartrail-audio
>  create mode 100644 meta-cedartrail/recipes-bsp/formfactor/formfactor/cedartrail-nopvr/machconfig
>  create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver.inc
>  create mode 100644 meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.bb
>  create mode 100644 meta-cedartrail/recipes-graphics/xorg-xserver/xserver-xf86-config/cedartrail-nopvr/xorg.conf
>  create mode 100644 meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
>  create mode 100644 meta-cedartrail/recipes-mediasamples/video-samples/bigbuckbunny-ogg.bb
>  create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
>  create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
>  create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato.bbappend
> 



