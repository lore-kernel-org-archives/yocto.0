Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5C34E01206
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 13:31:15 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 May 2012 13:31:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170533113"
Received: from unknown (HELO [10.255.12.14]) ([10.255.12.14])
	by fmsmga002.fm.intel.com with ESMTP; 23 May 2012 13:31:14 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <CADkTA4Mx2CPG1SzF63Wyx7mRL9y+fC2CUuBZ=-_GPUPXE4N-eA@mail.gmail.com>
References: <cover.1337801535.git.tom.zanussi@intel.com>
	<CADkTA4Mx2CPG1SzF63Wyx7mRL9y+fC2CUuBZ=-_GPUPXE4N-eA@mail.gmail.com>
Date: Wed, 23 May 2012 15:31:37 -0500
Message-ID: <1337805097.32464.52.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 00/20] meta-intel: new chiefriver BSP and supporting recipes
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
X-List-Received-Date: Wed, 23 May 2012 20:31:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-05-23 at 17:26 -0300, Bruce Ashfield wrote:
> On Wed, May 23, 2012 at 4:52 PM,  <tom.zanussi@intel.com> wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> >
> > This patchset implements a new BSP for the 'Chief River' platform, which
> > consists of the Intel Ivy Bridge processor and Panther Point PCH.  It
> > assumes that the Ivy Bridge integrated graphics are being used.
> >
> > It also adds a few new recipes related to video acceleration which are
> > modified versions of oe-core or yocto meta-demo recipes (ffmpeg,
> > yasm-native, gstreamer-vaapi), along with tweaks needed to work with
> > intel video acceleration components.
> >
> > There are also some new intel-specific video acceleration components
> > (libva-1.0.15, intel-driver-1.0.15, va-intel) either needed for video
> > acceleration on Intel platforms, or allowing for easier integration
> > with the existing meta-intel BSPs.  These finally allow the chiefriver,
> > sugarbay, and crownbay BSPs to share a common set of video components,
> > and have been tested with all three.
> >
> > Finally, there's a new recipe for the Intel Local Manageability Service
> > (LMS), which allows Intel BSPs to access the Intel Active Management
> > Technology (AMT) firmware via the Intel Management Engine Interface (MEI),
> > which is used by the Chief River BSP.
> 
> For some reason gmail dropped most of this series on me. Just so I'm sure,
> is there a board description as part of this series for the kernel
> tree ? Or is that
> still pending ?
> 

Yeah, still forthcoming - I didn't post it because you're on vacation (I
assume that's still correct).  I think Darren and I wanted to
consolidate the kernel stuff anyway, so it'll come with that...

I also may have some further tweaks as well, so for all those reasons,
don't worry about it quite yet. ;-)

Tom

> Cheers,
> 
> Bruce
> 
> >
> > The following changes since commit a62c485edffed30ea95658760948fd50925adfb0:
> >  Darren Hart (1):
> >        linux-yocto_3.0: Update KMACHINE and KBRANCH to play nice with new kerntools
> >
> > are available in the git repository at:
> >
> >  git://git.yoctoproject.org/meta-intel.git tzanussi/chiefriver.v1
> >  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/chiefriver.v1
> >
> > Tom Zanussi (20):
> >  meta-chiefriver: new layer for Chief River (Ivy Bridge/Panther Point)
> >    systems
> >  meta-intel: add gstreamer-vaapi_git recipe
> >  meta-intel: new libva-1.0.15 recipe
> >  meta-intel: new intel-driver-1.0.15 recipe
> >  ffmpeg: new recipe
> >  ffmpeg: add --enable-vaapi
> >  ffmpeg: add --enable-gpl
> >  yasm: new recipe
> >  ffmpeg: add --enable-yasm
> >  gst-ffmpeg: add bbappend for external ffmpeg
> >  gst-va-intel: add conditional vaapi implementation
> >  va-intel: new package
> >  gst-va-intel: clarify DESCRIPTION
> >  meta-intel: remove video acceleration from emgd XSERVER
> >  meta-chiefriver: use gst-va-intel and va-intel
> >  meta-sugarbay: use gst-va-intel and va-intel
> >  meta-crownbay: use gst-va-intel and va-intel and gst-va-mixvideo
> >  lms: new recipe
> >  meta-chiefriver: use lms
> >  meta-chiefriver: use the mei kernel feature
> >
> >  .../amt/lms/atnetworktool-printf-fix.patch         |   14 +++
> >  common/recipes-bsp/amt/lms_7.1.20.bb               |   42 ++++++++
> >  common/recipes-multimedia/ffmpeg/ffmpeg.inc        |  108 ++++++++++++++++++++
> >  common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb  |   44 ++++++++
> >  .../gstreamer/gst-ffmpeg_0.10.13.bbappend          |    2 +
> >  .../recipes-multimedia/gstreamer/gst-va-intel.bb   |   15 +++-
> >  .../gstreamer/gstreamer-vaapi_git.bb               |   26 +++++
> >  .../libva/libva-intel-driver.inc                   |   24 +++++
> >  .../libva/libva-intel-driver_1.0.15.bb             |    8 ++
> >  common/recipes-multimedia/libva/libva_1.0.15.bb    |    8 ++
> >  common/recipes-multimedia/libva/va-intel.bb        |   20 ++++
> >  common/recipes-support/yasm/yasm_1.1.0.bb          |   17 +++
> >  conf/machine/include/ia32-base.inc                 |    4 -
> >  meta-chiefriver/COPYING.MIT                        |   17 +++
> >  meta-chiefriver/README                             |  107 +++++++++++++++++++
> >  meta-chiefriver/README.sources                     |   17 +++
> >  meta-chiefriver/conf/layer.conf                    |   10 ++
> >  meta-chiefriver/conf/machine/chiefriver.conf       |   19 ++++
> >  .../formfactor/formfactor/chiefriver/machconfig    |    3 +
> >  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
> >  .../tasks/task-core-tools-profile.bbappend         |    2 +
> >  .../xserver-xf86-config/chiefriver/xorg.conf       |   26 +++++
> >  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
> >  .../linux/linux-yocto-rt_3.2.bbappend              |    8 ++
> >  .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |   10 ++
> >  meta-crownbay/conf/machine/crownbay.conf           |    6 +-
> >  meta-sugarbay/conf/machine/sugarbay.conf           |    4 +
> >  27 files changed, 561 insertions(+), 6 deletions(-)
> >  create mode 100644 common/recipes-bsp/amt/lms/atnetworktool-printf-fix.patch
> >  create mode 100644 common/recipes-bsp/amt/lms_7.1.20.bb
> >  create mode 100644 common/recipes-multimedia/ffmpeg/ffmpeg.inc
> >  create mode 100644 common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
> >  create mode 100644 common/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.13.bbappend
> >  create mode 100644 common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb
> >  create mode 100644 common/recipes-multimedia/libva/libva-intel-driver.inc
> >  create mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.15.bb
> >  create mode 100644 common/recipes-multimedia/libva/libva_1.0.15.bb
> >  create mode 100644 common/recipes-multimedia/libva/va-intel.bb
> >  create mode 100644 common/recipes-support/yasm/yasm_1.1.0.bb
> >  create mode 100644 meta-chiefriver/COPYING.MIT
> >  create mode 100644 meta-chiefriver/README
> >  create mode 100644 meta-chiefriver/README.sources
> >  create mode 100644 meta-chiefriver/conf/layer.conf
> >  create mode 100644 meta-chiefriver/conf/machine/chiefriver.conf
> >  create mode 100644 meta-chiefriver/recipes-bsp/formfactor/formfactor/chiefriver/machconfig
> >  create mode 100644 meta-chiefriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
> >  create mode 100644 meta-chiefriver/recipes-core/tasks/task-core-tools-profile.bbappend
> >  create mode 100644 meta-chiefriver/recipes-graphics/xorg-xserver/xserver-xf86-config/chiefriver/xorg.conf
> >  create mode 100644 meta-chiefriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
> >  create mode 100644 meta-chiefriver/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
> >  create mode 100644 meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 



