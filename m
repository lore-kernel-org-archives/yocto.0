Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A014E011ED
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2012 07:47:21 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2012 07:47:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,324,1355126400"; d="scan'208";a="260251762"
Received: from unknown (HELO [10.255.14.10]) ([10.255.14.10])
	by orsmga002.jf.intel.com with ESMTP; 20 Dec 2012 07:47:20 -0800
Message-ID: <1356018439.30533.44.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Thu, 20 Dec 2012 09:47:19 -0600
In-Reply-To: <50D25D00.2010507@linux.intel.com>
References: <cover.1355766001.git.tom.zanussi@intel.com>
	<50D25D00.2010507@linux.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/5] RFC: new 'yocto-layer' tool for creating generic Yocto layers
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
X-List-Received-Date: Thu, 20 Dec 2012 15:47:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-12-19 at 16:34 -0800, Darren Hart wrote:
> On 12/17/2012 09:51 AM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > Since I've been doing kind of similar work lately for the 'custom kernel'
> > support for yocto-bsp and have gotten several requests lately (mainly
> > from Darren in support of the new kernel documentation) for something
> > like this, I decided to just go ahead and try to quickly implement a
> > general-purpose layer-generation tool based on the BSP-generation code
> > used in the yocto-bsp tool.  
> > 
> > There's actually an enhancement request bug for this already in the
> > Yocto bugzilla, but it doesn't contain many details:
> > 
> > Bug 3094 - Add a layer generation tool:
> > 
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=3094
> > 
> > So anyway, this is my initial take on what that bug means.  It's an RFC for
> > a couple reasons, first that I'd like to get comments on whether this is
> > actually what's needed for a 'layer generation tool', and second, because I
> > still need to do some cleanup of the refactored code, but don't want to
> > waste much time on it if it's not really what's needed.
> > 
> > Below are a couple examples of how it's used - you really have to try it
> > yourself to see what's generated - I don't want to post tarballs or such on
> > the list and it's simple to generate and look at the layers.
> > 
> > The first case is just a very simple layer with a layer.conf and README -
> > basically the simplest layer you can create, and which exists mainly because
> > even that is easy to get wrong.  As with the yocto-bsp tool, the script
> > queries the user for a couple items, here we just take the defaults, which
> > are a priority of 6 for the layer and no other components such as example
> > recipes:
> > 
> > [trz@empanada build]$ yocto-layer create simplestlayer
> > Please enter the layer priority you'd like to use for the layer: [default: 6] 
> > Would you like to have an example recipe created? (y/n) [default: n]  
> > Would you like to have an example bbappend file created? (y/n) [default: n] 
> 
> 
> Can these options be specified on the cli? It would be nice for
> documentation to not have to list all the questions to describe how to
> accomplish a specific task such as this. e.g.
> 
> [trz@empanada build]$ yocto-layer create simplestlayer -p 6 --no-recipe
> --no-bbappend
> 
> Or possibly having defaults to those questions accepted by default
> unless [-i|--interactive] is specified?
> 

Well, you can do it all from the command-line if you use the -i command
(where -i doesn't mean interactive, just the opposite in fact) with a
JSON file:

[trz@empanada build]$ yocto-layer create jtest -i yocto-layer-input.json

With the contents of yocto-layer-input.json being values for the
properties you get from 'yocto-layer list properties':

{"layer_priority":"6","create_example_recipe":"n","create_example_bbappend":"n","example_recipe_name":"example","example_bbappend_name":"example","example_bbappend_version":"0.1"}

Obviously this isn't designed for humans to use directly - the purpose
is to allow other tools to use the Yocto BSP tools but avoid having to
display the default text-based interface.  ADT uses this for instance to
create an Eclipse UI for yocto-bsp.

I could add specific command-line options for each of those properties,
or a subset if that makes sense, but the templating engine and the
resulting tools were meant to be 'user-friendly' and 'menu-driven' for
complete novices who don't necessarily want to read documentation.

I'm thinking that most users probably won't use these tools very often,
so providing a complete command-line equivalent encompassing all the
options would be more trouble than it's worth.  It might make sense
though to do it for the case of the 'simplest layer' which would mean
just adding a 'priority' option in addition to the layer name already
specified on the command line.

> empanada :-) Mmmmmm
> 

Yeah, that's what happens when you install a new system just before
dinner.  ;-)

> 
> > New layer created in meta-simplestlayer.
> > 
> > Don't forget to add it to your BBLAYERS (for details see meta-simplestlayer\README).
> > 
> > [trz@empanada build]$ find .
> > .
> > ./meta-simplestlayer
> > ./meta-simplestlayer/conf
> > ./meta-simplestlayer/conf/layer.conf
> > ./meta-simplestlayer/README
> > ./meta-simplestlayer/COPYING.MIT
> > 
> 
> 
> It might make sense to create a recipes/ directory as well, just to
> support convention.
> 

Not sure what you mean - if you say 'y' to either the recipe or the
bbappend, it will create a recipes-example/ dir to contain them.  Do you
mean something else?

> 
> > 
> > In the second case, we tell the tool that we do want an example .bb and and
> > an example .bbappend.  We're queried for the recipe name that we want our
> > recipe to have, and for the .bbappend, the name of the base recipe and its
> > version.  Below you can see the files it generates - please look at the files
> > themselves to see the contents.  For the recipe example, it generates a recipe
> > based on the example in the Yocto manual, and my own helloworld.c code
> > (untested so far which is also why this is an RFC).  For the .bbappend example,
> > it just creates an empty .patch file with some instructions on what to do to
> > modify the parent recipe with a patch:
> > 
> > [trz@empanada build]$ yocto-layer create mylayer
> > Please enter the layer priority you'd like to use for the layer: [default: 6] 
> > Would you like to have an example recipe created? (y/n) [default: n] y
> > Please enter the name you'd like to use for your example recipe: [default: example] flork
> > Would you like to have an example bbappend file created? (y/n) [default: n] y
> > Please enter the name you'd like to use for your bbappend file: [default: example] chork
> > Please enter the version number you'd like to use for your bbappend file (this should match the recipe you're appending to): [default: 0.1] 0.22.3
> 
> 
> Wow, that's quite a bit more than I was asking for... I can imagine that
> some folks my find that useful.
> 
> 
> > 
> > New layer created in meta-mylayer.
> > 
> > Don't forget to add it to your BBLAYERS (for details see meta-mylayer\README).
> > 
> > [trz@empanada build]$ find .
> > .
> > ./meta-mylayer
> > ./meta-mylayer/recipes-example
> > ./meta-mylayer/recipes-example/example
> > ./meta-mylayer/recipes-example/example/flork-0.1
> > ./meta-mylayer/recipes-example/example/flork-0.1/helloworld.c
> > ./meta-mylayer/recipes-example/example/flork-0.1/example.patch
> > ./meta-mylayer/recipes-example/example/flork_0.1.bb
> > ./meta-mylayer/conf
> > ./meta-mylayer/conf/layer.conf
> > ./meta-mylayer/recipes-example-bbappend
> > ./meta-mylayer/recipes-example-bbappend/example-bbappend
> > ./meta-mylayer/recipes-example-bbappend/example-bbappend/chork-0.22.3
> > ./meta-mylayer/recipes-example-bbappend/example-bbappend/chork-0.22.3/example.patch
> > ./meta-mylayer/recipes-example-bbappend/example-bbappend/chork_0.22.3.bbappend
> > ./meta-mylayer/README
> > ./meta-mylayer/COPYING.MIT
> > 
> > Please try it and look at the generated code - any comments or suggestions
> > are welcome.
> 
> 
> In concept, looks pretty good to me, and a natural refactoring of
> yocto-bsp. I'll review the patches independently.
> 

Thanks for reviewing them!

Tom

> Thanks,
> 
> Darren
> 
> 
> > Thanks,
> > 
> > Tom
> > 
> > The following changes since commit da598d4f0fcf6faa62055084a51d70d735399d33:
> > 
> >   eglibc: fix checksums of fetched patches (2012-12-13 18:02:21 +0000)
> > 
> > are available in the git repository at:
> > 
> >   git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-layer-rfc
> >   http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-layer-rfc
> > 
> > Tom Zanussi (5):
> >   scripts/lib/bsp/engine.py: add yocto_layer_create()
> >   yocto-layer: new script
> >   yocto-layer: add help/usage
> >   yocto-layer: add 'layer' template data
> >   scripts/lib/bsp/engine.py: refactor bsp-creation code
> > 
> >  scripts/lib/bsp/engine.py                          |  86 +++++++-
> >  scripts/lib/bsp/help.py                            | 228 +++++++++++++++++++++
> >  .../bsp/substrate/target/arch/layer/COPYING.MIT    |  17 ++
> >  scripts/lib/bsp/substrate/target/arch/layer/README |  64 ++++++
> >  .../substrate/target/arch/layer/conf/layer.conf    |  10 +
> >  .../target/arch/layer/layer-questions.noinstall    |  14 ++
> >  .../example.patch"                                 |  12 ++
> >  ..._name}}_{{=example_bbappend_version}}.bbappend" |   8 +
> >  .../{{=example_recipe_name}}-0.1/example.patch"    |  12 ++
> >  .../{{=example_recipe_name}}-0.1/helloworld.c"     |   6 +
> >  .../example/{{=example_recipe_name}}_0.1.bb"       |  23 +++
> >  scripts/yocto-layer                                | 142 +++++++++++++
> >  12 files changed, 612 insertions(+), 10 deletions(-)
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/COPYING.MIT
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/README
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf
> >  create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}-{{=example_bbappend_version}}/example.patch"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/example.patch"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c"
> >  create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}_0.1.bb"
> >  create mode 100755 scripts/yocto-layer
> > 
> 



