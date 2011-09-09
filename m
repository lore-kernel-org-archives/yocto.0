Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B377CE0125A
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2011 06:57:47 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Sep 2011 06:57:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,356,1312182000"; d="scan'208";a="15551900"
Received: from unknown (HELO [10.255.14.214]) ([10.255.14.214])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Sep 2011 06:57:25 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1315574255.1986.0.camel@ted>
References: <cover.1315509303.git.tom.zanussi@intel.com>
	<1315574255.1986.0.camel@ted>
Date: Fri, 09 Sep 2011 08:57:23 -0500
Message-ID: <1315576643.2367.25.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] More fixes for bug 1428
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
X-List-Received-Date: Fri, 09 Sep 2011 13:57:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-09-09 at 06:17 -0700, Richard Purdie wrote:
> On Thu, 2011-09-08 at 14:27 -0500, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > oe-core commit dc3a8274c7e935fa564eea142d2535c9bcf2b272 for YOCTO #1428
> > broke meta-intel x86_64 builds:
> > 
> > NOTE: Resolving any missing task queue dependencies
> > ERROR: Nothing RPROVIDES 'initramfs-live-install' (but /usr/local/src/yocto/sugarbay/meta/recipes-core/images/core-image-minimal-initramfs.bb RDEPENDS on or otherwise requires it)
> > ERROR: initramfs-live-install was skipped: incompatible with host x86_64-poky-linux
> > 
> > This patchset restores the build.
> > 
> > Build and install-tested on sugarbay and crownbay.
> > 
> > More fixes for [YOCTO #1428]
> > 
> > The following changes since commit b86f811663d834064af1e6778c408eb904fad0b9:
> >   Darren Hart (1):
> >         n450: update linux-yocto PREFERRED_VERSION to 3.0%
> > 
> > are available in the git repository at:
> > 
> >   git://git.yoctoproject.org/meta-intel.git tzanussi/1428-fix
> >   http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/1428-fix
> > 
> > Tom Zanussi (2):
> >   meta-intel/common: create a grub2 version initramfs-live-install
> >   meta-intel/common: remove initramfs-live-install 1.0 bbappend
> 
> Is there a disadvantage to moving to grub2 in OE-Core and then bringing
> these pieces into sync?
> 

Yes, it would make sense - the plan was to do that during the 1.2
cycle...

Tom

> Cheers,
> 
> Richard
> 



