Return-Path: <denis@denix.org>
Received: from vms173015pub.verizon.net (vms173015pub.verizon.net
	[206.46.173.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1087BE0044C
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 13:04:14 -0800 (PST)
Received: from gandalf.denix.org ([unknown] [71.178.225.66])
	by vms173015.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M0D001J6METK8J0@vms173015.mailsrvcs.net> for
	yocto@yoctoproject.org; Sun, 04 Mar 2012 14:05:18 -0600 (CST)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 9710A20168; Sun,
	04 Mar 2012 15:04:05 -0500 (EST)
Date: Sun, 04 Mar 2012 15:04:05 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: Gary Thomas <gary@mlbassoc.com>
Message-id: <20120304200405.GP24667@denix.org>
References: <4F514826.5050402@ti.com>
	<alpine.DEB.2.02.1203021729040.31351@oneiric> <4F514EC8.8000606@ti.com>
	<4F515551.50708@mlbassoc.com> <20120304061843.GN24667@denix.org>
	<alpine.DEB.2.02.1203040716190.496@oneiric>
	<4F5361B6.8040908@mlbassoc.com>
	<alpine.DEB.2.02.1203041310220.20388@oneiric>
	<20120304192728.GO24667@denix.org> <4F53C63D.1000305@mlbassoc.com>
MIME-version: 1.0
In-reply-to: <4F53C63D.1000305@mlbassoc.com>
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
X-List-Received-Date: Sun, 04 Mar 2012 21:04:15 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Sun, Mar 04, 2012 at 12:45:01PM -0700, Gary Thomas wrote:
> On 2012-03-04 12:27, Denys Dmytriyenko wrote:
> >On Sun, Mar 04, 2012 at 01:14:17PM -0500, Robert P. J. Day wrote:
> >>On Sun, 4 Mar 2012, Gary Thomas wrote:
> >>
> >>>On 2012-03-04 05:19, Robert P. J. Day wrote:
> >>>>
> >>>>    not sure if you're suggesting i should now be able to build
> >>>>for, say, beagleboard with the meta-ti layer, but i cloned meta-ti
> >>>>into my yocto tree, added that layer to bblayers.conf, and tried
> >>>>to
> >>>>
> >>>>$ bitbake core-image-minimal
> >>>>
> >>>>and got what i believe gary was referring to above:
> >>>>
> >>>>$ bitbake core-image-minimal
> >>>>Pseudo is not present but is required, building this first before the main
> >>>>build
> >>>>ERROR: ParseError at
> >>>>/home/rpjday/yocto/git/meta-ti/recipes-misc/payload/bonescript.bb:5:
> >>>>Could not inherit file classes/systemd.bbclass
> >>>>ERROR: Command execution failed: Exited with 1
> >>>>
> >>>>    or am i misreading what you wrote?
> >>>
> >>>Oops, that's one more workaround I forgot to mention.  This file
> >>>is in OE-core, but not in poky.  I made a local copy in my distro
> >>>layer, but there must be a better way to handle it.
> >>
> >>   um ... AFAICT, that .bbclass file is in meta-oe, not oe-core.  and
> >>since i have meta-openembedded checked out, i simply copied the whole
> >>thing into my yocto tree, then tweaked my bblayers.conf file to look
> >>like:
> >>
> >>BBLAYERS ?= " \
> >>   /home/rpjday/yocto/git/meta \
> >>   /home/rpjday/yocto/git/meta-yocto \
> >>   /home/rpjday/yocto/git/meta-ti \
> >>   /home/rpjday/yocto/git/meta-openembedded/meta-oe \
> >>   "
> >
> >Either way, meta-oe is still required for meta-ti due to toolchain issues...
> 
> Can you explain what the toolchain problems are and why the versions in
> oe-core don't work for meta-ti?

One of the issues:

https://lists.yoctoproject.org/pipermail/meta-ti/2012-February/000491.html

I haven't tried if either 3.0 or a pending 3.1 update for Panda (from 
omapzoom/ti-ubuntu), resolve this gcc-4.6 build issue. But either way I 
believe there was something else with one of our components not building with 
gcc-4.6 - SGX or multimedia, don't remember exactly.

-- 
Denys

