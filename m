Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD013C636D6
	for <webhook@archiver.kernel.org>; Thu, 23 Feb 2023 18:29:31 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.18946.1677176962029185954
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Feb 2023 10:29:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Y6Rz+ijX;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id bp25so15022241lfb.0
        for <yocto@lists.yoctoproject.org>; Thu, 23 Feb 2023 10:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ub/uzCd3RMky6D7sXSAM/TqxTvkGJ3HuwuBeBEnPmrg=;
        b=Y6Rz+ijXPowVAi8BkSrOnmzSJ7ui4aEJ1pB9xzHkr7HehlQguKXir1H/I0bz0XnUe2
         gWRZogPgTEsnag13mMTowbQYUOhLtfdhp5m9JjoRhp88YeE/iFiwuw4Y0Y9Y6BKS9bGH
         P/v0LxZUBSdoJkXfAU5sVCSlaLCc8Vfg97odFTAo968gKYAN+reqih5rdRS3UUz6zDGc
         GRe7+P02gOYDBNLRtDD48zxBLcFEbZjD0YNU1g30SFZcLewFdHQ0h0UiObS/rDVd1Db4
         Xo8eCmIxqnklXODIVi46szAa3jYZc3kHYvyhul3PKG8TysN2jRmXd7VnQsoiRLIYoZHx
         bcNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ub/uzCd3RMky6D7sXSAM/TqxTvkGJ3HuwuBeBEnPmrg=;
        b=AhUt/VQDu/l5M0kev2g1cv2OKisuVhXVb8mZeTWiVf2QKemduyW8IsGWIoJZs/Nl8q
         cVs0MB+BTOVkGQ5p3VVF4Go9N4OmEHVxbFZOqv/GGjJDhAqD2TtdczRKp+Vu54ISDp5i
         +epLkSJsBGktg4C+WlB7RoFB6qTrZ5eejuNrHDjLVfuHQeqPvjSPx2RxzHTcOipqvVwF
         5W7wUPzg3HUMf38J12WHIBlg2ZDwHD1B5yI5imp+47K+/A6YhRT04xtZOSpfc++bWLH8
         u5OY7pz3HXI4R/yAasDTlNgyJ9Vb8LRu2Tj2oTAUA1dhIv4njOey7eZS9MmxcPeJmfH6
         8D8w==
X-Gm-Message-State: AO0yUKUozZSwiIMbn2ndwO67PhQRqGDAA+aQOm1+dQK/t6qVI/l6xMmE
	sEySgE8nEa1FYaJKplQVTSnASttrsCZNGr7kMdU=
X-Google-Smtp-Source: AK7set8xoTVi0QtBwXFcVzsFlMk9ast4Yns1+b4VsR3nmja4FAlnUM9mqPa65CPt/U8tWeg6XbAwIzvbvdrHjibzCjg=
X-Received: by 2002:ac2:5a4d:0:b0:4d8:1c0e:bfc7 with SMTP id
 r13-20020ac25a4d000000b004d81c0ebfc7mr3958125lfn.13.1677176960062; Thu, 23
 Feb 2023 10:29:20 -0800 (PST)
MIME-Version: 1.0
References: <CAA9KBABu4LUUNeMygWMvrvrPgk_0tXFvnvXu6bg_6k1Vz29qhg@mail.gmail.com>
In-Reply-To: <CAA9KBABu4LUUNeMygWMvrvrPgk_0tXFvnvXu6bg_6k1Vz29qhg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 23 Feb 2023 19:29:08 +0100
Message-ID: <CANNYZj8ZDmzXqx9Qi5asGs_b4FmQ8koXkD776BYcqOQPjN+mAQ@mail.gmail.com>
Subject: Re: [yocto] Yocto bitbake unable to find debuginfod
To: =?UTF-8?B?TcO8YmluIMSww6d5ZXI=?= <mubinicyer@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Feb 2023 18:29:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59294

I think you need to inspect the ${WORKDIR} of elfutils-native in
detail, particularly the build and install logs in temp/. Does
elfutils ./configure get the right options, and does it end up
enabling debuginfod? Is the executable built and installed into ${B}?

Alex

On Thu, 23 Feb 2023 at 19:04, M=C3=BCbin =C4=B0=C3=A7yer <mubinicyer@gmail.=
com> wrote:
>
> Hi,
>
>
> I want to activate debuginfod server in yocto 3.1.17 but I get error: Err=
or: Unable to find 'debuginfod'. I added following in local.conf
>
> PACKAGECONFIG_pn-elfutils-native =3D "debuginfod libdebuginfod"
> DISTRO_FEATURES_append =3D " debuginfod"
>
> and run bitbake elfutils-native -caddto_recipe_sysroot and then when I ru=
n oe-run-native elfutils-native debuginfod -- verbose -U ./tmp/deploy/ipk/c=
ortexa9t2hf-neon/
>
> bitbake gives error that debuginfod is not found.
>
> It looks following paths ./build/tmp/work/x86_64-linux/elfutils-native/0.=
178-r0/recipe-sysroot-native/usr/bin.
>
> How can I solve the problem?
>
> Thanks.
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59293): https://lists.yoctoproject.org/g/yocto/messag=
e/59293
> Mute This Topic: https://lists.yoctoproject.org/mt/97188834/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

