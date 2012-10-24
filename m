Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75747E00346
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 12:26:34 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Oct 2012 12:26:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,642,1344236400"; d="scan'208";a="208667147"
Received: from unknown (HELO [10.255.14.152]) ([10.255.14.152])
	by azsmga001.ch.intel.com with ESMTP; 24 Oct 2012 12:26:16 -0700
Message-ID: <1351106775.27553.36.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Sean Liming <sean.liming@annabooks.com>
Date: Wed, 24 Oct 2012 14:26:15 -0500
In-Reply-To: <001501cdb213$93910550$bab30ff0$@annabooks.com>
References: <cover.1351023743.git.nitin.a.kamble@intel.com>
	<eafcdbdb3843e08adc7385d0f1cec2b316d1b691.1351023743.git.nitin.a.kamble@intel.com>
	<1351026976.12186.70.camel@empanada>
	<ADD6A3980E8C39419A432FF422031B4C2D90DEAA@ORSMSX106.amr.corp.intel.com>
	<1351096988.27553.19.camel@empanada>
	<001501cdb213$93910550$bab30ff0$@annabooks.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/6] crownbay README: add WebTitle & Compliance information
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
X-List-Received-Date: Wed, 24 Oct 2012 19:26:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2012-10-24 at 11:15 -0700, Sean Liming wrote:
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Tom Zanussi
> > Sent: Wednesday, October 24, 2012 9:43 AM
> > To: Kamble, Nitin A
> > Cc: yocto@yoctoproject.org; Hart, Darren
> > Subject: Re: [yocto] [PATCH 3/6] crownbay README: add WebTitle &
> > Compliance information
> > 
> > On Wed, 2012-10-24 at 11:06 -0500, Kamble, Nitin A wrote:
> > >
> > > > -----Original Message-----
> > > > From: Zanussi, Tom
> > > > Sent: Tuesday, October 23, 2012 2:16 PM
> > > > To: Kamble, Nitin A
> > > > Cc: yocto@yoctoproject.org; Hart, Darren
> > > > Subject: Re: [PATCH 3/6] crownbay README: add WebTitle & Compliance
> > > > information
> > > >
> > > > On Tue, 2012-10-23 at 13:24 -0700, nitin.a.kamble@intel.com wrote:
> > > > > From: Nitin A Kamble <nitin.a.kamble@intel.com>
> > > > >
> > > > > The WebTitle will be used to publish the BSP on the Yocto Project
> > Website.
> > > > > And adding the Yocto Project Compliance information for the 1.3
> > release.
> > > > > Also specifying all the layers used from meta-intel repository.
> > > > >
> > > > > Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> > > > > ---
> > > > >  meta-crownbay/README |   13 +++++++++++--
> > > > >  1 files changed, 11 insertions(+), 2 deletions(-)
> > > > >
> > > > > diff --git a/meta-crownbay/README b/meta-crownbay/README index
> > > > > 4bc9f31..3996a94 100644
> > > > > --- a/meta-crownbay/README
> > > > > +++ b/meta-crownbay/README
> > > > > @@ -2,13 +2,22 @@ This README file contains information on
> > > > > building the meta-crownbay  BSP layer, and booting the images
> > > > > contained in the
> > > > /binary directory.
> > > > >  Please see the corresponding sections below for details.
> > > > >
> > > > > -The Crown Bay platform consists of the Intel Atom Z6xx processor,
> > > > > +The Crown Bay platform consists of the Intel Atom E6xx processor,
> > > > >  plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).
> > > > >
> > > > >  It also supports the E6xx embedded on-chip graphics via the Intel
> > > > > Embedded Media and Graphics Driver (EMGD) 1.14 Driver.
> > > > >
> > > > >
> > > > > +WebTitle: Intel Atom E6xx processor with Intel EG20T Controller
> > > > > +Hub development kit (crownbay)
> > > > > +
> > > >
> > > > I'm not sure this kind of thing should be in the README since we can
> > > > have multiple downloadable BSPs per layer e.g. crownbay vs
> > > > crownbay-noemgd.  I suppose in keeping with the build system you
> > > > could have separate WebTitle_crownbay and WebTitle_crownbay-
> > noemgd
> > > > lines. ;-) (and it would be nice if you could get rid of the
> > > > CamelCaps too)
> > > >
> > > > Why not put this info in the machine.conf, where we already have
> > > > fields meant to be machine parseable e.g.
> > > >
> > > > #@TYPE: Machine
> > > > #@NAME: crownbay
> > > >
> > > > #@WEBTITLE: ...
> > > >
> > > > Or maybe just use the exisiting #@DESCRIPTION for that...
> > >
> > > For example in the current way the BSPs are published, this is shown
> > > on the YP website for crownbay
> > >
> > > Intel Atom Processor E660 with Intel Platform Controller Hub EG20T
> > > Development Kit
> > > Version: 7.0 "Denzil"
> > > Release date: 29 Jun 2012
> > > Type: BSP
> > > Download Links:
> > > Crown Bay
> > > Crown Bay no EMGD
> > > Release Notes
> > >
> > > So there is one BSP list item per h/w with multiple links to different BSP
> > tarballs for the same hardware.
> > > If we move the WebTitle in machine file, then we will have multiple items
> > in the BSP list for the same hardware.
> > > I am not sure which is better from the downloader's point of view. But this
> > is worth considering for this change.
> > >
> > 
> > Yeah, on the one hand if we have text that's the same for all BSPs in the
> > layer, it could go in the README for lack of a better common place.
> > 
> > But we should consider whether we want to lay things out as the crownbay
> > above, or more like the cedartrail, which has:
> > 
> > Intel® Atom™ Processor N2000 and D2000 Series-based Platform (CEDAR
> > TRAIL) with PowerVR Graphics
> > 
> > (there's no corresponding -nopvr version available, though I suspect that's an
> > oversight and would have been something like:
> > 
> > Intel® Atom™ Processor N2000 and D2000 Series-based Platform (CEDAR
> > TRAIL) with VESA Graphics
> > 
> > I'm not sure the field(s) need to map exactly to the page layout, but all the
> > information should be there to allow the page to be generated or laid out by
> > hand without having to ask questions, in either case.  Did you have any idea
> > as to how for example to distinguish between the emgd and -noemgd
> > versions (side note: there's nothing in the current entry that tells the user
> > what EMGD even is - should it at least be spelled out in the title, or do we
> > need a separate subtext element to describe
> > that?)
> > 
> > Tom
> > 
> 
> I am working with CEDAR trail and Crown Bay-like (SYS940X-ECX) systems. For Crown Bay, it is a little confusing to know which tar ball to download. It would be clearer to have one BSP with an option switch to enable the video. 
> 

There is currently in the works a new web page that lists the available
BSPs in a table and which platforms they map to, along with their
differences.  That should be available soon and I'm sure will be
announced here when it's ready.

As for multiple BSPs, we put out there the most common configurations a
user trying out the hardware is likely to want, which we guessed would
be those two.  Ideally, as you hint at, we'd have a web page that would
allow you to 'custom order' a BSP to download and try out e.g. graphics
choice, input device choices, image type (minimal, sato, sato-sdk, etc),
but for now that's what we do.  Part of it is historical too - users
used to have to click on a EULA on the website to download the EMGD
version and we didn't want to force users to have to do that for a VESA
version too, which you'd have to do if you bundled them together.  Since
that's no longer the case, we could create a single image that could
switch between them, but so far it hasn't really been mentioned until
now.  Maybe something for a new feature in 1.4 or later?

> Also, it would help to know how the EMGD has been configure in the BSP and for what output ports. Having worked with EMGD there are many options. For the SYS940X-ECX, the video driver (VGA-output) doesn't load so X doesn't start. It would be nice to use EMGD to configure this myself and then add the driver, but if this can already be down in the configuration file, it is not clear how to do this.
> 

Yeah, this sounds like good information to be included in the README.
There originally was a link to the EMGD documentation in the README - at
a minimum it should probably be restored, but I agree, it doesn't hurt
to list out the details of configuration that the user's likely to
stumble upon.

Tom

Tom

> Regards,
> 
> Sean Liming
> Owner
> Annabooks
> Tel: 714-970-7523 / Cell: 858-774-3176
> 
> 
> 
> > > >
> > > > > +
> > > > > +Compliance:
> > > > > +============
> > > >
> > > > For consistency with the rest of the README, please remove the colon
> > > > and clean up the underlining.
> > >
> > > Will do.
> > >
> > > Thanks,
> > > Nitin
> > > >
> > > > Thanks,
> > > >
> > > > Tom
> > > >
> > > > > +This BSP is compliant with Yocto Project as per requirements listed
> > here:
> > > > > +http://www.yoctoproject.org/yocto-project-compatible-registration
> > > > > +
> > > > > +
> > > > >  Dependencies
> > > > >  ============
> > > > >
> > > > > @@ -22,7 +31,7 @@ This layer depends on:
> > > > >    branch: master
> > > > >
> > > > >    URI: git://git.yoctoproject.org/meta-intel
> > > > > -  layers: intel
> > > > > +  layers: meta-intel, meta-crownbay
> > > > >    branch: master
> > > > >
> > > > >
> > > >
> > >
> > 
> > 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



