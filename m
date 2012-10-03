Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CDB8E00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 07:07:56 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 03 Oct 2012 07:07:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,528,1344236400"; d="scan'208";a="230020627"
Received: from unknown (HELO helios.localnet) ([10.252.122.52])
	by fmsmga002.fm.intel.com with ESMTP; 03 Oct 2012 07:07:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Wed, 03 Oct 2012 15:07:27 +0100
Message-ID: <1889683.vhv9f2oRm3@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <CAMKF1sr_-YjqDeaSY-T68tiFQbCKQeGG9Yu99MFcDKf1pZx-HA@mail.gmail.com>
References: <CAMAb8ZO1-psKwMhPNrVXroo-jEO37WpigX7xC0VYavTioo6PEg@mail.gmail.com>
	<1349249984.1469.2.camel@juli-workstation.net.jusst.de>
	<CAMKF1sr_-YjqDeaSY-T68tiFQbCKQeGG9Yu99MFcDKf1pZx-HA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Can't fetch git SRC_URI via HTTP
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
X-List-Received-Date: Wed, 03 Oct 2012 14:07:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 03 October 2012 07:04:06 Khem Raj wrote:
> On Wed, Oct 3, 2012 at 12:39 AM, Julian Scheel <julian@jusst.de> wrote:
> > Am Dienstag, den 02.10.2012, 23:52 +0200 schrieb Martin Jansa:
> >> On Tue, Oct 02, 2012 at 11:38:08PM +0200, Julian Scheel wrote:
> >> > Am 02.10.2012 um 23:22 schrieb Martin Jansa <martin.jansa@gmail.com>:
> >> > > On Tue, Oct 02, 2012 at 05:17:23PM -0400, Evade Flow wrote:
> >> > >> I'm trying to build core-image-sato for my Pandaboard ES, following
> >> > >> the
> >> > >> 
> >> > >> instructions posted here:
> >> > >>  - http://maniacbug.wordpress.com/2012/08/03/pandayocto/
> >> > >> 
> >> > >> Thus, my OE build configuration looks like this:
> >> > >>> OE Build Configuration:
> >> > >>> BB_VERSION        = "1.15.2"
> >> > >>> TARGET_ARCH       = "arm"
> >> > >>> TARGET_OS         = "linux-gnueabi"
> >> > >>> MACHINE           = "pandaboard"
> >> > >>> DISTRO            = "poky"
> >> > >>> DISTRO_VERSION    = "1.2.1"
> >> > >>> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
> >> > >>> TARGET_FPU        = "vfp-neon"
> >> > >>> meta
> >> > >>> meta-yocto        =
> >> > >>> "denzil:65ffa7395055f7e012cb973f63f92380828eed0d"
> >> > >>> meta-ti           =
> >> > >>> "(nobranch):30fb40ebc13614a74c2e237927c60ac43e01d1bc"
> >> > >> 
> >> > >> I have these lines in my .gitconfig:
> >> > >>> [http]
> >> > >>> 
> >> > >>>    proxy=http://user:passwd@usaprox.lightning.com:8080
> >> > >> 
> >> > >> so I'd expect URLs like this one (from the meta-ti layer's
> >> > >> 
> >> > >> linux-omap4_3.1.0.bb recipe) to work fine:
> >> > >>> SRC_URI =
> >> > >>> "http://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;pro
> >> > >>> tocol=git;branch=ti-ubuntu-3.1-1282 \>> > > 
> >> > > This url seems wrong, it should start with git:// if you want to
> >> > > clone
> >> > > git repo.
> >> > > 
> >> > > Because it starts with http:// normal fetch (like wget) was used so
> >> > > it
> >> > > downloaded probably some http code (see that kernel-ubuntu.git file)
> >> > > instead of any relevant source.
> >> > 
> >> > I ran into the same issue a few days ago. It seems yocto only supports
> >> > git fetch through servers providing the repositories through the git
> >> > protocol. A way to use git repositories which are provided through
> >> > http or https would be quite a good thing to have.
> >> 
> >> That's what protocol param does;
> >> 
> >> Change that to
> >> git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=htt
> >> p;branch=ti-ubuntu-3.1-1282 and you'll get git fetch over http protocol.
> > 
> > Nice to know. Actually when I had this issue I tried it the other way
> > round. Use a http url and set protocol to git...
> > Is this noted somewhere in the documentation? I could not find it. I
> > think it would be worth mentioning it in the yocto reference manual as
> > this seems to be a quite common thing to struggle with.
> 
> I think Paul posted a patch where bitbake will spit out a good error
> message about such usage

Indeed, in fact coincidentally I was just trying to find this thread in my 
cluttered inbox in order to reply to it mentioning that :)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

