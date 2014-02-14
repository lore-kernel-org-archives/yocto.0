Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6978AE007DD;
	Fri, 14 Feb 2014 13:28:05 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Feb 2014 13:23:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,847,1384329600"; d="scan'208";a="483683407"
Received: from nakamble-mobl3.amr.corp.intel.com (HELO [10.3.52.96])
	([10.3.52.96])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2014 13:27:31 -0800
Message-ID: <52FE8A3E.9050001@intel.com>
Date: Fri, 14 Feb 2014 13:27:26 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>, Koen Kooi <koen@dominion.thruhere.net>
References: <1392402286-32663-1-git-send-email-koen@dominion.thruhere.net>
	<CAMKF1sr5NsOFkP0xE05-0JqzGqn7b1ZjE1Vh1zx-sDqX6ZNj5A@mail.gmail.com>
In-Reply-To: <CAMKF1sr5NsOFkP0xE05-0JqzGqn7b1ZjE1Vh1zx-sDqX6ZNj5A@mail.gmail.com>
Cc: yocto@lists.yoctoproject.org, meta-intel@lists.yoctoproject.org
Subject: Re: [meta-intel][common][dora][PATCHv2] emgd-driver-bin: limit build to x86
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 14 Feb 2014 21:28:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


On 2/14/2014 1:13 PM, Khem Raj wrote:
>
> -Khem
> On Feb 14, 2014 10:25 AM, "Koen Kooi" <koen@dominion.thruhere.net 
> <mailto:koen@dominion.thruhere.net>> wrote:
> >
> > When building GL apps for non-x86 machines (e.g. raspberrypi) 
> emgd-driver-bin is being
> > dragged in as a valid provider. To avoid build breakage fix it at the
> > source by limiting emgd-driver-bin to x86 architectures.
> >
> > Signed-off-by: Koen Kooi <koen@dominion.thruhere.net 
> <mailto:koen@dominion.thruhere.net>>
> > ---
> >  common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb 
> <http://emgd-driver-bin_1.16.bb> | 2 ++
> >  common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb 
> <http://emgd-driver-bin_1.18.bb> | 2 ++
> >  2 files changed, 4 insertions(+)
> >
> > diff --git 
> a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb 
> <http://emgd-driver-bin_1.16.bb> 
> b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb 
> <http://emgd-driver-bin_1.16.bb>
> > index c8ca726..8cb088e 100644
> > --- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb 
> <http://emgd-driver-bin_1.16.bb>
> > +++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb 
> <http://emgd-driver-bin_1.16.bb>
> > @@ -9,6 +9,8 @@ LICENSE = "Intel-software-license-emgd-1.16 & 
> Intel-user-space-graphics-driver-b
> >  LICENSE_FLAGS = "license_${PN}_${PV}"
> >  PR = "r0"
> >
> > +COMPATIBLE_HOST = "(i.86).*-linux"
>
> is it not valid for x86_64 ?
>
No, it's not. The EMGD binary files are 32bit files, and BSPs using it 
are all 32bit.

Nitin

> > +
> >  EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
> >  EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
> >  EMGD_VIDEO_PLUGIN_DIR = "../common/video_plugin"
> > diff --git 
> a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb 
> <http://emgd-driver-bin_1.18.bb> 
> b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb 
> <http://emgd-driver-bin_1.18.bb>
> > index b3bf0d2..cf6d855 100644
> > --- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb 
> <http://emgd-driver-bin_1.18.bb>
> > +++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb 
> <http://emgd-driver-bin_1.18.bb>
> > @@ -9,6 +9,8 @@ LICENSE = "Intel-software-license-emgd-1.18 & 
> Intel-user-space-graphics-driver-b
> >  LICENSE_FLAGS = "license_${PN}_${PV}"
> >  PR = "r1"
> >
> > +COMPATIBLE_HOST = "(i.86).*-linux"
> > +
> >  EMGD_LIC_DIR = "IEMGD_HEAD_Linux/License"
> >  EMGD_RPM_DIR = "IEMGD_HEAD_Linux/MeeGo1.2"
> >  EMGD_VIDEO_PLUGIN_DIR = "../common/video_plugin"
> > --
> > 1.8.3.4
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


