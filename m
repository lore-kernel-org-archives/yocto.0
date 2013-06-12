Return-Path: <nobody@cubic.org>
Received: from roasted.cubic.org (roasted.cubic.org [193.108.181.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3ED4E01560
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 04:16:33 -0700 (PDT)
Received: from nobody by roasted.cubic.org with local (Exim 4.69)
	(envelope-from <nobody@cubic.org>) id 1Umj2T-0005Es-TI
	for yocto@yoctoproject.org; Wed, 12 Jun 2013 04:16:30 -0700
Received: from 87.139.57.5 (SquirrelMail authenticated user michael)
	by mail.cubic.org with HTTP; Wed, 12 Jun 2013 04:16:30 -0700
Message-ID: <bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org>
In-Reply-To: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD>
Date: Wed, 12 Jun 2013 04:16:30 -0700
From: michael@cubic.org
To: yocto@yoctoproject.org
User-Agent: SquirrelMail/1.4.19
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Sender: nobody <nobody@cubic.org>
Subject: Re: Need clarification on some terms
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
X-List-Received-Date: Wed, 12 Jun 2013 11:16:34 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

> "Cross-Development Toolchain: A collection of software development tools
> and
> utilities that allow you to develop software for targeted architectures."
> Is
> that different from the toolchain that bitbake builds in the beginning,
> and
> then uses to build the image? If so, what is it?

A "cross development toolchain" is a toolchain that runs on an
architecture (cpu+os+libc) that is different from the architecture it
generates code for. That can even be a toolchain running on an IA64-Linux
machine generating object-code for an IA32-Linux machine.

> "Following is a list of toolchain recipes..." This is followed by
> gcc-cross-initial, gcc-cross-intermediate, gcc-cross. All three of these
> things say that the toolchain runs on the host and is used to build
> software
> for the target. So why are there three of them? What are the differences
> among them?

The gcc must be build multiple times when you bootstrap it.
For building the gcc you need to build the libc and therefor you need to
build the linux kernel headers and therefor you need the gcc. Oops.

Thats why you first build a gcc only with c support and no libc first.
Use that to generate the kernel headers, then build the initial libc and
then another gcc with libc support and all the frontends you need
(c,c++,java,fortran,..). Why there is the gcc-cross-intermediate I am not
shure, but there will be a reason and another one can clarify that.

> It also says that each one is a "native" package. In my
> experience, a "native" toolchain has always meant a toolchain that
> produces
> code for the same machine that the toolchain runs on, while a "cross"
> toolchain produces code for a different machine. That's obviously not what
> "native" means in this context, so what does it mean?

In terms of openembedded a "native" package is a package that contains
code that is intended to run on the build machine (your workstation). The
cross-compiler runs on your build-machine to produce code for your
target-machine. Thats why it is a "native" package. And there are a lot
more "native" packages than only the compiler.

> The documentation makes frequent references to "the SDK" without ever
> defining it. I know what it means generically, but what is it in the Yocto
> context? And why does the SDK involve yet another set of three toolchains?
> (Oh, and why is one of them called "canadian"?)

A canadian-cross is a term from the compiler stuff, not specific to the
Yocto Project or Poky or Openembedded.
Building a canadian-cross is the process of build a toolchain on
architecture A that runs on architecture B and produces object-code for
architecture C. An example is building a gcc on an IA32 architecture, that
will run on an ARM, producing code for an M68K. Yes, that does make sence,
if the ARM machine does not have the resources to be able to bootstrap the
compiler by itself.

Hope that made some things clear.

Michael

