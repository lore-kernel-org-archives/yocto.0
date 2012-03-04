Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFA46E00746
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 04:19:35 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S4APV-0008Iz-IN; Sun, 04 Mar 2012 07:19:33 -0500
Date: Sun, 4 Mar 2012 07:19:25 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Denys Dmytriyenko <denis@denix.org>
In-Reply-To: <20120304061843.GN24667@denix.org>
Message-ID: <alpine.DEB.2.02.1203040716190.496@oneiric>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>
	<4F4D457F.7000306@windriver.com>
	<alpine.DEB.2.02.1202281651040.8024@oneiric>
	<D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric>
	<4F514826.5050402@ti.com>
	<alpine.DEB.2.02.1203021729040.31351@oneiric> <4F514EC8.8000606@ti.com>
	<4F515551.50708@mlbassoc.com> <20120304061843.GN24667@denix.org>
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
X-List-Received-Date: Sun, 04 Mar 2012 12:19:36 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 4 Mar 2012, Denys Dmytriyenko wrote:

> On Fri, Mar 02, 2012 at 04:18:41PM -0700, Gary Thomas wrote:
> > On 2012-03-02 15:50, William Mills wrote:
> > >We will update the README when it is merely in need of testing.
> > >Today, we know there is code that does not work with GCC 4.6.
> > >Today, we know there are features in the recipes that do not work w/o Angstrom.
> >
> > Can you elaborate on the above?  I have been [I think] successfully using poky+meta-ti
> > to support internal platform based on DM8148 and DM3730 - meta-ti is the best choice
> > for a kernel "jumping off point" for these platforms.  So far, I've only
> > had to make a scant few tweaks to get this combo to work, in particular:
> >
> > * In conf/local.conf, I use this to avoid parsing problems with some meta-ti
> >   recipes (none of which I need at the moment)
> >     # Ignore troublesome TI recipes
> >     BBMASK = ".*/meta-ti/recipes-misc/"
> >
> > * In distro.conf (I do have my own distro, but it's very close to poky), I needed
> >     # Allow hardware overrides, e.g. armv7a
> >     OVERRIDES .= ":${SOC_FAMILY}"
> >
> > With these minor additions, I've been able to use the meta-ti layer for [some]
> > kernel work, u-boot, DSP support, etc - all the stuff one expects the layer
> > to provide.
> >
> > I know my setup is a bit outside pure poky+meta-ti, but it does show that
> > you don't actually have to have Angstrom to use meta-ti.
> >
> > It would be nice to understand what your concerns are, certainly the details
> > of your two "Today,..." statements above, if they fall outside what I've outlined
> > here.
>
> Gary,
>
> Clearly, the README is meant for the new people, who might find it
> too complicated for the above fixes to be applied in order for them
> to avoid using Angstrom. But you are correct, besides known isues
> with gcc-4.6 not working for some components and hence requiring
> meta-oe; SOC_FAMILY and systemd dependency in recipes-misc/images
> were the only other two things requiring meta-angstrom layer.
>
> You can try the updated meta-ti now, as it should solve those
> dependencies, thanks to Koen's latest patches. Please let us know
> how it works for you. Thanks.

  not sure if you're suggesting i should now be able to build for,
say, beagleboard with the meta-ti layer, but i cloned meta-ti into my
yocto tree, added that layer to bblayers.conf, and tried to

$ bitbake core-image-minimal

and got what i believe gary was referring to above:

$ bitbake core-image-minimal
Pseudo is not present but is required, building this first before the main build
ERROR: ParseError at /home/rpjday/yocto/git/meta-ti/recipes-misc/payload/bonescript.bb:5:
Could not inherit file classes/systemd.bbclass
ERROR: Command execution failed: Exited with 1

  or am i misreading what you wrote?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

