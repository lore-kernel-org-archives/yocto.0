Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4203E004CF
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2011 11:05:14 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8RIBRPP032456; Tue, 27 Sep 2011 19:11:28 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Y0Pgb9yJumJt; Tue, 27 Sep 2011 19:11:27 +0100 (BST)
Received: from [192.168.1.40] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8RIBMdf032435
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 27 Sep 2011 19:11:23 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <darren.hart@intel.com>
Date: Tue, 27 Sep 2011 19:04:57 +0100
In-Reply-To: <4E81F113.1050706@intel.com>
References: <4E7A573D.8040207@linux.intel.com> <4E81F113.1050706@intel.com>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1317146705.26109.215.camel@ted>
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: MACHINE_EXTRA_* and MACHINE_ESSENTIAL_* documentation
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
X-List-Received-Date: Tue, 27 Sep 2011 18:05:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-09-27 at 08:51 -0700, Darren Hart wrote:
> On 09/21/2011 02:29 PM, Darren Hart wrote:
> > This is something I've run into frequently and have been putting off
> > trying to resolve. Hopefully the following will help illustrate the path
> > a BSP developer might go down trying to use the MACHINE_ESSENTIAL* and
> > MACHINE_EXTRA* variables. If someone with more knowledge on the subject
> > could fill in the gaps noted below, I'll be happy to test and work with
> > Scott to improve the documentation.
> > 
> > I am unable to discern from the following text in the reference manual,
> > which variable I should be using to include a firmware package in the
> > images for a given BSP.
> > 
> > From
> > http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-ref-manual.html:
> > 
> > "
> > MACHINE_ESSENTIAL_RDEPENDS
> > 
> >     List of packages required to boot device
> > MACHINE_ESSENTIAL_RRECOMMENDS
> > 
> >     List of packages required to boot device (usually additional kernel
> > modules)
> 
> As Saul points out, these should be:
> 
> MACHINE_ESSENTIAL_EXTRA_*
> 
> 
> > MACHINE_EXTRA_RDEPENDS
> > 
> >     List of packages required to use device
> > MACHINE_EXTRA_RRECOMMNEDS  (<-- typo still present)
> > 
> >     List of packages useful to use device (for example additional kernel
> > modules)
> > "
> > 
> > From the above, I don't learn anything about what the impact of using
> > each of these variables is. Which ones add the packages to the rootfs,
> > which only build them, do they impact the initrd (one might assume a
> > package required for boot should be in the initrd). The difference
> > between RDEPENDS and RRECOMMENDS is unclear. Three of the four use the
> > term "required" while the other uses "useful" in the description.
> > Neither semantic split (RDEPENDS vs. RRECOMMENDS, ESSENTIAL vs. EXTRA)
> > can be understood from the available descriptions.
> > 
> > The firmware I want to add is needed for wireless functionality. This is
> > likely not required for boot, so I added it to MACHINE_EXTRA_RRECOMMENDS
> > as it is only needed if the wireless driver is used. This resulted in
> > the package being built, but not installed. In practice this would mean
> > that people building the BSP would need to manually add the firmware
> > package to IMAGE_INSTALL or install it manually later. This strikes me
> > as unnecessarily complex.
> > 
> > This was also unexpected given the definition of RRECOMMENDS in the
> > manual, which would have led me to believe the package should have been
> > installed:
> > 
> > "
> > RRECOMMENDS
> > 
> >     List of packages which extend usability of the package. Those
> > packages will be automatically installed but can be removed by user.
> > "
> 
> 
> Paul E. explained that RRECOMMENDS differs from RDEPENDS in that if a
> RRECOMMENDS package is not available (because the providing recipe
> doesn't build it - like a custom linux kernel not building a particular
> module) the image build will continue and not error out.

Right. Its really there so people can flag modules to include (if
they're built as modules) so that is that difference.

Let me explain what should happen:

ESSENTIAL are ones which are required to get the system to boot and be
of any use. These would be flash/mtd drivers, screen drivers,
keyboard/mouse/touchscreen. 

The EXTRA things are things that are nice to have but are not needed to
boot. Wifi drivers would be an example if we known a given machine
contains some kind of wifi card, the driver would need to be present to
make the system 100% functional.

There is a line in task-base.bb which hints at this:

#
# those ones can be set in machine config to supply packages needed to get machine booting
#
MACHINE_ESSENTIAL_EXTRA_RDEPENDS ?= ""
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS ?= ""


> > I wasn't able to find a general meaning for the term "EXTRA" by
> > searching through the manual.
> > 
> > I then tried the remaining 3 variables, doing the following after
> > setting each:
> > 
> > $ bitbake -c cleanall task-machine-base task-core-boot
> > linux-firmware-core-image-sato
> > $ bitbake -u depexp -g core-image-sato
> > $ bitbake core-image-sato
> > 
> > I then determined if the linux-firmware package appeared in the list
> > presented by the depexp UI and whether or not the linux-firmware package
> > was built and installed. The results follow:
> > 
> > MACHINE_EXTRA_RDEPENDS = "linux-firmware-iwlwifi-6000g2a-5"
> > # appears in depexp with no rdepends, builds, does not install
> > 
> > #MACHINE_EXTRA_RECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5"
> > # does not appear in depexp, does not build
> > 
> > #MACHINE_ESSENTIAL_RDEPENDS = "linux-firmware-iwlwifi-6000g2a-5"
> > # does not appear in depexp, does not build
> 
> 
> If I use the appropriate MACHINE_ESSENTIAL_EXTRA_RDEPENDS here, the
> package is built, but it is not included in the final image.

We have two different types of image, minimal/basic and the others. The
former is derived from task-core-boot, the others derive from task-base.
The former is a minimal setup of things just needed to boot, task-base
has more dependencies but is more suited to real world use.

> > I've tried searching the sources for these variables, and quickly lose
> > their scent. Here is what I did find:
> > 
> > task-base.bb:
> > #
> > # packages added by machine config
> > #
> > RDEPENDS_task-machine-base = "${MACHINE_EXTRA_RDEPENDS}"
> > RRECOMMENDS_task-machine-base = "${MACHINE_EXTRA_RRECOMMENDS}"
> > 
> > task-core-boot.bb:
> > RDEPENDS_task-core-boot = "\
> >     ...
> >     ${MACHINE_ESSENTIAL_EXTRA_RDEPENDS}"
> > 
> > RRECOMMENDS_task-core-boot = "\
> >     ${MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS}"
> > 
> > 
> > How these should impact the final image is not clear to me.

So if you change MACHINE_EXTRA* you need to rebuild task-base, if you
change MACHINE_ESSENTIAL_EXTRA* you need to rebuild task-core-boot.
Confusing and the checksum code we'll enable soon should make this
automatic.

The task-core-boot is included into task-base by task-distro-base
through DISTRO_EXTRA_RDEPENDS which in meta-yocto is set to
task-core-boot. Both sets of variables should therefore appear in most
images except minimal and basic which should only get the essential
ones.

I hope that at least clarifies what should happen...

Cheers,

Richard


