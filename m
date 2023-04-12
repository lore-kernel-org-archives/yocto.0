Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21287C7619A
	for <webhook@archiver.kernel.org>; Wed, 12 Apr 2023 11:34:18 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.40594.1681299256293205725
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Apr 2023 04:34:16 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Ge1df1iq;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id t20so14238506lfd.5
        for <yocto@lists.yoctoproject.org>; Wed, 12 Apr 2023 04:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681299254; x=1683891254;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MKLnyZXPsyDhArgypa68gIR2VLEsnLGEDcAWBVhE7RQ=;
        b=Ge1df1iqQVq1GwKYzPRXRsBR2dxgxQdkqfjY0aXMqdY3Lv7WJ0Vx74E7J7Og8pwW5V
         mZz/qUN05/+W3orISwhmE2ksSdQqDVkTtbqS3i2f5HuQN8vi+2ALsyjWswO56vtLsrcY
         JpIYSM0ulT1eic16VEZlFSWY6BX6yoNKzX3mMESUXgfJdhZps5vQP1C74FL4dVXq7qRa
         7v2/1Xk5T9c8vVxUggeoNYIF0SYV5rNduPVFpqa7BmQ8HJ4Km20OhM0w2HS1KmAL4Uzf
         kzo/6gM4crPqM7U3AkfmsXXeBzKnMY54x6+XbL69G9o9n3M1PdE30FnxET/xZ59NiL3q
         7MHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681299254; x=1683891254;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MKLnyZXPsyDhArgypa68gIR2VLEsnLGEDcAWBVhE7RQ=;
        b=XymLPJoKuNEcO43mq66ZcZb+uVhxCsc9wbq5mNYJYKsXveivmb7BcA5VMR3iuI0fhP
         DyNEHlNpmMqIz/PXl8MLN4gdlcbBaRWT5e7oBHRFBHoNJp0t0out6u/bOTey+po+OZ7k
         G4GTMfqCNluoIhmWKhJZCTWtsTRmn95XVWZUADRccXtJfe6BBEObioLmLHjrGr3ZE83S
         lahrDNIwqE87DkT58Rox86LXAebYVtFoLBwgWHuussgOiYxOYcjMFTPIvOwaFgR5HmeG
         4VjebOb9mEfluUNDVcW9giF290FWAmR73OuqAY+H23+CexE6rnjSLUB+eVPbKOwWcc4c
         rcPw==
X-Gm-Message-State: AAQBX9eNUtXDi0TXVOAMfkT0p11U8zbN3DkjNrt8zsWWIBvSdoQf8Rk9
	EpxFp3ioGojGv9eWkhgiMBQ/X0h/y1iXSGTKa3M=
X-Google-Smtp-Source: AKy350YoTQ189UWQ9ys8EEVWHtZa6+u6iEDznMlaf2uhW/o4QIUnUY6BW/hcomXoNXVsD2vRboPoO3YbxmKrfBlU7sc=
X-Received: by 2002:ac2:5614:0:b0:4d5:ca32:6ed5 with SMTP id
 v20-20020ac25614000000b004d5ca326ed5mr803876lfd.3.1681299254421; Wed, 12 Apr
 2023 04:34:14 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9q3zBCguBussvczdj=CuuEqY4zvvOEw2jO-kPrHXq13g@mail.gmail.com>
 <10320.1681297971251679769@lists.yoctoproject.org>
In-Reply-To: <10320.1681297971251679769@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 12 Apr 2023 13:34:03 +0200
Message-ID: <CANNYZj-XKG+=ka4VbxF5eRAdFqMP-0vT=JgF7wNaSj9OkWDxLw@mail.gmail.com>
Subject: Re: [yocto] create-layers-setup Yaml support #bitbake
To: talhacali@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Apr 2023 11:34:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59690

You should first take this issue up with 'renovate' upstream, not with
yocto. Ask them, how is one supposed to handle updating json files
using that tool? Maybe you need to write a custom extension specific
to that format that doesn't require placing metadata inside the json?


Alex

On Wed, 12 Apr 2023 at 13:12, <talhacali@gmail.com> wrote:
>
> Renovate normally doesn't require to make changes in other files.
> It supports many package files, and detects them automatically.
> It parses them, and finds the dependencies without needing any change.
> But, for package files which is not supported by Renovate, a regular expression
> is needed inside the file to let Renovate know where to look while parsing the file.
> As far as I know, there is no other way than adding a new line to the file.
>
> We are also using Renovate the same way with bb files as well.
>
> We have got a lot of projects, and potential projects that have several different
> dependencies. They are hosted in different repositories, and the idea is to update
> their dependencies (or not it depends on the project) regularly, and do it automatically.
> Like I said, with the package files that Renovate supports such as npm, Dockerfiles, etc. it is easy to do,
> but for our case we need to modify the json file with an added comment. For this reason, Yaml files are
> an ideal solution for us.
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59689): https://lists.yoctoproject.org/g/yocto/message/59689
> Mute This Topic: https://lists.yoctoproject.org/mt/98196703/1686489
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

