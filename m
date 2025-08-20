Return-Path: <mark.hatle@kernel.crashing.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15BD0CA0EDC
	for <webhook@archiver.kernel.org>; Wed, 20 Aug 2025 13:19:12 +0000 (UTC)
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
 by mx.groups.io with SMTP id smtpd.web10.19538.1755695947254332884
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Aug 2025 06:19:07 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: kernel.crashing.org, ip: 63.228.1.57, mailfrom: mark.hatle@kernel.crashing.org)
Received: from kernel.crashing.org (70-99-78-136.nuveramail.net [70.99.78.136] (may be forged))
	by gate.crashing.org (8.18.1/8.18.1/Debian-2) with ESMTP id 57KDJ5Wu2815303;
	Wed, 20 Aug 2025 08:19:05 -0500
Received: from [192.168.2.99] ([192.168.2.99])
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 57KDJ3UM013041;
	Wed, 20 Aug 2025 08:19:04 -0500
Message-ID: <28bea56e-968d-476a-8c92-ee38689ac41e@kernel.crashing.org>
Date: Wed, 20 Aug 2025 08:19:03 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] defining standard build targets in layer metadata
Content-Language: en-US
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com,
        openembedded-architecture <openembedded-architecture@lists.openembedded.org>
References: <CANNYZj8mvVaL1+VFCgShCxLyPHEEuwRZm-jo4z4o0R+yqYfM=g@mail.gmail.com>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
In-Reply-To: <CANNYZj8mvVaL1+VFCgShCxLyPHEEuwRZm-jo4z4o0R+yqYfM=g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Aug 2025 13:19:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65777



On 8/20/25 4:42 AM, Alexander Kanavin via lists.yoctoproject.org wrote:
> Hello all,
> 
> working on bitbake-setup made me consider that a true end-to-end
> configuration tool should also know what to build, not only what to
> set up.
> 
> Earlier bitbake-setup prototypes allowed defining "oe-targets":[...]
> in its configuration files, but I later on realized this doesn't scale
> and isn't flexible enough, and isn't in the right place to begin with.
> So I took it out in the latest patchset.
> 
> So here's a quick, not-well-thought-out idea:
> 
> BB_TARGETS = "build:'core-image-minimal' test:'-c testmage core-image-minimal' "
> 
> defined somewhere in a layer (e.g. conf/distro/poky.conf or in a fragment).
> 
> And then one would be able to run
> 
> bitbake build
> bitbake test
> bitbake flash
> bitbake deploy
> etc.
> 
> which would standardize not only setting up a build but also running
> it. The particular set of generic target names and their values could
> be defined differently, but the basic idea would be similar.
> 
> Thoughts?

In my experience this teaches an in-experienced user that there is only one 
target (build), and if they want to customize, they edit their local.conf with 
IMAGE_INSTALL:append, or add bbappends to the one target.

This is unfortunately really dangerous and easy for people to step into.  It's a 
big reason why we recently deprecated our wrappers and we're pushing people 
(internally and externally) to define their own image recipes for what they're 
trying to do, instead of continuously hacking on whatever the default for the 
wrappers (configuration) was.

I do understand the utility of this, but in practice it's just been bad overall. 
  It would be better, IMHO, to allow a layer or configuration or whatever to say 
"we suggest you use one of the following pre-written targets" and then provide 
the user a list of suggested targets, but force the user to issue

bitbake <target>


I've always wondered if there was a way to do a more 'dynamic' conf-notes like 
file.  So when someone runs the equivalent of oe-init-build-env, it can give 
them notes that were provided by the layers that are part of their project. 
Everything from machines to images to configurations they might care about. 
(Obviously we don't want to write a book of configuration here, but especially 
in distribution layers, I've definitely wanted to give the user some guidance.)

The Wind River configuration mechanism had a way to inject info and warnings as 
part of the generated configuration for this reason.

--Mark

> Alex
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65774): https://lists.yoctoproject.org/g/yocto/message/65774
> Mute This Topic: https://lists.yoctoproject.org/mt/114796592/3616948
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mark.hatle@kernel.crashing.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

