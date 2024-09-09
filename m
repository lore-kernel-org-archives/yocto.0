Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AA69ECE579
	for <webhook@archiver.kernel.org>; Mon,  9 Sep 2024 09:34:03 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.48902.1725874441869000404
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Sep 2024 02:34:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dknqIFzA;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5365b6bd901so2764669e87.2
        for <yocto@lists.yoctoproject.org>; Mon, 09 Sep 2024 02:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725874440; x=1726479240; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=06mxYym6dIk4iU5ManQo455VubPeRXlcj4aF70pxW+Q=;
        b=dknqIFzAfcNNXlQFxE4w34XqF2YsDCXAPJk6R2GVVd4ZUNzvfwdjRXAWEqCHlHG8HA
         +ouSkFHYOIHFhuZ/6gC05iYWX9Ih3qyZ9L4/gEIafoNDio25Qd4kI5o/YtbthE9Qlk9V
         Ek464RO+2wYNeIogeZTKcJRZe8CE5HuDVm7BQqCriTm1jTjL7KK41IKE7TaHRn4if5ww
         tR/rBiK0+35KuaoGsJnXHTqdtPhtpcXE/YgJoQ5g2W78AJ2W/yY1KpA2GKQQPU/XCA0E
         JWfynFg3QZDzZynSlBvO2ABNbLOIWW+gopycWBaijyj4ih2B4q7h6fI/IQAWahIrSvPU
         nuqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725874440; x=1726479240;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=06mxYym6dIk4iU5ManQo455VubPeRXlcj4aF70pxW+Q=;
        b=dweDb1daRnmwDiUgQB5YLmGVK8hxaOkc+ho761sNlhcRcXchIc2PCsSsBu7+Dkleiw
         imV9PT4ZDACNgvnGtvfFvhSFNuVtvSnkpQFYH1Xd8qvsBY/NYbTACkbqNTWF7L7+b77l
         GQ1cqSLa01rAhacxXWCBNoONu17kAUfKHWqyCioU95L43YP5VfKx0syqiBXwf4mXtfU2
         A9CBrXO5gY7Yk6hA67Zrv9FmuHpSBWkrBCXr51AhwYFXDf50JVrDprnkurN2PxxX15oV
         /fA97qV/WrTKypTjkgNawJKQV7e0oanGZ24dlkRVxcsAPIboV+cTHSpn78nLRK3IdRmx
         7Oew==
X-Forwarded-Encrypted: i=1; AJvYcCXxl6fWEm+iTjZvqsjpK7CgFjMMWBKo+X+i9HeriYFH5OX5F0lz4ctRi8bxTEWQerxPltuWIw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Ywz0l+Na5GxUhasaytBogzApYU+qx4INkwf9zl2tN+EAH32axxD
	tdl/OyOVRxiJ4m3NIj2wqCmN573rqxca4KieGMSiM3OFZUR2iUU6cWdbhV1jRcM+i2RBtEgvBU7
	smUNpdeZekUs0RvFv3+4gbqFqd14=
X-Google-Smtp-Source: AGHT+IHxAkHjHeRP6YFUt6P71rOVUbzIQyQw2OvCHrEQRn9FDY9YOlTzbGF1n7iQHR4PNDMN/NOvEdCjTEXyKpbwp8s=
X-Received: by 2002:a05:6512:b97:b0:535:d4e9:28bb with SMTP id
 2adb3069b0e04-536588068aemr5298320e87.46.1725874439490; Mon, 09 Sep 2024
 02:33:59 -0700 (PDT)
MIME-Version: 1.0
References: <20240502105745.3073153-1-alex.kanavin@gmail.com> <8ddf5dac-2cb8-4c6a-b4e9-b8b281058cb1@ti.com>
In-Reply-To: <8ddf5dac-2cb8-4c6a-b4e9-b8b281058cb1@ti.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 9 Sep 2024 11:33:48 +0200
Message-ID: <CANNYZj8THxZ6y8sv3Y7A9br3zfh4GMpec4g4Y-+gMzGMJf5CAA@mail.gmail.com>
Subject: Re: [bitbake-devel] [RFC PATCH] bitbake-setup: add the proof of
 concept implementation
To: Ryan Eatmon <reatmon@ti.com>
Cc: bitbake-devel@lists.openembedded.org, yocto@lists.yoctoproject.org, 
	openembedded-architecture@lists.openembedded.org, 
	Alexander Kanavin <alex@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Sep 2024 09:34:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63802

On Thu, 5 Sept 2024 at 23:10, Ryan Eatmon <reatmon@ti.com> wrote:
> Hello.  I'm attempting to play around with this patch and test out
> bitbake-setup and how it works.  My testing it with trying to take one
> our existing setups and try to get it to work.  Here is some initial
> feedback written as I ran into issues.
>
> I'm running in an ubuntu-22.04 docker container based on crops.

Thanks for the feedback and the fix. The plan now is to focus on
getting bitbake fragments setup to the point where it can be merged,
then go back to bitbake setup, but I wanted to address some points
right now.

> 1) In order to use list it assumes you are fetching a git repo and that
> the git repo has a specific layout.  That seems a little problematic.
> What if the repo we want to point has all kinds of configs for different
> tools in it and we just want a sub directory under the git repo?  How do
> we specify that?

The config repo is minimal by design, and isn't meant to store
anything except a reasonable amount of top level configurations files
in a directory structure (e.g. you can list them and not be
overwhelmed by the amount). The idea is that users don't even need to
know where it is, and what it contains, and it never needs to be
cloned separately either (which it would be once you start putting
'other stuff' in it).

> 2) The uri for a sources entry in the json file automatically adds in
> protocol=git even though I specified protocol=https on the line.  We
> prefer to always use the https for git repos and not the git protocol.
> I modified the code to not do this so my testing could continue.

This is not the case. If the entry in the json starts with https://
then the tool will use protocol=https. Basically it needs to convert
URI that can be given to git on the command line into an SRC_URI type
string that can be given to bitbake's git fetcher.

> 3) If we specify a unique key for each of the sources, why do we need to
> then also specify a path to place the downloaded sources into?  Why not
> just use the same key value to reduce what all is needed to specify.  We
> can still support "path" for those that want it, but if it is left out I
> would default it to the unique key for the repo.

Here I had simply followed the layer configuration schema that makes
path mandatory. Requiring a parameter has its advantages, you don't
have to ensure that the default is documented, standardized and all
tools follow the standard. You also don't lock yourself into the
default value that must be followed until the end of time.

> 4) The init step cannot be run multiple times.  Initial errors are
> because the build-dir already exists, but overall it's a good idea to
> allow for rerunning the setup to allow for fixing issues without needed
> to nuke the entire build dir.  An example of why you might this is if
> you want to add a new layer to your config, or change a commit, or
> whatever...  Rerunning the init should be able to apply the incremental
> changes since the last run.
> In this case I was running into an error message from a file in oe-core,
> which I sent a patch for, and was trying to simply fix that file in the
> layers dir and rerun, but kept tripping over the fact that I cannot
> rerun init.

There are two different scenarios described here:

1. 'init' failing halfway through (because of a bug or a config typo)
and leaving the directory in an incomplete, inconsistent state. I
don't think the tool can reasonably resume or increment anything here,
the best it can do is say that the directory already exists, and can
be forcibly re-initialized with --force (which would erase the content
and try again). Another option is to try erasing everything on exit in
an all-catch exception handler.

2. 'init' completing successfully, and the build-dir is then fine, but
it needs to be brought in sync with changes to the config or layers it
specifies. This is what the 'status' and 'update' operations are for.

In both cases the hints and error messages can certainly be improved,
but I'm not sure there's anything that needs to change in the command
flow itself.

> 5) What is the purpose of creating the top level config git repo?

1. To preserve the history of changes to the top level configuration.
So that if you run into trouble you can see what changed. And maybe
roll back to the previous version etc.

2. To make it possible to publish the configuration for others to use.
You can do it with a 'git push' or we could also add a separate
'publish' sub-command.

> 6) The code loops through the layers looking for scripts/oe-setup-build.
>   What would happen if I shipped a rogue layer with that file in it and
> included it as the last layer in the sources?

I guess it would run that instead? If you include a rogue layer into
the config, there's lots of other rogue things it can do when bitbake
starts, but maybe you have a suggestion?

> 7) I'm getting an error when running the setup-build script:
>
>    File "/scratch/builds/bitbake-setup-test/layers/setup-build", line
> 107, in setup_build_env
>      subprocess.run(cmd, shell=True, executable=os.environ['SHELL'])
>    File "/usr/lib/python3.10/os.py", line 679, in __getitem__
>      raise KeyError(key) from None
> KeyError: 'SHELL'
>
>
> SHELL is set to /bin/sh so I'm at a loss to see why this would be
> failing.  But because of this I never get a build.sh script.

For this I would really appreciate if you can get to the bottom of.

Thanks,
Alex

