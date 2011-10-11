Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93A7FE005BB
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2011 15:15:20 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p9BMLoK8009791; Tue, 11 Oct 2011 23:21:50 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id SSe6Y6bHHhR6; Tue, 11 Oct 2011 23:21:50 +0100 (BST)
Received: from [192.168.1.66] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p9BMLgI8009769
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 11 Oct 2011 23:21:45 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Tue, 11 Oct 2011 23:15:00 +0100
In-Reply-To: <4E933C41.4000207@linux.intel.com>
References: <4E933C41.4000207@linux.intel.com>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1318371311.23801.128.camel@ted>
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RFC: User configurable recipe features
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
X-List-Received-Date: Tue, 11 Oct 2011 22:15:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-10-10 at 11:41 -0700, Darren Hart wrote:
> As part of working on meta-tiny, I've come across a need (want?) to
> present users with the ability to select some set of features in a local
> configuration file that will impact the build of the image and a set of
> recipes.
> 
> It is currently possible to affect which packages are installed in an
> image with variables like POKY_EXTRA_INSTALL. What I'm not finding a way
> to do is specify some set of features that will impact how a recipe is
> built.
> 
> For example, a user may or may not want networking support or virtual
> terminal support in their image. This impacts both the kernel and
> busybox (at least). The linux-yocto infrastructure provides us with
> config fragment functionality, something similar will need to be added
> to busybox. Access to that is still bound to the machine config by means
> of the SRC_URI machine override mechanism, but it would be useful to be
> able to influence it from the image config or the user's local config.
> 
> For example, when building a tiny image I may decide I do not want VT
> nor INET support. I might wish to specify this like this (by removing
> them from the default features):
> 
> local.conf:
> #CORE_IMAGE_TINY_FEATURES = "VT INET MDEV"
> CORE_IMAGE_TINY_FEATURES = "MDEV"
>
> I would want this to affect linux-yocto-tiny by dropping the vt.cfg and
> inet.cfg fragments from the SRC_URI (or from the .scc descriptor files
> assembled by the linux-yocto meta indrastructure).
> 
> Busybox would need a similar configuration mechanism, and would also
> need to add a "no-vt-support.patch" patch to the SRC_URI to avoid a
> bug/oversight in the busybox init routine.
> 
> I'd appreciate some help determining the proper bitbake way of doing
> this. I want to avoid having to create a new machine.conf and/or recipes
> for every possible combination of features that a user may want to turn
> on or off.

We have a few mechanisms around for this but its a difficult problem to
do totally generically since everyone has their own ideas about what
should/shouldn't happen.

One tricky aspect is that some people care about package feeds and the
output into those needs to be deterministic. This is why DISTRO_FEATURES
exist which state things like "does x11 make sense"? This means dbus may
or may not be compiled with X but given a set of policy decisions by the
distro, the output is determined.

Recently we've taken the idea of PACKAGECONFIG on board. This is recipe
level policy which can enable/disable features in a given recipe (e.g.
does gsteamer depend on and build flac or not?). Whilst we have a high
level setup for this for autotools recipes, this is probably something
we need to do a more custom implementation of for busybox and the
features you mention above would map well to this. It would be good to
have a standardised way of representing this (and we may also want to
look at moving the kernel feature control towards this variable name
too).

What we need to be really really careful about is getting the
namespacing right and your CORE_IMAGE_TINY_FEATURES = "VT INET MDEV"
example above scares me as it mixes up several different things. My
worry is for example trying to build two different versions of busybox
in the same tmpdir depending on what image you build, for example what
does "bitbake core-image-tiny core-image-sato" do?

Contrast this to some settings:

PACKAGECONFIG_pn-linux-yocto = "vt inet"
PACKAGECONFIG_pn-busybox = "mdev"

which then mean you have one set of configuration for these recipes and
its clear what the bitbake command above would result in.

One of the bigger problems we're going to have with tiny is its
effectively a different set of distro settings to our normal builds. The
side effect of that is that you couldn't share a tmpdir with a "big"
build but I'm not sure that is an issue in practise, we just need to do
it in a way which doesn't give us the nasty configuration corner cases.

So I guess what I'm saying is the end result of your work is likely a
"poky-tiny" distro setting which would take the "poky" distro but tweak
some pieces for really small images. It would need a separate tmpdir and
we should look in the PACKAGECONFIG variable direction for handling
recipe specific customisations...

Cheers,

Richard





