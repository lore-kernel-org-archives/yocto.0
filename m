Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7398DC4167D
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 17:28:32 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.130.1698859709321125562
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 10:28:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eQzFx1qB;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2c50cd16f3bso130091fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 10:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698859707; x=1699464507; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Xjkf7w/wRaxi+2zNolOgcy455VMV0FmWwKufis4dogM=;
        b=eQzFx1qBH+xZKG3EFj+Zag/BdtuNZZWefIsEm656lepaIFmOQsoIr6GOK9lCMKgDhl
         le262dRdkMsnUkrPkN2gcFQoCSpAAPMG0PLhc0v7uUGGl9dZ3pdyaQrn/0VXxQFZQIpX
         /P7XcJINUemWmzbqy1v/ilUOQ+yhiOg7bxBhT4qmwh2Sh5X+JoCfZfjrBLWM975mXgPE
         5pzKp6Fal8ifKZuE6IRKNnQP6xNu6R8bziEUtn2mXEgi166UjNAPpFegDAU8fXi6ltP+
         t8AhOCf+rQiKsyIH6TP7FMyD4rtfyPyKWTa85Kzb/5tmQagNPLrP3K8XwR5mWIF2IDg4
         j7TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698859707; x=1699464507;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xjkf7w/wRaxi+2zNolOgcy455VMV0FmWwKufis4dogM=;
        b=oOtk4drM8nSOotjiEFN8YJOe5W5Ds0+tjIJADdPLi2N/4ZdzYtWJ+3bgPyH7BtnRuh
         VVpp/3XB9xJmLJHMSpARHhqdFbqEXTfPh/bdW+p76d7IgjSugMIjkPP+YicUWbrxnw6v
         LbYtADzmx5DvnTzfudgm8bDgBzweCtC50xWm17FzUHy9o8ZKinLUzRanKOjbSJVh4Dsb
         MXdbP/9qLZ6Ez3oDiCPgj00feVtZbFsUT2ilLPdWWiwMKWIA51wCaiviqIUsOCMTcKiY
         idAwrlkpBo9jP3G/XZf6S8vUoW2t3YSqG9PgTgccEzpqg8FWIByVyw175uT4DY3Mjcvh
         6Xgg==
X-Gm-Message-State: AOJu0YwyCH7xCl9PIj1PMQuwTumSGdWCfcPeMA35nxA5Qt3iXSgVbKz4
	z9e9dX4UN+xv8GVZTxg3d3NkueBiEZ3YZOWt0cs=
X-Google-Smtp-Source: AGHT+IHju1/32Na8u0QpgRfD+Zz4W4I3Whvek+78GFv+Nvdls9JE4IfyIbrXfMAkyM3bdD4affqDIwQLHMKGTpeIsbE=
X-Received: by 2002:a2e:1445:0:b0:2c5:1037:b54d with SMTP id
 5-20020a2e1445000000b002c51037b54dmr12733245lju.31.1698859707239; Wed, 01 Nov
 2023 10:28:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
 <81f4c191fe6dead1feec6bfc0d36aa328af1f7d4.camel@linuxfoundation.org>
 <CANNYZj-JhGnGFRxaF0+Q_5Sqq76kAg1pSBBMka_xefuhMv6-vQ@mail.gmail.com>
 <ea84079102bca429a6ae521d218118952a79f111.camel@linuxfoundation.org> <feee5d39bc3e280c76b749f39761936464c4cdff.camel@gmail.com>
In-Reply-To: <feee5d39bc3e280c76b749f39761936464c4cdff.camel@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 1 Nov 2023 18:28:14 +0100
Message-ID: <CANNYZj_4e5XbTgcv_ZdqJArCA+=bTj+kmWYVveHDVXyC3TK+rA@mail.gmail.com>
Subject: Re: [yocto] Core workflow: sstate for all, bblock/bbunlock, tools for
 why is sstate not being reused?
To: adrian.freihofer@gmail.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Julien STEPHAN <jstephan@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 17:28:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61562

On Wed, 1 Nov 2023 at 16:45, <adrian.freihofer@gmail.com> wrote:
> I think these differences between SDK and bitbake environment are no
> longer required and they have been problematic. I would try to make the
> bitbake environment usable like the eSDK environment was without trying
> to replicate all the details of the eSDK installer such as these
> local.conf settings.

I have now split up the populate_sdk_ext into separate functions [1]
for better maintainability, and the more I think about what to do
next, the more I agree with Adrian. I just don't see why (in a
standard yocto build) would we want to manipulate PATH to provide a
restricted set of tools, or to create a "local.conf+extra stuff"
(locked signatures, esdk tweaks) environment, when existing local.conf
by itself is already working fine, and full set of tools is better
than a restricted one. If we want to add or remove locked signatures,
this can be done with 'bitbake -s lockedsigs' or bblock for specific
recipes only. And SDK's cross-toolchain is accessible via
meta-ide-support/build-sysroots flow.

[1] https://git.yoctoproject.org/poky-contrib/commit/?h=akanavin/sstate-for-all

THAT SAID. I also agree there should be a way to package the 'standard
yocto build' that does not also do 'weird esdk stuff' on top. Just a
tarball that has 'everything', and that you unpack and get a standard
build exactly like the one that was used to produce the tarball.
Something like what Adrian suggested: basically place all information
needed to replicate a build into one place, then either make a tarball
out of it (with sstate for fast builds), or publish it into the
network. We might be able to reuse some of esdk packaging code for
this, or we might not, but I think this is the direction that should
be taken.

Alex

