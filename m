Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5475.1576079382182350314
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 07:49:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Azt6bA3K;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: nicolas.dechesne@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F440E0107F; Wed, 11 Dec 2019 07:49:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD857E00E3A
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 07:49:40 -0800 (PST)
Received: by mail-lj1-f177.google.com with SMTP id 21so24670733ljr.0
        for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 07:49:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Pq69N0RJYpGYnbgW8tHkLIUYaZ2T//XwloFeLpYkaZE=;
        b=Azt6bA3Kkqphk/G73uCGCLgo/OF9Ymm13RO5HqNwIGhLaHqXG8mxYKpk2G/oT9CYWg
         HXpx82X96tZEfTeBkZGYIGuBUBT8h1YTD1V9M4y2qloiVLjqzkZW4G2h9anzPB+qIV30
         FmfZ6UNoIX4dC4DHNWEdDQ3Uf3SqAm5mX9pH+JXe1HTs9GEICN/aA9a5NtBeflGYkDST
         MoAIHvOC/ORV6UojBG8xFMPbhA42siNVtHJbW6bG4VbN2LohEyVYGwlE3BYMcjThK68k
         2LeQixah83lYS80FApcSBmN4MgsWO0wWqiKMsI/rz5WuswoffhEbu/O1y6aiXRPYvObW
         19PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Pq69N0RJYpGYnbgW8tHkLIUYaZ2T//XwloFeLpYkaZE=;
        b=IagvKxjU1pmUEIsOBDnEPhi5zfr9ZM0f6GDJ8CFE2xmCek/k+/jQHuHWj0yQRt2gaU
         nXeWc5MTuDWS5nzTsIHBr+7ORuJ+qvs8HUgeUwy5wDtH3QLVHW17vPk21EUIbUdJmQfJ
         V8bxLl2iTfixsD1/JdNyQnN7LKdXvw9HgX9RKqC6IL4KAac2Pu6XRztFy3Xyq4xmxeW2
         IRGKUxk21T43D/6mE2s0n8pEhwT22j0WA/Vg7Exeg3RDy3Sm49Wc3h79s2TRMXabo4YW
         TIwSqQ07LhLN5xq/m5OWgGipFKN1ixKQAtiMWMGK1IFDVf1cTMNmP+k/usXpWFDyJ9Nz
         UAIw==
X-Gm-Message-State: APjAAAUvF46jzTn4VeubdXh/6Tkq8dUizVl5zcO1XNHhyCsa68gaoddR
	c9O0VaTG4HwZ/SL9Mhnd4JdY0DEW1eaCnAQIjBYWdg==
X-Google-Smtp-Source: APXvYqzGpAuT4pJFqcbJws3N2T73UVqxElW0ODTqLEZUhF2+UfunxOC/ENmlZicyn27KgcCjsA7/EtfLLEeC/mzlw4I=
X-Received: by 2002:a2e:5304:: with SMTP id h4mr2638104ljb.75.1576079379558;
 Wed, 11 Dec 2019 07:49:39 -0800 (PST)
MIME-Version: 1.0
References: <20191211071807.GA32639@linux-uys3> <CAP71Wjz6BvcW5Ct1o2tHJyzND5ZtYfwMz6Vhmdk7prsbm=27ZA@mail.gmail.com>
 <20191211153955.GA5676@linux-uys3>
In-Reply-To: <20191211153955.GA5676@linux-uys3>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Wed, 11 Dec 2019 16:49:27 +0100
Message-ID: <CAP71WjyTvBT_XxUoZAVcdEzKZP0p1OKq62jF9zWfU7Y=pXfWEA@mail.gmail.com>
Subject: Re: [yocto] variable and task/function timing
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

hey Trevor,

On Wed, Dec 11, 2019 at 4:39 PM Trevor Woerner <twoerner@gmail.com> wrote:
>
> On Wed 2019-12-11 @ 11:06:44 AM, Nicolas Dechesne wrote:
> > On Wed, Dec 11, 2019 at 8:18 AM Trevor Woerner <twoerner@gmail.com> wrote:
> > >
> > > Is there a document, or better yet a diagram, showing the order in which
> > > various config files, recipes, tasks, etc are parsed?
> > >
> > > Figuring out the order of the config files is easy enough (bitbake.conf), but
> > > trying to figure out when various other parts are processed is just a guess
> > > for me right now.
> >
> > well the easiest way to visualize it is to think about all variables
> > being in a large array. Each variable (each row) having a different
> > 'value' for each 'column' and each column representing a recipe. When
> > bitbake references a variable it is always in the context of a given
> > recipe, so you are looking at a specific 'column'. Initially this
> > array is filled with default values resulting from the parsing of all
> > global .conf files, as you noticed the list of conf files and the
> > order is set in bitbake.conf (which itself is hardcoded in bitbake,
> > and the first file to parse).
> >
> > then bitbake will parse each recipe, one by one, and update each
> > variable's value in that array (in the relevant column). At the end of
> > the parsing, you have all variables which are known.
> >
> > you can use bitbake -e to print variables value:
> >
> > bitbake -e | grep ^MESON_BUILDTYPE
> >
> > it will show you the default value (if it is set) outside the context
> > of any recipe.
> >
> > bitbake -e <bar> | grep ^MESON_BUILDTYPE
> >
> > will give you the value of this variable as it is set in <bar> recipe
>
> Ooh, I like this already! Your row/column concept is a good mental map of the
> process. Your explanation cleared up the "bitbake -e" vs "bitbake -e <bar>"
> case for me too!
>
> > The content of the class is parsed when it is inherited. So you need
> > to initialize class variables *before* you inherit the class. e.g.
> >
> > MESA_BUILD_TYPE ?= "release"
> > ...
> > inherit meson
> >
> > in your case is very different from
> > inherit meson
> > ...
> > MESA_BUILD_TYPE ?= "release"
> >
> > >         +python do_check_build_type() {
> > >         +    _buildtype = d.getVar('MESA_BUILD_TYPE')
> > >         +    if _buildtype not in ['release', 'debug']:
> > >         +        bb.fatal("unknown build type (%s), please set to either 'release' or 'debug'" % _buildtype)
> > >         +    if _buildtype == 'debug':
> > >         +        d.setVar('MESON_BUILDTYPE', 'debugoptimized')
> > >         +        bb.plain("setting meson build type to debugoptimized")
> > >         +}
> > >         +addtask check_build_type before do_configure
> > >         +
> > >          EXTRA_OEMESON = " \
> > >              -Dshared-glapi=true \
> > >              -Dgallium-opencl=disabled \
>
> Whether I move the above to before or after the "inherit meson..." line makes
> no difference. Probably because the variable is being set by a task (which, I
> assume, is too late to have any effect, which is a large part of why I wrote
> this email: when do these tasks get called with respect to how variable are
> being set by all the different ways they're being set?)
>
> > You are
> > mixing BUILD_TYPE and BUILDTYPE in your email.. maybe you are mixing
> > that in your testing as well? What is set in local.conf will be parsed
> > first, so if you set a variable there, it will be 'set' when you parse
> > the recipe, so when you use ?= it should be a no-op.
>
> Notice, though, that I'm using two different variables:
>
> 1) MESA_BUILD_TYPE: which can be set to "debug" or "release"
> 2) MESON_BUILDTYPE: which can be set to "plain" or "debugoptimized"
>
> MESA_BUILD_TYPE is how the user tweaks the MESON_BUILDTYPE from the mesa
> recipe. Given what you've said above, however, I can see now that (as you say)
> setting:
>
>         MESON_BUILDTYPE_pn-mesa = ...
>
> in conf/local.conf will do what I want since this variable is recipe-specific
> and setting it in one recipe this way won't affect it in others.

right.. I was confused, I missed a few things in your email (well, it
was really long ;).

>
> I'm sure some will say "there's your solution, do it that way, problem
> solved". However, I think "debug/release" are much more natural than
> "plain/debugoptimized". I can't change the MESON_BUILDTYPE strings,
> they have to be one of those two, so I introduced MESA_BUILD_TYPE as a
> level-of-indirection above MESON_BUILDTYPE to allow the user to use the more
> natural "debug/release" wording.
>
> So my real question is (and maybe I'm just yak shaving at this point): given
> the row/column view of variable setting, how do we factor in the element of
> time? For example, *when* do the variables referenced by anonymous python
> functions and by tasks get set?
>
> This works (but doesn't allow me the space for nice error checking):
>
>         MESON_BUILDTYPE = "${@bb.utils.contains('MESA_BUILD_TYPE', 'debug', 'debugoptimized', 'plain', d)}"
>
> and this doesn't:
>
>         python do_check_build_type() {
>             _buildtype = d.getVar('MESA_BUILD_TYPE')
>             if _buildtype not in ['release', 'debug']:
>                 bb.fatal("unknown build type (%s), please set to either 'release' or 'debug'" % _buildtype)
>             if _buildtype == 'debug':
>                 d.setVar('MESON_BUILDTYPE', 'debugoptimized')
>                 bb.plain("setting meson build type to debugoptimized")
>         }
>         addtask check_build_type before do_configure

I missed the fact that you were using a task.
You can probably call do_check_build_type() when setting
MESON_BUILDTYPE instead of using a task, e.g. something like this:
MESON_BUILDTYPE = "${@do_check_build_type(d.getVar('MESA_BUILD_TYPE'))}"
