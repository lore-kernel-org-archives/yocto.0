Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951DDC4345F
	for <webhook@archiver.kernel.org>; Thu, 18 Apr 2024 00:02:39 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web10.1116.1713398553579001680
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Apr 2024 17:02:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=FXoXEyuu;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.175, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-617f8a59a24so2283297b3.1
        for <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 17:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1713398553; x=1714003353; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/TmbAebPbSV02u9Ww4KuUM10b+XNvAiLB3zHVMXodmk=;
        b=FXoXEyuuw3Xf+E7lNkI/t+N4C+8NdmPrB4HbU0wDk7f+yob8WynMN3ZC9LVQUfqAiZ
         +gFRA4wZKFl0k+4gVCpSIyeXl5zFLKRzGSkG30HWIWYpjq2Wdo+ddCUXHGJRZ0qYSnx9
         8O9HK8V14YIGoW7c1PVJxndFLyPxkrwGE5YW77YeNv3XwUIlIrAw13UDVL9XmvMlQFdh
         qQ+zIwYs/QCyTVVjEPECckel/dqjxAucs0Ii8stvpcgRJ1BcHYbhnIeoAp06TsTOIgmF
         JZzg0/kd/ITPZPYsSQOhD3GXX+6ovmE8cMjNo7vHVm4A8lzt0WgtzkFeTwPqJXMsUZuB
         Dt5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713398553; x=1714003353;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/TmbAebPbSV02u9Ww4KuUM10b+XNvAiLB3zHVMXodmk=;
        b=TP1LeDrevcB2f3tbIsyoeUC4Wpe5N99E+l/0Esx+nFmUuz3qvfbkgl7T1sx2bdUoeH
         3Ti2CwzqMabloflMr9+lYRHzYMe0p17mXoPwPn5Qd58LTOVU0uWmxcvYEONroc7nANcm
         q30G+dgeCloCrnaAk0Rv+ZYA0nPpnPbqChZpbwEDB4eCUUG6+aiPhUx2Uxa0cqaekPv6
         MHYJs3xXyXLaWiYlP9xiV/QX70GAC476EChI3JGSDQLVMLWzsW6m6kLVrNyUyTiVNM5w
         Lv8QROoKLJDDm/E0Rm2j4/oYPptHX/Ii5ocj7MwevlLIMCYJn21As7eISJ/0abv4xLDF
         +d6g==
X-Gm-Message-State: AOJu0Yz7cBnQhaHI06E4xNASYc2JAQGTqRguV3qrrUOddJ8bsgIHVwRu
	HxOxXQOSwwKddWO8Ku0hGPFPccWmkFYM7TKecNqm+hyk0aeNytH8mwuEjDvR0Y15Xpz5ICo9NnB
	ak0QZWLauWMIJer1auSPC2kgwEwxAdZcl4hVR6w==
X-Google-Smtp-Source: AGHT+IHDzNdsoUibEgt8kQng11gIx21k9O7cwz6miCvLGb2o1NlEyR2+Yti3pM624oXUc4vExDXbWCRqqk4NAYy+Ei8=
X-Received: by 2002:a05:690c:93:b0:617:cb98:f9b2 with SMTP id
 be19-20020a05690c009300b00617cb98f9b2mr987181ywb.43.1713398552014; Wed, 17
 Apr 2024 17:02:32 -0700 (PDT)
MIME-Version: 1.0
References: <0101018eee7c0c50-f4c06ca0-8b15-4f96-a5da-269fbdf07dff-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018eee7c0c50-f4c06ca0-8b15-4f96-a5da-269fbdf07dff-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Wed, 17 Apr 2024 17:02:20 -0700
Message-ID: <CAOSpxdZsCDLHv9AJQu9MnYa5mS+sGF0cpkKKynyv79SS_U3Y1Q@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-3.1.33.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Apr 2024 00:02:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62956

This was an "all green" build, so it can take its place in line for QA
behind scarthgap.

Steve

On Wed, Apr 17, 2024 at 4:54=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-3.1.33.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1.33.rc1
>
>
> Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/bui=
lds/6816
>
> Build hash information:
>
> bitbake: 7ce4107bf824b3e115b40558336de25f99af31f8
> meta-agl: 6febe63dbdc2655efeac2596f7a2d9cdbaa5bc6f
> meta-arm: b75b8ce1ac10dc3521c0f710a4cf79bc7e985cfd
> meta-aws: a83f0fe4cf41261cfbd22ad5c34c36d7a5106903
> meta-clang: 989ff6a4e7db59f01d511727135610006124ead2
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: bab936cb4ae5671ceaccf50305a6c0515e6f0222
> meta-mingw: 7bdc58e6c5d1054b1b6ad5c4e480a95e995ccbae
> meta-openembedded: c74ebbddfd9dbe02d3f7422016324451eb218e1e
> meta-virtualization: 35c723774ee06b3c1831f00a2cbf25cbeae132e1
> oecore: c4fb7d1f0f157ffafd9f907f49ea74b93b2c1d40
> poky: 63d05fc061006bf1a88630d6d91cdc76ea33fbf2
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#412): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/412
> Mute This Topic: https://lists.yoctoproject.org/mt/105589020/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

