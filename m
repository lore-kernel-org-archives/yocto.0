Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A43D5E015A9
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 03:54:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Aug 2013 03:54:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,982,1367996400"; d="scan'208";a="395328924"
Received: from unknown (HELO helios.localnet) ([10.252.123.55])
	by orsmga002.jf.intel.com with ESMTP; 29 Aug 2013 03:54:35 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Thu, 29 Aug 2013 11:54:34 +0100
Message-ID: <2462918.0uoppbURnB@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <634B5BDC80D342ABA055FCF109BBDE9C@PAULD>
References: <CAFyqS9qRgLBFThnAETs1KXnMingG10U3o+3cooVeR4Zi8o5JVQ@mail.gmail.com>
	<CAP71Wjx3uF=FFGfypOqw9w5HF0N6KEH9KJ6sGE_0zQ2AX3Dk6w@mail.gmail.com>
	<634B5BDC80D342ABA055FCF109BBDE9C@PAULD>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: confusion about DEPENDS vs RDEPENDS
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Aug 2013 10:54:40 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Paul / Nicolas,

On Wednesday 28 August 2013 15:15:27 Paul D. DeRocco wrote:
> From: Nicolas Dechesne
> > if the source code changes, the version of the recipe needs
> > to change too. if you change the source code without bumping
> > the version, the package might not be rebuilt properly
> > indeed. and that can explain the behavior you are seeing. if
> > 'someapp' does not change, it would be rebuilt only if one of
> > its dependencies was rebuilt.
> 
> If you're making lots of changes in the course of debugging, isn't it
> reasonable just to do a cleansstate on the recipe to force it to be
> rebuilt?

Current versions of the build system (denzil/1.2+, although refinements have 
been made since then) are task signature-based. That means as far as the build 
system is able to determine its inputs, if those change it should be able to 
rebuild all of the output to match. Known limitations:

* Upstream software that doesn't properly rebuild when reconfigured. In most 
cases this should be considered as a bug in the recipe. Separating S from B 
can help here as I mentioned earlier, and you can see in dylan/1.4+ in 
meta/conf/distro/include/seperatebuilddir.inc that we've been enabling 
separate recipe build dirs for a number of recipes to help with this.

* Editing the unpacked/patched source code in the recipe's work directory 
(i.e. tmp/work/...). Note that this is not something that is discouraged - in 
fact it can be a very useful development aid. However, you do need to be aware 
of the need to force the appropriate tasks to re-execute after you have made 
changes in there i.e. bitbake -c compile -f <recipe> or bitbake -C compile 
<recipe>, since the build system cannot detect these kinds of changes on its 
own.

* Items remaining in the sysroot when recipes are completely renamed (i.e. 
when PN changes) or when a recipe is removed. We saw this recently with the 
mesa-dri -> mesa rename. Currently there's no way for the system to know what 
replaces what when PN changes or what to do when a recipe completely vanishes, 
you just have to clean out the old recipe's files in the sysroot. This can of 
course happen if you add and remove layers without deleting TMPDIR, so care 
should be taken when doing that. This is an difficult issue to solve 
practically; there is discussion of this issue here for those interested: 
https://bugzilla.yoctoproject.org/show_bug.cgi?id=4102

* If you use runtime packaging ("package-management" in IMAGE_FEATURES) and 
you're putting the packages into a feed and expect on-target upgrades to work 
consistently from those feeds without manually bumping PR in recipes on every 
material change, you need to enable the PR service as described in the 
development manual so that PR increments automatically.

* Changes on the host system affecting native recipes - less likely to cause 
issues, but worth being aware of. It can happen that adding or removing 
packages on the host system changes the configuration of native recipes without 
automatically triggering a rebuild - a good example is how we allow qemu-
native to build on systems with and without X11; if you added SDL and X11 to a 
system on which you'd already built qemu-native beforehand, in the absence of 
other changes you'd have to cleansstate or otherwise force a rebuild of qemu-
native to have a native QEMU that supported graphical output.


However, with the caveats above, most of the time you can rely upon the build 
system to determine what to do when things change. Of course, yes, if you want 
to just force a recipe to rebuild you have the option of bitbake -c 
cleansstate <recipe> before building it again, but most of the time that's 
going to be more than is needed.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

