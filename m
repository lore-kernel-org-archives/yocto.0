Return-Path: <denis@denix.org>
Received: from vms173003pub.verizon.net (vms173003pub.verizon.net
	[206.46.173.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC26DE00746
	for <yocto@yoctoproject.org>; Sat,  3 Mar 2012 22:18:45 -0800 (PST)
Received: from gandalf.denix.org ([unknown] [71.178.225.66])
	by vms173003.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0M0C00HU3K78XWS0@vms173003.mailsrvcs.net> for
	yocto@yoctoproject.org; Sun, 04 Mar 2012 00:18:44 -0600 (CST)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 2E96C20264; Sun,
	04 Mar 2012 01:18:43 -0500 (EST)
Date: Sun, 04 Mar 2012 01:18:43 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: Gary Thomas <gary@mlbassoc.com>
Message-id: <20120304061843.GN24667@denix.org>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>
	<4F4D457F.7000306@windriver.com>
	<alpine.DEB.2.02.1202281651040.8024@oneiric>
	<D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
	<alpine.DEB.2.02.1202281723110.9200@oneiric> <4F514826.5050402@ti.com>
	<alpine.DEB.2.02.1203021729040.31351@oneiric> <4F514EC8.8000606@ti.com>
	<4F515551.50708@mlbassoc.com>
MIME-version: 1.0
In-reply-to: <4F515551.50708@mlbassoc.com>
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
X-List-Received-Date: Sun, 04 Mar 2012 06:18:46 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Fri, Mar 02, 2012 at 04:18:41PM -0700, Gary Thomas wrote:
> On 2012-03-02 15:50, William Mills wrote:
> >We will update the README when it is merely in need of testing.
> >Today, we know there is code that does not work with GCC 4.6.
> >Today, we know there are features in the recipes that do not work w/o Angstrom.
> 
> Can you elaborate on the above?  I have been [I think] successfully using poky+meta-ti
> to support internal platform based on DM8148 and DM3730 - meta-ti is the best choice
> for a kernel "jumping off point" for these platforms.  So far, I've only
> had to make a scant few tweaks to get this combo to work, in particular:
> 
> * In conf/local.conf, I use this to avoid parsing problems with some meta-ti
>   recipes (none of which I need at the moment)
>     # Ignore troublesome TI recipes
>     BBMASK = ".*/meta-ti/recipes-misc/"
> 
> * In distro.conf (I do have my own distro, but it's very close to poky), I needed
>     # Allow hardware overrides, e.g. armv7a
>     OVERRIDES .= ":${SOC_FAMILY}"
> 
> With these minor additions, I've been able to use the meta-ti layer for [some]
> kernel work, u-boot, DSP support, etc - all the stuff one expects the layer
> to provide.
> 
> I know my setup is a bit outside pure poky+meta-ti, but it does show that
> you don't actually have to have Angstrom to use meta-ti.
> 
> It would be nice to understand what your concerns are, certainly the details
> of your two "Today,..." statements above, if they fall outside what I've outlined
> here.

Gary,

Clearly, the README is meant for the new people, who might find it too 
complicated for the above fixes to be applied in order for them to avoid using 
Angstrom. But you are correct, besides known isues with gcc-4.6 not working 
for some components and hence requiring meta-oe; SOC_FAMILY and systemd 
dependency in recipes-misc/images were the only other two things requiring 
meta-angstrom layer.

You can try the updated meta-ti now, as it should solve those dependencies, 
thanks to Koen's latest patches. Please let us know how it works for you. 
Thanks.

-- 
Denys

