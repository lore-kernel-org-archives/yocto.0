Return-Path: <denis@denix.org>
Received: from vms173011pub.verizon.net (vms173011pub.verizon.net
	[206.46.173.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36436E0044C
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 11:27:49 -0800 (PST)
Received: from gandalf.denix.org ([unknown] [71.178.225.66])
	by vms173011.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M0D007N3KPTV290@vms173011.mailsrvcs.net> for
	yocto@yoctoproject.org; Sun, 04 Mar 2012 13:27:34 -0600 (CST)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id E8D2520168; Sun,
	04 Mar 2012 14:27:28 -0500 (EST)
Date: Sun, 04 Mar 2012 14:27:28 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-id: <20120304192728.GO24667@denix.org>
References: <D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric> <4F514826.5050402@ti.com>
	<alpine.DEB.2.02.1203021729040.31351@oneiric> <4F514EC8.8000606@ti.com>
	<4F515551.50708@mlbassoc.com> <20120304061843.GN24667@denix.org>
	<alpine.DEB.2.02.1203040716190.496@oneiric>
	<4F5361B6.8040908@mlbassoc.com>
	<alpine.DEB.2.02.1203041310220.20388@oneiric>
MIME-version: 1.0
In-reply-to: <alpine.DEB.2.02.1203041310220.20388@oneiric>
User-Agent: Mutt/1.5.20 (2009-06-14)
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
X-List-Received-Date: Sun, 04 Mar 2012 19:27:49 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Sun, Mar 04, 2012 at 01:14:17PM -0500, Robert P. J. Day wrote:
> On Sun, 4 Mar 2012, Gary Thomas wrote:
> 
> > On 2012-03-04 05:19, Robert P. J. Day wrote:
> > >
> > >    not sure if you're suggesting i should now be able to build
> > > for, say, beagleboard with the meta-ti layer, but i cloned meta-ti
> > > into my yocto tree, added that layer to bblayers.conf, and tried
> > > to
> > >
> > > $ bitbake core-image-minimal
> > >
> > > and got what i believe gary was referring to above:
> > >
> > > $ bitbake core-image-minimal
> > > Pseudo is not present but is required, building this first before the main
> > > build
> > > ERROR: ParseError at
> > > /home/rpjday/yocto/git/meta-ti/recipes-misc/payload/bonescript.bb:5:
> > > Could not inherit file classes/systemd.bbclass
> > > ERROR: Command execution failed: Exited with 1
> > >
> > >    or am i misreading what you wrote?
> >
> > Oops, that's one more workaround I forgot to mention.  This file
> > is in OE-core, but not in poky.  I made a local copy in my distro
> > layer, but there must be a better way to handle it.
> 
>   um ... AFAICT, that .bbclass file is in meta-oe, not oe-core.  and
> since i have meta-openembedded checked out, i simply copied the whole
> thing into my yocto tree, then tweaked my bblayers.conf file to look
> like:
> 
> BBLAYERS ?= " \
>   /home/rpjday/yocto/git/meta \
>   /home/rpjday/yocto/git/meta-yocto \
>   /home/rpjday/yocto/git/meta-ti \
>   /home/rpjday/yocto/git/meta-openembedded/meta-oe \
>   "

Either way, meta-oe is still required for meta-ti due to toolchain issues...

> then started:
> 
>   $ bitbake core-image-minimal    (MACHINE=beagleboard)
> 
> and it seems to be building.  i'm entirely prepared for this to fail
> at some point, but i might as well see how far it gets.

