Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512DDE6F09E
	for <webhook@archiver.kernel.org>; Sun,  3 Nov 2024 13:02:56 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web10.35196.1730638966979978518
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Nov 2024 05:02:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nkJoPZ3w;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43155afca99so25492265e9.1
        for <yocto@lists.yoctoproject.org>; Sun, 03 Nov 2024 05:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730638965; x=1731243765; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dhbfV4LIJ8xuUCfo1N9XwIaXlnp6KlyqZ7QM4E9jbL8=;
        b=nkJoPZ3wnQLTPFOV0P0T/bdqIEmBcvbw8PO8ByhJ6ai2+UnDgHzonVBcXtha8CdGst
         aWHCSqK8LS45DwRo9gNLFk99vapHBB/ybvr6MBMKI6dOIrpEI4r1b3VsdTvU0NjXpC0p
         J3P7G2kbn7ROOoh36sL4/8GLTLwIUdtMUOikIW1tmv70Jl2mNwFr4cbI3IScEScPFEMr
         fc4Aes0bL7l+cI4oPMqSZMa8Y9953sddRV1l1JMK8YdUH/jkoXHkLPbq2WbhMrMhNmpW
         hXVf360qeCNnEgSNHa9lqKGEwb592N8dDOuzX0+hl0YU7t2FacIz3OtYCgY/zLlfVCfw
         /A9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730638965; x=1731243765;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dhbfV4LIJ8xuUCfo1N9XwIaXlnp6KlyqZ7QM4E9jbL8=;
        b=szjcukpFA/Bf1rdE6TWi5Cv7HnUqYzTPrDD4nNeVe8Vg48N9xUcmJZ80snUlqzkbl7
         ChmC3EwXbKxDqUIlWTSx0fuJsbqY6CnLzI3BtkxiD6NO6HO6aU6sCu3wIktaI0jZGG7m
         zMklB7S4OVYz8ijGSmS61nv3c1qslzRhnQ892ejKsmWcfERpxSbHhwxfqhTI0x38pvis
         w36c9ketd42XQxvWfTdx0vscdfsFbb9LjCfR0F8rt3D85mBFI5ENMR3vpARD5UVmxWEd
         F91uV5y7IS0DSy1zZEjct455neE0hH5sJTdI02quBedVK2n1WDIrPvNmU6kUvb5+igJE
         Eieg==
X-Gm-Message-State: AOJu0Yw2B2SHqdC8JKRM4CyzxWq98qO9G8n4g+adgcIWag7RiAq1JUqB
	KKgq7CtjHcRG58m7lermpdzHxbaXXHeTRa2wwni287RO4679KDuXFq2jnA==
X-Google-Smtp-Source: AGHT+IHVx/rpPLSo4qWpQ06MFvbHTvDIXPzGFPWnGxzSp5Vz2XSNfMWW6BpI4OtgDV6TK4Fvjci84w==
X-Received: by 2002:a05:600c:198e:b0:431:4a82:97f2 with SMTP id 5b1f17b1804b1-43282feafa2mr77404665e9.6.1730638964671;
        Sun, 03 Nov 2024 05:02:44 -0800 (PST)
Received: from wsadrian16.fritz.box ([2a02:169:59a6:0:55c4:f628:91f3:4287])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd947c03sm152602335e9.28.2024.11.03.05.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2024 05:02:43 -0800 (PST)
Message-ID: <3bc01393fa9a16544e7850528a936e61eae02ad7.camel@gmail.com>
Subject: Re: [yocto] My Embedded Linux (Yocto) IDE setup #github
From: Adrian Freihofer <adrian.freihofer@gmail.com>
To: yocto@lists.yoctoproject.org, karlo.strize.linux@gmail.com
Date: Sun, 03 Nov 2024 14:02:42 +0100
In-Reply-To: <2316.1730563987833556691@lists.yoctoproject.org>
References: <13023.1729361693364095859@lists.yoctoproject.org>
	 <2316.1730563987833556691@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40app2) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 03 Nov 2024 13:02:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64204

Hi Karlo

On Sat, 2024-11-02 at 09:13 -0700, Karlo Strize via
lists.yoctoproject.org wrote:
> Hi Adrian,
> =C2=A0
> I started to work on codium ide plugin.
Cool!

> I have tested it with cmake projects and it works as expected.
Yes, that's because cmake and also meson have the compile_commands.json
generator built in. With meson it's enabled by default, with cmake we
enable this feature
here:=C2=A0https://git.yoctoproject.org/poky/tree/meta/classes-
recipe/cmake.bbclass#n185.

> Then I have tried devtool fallback projects (like u-boot) and I have
> a problem that devtool does the project build without me inserting
> bear tool command.
> I use bear tool for clangd indexing.

I did not use bear yet. As far as I understand, bear collects the
detailed information how the compiler gets called by replacing the real
compiler with a wrapper. Then the wrapper can write the command line
arguments into the compile_commands.json and finally call the compiler.
While this looks like a generic approach which can work for all kind of
build tools, I think that wrapping the compiler is also a bit clunky
and can lead to very tedious issues. Therefore I would prefer a
solution where the build tool has built-in support for generating the
compile_commands.json as we have it with cmake and meson.

For the kernel and the u-boot recipes that seams to be possible:
 * https://github.com/torvalds/linux/blob/master/scripts/clang-tools/gen_co=
mpile_commands.py
 * https://github.com/u-boot/u-boot/blob/master/scripts/gen_compile_command=
s.py
   That looks like we can use these scripts which are available as make
   targets out of the box.

Did you already look at these scripts and understand how they work? I'm
not sure if they work only if clang is used to build the kernel. That
would be an issue for now. But clang will probably make it into oe-core
until next release. That would also allow to improve the kernel scripts
to support clang as a kernel compiler as well.

If the kernel recipes support creating the compile database the devtool
ide-sdk fallback mode should provide what you are expecting. This can
be a first step.

But handling recipes with the ide-sdk fallback mode is not ideal.
Handling the recipes in a build-tool specific way leads to a much
better user experience. To add support for recipes using the kbuild
framework (u-boot, kernel) we could:
 * Add another elif case for them to this
   if:=C2=A0https://git.yoctoproject.org/poky/tree/scripts/lib/devtool/ide_=
s
   dk.py#n377.
   elif bb.data.inherits_class('cml1', recipe_d):
   Then these recipes are no longer handled by the fallback mode of
   ide-sdk
 * Then we can recommend a Makefile vscode plugin
   like=C2=A0https://marketplace.visualstudio.com/items?itemName=3Dms-vscod=
e.makefile-tools
   =C2=A0or something more open source if you like.
   Having a plugin like that allows to configure the plugin for cross-
   compilation with Yocto's tool-chain.
   Alternative we could generate some task which call make with the
   right configuration. But this is usually a bit clunky as well.


For the kernel but also in general it would probably also be very
useful to have a devshell like terminal configuration available in
VSCode. I need to think about this and probably discuss it with the
VSCode experts who develop
https://marketplace.visualstudio.com/items?itemName=3Dyocto-project.yocto-b=
itbake


Regards,
Adrian





> When I try to run a build task that has already bear tool command
> inserted in tasks.json (because of the ide_codium.py), the indexation
> doesn't work because the build isn't run (its already cached).
> I can get around ti by calling clean task or by calling devtool ide-
> sdk with --skip-bitbake flag.
> I didn't like this extra step so I tried to do some hacking in
> ide_sdk.py.
> I know that ide_sdk.py should be IDE agnostic and not have "if
> codium" statements, but I just wanted to do some quick and dirty work
> to achieve the necessary index functionality.
> I have managed to get the indexation working because of the bear tool
> command insertion in bb_cmd variable, but do_package task breaks.
> If I remove all the code related to the "if codium", the do_package
> finishes successfully.
> Can you give me some inputs where my hacking code is breaking the
> do_package task?
> In attachment is my current work in progress patch and the do_package
> log.
> =C2=A0
> Best regards,
> Karlo Strize
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64203):
> https://lists.yoctoproject.org/g/yocto/message/64203
> Mute This Topic: https://lists.yoctoproject.org/mt/109085158/4454582
> Mute
> #github:https://lists.yoctoproject.org/g/yocto/mutehashtag/github
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[adrian.freihofer@gmail=
.
> com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


