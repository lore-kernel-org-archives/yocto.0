Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18A81C5478C
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 17:54:17 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.3379.1709142853643854292
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Feb 2024 09:54:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cRsRNJFy;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5131be81f12so1066792e87.3
        for <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 09:54:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709142851; x=1709747651; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=njJjD8cLLfFbNpnTg7lDHp3oTcwjfezPtX/ozPMcgIQ=;
        b=cRsRNJFybGPBBSFMwd5wEPJnBRxsCZFj4Q1e9Fhz5zIDvMzGvdCjCGIxt4qaK5ECI9
         lQY8UuJnhaUzLH78Q5cvPHSJ10oQt42R6uwpUsNRSFxxE8U7tv9kD3uezaPjhG4E2HOX
         xr8BpIoCAIpQkEg/Uv/mNspn8QDcIuVD82NLxriI5MkTXJ2CEiUtvtiRC4qb4ip/N3hL
         gVuHmucOFKg+1dADqtWNe6SuWA58EyXXcJV0Vh1zAsTjm6Rip6WOqTsyc9Lrx2bNtIN0
         cYe+FuHV7b0vfJikCokkcfjvJFDqMiBeK+32CfTuXMevyRt+h42zXJ3WeqDVASTHk/uS
         ybEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709142851; x=1709747651;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=njJjD8cLLfFbNpnTg7lDHp3oTcwjfezPtX/ozPMcgIQ=;
        b=Sa7sl2mobvJdYevP/n7+bXEDWyqgWse2R+It86aUKFv6nWUtuhdMg0LfUdXW73U/ud
         CGQlRP1gaeHuRxOvANr9EUqtUDQU2hwQvQ2vwQJrr5JKb69wVERWPFoI8g3342JZEYmK
         cowMoYYtBILRNOTD6BpspusCSDN3udupzooXc6x6UV9nrD63aqwshVUAXTTs1LfwNy6h
         jm0j1U3h0/fLXAordZM66TqExOUutO9Z5J5qA21ntF2u9X3ZpPYYi2UGTvSA3k+DGdZX
         iwrVjOtmCMhkV1ku4nVJ7rXU2w3EjEPLbv9HG6sHuAqgPUjSrK2xRjg2tVUkQY1gCpV3
         GwSQ==
X-Gm-Message-State: AOJu0YwmZUyTwjH3haug/G9T+2/7A9HToqJw87NY8eTwqwn8dEU9Rm9F
	HItv5P+3CY2nlcLH6CLb6q8QjCtkQrOzZ/IWoAy+FDYHmdhbDVcp5pUxxpZTmlH4Z7zjKnMNmj/
	gikSdFnJLjwBOV4SoH8/upMl/EE4=
X-Google-Smtp-Source: AGHT+IGeknACbLdXhj9dugkX0BbBh/v4gyBND/VNEWYl2ylyCgZAch58NiKnLruBPm3CwybQwjKT8KE6O9pkS8FBmpo=
X-Received: by 2002:ac2:59c9:0:b0:513:1c5c:2cd1 with SMTP id
 x9-20020ac259c9000000b005131c5c2cd1mr297580lfn.34.1709142851299; Wed, 28 Feb
 2024 09:54:11 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj9rDDcYq+W0fmi1sxPV+d2Z+Vu0B0qggBZTSrgeW9UY8A@mail.gmail.com>
 <23930.1709141824214834058@lists.yoctoproject.org>
In-Reply-To: <23930.1709141824214834058@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 28 Feb 2024 18:54:00 +0100
Message-ID: <CANNYZj-i+0+ErYB60D_bV6=QQ1B5EBG7V8867EjEW-V4nw6vvA@mail.gmail.com>
Subject: Re: [yocto] dnf/libsolv vs. package feed with commit hashes in
 version strings
To: patrick.huesmann@desy.de
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 17:54:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62640

Oh mercy me. Yocto isn't designed for this; everything is assuming
that SRCREV, SRC_URI and PV are static and set in the recipe.

So I would rather implement the logic to determine what they are in an
external script, and run that prior to bitbake. The script would write
the dynamic values into an .inc file, which in turn is included into
the recipe. You can place the .inc into a layer, and make automated
git commits/pushes every time the content changes.

Alex

On Wed, 28 Feb 2024 at 18:37, <patrick.huesmann@desy.de> wrote:
>
> Hi Alex,
>
> We have Yocto running on FPGA boards; the Linux images and package feeds =
include bitstream files to download into the FPGA.
> These bitstreams cannot be built within the Yocto/BitBake system, because=
 they require special (closed source) build tools, take ages to build, etc.
>
> So they are built somewhere outside BitBake (either on the local machine =
or on a build server) and provided as binaries via file:// or http://. But =
there are a bunch of complications:
>
> - The version information (version string, git hash) has to be extracted =
from the filename. The files are named like "foobar_1.2.3-g12345678.xsa" an=
d from that we derive the version 1.2.3 and SRCREV 12345678. The recipe doe=
sn't know the filename in advance; in case of the local filesystem it is gl=
obbed and in case of the build server it is retrieved via Jenkins REST API.
>
> - For some systems we need to bundle multiple bitstreams (variants), then=
 at runtime an application specific script chooses one of them based on CPU=
 ID, EEPROM contents, config files, etc. Hence the sub-packages.
>
> - Some metadata (file basenames, versions, etc.) has to be passed to depe=
ndent recipes that extract further stuff from the original files.
>
> See our bbappend and the original bb (from Xilinx) below.
>
> This has already grown into quite a monstrosity, so I wouldn't be averse =
to rewrite/refactor it, especially if you happen to have a better idea how =
to implement it.
>
> Thanks!
> Patrick
>
> https://github.com/MicroTCA-Tech-Lab/meta-techlab-utils/blob/rel-v2021.2/=
recipes-bsp/device-tree-from-bd/external-hdf.bbappend
> https://github.com/Xilinx/meta-xilinx-tools/blob/rel-v2021.2/recipes-bsp/=
hdf/external-hdf.bb

