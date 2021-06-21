Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.44862.1624269345558032066
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Jun 2021 02:55:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0A3D038C05FA
	for <yocto@yoctoproject.org>; Mon, 21 Jun 2021 09:55:44 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.107.13]:48464 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1lvGec-008IfH-Fo; Mon, 21 Jun 2021 05:55:42 -0400
Date: Mon, 21 Jun 2021 05:55:40 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: "Robert Berger@yocto.user" <robert.berger.yocto.user@gmail.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] the downside of parallelism
In-Reply-To: <b0f619f1-ce60-d16c-d5ac-261b05fef377@gmail.com>
Message-ID: <8183189f-8c3e-84a7-51aa-1b2cc8bf1@crashcourse.ca>
References: <c9624492-1658-9e87-f680-32b891e69a7f@crashcourse.ca> <b0f619f1-ce60-d16c-d5ac-261b05fef377@gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

On Sun, 20 Jun 2021, Robert Berger@yocto.user wrote:

> Hi,
>
> On 20/06/2021 12:55, Robert P. J. Day wrote:
> >
> >    refactoring existing (legacy) code base into more bite-sized
> > bitbake recipes to speed up build by taking advantage of 6-core
> > (12-thread) dell laptop ... end result is that i get so much
> > parallelism that laptop shuts down from overheating.
>
> Sorry for my stupid question;)
>
> If you have 12 threads, it's 12 threads and not more.
>
> I guess there needs to be some kind of dependency between your new recipes.
>
> make -j can use as many cores as you like even with a single recipe.
>
> How would it speed up builds if you break up a recipe into multiple recipes?
>
> What is your refactoring approach?

  the (legacy) code base i was handed involves several sizable
makefiles that were not designed to take advantage of parallelism --
apparently, they come from an environment (QNX?) where "make" does not
do parallelism. so rather than design makefiles with parallelism in
mind, many of the makefiles correspond to some large subsystem where
the top-level target has a rule that simply descends into the numerous
sub-component directories one at a time:

  fubar:
	$(MAKE) -C fubar1
	$(MAKE) -C fubar2
	...
	$(MAKE) -C fubar42

and last i heard, the commands in any rule are definitely processed
serially. so when the local folks started transmogrifying the code
base to use YP, they just used SRC_URI to point at the existing
makefiles (which *must* stay where they are for the purpose of legacy
compatibility). so as a start, there is a recipe "fubar.bb" which just
runs that top-level Makefile, but given its structure, once it starts,
all you see is "fubar compiling" as it serially processes all of its
subcomponents.

  now, most of the major components have sub-directories with, say,
the shared libs, the test suite, and so on, and a lot of other
components that allegedly DEPENDS on "fubar" obviously don't need
*all* of fubar to finish compiling, just normally the library
sub-component, but as it is, they have to wait for all of it, so you
normally see "fubar compiling", and nothing else, for several minutes,
and as soon as that finishes, a bunch of deps that have been patiently
waiting finally kick off.

  as i refactor the above into smaller recipes, then the dependencies
build much faster and as soon as the shared lib recipe finishes, all
those other recipes can start, so i'm definitely getting way more
parallelism but, as i mentioned, that comes with a price.

  now, given my unlimited cleverness into refactoring recipes, most of
my 6 cores (12 threads) are busy, which is driving up the load average
over the course of the build (easily over an hour for the whole
thing), and sometimes the load average peaks at over 130, and the air
vent on this laptop is blowing air so hot, it can actually burn you if
you leave your hand there too long, and every so often, it just locks
up and shuts down.

  what irony -- i redesign the recipes to boost parallelism, only to
fall victim to hardware limitations.

rday
