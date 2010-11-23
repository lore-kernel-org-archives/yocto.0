Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B172A4C81065
	for <yocto@yoctoproject.org>; Mon, 22 Nov 2010 23:34:53 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Nov 2010 21:34:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,240,1288594800"; d="scan'208";a="680099583"
Received: from unknown (HELO [10.255.13.161]) ([10.255.13.161])
	by orsmga001.jf.intel.com with ESMTP; 22 Nov 2010 21:34:37 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <A28CE1CD-E88E-4CE3-8EFF-1DBC55E1756C@keylevel.com>
References: <A28CE1CD-E88E-4CE3-8EFF-1DBC55E1756C@keylevel.com>
Date: Mon, 22 Nov 2010 23:34:46 -0600
Message-ID: <1290490486.2784.140.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New platforms
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
X-List-Received-Date: Tue, 23 Nov 2010 05:34:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-11-18 at 02:36 -0800, Chris Tapp wrote:
> Hi,
> 
> I've been evaluating OpenEmbedded and saw the announcement of 'Yocto'  
> on the mailing list. Yocto looks like it may be better for my needs as  
> it is more refined.
> 
> As there isn't currently support for the ALIX 3D3 (a Geode LX based  
> system), I am interested in creating and maintaining a BSP for it.  
> This should also work with other LX systems (e.g. SUMO ST166, other  
> ALIX variants), some with no changes, some with minor ones.
> 
> Could you give me an idea how much work would be involved in doing  
> this and what it involve?
> 

I can give you a bit of an idea from a practical standpoint, since I've
also started working on a BSP for a new board just recently (i.e. I'm
actually still on the learning curve myself, hopefully anyone who knows
better will correct any of errors or misconceptions...)

As mentioned by Bruce, things have changed lately as far as
bootstrapping a board - it should be easier now, but something like the
below should work to get you started.

As also mentioned by Bruce, you need a machine.conf that describes your
machine - there are a bunch of examples to start from, in a couple of
places, a bunch in in meta/conf/machine and another example that's part
of its own layer, in meta-emenlow/conf/machine.

The most recently up-to-date machines that are probably more similar to
yours and that you might want to look at are
meta/conf/machine/atom-pc.conf and
meta-emenlow/conf/machine/emenlow.conf.  Both of these were either just
added or upgraded to use the yocto kernel
(http://git.pokylinux.org/cgit/cgit.cgi/linux-2.6-windriver/).  The main
difference between them is that the emenlow is in its own layer, because
it needs some extra machine-specific packages such as its own video
driver and supporting packages, etc.  The atom-pc is simpler and doesn't
need any special packages - everything it needs can be specified in
the .conf file.  Note also that this one machine (atom-pc) supports all
of Asus eee901, Acer Aspire One, Toshiba NB305, and Intel BlackSand with
no changes.  If you wanted to make minor changes to support a slightly
different machine, you could create a new .conf for it and add it
alongside the others (maybe keeping the common stuff separate and
including it).  Similarly, you can also use multiple .confs for
different machines even if you do it as a separate layer like
meta-emenlow.

So anyway, for my new layer, meta-crownbay, I basically made a copy of
meta-emenlow and fixed it up/removed anything I didn't need - in
meta-crownbay/recipes, the only thing left was the kernel dir with a
linux-yocto_git.bbappend file in it (linux-yocto is the kernel listed in
meta-crownbay/conf/machine/crownbay.conf).  I added a new entry to
build/conf/bblayers.conf so the new layer can be found by bitbake.

So to get things working, the main thing to start out with is to get an
image with a working kernel built.  For the kernel to compile
successfully, you need to create a branch in the git repo specifically
named for your machine.  So first create a bare clone of the windriver
git repository, and then create a local clone of that:

$ git clone --bare git://git.pokylinux.org/linux-2.6-windriver.git linux-2.6-windriver.git
$ git clone linux-2.6-windriver.git linux-2.6-windriver

Now create a branch in the local clone and push it to the bare clone:

$ git checkout -b crownbay-standard origin/standard
$ git push origin crownbay-standard:crownbay-standard

At this point, your git tree should be set up well enough to compile,
now you just need to point the build at the new kernel git tree, by
commenting out the SRC_URI in
meta/recipes-kernel/linux/linux-yocto_git.bb and using a SRC_URI that
points to your new bare git tree (you should also be able to add this in
the do this in the linux-yocto_git.bbappend in the layer):

# To use a staged, on-disk bare clone of a Wind River Kernel, use a 
# variant of the below
# SRC_URI = "git://///path/to/kernel/default_kernel.git;fullclone=1"
SRC_URI = "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
           git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;noclone=1;branch=wrs_meta;name=meta"

After doing that, and selecting the machine in build/conf/local.conf
e.g.

MACHINE ?= "crownbay"

you should be able to build and boot an image with the new kernel (e.g.
bitbake poky-image-sato-live).

Of course, that will give you a kernel with the default config, which is
probably not what you want.  If you just want to set some kernel config
options, you can do that by putting them in a files, say some.cfg
containing:

CONFIG_NETDEV_1000=y
CONFIG_E1000E=y

and some other.cfg containing

CONFIG_LOG_BUF_SHIFT=18

http://git.pokylinux.org/cgit/cgit.cgi/linux-2.6-windriver/

SRC_URI_append_crownbay = " file://some.cfg \
                            file://other.cfg \
                          "

You could also add these directly to the git repo's wrs_meta branch as
well, but this is probably easier.

If you're also adding patches to the kernel, you can do the same thing,
and put your patches in the SRC_URI as well (plus .cfg for their kernel
config options if needed).

Practically speaking, to generate the patches, you'd go to the source in
the build tree, for example,

build/tmp/work/crownbay-poky-linux/linux-yocto-2.6.34+git0+d1cd5c80ee97e81e130be8c3de3965b770f320d6_0+
0431115c9d720fee5bb105f6a7411efb4f851d26-r13/linux

and modify the code there, using quilt to save the changes, and
recompile (bitbake -c compile -f) until it works.  Once you have the
final patch from quilt, copy it to the SRC_URI location, and it should
be applied the next time you do a clean build.  Of course, since you
have a branch for the BSP in git, it would be better to put it there
instead e.g. in my case, commit the patch to the crownbay-standard
branch, and next build it will be applied from there.

I know some of the above is the old way of doing things, and I'm sure
other could offer a more efficient development cycle, but that's what
I'm currently using and it works for me for now.

This is only some basic practical stuff to help get started - you really
want to look at the Poky Reference Manual for much more useful info on
actually what things in the recipes actually mean, etc.:

http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html

One section of that is a 'BSP guide' which is available separately here:

http://www.yoctoproject.org/sites/default/files/bsp-guide_2.pdf

We'd really like to expand that with whatever additional info might be
useful to BSP developers, so please let us know if you have suggestions.

Thanks,

Tom

> Chris Tapp
> 
> opensource@keylevel.com
> www.keylevel.com
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



