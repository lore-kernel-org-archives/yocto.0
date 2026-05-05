Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 837A3CD3427
	for <webhook@archiver.kernel.org>; Tue,  5 May 2026 16:17:12 +0000 (UTC)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.51.1777997831064785358
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 May 2026 09:17:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20251104.gappssmtp.com header.s=20251104 header.b=ZbeAfvBu;
 spf=pass (domain: baylibre.com, ip: 209.85.217.45, mailfrom: tgamblin@baylibre.com)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-60fecdd1efaso1866278137.3
        for <yocto@lists.yoctoproject.org>; Tue, 05 May 2026 09:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1777997830; x=1778602630; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6nGSvQVpSfeJYCcs1PDXxkoAM88WLZN8az4OGBrRbmg=;
        b=ZbeAfvBulrY0pUwm3sLJA0xVhprdKyZyA3zz2x7vthi564ghut8xBVZ0424mfTEEBV
         CgwkoiCXt0i6o0s9Qm3m9hc5oZJYVTlqO8W+h92iGzUOl83cSfC26kfQ4U+bpiJjBhjz
         Ntkff3BKaNWkbU8GhRBZVpTlIgJO5UlN2camCqnRGjZsYK2sjWnUNtm0AxjuFmzs0scs
         Aviw+ihoU7O6v44ltUHqcmYS8OGaAxxosYNDm4b73OTy8GYjjxN06kwp302r1yYFiN+2
         TuadisW7PNL4oxc/O68Y+67AT9QPqkMf5jn2tG850tfMhDbNhr7MkHsMQ5Vs7XWMCr6y
         Yv8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777997830; x=1778602630;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6nGSvQVpSfeJYCcs1PDXxkoAM88WLZN8az4OGBrRbmg=;
        b=LnGD9Dn+d1un/zGG/F2VXm3mQJwfnD5IZ0h5l7xx2p+6LNz8pEFSAnHaStjsjXNFDg
         Sqn7EoePxUnSd8gePCtoON4GuPXP/uiu0yYXQbRhpqj/3T0JE2eBxYRSyzGys7rukMHf
         y4GevzJdTOqAMhos4hEKcZlfDgb1or78Y4tHvdOAijjcv/EH4suGxXA3bUamvR1Ra8q6
         78WKbv27i5MyDOmwLr0N4oPlkaf1TwSHNkQnGgJihLldWBnam5i+lcSpPYuj+uL2xg9I
         5WPkuvu58BsfAb0L+BecAlgAByCcxxAc2BqF62ayOXIhA0DEYwiiB8ogeOET8WgVRBCv
         yhUQ==
X-Forwarded-Encrypted: i=1; AFNElJ90zGu7NcrNJ5u79oQt0ceq8LFu1YJFeRMAb23iO/yNeRCrdxRO9eYHHZ+IiMSHHFXtPMq+zQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yzy6QxTR2ZuojRK++G1ZZ3mFpgBw5ij/3EUgMUSm6QPiQPbtVi8
	5FIEcjp6KBuiJostLhbZk7XNJY4XKQtH5z0CaaWqyKAAnjJqRapthWgysC+0Qqsmn7k=
X-Gm-Gg: AeBDievpZyUG6tBhgKOmcNGWmj/MJZo8e2y6rDVQ803nHGB8wVNOWyfuEkUJaF5DIv+
	Mx2OBKsX101DSNhdHKSPMol8BldTF4rZjM62zC1+BNwRC2HR4uNFq00s42c5sNiIsQTRXQIyH6u
	AoJIpQW3SaVrBRwuYzixp0/c3TTsa07VGz0PJ3SANKgRXmadBLPDm0KUt5nx5ofxkY+bumAySEf
	QvWyR7n9AhKcLnDE5vZ4Vy6UKNR0zfsoOzj5wqPE5L2w7mluuuT+gWtANfo0XiaL3b1aA8IJyJ1
	zKoLzAot5r1h4IAl3Faw2cdwqkYulRtldYOPkW0lwVZM1/+xvmqwW1flrNw9jgUpw/2jj/pyvKU
	tWVwsID3BPq8QZenQmqnOlMgYGodif4+8zA49EkZ1DoeFdkF8eTFtqPD/s2CN0awo3mBwA+xCnp
	aY1klrJ7sZi/DXt1upyOOQwBqdLvUIihes7WtYcXNg7r4+HwoENBmpMPtn3xB4Fwjp4q1NPP0t3
	FYjBvNqlv8eJo4=
X-Received: by 2002:a05:6102:50a5:b0:605:3556:6619 with SMTP id ada2fe7eead31-62f593135e9mr2250953137.31.1777997829842;
        Tue, 05 May 2026 09:17:09 -0700 (PDT)
Received: from ?IPV6:2001:1970:3847:e000:1977:be2f:4a71:2892? ([2001:1970:3847:e000:1977:be2f:4a71:2892])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-62bfd8b5aeesm7598475137.7.2026.05.05.09.17.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2026 09:17:09 -0700 (PDT)
Message-ID: <66b3dbc7-e6f0-4013-8d2e-d646f0fd8c9b@baylibre.com>
Date: Tue, 5 May 2026 12:17:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Openembedded-architecture] proposal: build pipelines in
 bitbake-setup
To: alex.kanavin@gmail.com,
 openembedded-architecture
 <openembedded-architecture@lists.openembedded.org>,
 bitbake-devel <bitbake-devel@lists.openembedded.org>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Zhangfei Gao <zhangfei.gao@linaro.org>
References: <CANNYZj-hrSdEoX5XRmM1MYhXMVkqpa0CBHHbMqVhjM034bKTDg@mail.gmail.com>
Content-Language: en-US
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <CANNYZj-hrSdEoX5XRmM1MYhXMVkqpa0CBHHbMqVhjM034bKTDg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 May 2026 16:17:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66484


On 2026-05-05 06:17, Alexander Kanavin via lists.openembedded.org wrote:
> Hello,
>
> bitbake-setup currently doesn't support describing build pipelines: a
> sequence of commands that actually produce something useful. For a
> true end-to-end solution this gap should be filled.
>
> Here's my proposal, which probably has obvious shortcomings, that I
> would like to hear about :)

Hi,

Thanks for submitting this proposal. I will try to summarize some of my 
thoughts from the public call and otherwise in-line.

>
> 0. Design goals:
>
> - something suitable for most situations, including newcomers running
> a local build, and CI doing a nightly job
> - avoid custom scripts in most situations
> - self-documented; everything must be described
> - extensible; if there's something missing that no one thought about,
> it can be added later in a way that supplements existing features
> without replacing them.
>
> 1. Specification in a build configuration would look like this:
>
> "build-targets": {
>      "steps" : [
>          { "name": "build-apple", "description": "Build an apple for
> the purpose of making apple pie", "command": "bitbake apple-image"},
>          { "name": "build-orange", "description": "Build an orange for
> the purpose of making orange juice", "command": "bitbake
> orange-image"},
>          { "name": "test-apple", "description": "Test an apple using
> testimage class", "command": "bitbake -c testimage apple-image"},
>          { "name": "test-orange", "description": "Test an orange using
> testimage class", "command": "bitbake -c testimage orange-image"},
>          { "name": "qemu-console", "description": "Start the last built
> image in qemu with console UI", "command": "runqemu kvm snapshot
> nographic"},
>          { "name": "publish", "description":"Copy build artefacts to a
> public download server", "command":
> "path/to/publish-image-executable"}
>      ],
>      "pipelines": [
>          {"name": "publish-apple", "description": "Build, test, and
> publish apple (requires publishing rights on the download server)",
> "steps": ["build-apple", "test-apple", "publish"]},
>          {"name": "publish-orange", "description": "Build, test, and
> publish orange  (requires publishing rights on the download server)",
> "steps": ["build-orange", "test-orange", "publish"]},
>          {"name": "qemu-apple", "description": "Build and start apple
> in qemu with console UI", "steps": ["build-apple", "qemu-console"]},
>          {"name": "qemu-orange", "description": "Build and start orange
> in qemu with console UI", "steps": ["build-orange", "qemu-console"]}
>      ]
> }
>
> Configurations would include a list of possible pipelines:
>          "configurations": [
>          {
>              "name": "fruitgarden",
>              "description": "Alex's fruit garden",
>              "bb-layers": ["meta-fruit"],
>              "oe-fragments": [ "distro/fruit-garden", "machine/earth" ],
>              "pipelines": ["qemu-apple", "qemu-orange",
> "publish-apple", "publish-orange"]
>          }
I think it's worth considering for the nightly-job-in-CI case whether 
people will want to use bitbake-setup to cover that entire scope (i.e., 
build-test-publish). There are a lot of existing CI systems out there 
(Buildbot, Tekton, GitHub/Gitea/Forgejo Actions, GitLab CI, etc.) where 
you already define pipelines as a series of stages/steps, and each one 
is generally intended to cover either a single command or a handful of 
closely-associated ones. I am not sure that users would want to invoke a 
bitbake-setup pipeline as a single step in these systems, as that would 
potentially obfuscate failures and configuration issues just by having 
too many things happening per step. However, I can see it being useful 
to people who want a fire-and-forget reproducer for typical build/test 
configurations.

As a side note, it feels like stepping outside of the "build setup" 
space and including things like runtime testing, artifact publishing, 
etc. feels like a clash with bitbake-setup's name.
>
> 2. Nomenclature:
>
> - "step" is a single command that is also given a short name and a
> longer description. Steps are building blocks for pipelines and can't
> be individually executed.
Why not? Why not have the ability to run something like 'bitbake-setup 
run-step <step_name'? That would actually be an advantage this feature 
could provide over many other CI systems, as it's usually difficult or 
impossible to rerun individual steps (you have to re-run a whole job or 
pipeline). I can see this being very useful for example when you need to 
run 'bitbake -c testimage' in a loop many times to try and catch 
intermittent failures.
> - "pipeline" is a sequence of steps, that is also given a short name
> and a longer description. Pipelines can mix and match defined steps as
> they please.
> - each configuration includes a list of possible targets, and once it
> is set up, any of them can be executed (see below for the UI).
>
> 3. User Interface to pipelines
>
> Once there is a setup, there are two ways to execute a pipeline:
>
> a) For each pipeline there is a shell script that can be run directly:
>
> /path/to/bitbake-builds/fruitgarden/qemu-apple
> /path/to/bitbake-builds/fruitgarden/publish-apple
> etc.
>
> qemu-apple script would look something like:
>
> #!/bin/sh
> # Build and start apple in qemu with console UI
> . init-build-env
> # Build an apple for the purpose of making apple pie
> bitbake apple-image
> # Start the last built image in qemu with console UI
> runqemu kvm snapshot nographic
>
> e.g. assembled from pipeline steps and their descriptions.
Similarly here - maybe a 'bitbake-setup run-pipeline <pipeline_name>' 
would be more effective?
>
> b) Interactive UI :'bitbake-setup build'
>
> This would present an interactive UI similar to 'bitbake-setup init', e.g:
> $ bitbake-setup build
> Available build pipelines:
> 1. qemu-apple  Build and start apple in qemu with console UI
> 2. qemu-orange Build and start orange in qemu with console UI
> ... etc
> Please choose one of the above: 1
>
> The following commands will be executed:
> # Build an apple for the purpose of making apple pie
> bitbake apple-image
> # Start the last built image in qemu with console UI
> runqemu kvm snapshot nographic
>
> Proceed? [y/N]
> etc.
>
> 4. Implementation
>
> This should actually be fairly straightforward. There's no need to add
> new features to bitbake (e.g. 'standard target definitions' in layers
> was considered at some point, but after more consideration I think it
> can be postponed or perhaps altogether avoided), or modify oe-core.
My other main concern about this is around maintenance - depending on 
how it is ultimately implemented, it could end up looking like a 
miniature CI/CD system for Yocto builds - that is certainly how I find 
myself seeing it, and I've written my responses in that mindset. I can 
see the utility in having the feature available more generally to reduce 
time spent reproducing a common build/test case, but I wonder if it'd 
get used often enough under its currently proposed form.

Trevor
>
> Alex
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#2324): https://lists.openembedded.org/g/openembedded-architecture/message/2324
> Mute This Topic: https://lists.openembedded.org/mt/119158252/7611679
> Group Owner: openembedded-architecture+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-architecture/unsub [tgamblin@baylibre.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

