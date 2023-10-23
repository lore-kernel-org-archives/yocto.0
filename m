Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1401FC001E0
	for <webhook@archiver.kernel.org>; Mon, 23 Oct 2023 12:24:31 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.119033.1698063866533103387
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Oct 2023 05:24:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WedcQ3h+;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2c3e23a818bso37233921fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 05:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698063865; x=1698668665; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oFbW5DkHpWjeLiw7FBk0suwqO15NZP71Bja7Si8AcZY=;
        b=WedcQ3h+vI2cXnibTweIE22o3MJQ1QOOVakB40d2U2Jb4JMjuOf7IsEBHVBvYAmDel
         gWOT2IMgnywHTO01oUEMky5FgY6zYUZ9Z7ZiQq/38LhCB1zyVy8DzpqE0+m4sQpu5Plu
         DXubOkttjZ70W3JOrdWALSY+JgCyzt1kbaIWwgW9P8ak/oWUdZbIwbkFMFHFZcPzHpoo
         MJTISVwXOVEtBP/X85O1neHudVOtkeQOT4lkGLIvTpSc84hueWiTl8Dqk922et0dU/7L
         WBEdoUJJblJVkRmzC358Syy2tBu3WYjfstg4OvGfpAwudBwA1ZmukQM3M51qtYUyymHL
         MqtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698063865; x=1698668665;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oFbW5DkHpWjeLiw7FBk0suwqO15NZP71Bja7Si8AcZY=;
        b=ZfxxSkAmBQeY5wJpBFTAVUTL8w8kDp8ec9jBKHJwYcEoYI1h0n5+NEV+TV2jK2I6vB
         pnkOqpE5+Pnj5TR2jg7iWkSHNcPybys2VYfLnI5bPuS7qha8/0QraK6Axr0TEkHegWHI
         cpEcBWkrphnZr/WDsONVutUPPlWWMuQZca8mcLNg3X3FM894ziFXRzJ2/3W3a06FJKeY
         wXF5TqV8nK2Wk0PbKioNvCKIOUetgpsp/G6yx+XNoWQhaK5AdbMsWoHmcXXcUbDZjEw8
         73lwDccStDPggRvHD+ne3i7k5kIBXS0IlNGMYDlLCP+h0sS+NRxikCKa37oSBvw1w6go
         HebQ==
X-Gm-Message-State: AOJu0YzQzxOS8HHvARRw5tsrgHCo5PBuOPMiIZW18wtfWXZLU2wwtoiY
	I8RBjce7VPgB6H3aXVknOm3cD/u6jpVVTfzRpig=
X-Google-Smtp-Source: AGHT+IHD2R8reLpatN2/rxZI9n2+ZG4ZjXkjrA3kOQje9YgCUZ1esroNedhT3RzhZCL7YFOwpbCLQjIT3/B/+mDTldI=
X-Received: by 2002:a2e:be93:0:b0:2c1:795d:2e4c with SMTP id
 a19-20020a2ebe93000000b002c1795d2e4cmr2985362ljr.2.1698063864395; Mon, 23 Oct
 2023 05:24:24 -0700 (PDT)
MIME-Version: 1.0
References: <20231020140218.10688-1-david.pierret@smile.fr>
In-Reply-To: <20231020140218.10688-1-david.pierret@smile.fr>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 23 Oct 2023 14:24:12 +0200
Message-ID: <CANNYZj8=ny6eVz_LC56=-nsY17AtazNouWLhkrAs1Wuyx+djBA@mail.gmail.com>
Subject: Re: [auh][PATCH v2] upgrade-helper.py: Add layer command line option
To: David Pierret <david.pierret@smile.fr>
Cc: yocto@lists.yoctoproject.org, Yoann Congal <yoann.congal@smile.fr>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Oct 2023 12:24:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61449

Thanks for working on this. Some comments below.

On Fri, 20 Oct 2023 at 16:02, David Pierret <david.pierret@smile.fr> wrote:
> +    parser.add_argument("-l", "--layer-names", nargs='*', action="store", default='',
> +                        help="layers to include in the upgrade research")
> +    parser.add_argument("-L", "--layer-dir", action="store", default='',
> +                        help="the layers root directory")
> +    parser.add_argument("-m", "--layer-machines", nargs='*', action="store", default='',
> +                        help="machine to build for the layers")

Can the one-letter options be dropped, and only full options provided
(for these three new options)? Otherwise command line is going to be
rather non-self-descriptive.

> -                if self.recipes and pn in self.recipes:
> -                    pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))
> -                elif self._pkg_upgradable(pn, next_ver, maintainer):
> -                    pkgs_list.append((pn, cur_ver, next_ver, maintainer, revision))
...
> +                    if layer_recipes and pn in layer_recipes:
> +                        pkgs_list.append((layer_name, pn, cur_ver, next_ver, maintainer, revision))
> +                    elif self._pkg_upgradable(pn, next_ver, maintainer):
> +                        pkgs_list.append((layer_name, pn, cur_ver, next_ver, maintainer, revision))
...
>          return pkgs_list

I think it's time this function is refactored to return a dict, and
not a tuple. Can you make it so with a separate commit coming ahead of
this commit?

I would also prefer to avoid adding an extra nested for loop in it,
with the awkward shift in indentation. Can the outer and inner loop be
in separate functions?

weeklyjob-oe.sh should be folded into weeklyjob.sh, rather than be a
separate copy-paste-tweak script. List of layers can be passed in via
command line perhaps, defaulting to just poky/meta/. It also still
contains the sed MACHINE invocation which should not be needed?

Alex

