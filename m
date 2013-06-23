Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ea0-f172.google.com (mail-ea0-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74CA2E014F1
	for <yocto@yoctoproject.org>; Sat, 22 Jun 2013 20:58:06 -0700 (PDT)
Received: by mail-ea0-f172.google.com with SMTP id q10so5326121eaj.17
	for <yocto@yoctoproject.org>; Sat, 22 Jun 2013 20:58:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=ItT6d1S+IF4xTSZJVm2FQCZOYeaQ+c1PFxn+/Uev1OU=;
	b=Ro/qoat8e8wqj4NJ/vQ1dI7ruuawyNHY2h1XjjxzgJtWU6f31cRHjWZ4P81tmtGhsb
	e98c8nlyp1QaZStIJ12fnJcyr6G2Pn0oHFoZV2ZX0+OxP5MInu9jjOJcIapTB4CH2GjN
	7rVcfNfWacu2We7AOtMMA8LXonicmf8C/fNITf6QadxTsB0VO6hIjndo9MnEdSKbie5U
	zQaalKb2dK1tEasEFH6zQB0K7AYl3PxJOjb8t+PynhJFe+E1L1f10ZRf4bE0yOECVrvL
	zQIIWM6MDroVBCmXGu2fDNZN0wU+7KNLsW5XCeCilxHXNhJzEN9EtI1i3H6GQAA1+fnt
	J6mA==
MIME-Version: 1.0
X-Received: by 10.15.102.68 with SMTP id bq44mr19038865eeb.89.1371959885505;
	Sat, 22 Jun 2013 20:58:05 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Sat, 22 Jun 2013 20:58:05 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF50B40@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF50B40@ORSMSX101.amr.corp.intel.com>
Date: Sat, 22 Jun 2013 23:58:05 -0400
Message-ID: <CALmOhgkzC+Chs37bBM1ycV79kg1Fb6QcZO-ozw410E=GtnEVLQ@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQn2chCuNOaxXpa3IJ60alzKihINbDD7OQG+4Nx8i2iAsennRfz15AG083jy+BlPqbyqTcy9
Subject: Re: Documenting YP Development Environment in more detail
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
X-List-Received-Date: Sun, 23 Jun 2013 03:58:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

Coincidentally, Nicolas and I were recently involved in providing a
whirlwind tour of Yocto/OE to some developers last week.

On 20 June 2013 04:40, Rifenbark, Scott M <scott.m.rifenbark@intel.com> wrote:
> We can get started now on this by starting to define details for some obvious points or large areas of the flow.  What would be nice to get would be some graphical breakdowns of these areas of concern:
>
> * User-defined layers
> * YP provided layers
> * User configuration
> * Machine Configuration
> * Policy Configuration
> * Patches
> * YP provided recipes
> * User provided source code
> * YP provided source code
> * SCMs
> * Generated images
> * Generated SDKs/toolchains
> * Package Output
> * Source fetching process
> * Patch application process
> * Configuration process (fragments, etc.)
> * Key variable use and effects
> * User-initiated commands along the way


In addition to the above, excellent segments, I observed the following
based on my recent experience:

I think it would be fair to assume that most people reading this new
documentation didn't just install Linux for the first time a day or
two ago and are now wondering about Yocto. I think many people have
some sort of build experience. So I think it might be worth
considering having a "how do I ...?" section which attempts to cover
as many common questions/scenarios as possible. Perhaps it might be
interesting to directly compare Yocto/OE to other build systems (not,
of course, to try to get anyone's defenses up, but rather to be able
to answer questions such as "in build system X I do this to get that
result, how do I do the same thing in Yocto?"). Maybe these questions
and answers could be organized based on assuming a user is coming for
a specific other build system? Or perhaps have sections explaining why
certain procedures which are required in other build systems aren't
required in Yocto.

For example: some build systems require you to restart your entire
build process if there is a failure anywhere during this process. So
one of the questions we got was "is bitbake smart enough to restart
the build at the point of failure if there is an error, or does the
build have to be started from scratch every time?".

To some people it might seem bizarre that Yocto generates packages
(e.g. rpms or debs) when (by default) the core-image-minimal target
didn't have any package management tools. It took us a while to
clarify that Yocto is building these (e.g.) rpms by default as part of
its own internal process. The fact package management tools can be
installed with a very simple configuration file change and then these
rpms or debs can be used to update a running image is just an extra
bonus; but you're getting these (e.g.) rpms whether you want them or
not :-) Stranger still: choosing rpms instead of debs doesn't mean
your final system is going to look a lot more like Fedora than Debian.

Tied closely to the above, lots of clarity was required to explain
that Yocto builds each recipe individually, installs it (somewhere),
uses the files in "somewhere" to generate a set of packages, and then
uses the selected packages (i.e. the -doc, -dev, -dbg, ...) to create
the target's root filesystem image. I think the multiple "install"
stages was not intuitive. I think most people by default would simply
install the build output from each component directly into a sysroot
without the indirection of creating a set of packages which are then
selected from to make up the final image. Obviously what Yocto is
doing is brilliant and correct, it's just not obvious as to why it
would do things that way (I think).

As I mentioned in my other comments, sometimes the best way to explain
why Yocto is doing things the way it is can be best understood once a
person has actually tried to do these things by hand. Polluting the
sysroot during the build would be quite obviously wrong if/when a new
version of a component were required, or you wanted to remove a given
thing from the output image.

