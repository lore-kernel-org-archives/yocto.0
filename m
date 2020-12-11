Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
 by mx.groups.io with SMTP id smtpd.web12.9084.1607702370604760499
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Dec 2020 07:59:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xg/3UB1S;
 spf=pass (domain: gmail.com, ip: 209.85.218.66, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ej1-f66.google.com with SMTP id x16so13011258ejj.7
        for <yocto@lists.yoctoproject.org>; Fri, 11 Dec 2020 07:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=umUmC7ACDEpXNdKALw/Bl8KSESTwaWzCwTIjFYTbSAY=;
        b=Xg/3UB1SJ5llKXld8CwBtztAWMsf4K/5ma+DoS5DRBYv9veaVyYhLNm5McMZ/XRSqm
         zeIjfuNFDzORZByjwdXzR1g4mbJYIByY/xANI65ChDr9X7rCsMuF9NprwgbOcEPVrQnQ
         QzGthDeeuc+8Uc+Ljx8kJOze2b0LYcOBi+Mj5BjmnhDLPWLTnvm9ufwkZaIUsD83f9Ey
         8I0SxLn/H3fN3MYfs0k3e+jtFYKIh9Hq+qO8r8mIRAe8k3ehztSIC67O5aiyrbVAclBR
         4OgnLpQLuMPJW1F4ck9BxKwXAAbwi0S4Uc3DFW7HC0RtSmvbQz1uCA6FOIsnsDYeHI6O
         Ar4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=umUmC7ACDEpXNdKALw/Bl8KSESTwaWzCwTIjFYTbSAY=;
        b=YAGWYSpycNmtah08AcdTJrLHRkldSDvUprYHW6tqvakSGcn334xz/QHKBwn4m91oyo
         z3HnkpenevAezrymTQXD6xRKMmZq2HNfV553JdHtY5k9mo9bc63hApvkfpk8u45WK6P6
         rGjfk0zSH77+rpCxn4vO2pRMzXLCQCYVb0Yi5JTjVqE73KFd4MoZsU1kovGNHxW4z2rw
         vLEZL/UEjzC/lkhJKTEf5ip5mefdeLT2A/4+DNoMH7dzAttLU+URYrbc/1MK/wTUsSJ6
         jHe6fU9gRzLyNd31rJ1evjC93BnZ+HRvcBg333Vsq4CG9lKc60l2bB0gKUhGdfOFulJ3
         qDcg==
X-Gm-Message-State: AOAM532q8VeFxDr7Ljuh1Hjy0J9AeJ1AB1R0WDifbM1rcfGByPzV10tH
	FS1VnxT9RBLjKvzO3qIvT9JgauU4mGUlWb5QJtg=
X-Google-Smtp-Source: ABdhPJzvOkmd1DIhQInvRA9SVB/VtElpruJJhl22xHfBgPTgo8F48VmKqVwHf85XqoJQK00BGPkFdaB3ghcyMGKPwXs=
X-Received: by 2002:a17:907:d01:: with SMTP id gn1mr11892270ejc.357.1607702369030;
 Fri, 11 Dec 2020 07:59:29 -0800 (PST)
MIME-Version: 1.0
References: <20201211144752.13869-1-JPEWhacker@gmail.com> <CADkTA4NtO3M+aX0aFNBFqu9-7sGZxRCo9GrJKojmve0Dry3Gpg@mail.gmail.com>
 <a0c2e84f-acb8-2619-dbab-a401cc20e2b3@gmail.com>
In-Reply-To: <a0c2e84f-acb8-2619-dbab-a401cc20e2b3@gmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Fri, 11 Dec 2020 10:59:17 -0500
Message-ID: <CADkTA4NssWeuf3qRDb_eNjAx6rVFWv8v3fiJjarHpZ+f_hT6cQ@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] Fix Rock Pi 4 serial port
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>, Trevor Woerner <twoerner@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, Dec 11, 2020 at 10:55 AM Joshua Watt <jpewhacker@gmail.com> wrote:
>
>
> On 12/11/20 9:16 AM, Bruce Ashfield wrote:
> > On Fri, Dec 11, 2020 at 9:48 AM Joshua Watt <JPEWhacker@gmail.com> wrote:
> >> Fixes the serial port output stopping mid way through the boot process
> >> by reverting the kernel commit that caused it.
> > If you want, I can also pick this up and merge it directly into
> > linux-yocto and do a SRCREV bump.
> >
> > Have you tested against 5.10 ? I'm working through issues with it now,
> > and it would be nice to fix this before it pops up again on the next
> > reference kernel bump.
>
> When I use `linux-yocto-dev` as the kernel provider, it works just fine
> (in fact, I can't seem to find the commit that *fixes* the problem
> there....), so I think 5.10 will be OK? Is there something else I should
> try instead?
>

Nope, that should be enough to show that it has already been addressed
upstream. By default, you'll get a v5.10-rc with -dev in master, so
that confirms the fix.

>
> I'm not sure if we want to backport it to linux-yocto or not... I
> presume upstream backported it because it fixed something, so I'd be a
> little worried about a regression somewhere else.
>

True that. And the time spent to prove that, or identify the fix isn't
worth it (since 5.8 is going away).  If this was a longer term
version, I'd create a BSP branch and we could isolate it that way, but
again, just not worth the wrangling.

Bruce

> >
> > Cheers,
> >
> > Bruce
> >
> >> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> >> ---
> >>   ...-resolve-supply-after-creating-regul.patch | 53 +++++++++++++++++++
> >>   recipes-kernel/linux/linux-yocto_5.8.bbappend |  4 ++
> >>   2 files changed, 57 insertions(+)
> >>   create mode 100644 recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch
> >>   create mode 100644 recipes-kernel/linux/linux-yocto_5.8.bbappend
> >>
> >> diff --git a/recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch b/recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch
> >> new file mode 100644
> >> index 0000000..3dd336b
> >> --- /dev/null
> >> +++ b/recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch
> >> @@ -0,0 +1,53 @@
> >> +From a414d39b848002e15531f2538d2b6427ce51d07d Mon Sep 17 00:00:00 2001
> >> +From: Joshua Watt <JPEWhacker@gmail.com>
> >> +Date: Thu, 10 Dec 2020 15:59:47 -0600
> >> +Subject: [PATCH] Revert "regulator: resolve supply after creating regulator"
> >> +
> >> +This commit prevents the serial console from working on the Rock Pi 4
> >> +for some reason. It *appears* to possibly be fixed by some other commit
> >> +upstream, but after a lot of head scratching and bisecting, I was unable
> >> +to find which one, so just revert it for now and we can deal with it
> >> +later.
> >> +
> >> +This reverts commit 96c6b5d5775637b3095ef934f871044811fd4db7.
> >> +
> >> +---
> >> + drivers/regulator/core.c | 21 ++++++++-------------
> >> + 1 file changed, 8 insertions(+), 13 deletions(-)
> >> +
> >> +diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> >> +index 25e601bf9383..be8c709a7488 100644
> >> +--- a/drivers/regulator/core.c
> >> ++++ b/drivers/regulator/core.c
> >> +@@ -5187,20 +5187,15 @@ regulator_register(const struct regulator_desc *regulator_desc,
> >> +       else if (regulator_desc->supply_name)
> >> +               rdev->supply_name = regulator_desc->supply_name;
> >> +
> >> ++      /*
> >> ++       * Attempt to resolve the regulator supply, if specified,
> >> ++       * but don't return an error if we fail because we will try
> >> ++       * to resolve it again later as more regulators are added.
> >> ++       */
> >> ++      if (regulator_resolve_supply(rdev))
> >> ++              rdev_dbg(rdev, "unable to resolve supply\n");
> >> ++
> >> +       ret = set_machine_constraints(rdev, constraints);
> >> +-      if (ret == -EPROBE_DEFER) {
> >> +-              /* Regulator might be in bypass mode and so needs its supply
> >> +-               * to set the constraints */
> >> +-              /* FIXME: this currently triggers a chicken-and-egg problem
> >> +-               * when creating -SUPPLY symlink in sysfs to a regulator
> >> +-               * that is just being created */
> >> +-              ret = regulator_resolve_supply(rdev);
> >> +-              if (!ret)
> >> +-                      ret = set_machine_constraints(rdev, constraints);
> >> +-              else
> >> +-                      rdev_dbg(rdev, "unable to resolve supply early: %pe\n",
> >> +-                               ERR_PTR(ret));
> >> +-      }
> >> +       if (ret < 0)
> >> +               goto wash;
> >> +
> >> +--
> >> +2.29.2
> >> +
> >> diff --git a/recipes-kernel/linux/linux-yocto_5.8.bbappend b/recipes-kernel/linux/linux-yocto_5.8.bbappend
> >> new file mode 100644
> >> index 0000000..5a31842
> >> --- /dev/null
> >> +++ b/recipes-kernel/linux/linux-yocto_5.8.bbappend
> >> @@ -0,0 +1,4 @@
> >> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >> +
> >> +SRC_URI_append_rock-pi-4 = " file://0001-Revert-regulator-resolve-supply-after-creating-regul.patch"
> >> +
> >> --
> >> 2.29.2
> >>
> >>
> >> 
> >>
> >
> > --
> > - Thou shalt not follow the NULL pointer, for chaos and madness await
> > thee at its end
> > - "Use the force Harry" - Gandalf, Star Trek II



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
