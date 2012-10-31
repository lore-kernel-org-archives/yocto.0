Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 737DBE0027E
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 09:09:27 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 31 Oct 2012 09:09:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,687,1344236400"; d="scan'208";a="240878624"
Received: from unknown (HELO [10.255.14.154]) ([10.255.14.154])
	by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2012 09:09:26 -0700
Message-ID: <1351699765.1762.23.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <darren.hart@intel.com>
Date: Wed, 31 Oct 2012 11:09:25 -0500
In-Reply-To: <50914C7C.7010603@intel.com>
References: <cover.1351650062.git.nitin.a.kamble@intel.com>
	<1351696672.1762.8.camel@empanada> <50914C7C.7010603@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/4] misc fixes for 1.3 meta-intel release
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
X-List-Received-Date: Wed, 31 Oct 2012 16:09:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-10-31 at 09:06 -0700, Darren Hart wrote:
> On 10/31/2012 08:17 AM, Tom Zanussi wrote:
> > 
> > On Tue, 2012-10-30 at 19:23 -0700, nitin.a.kamble@intel.com wrote:
> >> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> >>
> >> Tested these on all BSPs i maintain with results as expected.
> >> Also this testing Acks the kernel SRCREV bumps done by Tom today.
> >>
> > 
> > I've verified this works fine on crownbay and you've verified on
> > sugarbay and chiefriver, correct?
> > 
> > That just leaves cedartrail before we can pull this in.
> 
> fri2 and sys940x as well right?
> 

Oh, I was just assuming those would be isomorphic with crownbay i.e.
emgd-based.

> Are you still just using gstreamer to play sindel back?
> 

Pretty much, yeah.

Tom

> --
> Darren
> 
> > 
> > Tom
> > 
> >> Thanks,
> >> Nitin
> >>
> >>
> >> The following changes since commit 76d2942087d7563ae42f0bea6d97460ee2561f3e:
> >>
> >>   crystalforest: Update the README Instructions. (2012-10-30 08:47:40 -0500)
> >>
> >> are available in the git repository at:
> >>   git://git.yoctoproject.org/meta-intel-contrib nitin/misc
> >>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc
> >>
> >> Nitin A Kamble (3):
> >>   libva: update to the latest version
> >>   libva-intel-driver: update to the latest version
> >>   mesa-dri.bbappend: avoid conflict with emgd-driver-bin
> >>
> >> Ross Burton (1):
> >>   libva: remove redundant libva 1.0.12
> >>
> >>  .../recipes-graphics/mesa/mesa-dri_8.0.4.bbappend  |   27 +++++++++++++++++---
> >>  .../libva/libva-intel-driver.inc                   |    2 +-
> >>  .../libva/libva-intel-driver_1.0.15.bb             |    8 ------
> >>  .../libva/libva-intel-driver_1.0.17.bb             |    9 ++++++
> >>  common/recipes-multimedia/libva/libva_1.0.12.bb    |    8 ------
> >>  common/recipes-multimedia/libva/libva_1.0.15.bb    |    8 ------
> >>  common/recipes-multimedia/libva/libva_1.0.16.bb    |    8 ++++++
> >>  7 files changed, 41 insertions(+), 29 deletions(-)
> >>  delete mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.15.bb
> >>  create mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.17.bb
> >>  delete mode 100644 common/recipes-multimedia/libva/libva_1.0.12.bb
> >>  delete mode 100644 common/recipes-multimedia/libva/libva_1.0.15.bb
> >>  create mode 100644 common/recipes-multimedia/libva/libva_1.0.16.bb
> >>
> > 
> > 
> 



