Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 564AAE0044C
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 11:44:10 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S4HLk-00035w-DX; Sun, 04 Mar 2012 14:44:08 -0500
Date: Sun, 4 Mar 2012 14:43:57 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Denys Dmytriyenko <denis@denix.org>
In-Reply-To: <20120304192728.GO24667@denix.org>
Message-ID: <alpine.DEB.2.02.1203041438560.18440@oneiric>
References: <D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric>
	<4F514826.5050402@ti.com>
	<alpine.DEB.2.02.1203021729040.31351@oneiric>
	<4F514EC8.8000606@ti.com> <4F515551.50708@mlbassoc.com>
	<20120304061843.GN24667@denix.org>
	<alpine.DEB.2.02.1203040716190.496@oneiric>
	<4F5361B6.8040908@mlbassoc.com>
	<alpine.DEB.2.02.1203041310220.20388@oneiric>
	<20120304192728.GO24667@denix.org>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: proper recipe for building for beagle xM? meta-ti?
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
X-List-Received-Date: Sun, 04 Mar 2012 19:44:10 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 4 Mar 2012, Denys Dmytriyenko wrote:

> On Sun, Mar 04, 2012 at 01:14:17PM -0500, Robert P. J. Day wrote:
> > On Sun, 4 Mar 2012, Gary Thomas wrote:
> >
> > > On 2012-03-04 05:19, Robert P. J. Day wrote:
> > > >
> > > >    not sure if you're suggesting i should now be able to build
> > > > for, say, beagleboard with the meta-ti layer, but i cloned meta-ti
> > > > into my yocto tree, added that layer to bblayers.conf, and tried
> > > > to
> > > >
> > > > $ bitbake core-image-minimal
> > > >
> > > > and got what i believe gary was referring to above:
> > > >
> > > > $ bitbake core-image-minimal
> > > > Pseudo is not present but is required, building this first before the main
> > > > build
> > > > ERROR: ParseError at
> > > > /home/rpjday/yocto/git/meta-ti/recipes-misc/payload/bonescript.bb:5:
> > > > Could not inherit file classes/systemd.bbclass
> > > > ERROR: Command execution failed: Exited with 1
> > > >
> > > >    or am i misreading what you wrote?
> > >
> > > Oops, that's one more workaround I forgot to mention.  This file
> > > is in OE-core, but not in poky.  I made a local copy in my distro
> > > layer, but there must be a better way to handle it.
> >
> >   um ... AFAICT, that .bbclass file is in meta-oe, not oe-core.  and
> > since i have meta-openembedded checked out, i simply copied the whole
> > thing into my yocto tree, then tweaked my bblayers.conf file to look
> > like:
> >
> > BBLAYERS ?= " \
> >   /home/rpjday/yocto/git/meta \
> >   /home/rpjday/yocto/git/meta-yocto \
> >   /home/rpjday/yocto/git/meta-ti \
> >   /home/rpjday/yocto/git/meta-openembedded/meta-oe \
> >   "
>
> Either way, meta-oe is still required for meta-ti due to toolchain issues...

  i *know* what i'm about to point out is an OE issue and i already
quietly emailed koen, but when i tried the above (actually reordered
my BBLAYERS entries first), i got a udev fetch error since it was
trying to fetch udev-173, and there is simply no such version at the
specified fetch location, so i added:

PREFERRED_VERSION_udev ?= "181"

to my local.conf and it's building (currently 2222 of 2429).  so
someone in the OE community is welcome to address the issue that there
is no udev-173 tarball here:

http://kernel.org/pub/linux/utils/kernel/hotplug/

  my bitbake should either finish or fail within 15 minutes.

rday

