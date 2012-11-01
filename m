Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 179D5E006C1
	for <yocto@yoctoproject.org>; Thu,  1 Nov 2012 06:33:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Nov 2012 06:33:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,693,1344236400"; d="scan'208";a="242931273"
Received: from unknown (HELO [10.255.14.38]) ([10.255.14.38])
	by fmsmga002.fm.intel.com with ESMTP; 01 Nov 2012 06:33:12 -0700
Message-ID: <1351776792.30635.3.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <darren.hart@intel.com>
Date: Thu, 01 Nov 2012 08:33:12 -0500
In-Reply-To: <50920806.2090401@intel.com>
References: <cover.1351746741.git.nitin.a.kamble@intel.com>
	<50920806.2090401@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [Patch v2 0/4] Misc Fixes for meta-intel 1.3 release
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
X-List-Received-Date: Thu, 01 Nov 2012 13:33:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-10-31 at 22:26 -0700, Darren Hart wrote:
> On 10/31/2012 10:14 PM, nitin.a.kamble@intel.com wrote:
> > From: Nitin A Kamble <nitin.a.kamble@intel.com>
> > 
> > This v2 pull request is with newer version of libva-intel-driver.
> > These commits tested on All the BSPs I am maintaining with expected results.
> > 
> 
> Nitin, do these patches fix any specific bug? Such as 3348? You mention
> a couple, but not clearly that these patches fix them. If so, please
> include:
> 
> Fixes [YOCTO #XXXX]
> 
> in the commit log for the associated patch(es).
> 

To save time, I'll go ahead and add that to those 2 patches when I pull
it in...

Tom

> Otherwise this looks to be what we have discussed.
> 
> Thanks,
> 
> Darren
> 
> > Thanks,
> > Nitin
> > 
> > The following changes since commit 43b2e9c34363ade4241a60f699b47179929c6fb6:
> > 
> >   n450: Add WEBTITLE and boilerplate README (2012-10-31 08:40:15 -0700)
> > 
> > are available in the git repository at:
> >   git://git.yoctoproject.org/meta-intel-contrib nitin/misc
> >   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc
> > 
> > Nitin A Kamble (3):
> >   libva: update to the latest version
> >   libva-intel-driver: update to the latest version
> >   mesa-dri.bbappend: avoid conflict with emgd-driver-bin
> > 
> > Ross Burton (1):
> >   libva: remove redundant libva 1.0.12
> > 
> >  .../recipes-graphics/mesa/mesa-dri_8.0.4.bbappend  |   27 +++++++++++++++++---
> >  .../libva/libva-intel-driver.inc                   |    2 +-
> >  .../libva/libva-intel-driver_1.0.15.bb             |    8 ------
> >  .../libva/libva-intel-driver_1.0.18.bb             |    8 ++++++
> >  common/recipes-multimedia/libva/libva_1.0.12.bb    |    8 ------
> >  common/recipes-multimedia/libva/libva_1.0.15.bb    |    8 ------
> >  common/recipes-multimedia/libva/libva_1.0.16.bb    |    8 ++++++
> >  7 files changed, 40 insertions(+), 29 deletions(-)
> >  delete mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.15.bb
> >  create mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.18.bb
> >  delete mode 100644 common/recipes-multimedia/libva/libva_1.0.12.bb
> >  delete mode 100644 common/recipes-multimedia/libva/libva_1.0.15.bb
> >  create mode 100644 common/recipes-multimedia/libva/libva_1.0.16.bb
> > 
> 



