Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7949EC83F25
	for <webhook@archiver.kernel.org>; Mon, 21 Jul 2025 13:09:23 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web10.40146.1753103362457660034
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Jul 2025 06:09:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=D0sP6AK0;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6fb0eb0f0fbso56768756d6.1
        for <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 06:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753103361; x=1753708161; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NHwToOVYFdZ6WnAePz50FwhIg9s0XznRz79XCAXE8ZM=;
        b=D0sP6AK0ZkHJCcq+es/ItiCsI7z15BEp1TcuUgC967iQ1rlaS2HWXkr6cxtOx6BYQG
         GonKsHyQb1izdlbPG9OcI3wyDhiYavbIfhVubXjpMAIqU6Qh4JIA2RUu6QKo4dmsh9yN
         07WNKzpGYqm+gkmKGFWanahsVh7E9a3zbub8Bli7G7FIqa7A+E23yIfzXlqG1hxuiuPe
         y4Nzv4kGGtaqLbT8EzwPDTEYE3P1Cc8Q9R7ScNo7Za8j0iv6pTCf1HHv5bYae/AWAC9Z
         aD7tcqt6gvUzUVO3rKn4rtZXAUv8Y17mgpp3t74vM3O+vdN5eNF7R/tCyIgMkV8dWLhH
         XHHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753103361; x=1753708161;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NHwToOVYFdZ6WnAePz50FwhIg9s0XznRz79XCAXE8ZM=;
        b=YJl7/PhkuiSePttb7arIIDS1BVGFrvZ03QlitwIrsy5K8+yP+cDKiLVYWElzVvavVB
         VqcTDctcHm1/KTy1qHy8W2lDWvDBFhyKfgPSdOUXQyihNNd3IMnxumSVmy529FO90AvP
         zsBfKBF5L3Q9+vhiNe17cqPBN4KZsvCYFrYOCt3a2TbpE6GDMLRDyJDwbqTooMxqMhRe
         SBlAbgpXsAH/zbxjk7BxtsQmscDUXViZR9kYR71JLbP+vttKM/NNdcRhYTIsahil6xHa
         3x80kt7oxOF7ytmHyM8lKZEG3OldjVzQiLvkhiB7vGs0isLTPuK5/8tBIIS0HJZUZWxo
         AVrQ==
X-Gm-Message-State: AOJu0YyLXmEVzMaR65b13pFToOcYyU1ZHTRHFZ8Nbh903U9QVddUAXFt
	aVF8+z/zVhiSg6jXNa4gaSaxO+1ATJjVndKIoIevosimCm/SGBj3NNsOHO16g63q3Oc5ljnlVl+
	BK2tDlVDpqZXtJc2IKdest/iA8b+V4lM=
X-Gm-Gg: ASbGncvE71ygqKXcgEhUEBpE6FwZxXeWpElRAo7yY8RfxK30YO+eaq03bBHI034JKfQ
	IZLDCr3jeElEZnNRddBcRickeaaq17897jBQTYMULWHfKm2Ck+ZPoSeoLwAhlY/MPykshVDi9zy
	Rgtpugyo06QgbGxXl4lpIzLy77eTVf49FNoooItk7nDfDztotdlQvNA8/HSrN2xVFPo3rIP9Spw
	U12y3cJO6hCEhqQTATsJc5v4RKksV4vonGofKhF
X-Google-Smtp-Source: AGHT+IG5KQiybLgSLLAomkhVa2entdLNf6tYdOtUdIHL/YBAw5zj6wYJHSNYwP0o4oFKQcrE2ugDR2JJJEXYNUcAsOw=
X-Received: by 2002:a05:6214:240f:b0:704:95da:99df with SMTP id
 6a1803df08f44-7050559717amr215395406d6.22.1753103361043; Mon, 21 Jul 2025
 06:09:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb_mX+D24LjOozpm=m_Y=5AhHSX=5OtNdbNHWg99mcuFNw@mail.gmail.com>
 <CANNYZj9R79Um9BvKmZmOrCZLnVaDk3cfO1KHM8bu54mu3F-68Q@mail.gmail.com> <c5c7b6cb0ede0893d9c760ebeaaef042c248fcc1.camel@linuxfoundation.org>
In-Reply-To: <c5c7b6cb0ede0893d9c760ebeaaef042c248fcc1.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 21 Jul 2025 15:09:09 +0200
X-Gm-Features: Ac12FXxMfTrp7XRxjbQ8b7ZOpZAThwx7Imy_W12zoARJDwf1DiIVY7CHS-UCe3w
Message-ID: <CANNYZj8r4KOxDO6Z6cCN50ADRiAzBhSx=8rVZfY7ZvWPHdz4EQ@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 1 July. 2025 (WW26)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 13:09:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65688

On Mon, 21 Jul 2025 at 12:27, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> > Before that can happen, the tool still needs additional functionality:
> >
> > - nested bitbake configurations, that would be an equivalent of
> > 'templates' in autobuilder's config.json. E.g. a top level base config
> > that sets autobuilder-specific fragments for all builds, then an
> > intemediate config that sets what images and other targets get build,
> > then final configs that set target machines.
>
> I've been looking into this a bit more. I don't think we need to
> replace the template functionality in the autobuilder, at least not at
> this time. What we need to do is just switch over to using bitbake-
> setup to setup poky instead of needing the combo-layer derived repo.

That's fine and reduces the time pressure; I somehow thought you
expect a full end-to-end autobuilder demo of bitbake-setup handling
both the layer checkout and the build configuration.

I'll still implement nested bitbake configurations, they will help
reduce repetition and clutter e.g. here:
https://github.com/kanavin/bitbake-setup-configurations/blob/main/yocto-master.conf.json#L49

This will look much neater and readable as a tree where nested
configurations add details to the parent (e.g. adding a BSP layer and
picking a particular machine from it). I think that's a rather common
use case.

> > - ability to override git repo locations/revisions from the command
> > line. E.g. the config file sets master branches for all repos, but one
> > wants to build master-next.
>
> There are two pieces to this. One is being able to select/override the
> repo/branch/revision as you mention. Another key piece is being able to
> point at a local cache of repositories. The tool may handle the latter,
> I'm just struggling to page in the context.

I guess you're looking for 'bitbake-setup change-setting default
dl-dir /path/to/dl-dir' ?

(I know the tool currently offers no help in discovering its own settings).

> > - ability to select a subset of bitbake configurations for
> > initialization/update. An autobuilder config would specify dozens of
> > configurations, but any particular worker machine would only work on
> > one of them. There is no need to initialize every bitbake config, and
> > it would only add delays and clutter.
>
> When I did try the tool, I was a bit surprised to see the multiple
> build directories being created. This also won't scale well.
>
> I suspect the more user friendly workflow is going to be to create a
> single build directory and then point the user at the configurations
> available, i.e. the features (which include the machine/distro
> selection).
>
> This is going to be the part of the workflow which is going to make or
> break the tool and it isn't quite right yet. We have all the underlying
> pieces now, we just need to expose it to the user in the right way. As
> it stands, it isn't feeling quite right yet.

I agree; initializing everything was simply the easiest way to produce
the working proof of concept. I didn't want to have to 'decide'
upfront how this should work.

Here's the proposal:

- 'bitbake-setup init' will not initialize every bitbake config that
the json specifies; rather it will print a list of them (if len > 1)
and ask the user to choose (trivial in python and does not require
curses or other ui libraries; oe-setup-build already does this with
templates);

- it can also take an optional second parameter to setup a particular
bitbake configuration non-interactively;

- it can also take --all to set up everything like it does now.

> > Once all of this in place, config.json could be gradually transitioned
> > to defer to bitbake-setup:
> >
> >        "qemux86-64" : {
> >             "BBSETUP" : "qemux86-64",
> >         },
> >
> > and the code would run that with appropriate build-specific
> > parameters.
>
> Or perhaps this just becomes a list of features...

The goal for me is allowing easy replication of autobuilder failures
by anyone who submits patches, so they never have to find the right
bits to copy-paste in config.json or other obscure places. One idea is
to have a step that is clearly marked on the buildbot UI: 'look here
if you want to replicate this build'. When expanded, there are clear
instructions that require typing as few and as short commands as
possible - ideally just a single bitbake-setup invocation followed by
applying the patches-under-test, and then it's also using CDN sstate
to hopefully get to the fail as quickly as possible.

Thanks for looking,
Alex

