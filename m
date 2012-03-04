Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47B23E00746
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 04:54:46 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S4AxY-0001Fq-RA; Sun, 04 Mar 2012 07:54:44 -0500
Date: Sun, 4 Mar 2012 07:54:36 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4F5361B6.8040908@mlbassoc.com>
Message-ID: <alpine.DEB.2.02.1203040750180.1918@oneiric>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>
	<4F4D457F.7000306@windriver.com>
	<alpine.DEB.2.02.1202281651040.8024@oneiric>
	<D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric>
	<4F514826.5050402@ti.com>
	<alpine.DEB.2.02.1203021729040.31351@oneiric> <4F514EC8.8000606@ti.com>
	<4F515551.50708@mlbassoc.com> <20120304061843.GN24667@denix.org>
	<alpine.DEB.2.02.1203040716190.496@oneiric>
	<4F5361B6.8040908@mlbassoc.com>
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
X-List-Received-Date: Sun, 04 Mar 2012 12:54:46 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


... much snipping below to get to the gist of it ...

On Sun, 4 Mar 2012, Gary Thomas wrote:

> On 2012-03-04 05:19, Robert P. J. Day wrote:
> >
> >    not sure if you're suggesting i should now be able to build
> > for, say, beagleboard with the meta-ti layer, but i cloned meta-ti
> > into my yocto tree, added that layer to bblayers.conf, and tried
> > to
> >
> > $ bitbake core-image-minimal
> >
> > and got what i believe gary was referring to above:
> >
> > $ bitbake core-image-minimal
> > Pseudo is not present but is required, building this first before the main
> > build
> > ERROR: ParseError at
> > /home/rpjday/yocto/git/meta-ti/recipes-misc/payload/bonescript.bb:5:
> > Could not inherit file classes/systemd.bbclass
> > ERROR: Command execution failed: Exited with 1
> >
> >    or am i misreading what you wrote?
>
> Oops, that's one more workaround I forgot to mention.  This file
> is in OE-core, but not in poky.  I made a local copy in my distro
> layer, but there must be a better way to handle it.

  regardless of the fix, i would think that the proper name for that
recipe file would be something like "beaglescript.bb" and not
"bonescript.bb", since it opens with:

DESCRIPTION = "Scripting tools for the BeagleBoard and BeagleBone"

that is, if it's relevant to both boards, it's inappropriate to give
it a name of bonescript.bb, don't you think?

rday

p.s.  i plan on spending all day messing with yocto, and i have lots
of spare cycles on my quad-core ASUS, so if anyone wants me to build
stuff or test stuff, let me know.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

