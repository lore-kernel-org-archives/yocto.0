Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E59EE00747
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 03:28:18 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 22 Aug 2013 03:28:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,933,1367996400"; d="scan'208";a="285286763"
Received: from timevans-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.122.241])
	by AZSMGA002.ch.intel.com with ESMTP; 22 Aug 2013 03:28:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Thu, 22 Aug 2013 11:28:15 +0100
Message-ID: <2042870.WHnUqHPfUc@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <587F23315DEC485E8C9E59B4F24916CC@PAULD>
References: <587F23315DEC485E8C9E59B4F24916CC@PAULD>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: bbappend on top of bbappend
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
X-List-Received-Date: Thu, 22 Aug 2013 10:28:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Paul,

On Friday 16 August 2013 16:22:00 Paul D. DeRocco wrote:
> In meta-oe/recipes-graphics/xinput-calibrator (Danny branch, currently
> used by Gumstix), there's a recipe called xinput-calibrator-git.bb, which
> installs a script for running a touchscreen calibration app if not already
> calibrated.
> 
> In
> meta-openembedded/meta-systemd/meta-oe/recipes-graphics/xinput-calibrator,
> there's a bbappend for this recipe, which declares a local file called
> xinput-calibrator.service, which is supposed to run the above script on
> startup. It inherits the systemd bbclass, which I assume knows how to
> install this service file automagically, since there's no explicit
> do_install copying the file anywhere.

The systemd.bbclass we now have in OE-Core (as of dylan) does not handle this 
automatically. The old one in meta-systemd does appear to though.

> The trouble is, on my Gumstix, the service fails because it needs a
> DISPLAY environment variable to tell it what display to calibrate. I
> figured the simplest thing to do would be to add an Environment=DISPLAY=:0
> line to the service unit file.

FWIW, when xinput-calibrator was moved over to OE-Core it was determined that 
this shouldn't even be started as a service by systemd, but instead launched 
using Xsession.d. You may have better results if you bring in the recipe from 
OE-Core master and use that instead.

> My shameless hack was to add a ROOTFS_POSTPROCESS_COMMAND that runs sed on
> the final copy of this service file in the rootfs, to insert the
> Environment= line, and that works. But I'd rather just provide my own
> version of the file, and use another .bbappend to prepend its file
> location to FILESEXTRAPATHS, overriding the one in the systemd .bbappend
> file.
> 
> So I tried that, just putting the following two lines into my own
> .bbappend:
> 
>     FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>     PRINC := "${@int(PRINC) + 1}"
> 
> and of course putting the tweaked service file into my files subdirectory.
> On starting the build, it almost immediately spat this out:
> 
> NOTE:
> ['/home/pauld/yocto/meta-foo/recipes/xinput-calibrator_git.bbappend',
> '/home/pauld/yocto/poky/meta-openembedded/meta-systemd/meta-oe/recipes-gra
> phics/xinput-calibrator/xinput-calibrator_git.bbappend'] to
> ['/home/pauld/yocto/poky/meta-openembedded/meta-systemd/meta-oe/recipes-gr
> aphics/xinput-calibrator/xinput-calibrator_git.bbappend']
> 
> (That was all on one line, of course.)

BitBake will report new appends this way so this is expected. It is ugly 
though.

> The do_rootfs failed, and its log says that xinput-calibrator is an
> unknown package, and that it can't satisfy the dependency from
> packagegroup-core-x11-base.

I don't know why this would happen. It's unlikely to be related to changes 
you've made that are discussed here. Does the package appear under 
tmp/deploy/(ipk|rpm|deb)/ ?

> I read somewhere that stacked bbappends are handled in the order of layer
> priority. Mine is 5, the meta-systemd layer is 7. I don't know which is
> "higher", or if one wants a higher or lower priority in order to be the
> last one to prepend to the path. 

They will be applied in ascending order, so anything in the bbappend from a 
layer with a higher layer priority number takes precedence. FYI you can see 
the appends in effect in your configuration using:

bitbake-layers show-appends

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

