Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BC18E00C98; Thu, 22 Dec 2016 11:15:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B58C9E00A4D
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 11:15:53 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 22 Dec 2016 11:15:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,389,1477983600"; d="scan'208";a="1075336468"
Received: from stseng1-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.156.43])
	by orsmga001.jf.intel.com with ESMTP; 22 Dec 2016 11:15:47 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jeff Hagen <jhagen@lithetechnology.com>
Date: Fri, 23 Dec 2016 08:15:44 +1300
Message-ID: <1581602.g2PLzfSRF3@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.13-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <585ABF7F.5070104@lithetechnology.com>
References: <585ABF7F.5070104@lithetechnology.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: question about variables/parameters
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
X-List-Received-Date: Thu, 22 Dec 2016 19:15:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jeff,

On Wed, 21 Dec 2016 10:44:31 Jeff Hagen wrote:
> I am completely confused about bitbake variables how and when to set
> them to get the desired result in the poky/yocto environment.
> 
> For context, I am just a user but I have been around awhile. I have been
> using yocto/poky for several years now. I have written a number of
> simple recipes and successfully deployed embedded linux builds on a
> number of custom projects and architectures (x86 x86_64 zync and
> alterasoc ). This stuff works. My hat is off to the architects.
> 
> The problem comes when I want to change something. Frankly, I dont
> understand the documentation. Its way too generic. 

Honestly this is a comment we have had from a number of people, and we are
trying to address it by starting to create more "cookbook" style
documentation in future.

> I end up wandering around the recipes and web searching and trying
> everything until I find some seemingly random combination of bbappend or
> conf file or variable_name that works. Once found, it works no sweat, but
> there has to be a better way.
> 
> So here is an example of a problem I am trying to solve. I need to add a
> boot parameter to the kernel.
> When I run bitbake -v -f core-image-minimal for an x86 system I notice
> that (at least in the old version I am using) uses syslinux as the boot
> agent.  So I look at syslinux it needs a file called syslinux.cfg. There
> is a parameter there called APPEND that I need to add the keyword to.
> Then I find the syslinux.cfg file in a yocto build and I see that its
> created by a python script inside of syslinux.bbclass. I look there and
> sure enough there is a big comment there telling me to set the APPEND
> variable for the class. I also notice that the python script that
> creates syslinux.cfg runs when I run bitbake -v -f core-image-minimal

I'll just note here that the APPEND variable is horribly named - an
artifact of history. Sorry about that.

> Also in the documentation there is a class called syslinux and it lists
> the variables that I found in the comments bbclass file. This is no
> doubt some clever auto-doc feature.

Well, probably not. Most of our documentation is actually hand-written by
our technical writer (Scott Rifenbark) with some help from us on the raw
material.

> But thats where it ends. How do I know how to set that APPEND variable
> for my custom build?
> The answer is either a bbappend file in my layer, a conf file, or
> something I can put in local.conf.
> 
> Rather than just telling me the answer, can someone please describe the
> reasoning that would go into figuring it out so I can figure out other
> similar issues on my own later? Or perhaps this was already done and I
> am missing some documentation somewhere. Can you please direct me?
> Thanks for your patience.

There are advantages and disadvantages to each different place, as you might
imagine.

The first thing to realise is that there is variable scoping in BitBake - you
can set a variable in a recipe or bbappend, and it will only affect that
recipe. You can set a variable in a .bbclass (possibly one that you create)
and it will affect recipes that inherit that class. You can set a variable at
the configuration level and it will affect all recipes. (When I say "affect" I
mean the value you set will potentially be available in the scope specified).

There are also a number of places at the configuration level you could choose
to set a variable. Where you actually choose to set it will depend on what the
specific purpose of setting the variable is. Here are some basic guidelines:

1) Is setting the variable specific to the build environment on the local
(build host) machine, or is this a temporary customisation you want to test?
Yes -> local.conf.

2) Is this something that is fundamental to how the machine works? Yes ->
<your bsp layer>/conf/<machine>.conf

3) Is this more about the use of the machine or any other customisation that
you want to apply permanently? Yes -> <your distro layer>/conf/<distro>.conf

There are some other cases (e.g. basic setup for a layer goes in
conf/layer.conf in each layer, but be very careful about adding anything else
there) but these are the most common. The purpose of this splitting is to make
it easy to swap BSP layers and distro layers in and out as needed; if the
layers you are using have been set up properly so as not to set things when
not enabled then you may even be able to leave them in bblayers.conf and just
select between them with MACHINE and DISTRO.

You haven't mentioned it so I'm not sure if you're aware that bitbake -e is an
extremely useful debugging tool - and not just bitbake -e | grep, but the
entire output - I suggest piping it through "less" instead of grep and using
"/" to search since then you can see the entire history of how a variable is
set. Let's look at an example, in this case bitbake -e dosfstools:

# $EXTRA_OECONF [5 operations]
#   set /home/paul/poky/poky/meta/conf/bitbake.conf:497
#     ""
#   _append /home/paul/poky/poky/meta/conf/distro/include/no-static-libs.inc:33
#     "${DISABLE_STATIC}"
#   set /home/paul/poky/poky/meta/conf/documentation.conf:162
#     [doc] "Additional configure script options."
#   _append /home/paul/poky/poky/meta/classes/autotools.bbclass:132
#     " ${PACKAGECONFIG_CONFARGS}"
#   set /home/paul/poky/poky/meta/recipes-devtools/dosfstools/dosfstools_4.0.bb:21
#     "--without-udev --enable-compat-symlinks"
# pre-expansion value:
#   "--without-udev --enable-compat-symlinks${DISABLE_STATIC} ${PACKAGECONFIG_CONFARGS}"
EXTRA_OECONF="--without-udev --enable-compat-symlinks --disable-static \${PACKAGECONFIG_CONFARGS}"

The operations are, in order:

1) A default of "" was set in bitbake.conf

2) In no-static-libs.inc we used _append to add the value of DISABLE_STATIC

3) In documentation.conf we set the "doc" flag on the variable to a string
describing the variable (this doesn't affect the value, just the value of
the "doc" flag on the variable)

4) In autotools.bbclass we append the value of the PACKAGECONFIG_CONFARGS
variable

5) In dosfstools_4.0.bb we set "--without-udev --enable-compat-symlinks"

In this case the final value is the last value that was set plus the appends.
PACKAGECONFIG_CONFARGS unusually never got set to a value, so what happens
is that "${PACKAGECONFIG_CONFARGS}" remains in the value. This particular
value ends up being passed on the command line to the configure script
via the shell, so assuming that PACKAGECONFIG_CONFARGS isn't set in the
external environment, it will be expanded by the *shell* (not bitbake)
to "" and thus won't have any effect in the end.

One thing worth keeping in mind (which you may already appreciate, but I'll
mention it for completeness) is that where the variable is currently set
set is often not important to where you should set it - you shouldn't for
example be editing meta/conf/bitbake.conf or classes or any of the recipes
under meta/ - unless you plan to submit the changes back as generally
applicable improvements. The system is designed to allow you to isolate
your customisations in your own layer(s) and thus the core metadata can
be upgraded much more easily vs. you maintaining your own fork with your
changes in it.

Hope that helps - I'm happy to answer any further questions.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

