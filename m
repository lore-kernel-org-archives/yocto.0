Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D724C54798
	for <webhook@archiver.kernel.org>; Tue,  5 Mar 2024 11:41:04 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.20486.1709638862687141018
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Mar 2024 03:41:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=a3x3fyby;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-51336ab1fb7so4095260e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 05 Mar 2024 03:41:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709638860; x=1710243660; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+XrpFs1+tzh6uLGH43hfPtvfJ/n9ex6bsfxkFD6O5zU=;
        b=a3x3fybyMEskoby9PPxJGoeMlwrCk7GdZ9lFenReWX52vRHVOh27c4ffprDj6UWFhW
         Yoto0GKfF9bOQk5ojvGYvlIF6t6zfbwWFXH8+mchUpk1RWC/sBoPjgAuN9pElZEOtl48
         sTm1SCzUuSt6E7+i09MhVzKU/jvBOZj23HUL8FN+h6EWuwe8/8XdNxL3L1xIF9UKlBHz
         26Nk5k1NWHFkr2Ato6wHzgHpiYAvepF+6aREpUgc7g2HQaahhY+7LDJ3Bu2LkvcqZeJ/
         TxLp2H0n5sVtekzillPx+AI8c+LerFV2kyDTbPNscQRkmqADD4v122aG6VdN5FJfW7Zv
         wjJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709638860; x=1710243660;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+XrpFs1+tzh6uLGH43hfPtvfJ/n9ex6bsfxkFD6O5zU=;
        b=Acp1QGdTsMqqS2Wfb3RNp4ySyy1TexD2AGX4wI2DXw5pMnTmv7yjdpa36qIYa/BZ1j
         YbHym+lrv3hkpYAS/TZwndlujbIKv4PfqQW90eTk20Dxlyu9fW5pOFGa9RAHZ7L/WRZ3
         pVjBMaYq5Hlv4RpyQUuS69Sf2sMZpVuMss7i6rZh8JjR8qXY0Q4+xSArI0N/6z213yxs
         JU3iAZM9uM3uvlgErJEmrlSnCZOBzXgT3mPoU1QYK0HAccQajo8uHSIRokztCAzJIW5J
         AG/KF/PuWXYl3QF5tfGe7BbiAVan1ez30hrGLN7KfrdWq5/GaLXBWq060azQau9v4Us/
         ogaQ==
X-Gm-Message-State: AOJu0YwnkgOiyjMpo0tHHtIQCxvsPOcNaCvKSVRQzeGOdkZUaNNkgkVm
	8aa1gOKcyHbZu7LzAsk8lwqqrqS8kEOFHVC2mo/96wJrli5BHmTzo6LwdMgtXBm5fxJfImMHwjh
	UbFPhf6WKLDHOaIkB+HrEcEbJm8SpMpcP
X-Google-Smtp-Source: AGHT+IGoe4FM/TnunEc5MmXnsFyrVHK94YLgSMvvvSRw4JEvjM2xDdn1JNIOCh1VOltuS8XTLp5VZG2TpyBy6Gy4J2E=
X-Received: by 2002:ac2:5551:0:b0:513:22ef:4144 with SMTP id
 l17-20020ac25551000000b0051322ef4144mr953182lfk.19.1709638860334; Tue, 05 Mar
 2024 03:41:00 -0800 (PST)
MIME-Version: 1.0
References: <a2aO.1709635901197785774.D4bK@lists.yoctoproject.org>
In-Reply-To: <a2aO.1709635901197785774.D4bK@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 5 Mar 2024 12:40:48 +0100
Message-ID: <CANNYZj9zz1aZMB1JbS-A=N9iw=NBLQa=KMgUWLOdcwkZ-U=K-A@mail.gmail.com>
Subject: Re: [yocto] Inter-Task Dependencies
To: yocto@lists.yoctoproject.org, bratiranjan12@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Mar 2024 11:41:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62685

Hello,

It helps if you explain the use case. What is the original file name,
and what is the name of the symlink, and why do you need to create
one?

Alex

On Tue, 5 Mar 2024 at 11:54, Bratiranjan Acharya
<bratiranjan12@gmail.com> wrote:
>
> Hi,
>
> I hope this email finds you well. I have a question regarding a specific =
issue that I'd like to discuss. Allow me to provide some context:
>
> In the final image bb files, there's a custom task designed to generate a=
 softlink for the rootfs.ext4. Unfortunately, I've had to resort to using t=
he "ln -snf" command, as I'm unsure after which recipe's task the rootfs is=
 generated and deployed to the deploy directory. Therefore, I'm forcefully =
creating the softlink. Despite attempting various debugging methods, I have=
n't been able to find a solution yet.As the source is vast and complex.
>
> For example, if the rootfs is generated and deployed by a task from anoth=
er recipe where my custom task isn't present, even using inter-task depende=
ncies flags hasn't yielded results. Could you please provide assistance wit=
h this matter? If i can know which recipes task is creating and deploying O=
R which recipe is deploying the rootfs to ${DEPLOY_DIR} i can solve that.
>
> Thank you for your help.
>
> Best regards, Brati
> Yocto Developer
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62684): https://lists.yoctoproject.org/g/yocto/messag=
e/62684
> Mute This Topic: https://lists.yoctoproject.org/mt/104742073/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

