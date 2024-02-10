Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC6FC4829B
	for <webhook@archiver.kernel.org>; Sat, 10 Feb 2024 02:28:28 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web11.6056.1707532107481890747
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Feb 2024 18:28:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=KnjXQ0a+;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.174, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-60498c31743so15435137b3.3
        for <yocto@lists.yoctoproject.org>; Fri, 09 Feb 2024 18:28:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1707532106; x=1708136906; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tp1n5LTr53J+XgtpAc+u8/Pd/SvTmfwDM3lJ+J+Lij0=;
        b=KnjXQ0a+q0h8BzGEG/4jyJh2xlkXJnRKfYkncpGAlSgGZiDywmi+GfIpkNwuW0k6Tn
         Tcl2J61a5cnViGGiDmG46T5biOC4rY8wnEdDeGGaeIrBzBFnZ7LnH8aINDTnPVewn8E0
         f8ooDoHBmC4hee01/FSFp7D9wB3G51aK1LkwAtEJi3zPTnLKYR2hhg9JGQIN1PIyruvf
         F7jfmI3J+a3mta6X731DyfvPEgR61GC+CyFtl2TZL/UaWmNhaJR2f2l2JAr0oXDYp7oP
         fMM/MLKGc1bCbMDy6NFZIOhsuj1FD3/M3WwdjbAMzq8+JXJYzqQJcscghPI1EDL7hdLn
         p1nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707532106; x=1708136906;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tp1n5LTr53J+XgtpAc+u8/Pd/SvTmfwDM3lJ+J+Lij0=;
        b=on/n1wwhXqacmI7SBNDlV5Cq8sWMithQo4/ba3gHrSbxfhu5MAt+mm5bPeUMeYe/63
         2w69Un5aN+hfaBEOfj04NtJj520KThQZQFoqpNCOXUs/ggc772x9O7I1hmoeBR6owSZL
         FlfqRHqSLCHTBtQ1ilLA9WO7oEN5ZALlWFJvO1lgimmK9SYLiKJ5gWYGz4XRH2QcO2ww
         5qzm7MPnHExBCZOVg/JgeaLx6C6hI08lDhfouhYxQ+cwQSWUHdxU0ZzcyaW21tpkJaJx
         la/C9VZjvuBr29tbdVprk5Nd451diN1kz/ZNlR9dBBdV0aFgZ9WrKf6zO3b2bcibqwUQ
         Jprg==
X-Gm-Message-State: AOJu0YwxWYot5l1ggn1EEQlUpuK1bPOJAyVF2KvUz/W986jP13qOGgPH
	CXICN2UrTPEWTv0Mfubv7Eo99Ykewsv2fLLR91gpuL0UMoNQ045ZKNTWkgPl49qnhy8PlYy0Jex
	Iez9EDVdSX/6av9inDoYuAejpUxInGFQTnrSo0aWZnEjPMmJ6
X-Google-Smtp-Source: AGHT+IF0KoeMIe+/qJSV3XnAEa46s2FQJwhFAmERF1kc3INN9oH/2o2Gr42a1EPrdu+OOCmaZATD8MSc7WtmV5FRYv8=
X-Received: by 2002:a0d:d847:0:b0:604:9afa:5bf7 with SMTP id
 a68-20020a0dd847000000b006049afa5bf7mr1196358ywe.15.1707532106504; Fri, 09
 Feb 2024 18:28:26 -0800 (PST)
MIME-Version: 1.0
References: <0101018d90c4ca55-6841b832-b832-45c0-9d4b-dc21e42261c5-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018d90c4ca55-6841b832-b832-45c0-9d4b-dc21e42261c5-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 9 Feb 2024 16:28:15 -1000
Message-ID: <CAOSpxdas9ZKzj2U_tALBrkJvOt4rKDmdws0f=b-aJftCd+XosQ@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.3.3.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Feb 2024 02:28:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62454

This was an all green build, so good to proceed with QA.

Steve

On Fri, Feb 9, 2024 at 4:07=E2=80=AFPM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-4.3.3.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://autobuilder.yocto.io/pub/releases/yocto-4.3.3.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83=
/builds/6552
>
>     Build hash information:
>
>     bitbake: 380a9ac97de5774378ded5e37d40b79b96761a0c
> meta-agl: 54333533f293cae29cf00948862ae86c8c814197
> meta-arm: 6bfd024269c3888dffef7540b0618b04ee3308ea
> meta-aws: af73d3c35933988ce286c49696827ffe63e5785b
> meta-intel: 8d633bd01e20e31c0dae58cf3cd41eddb2f712c7
> meta-mingw: 49617a253e09baabbf0355bc736122e9549c8ab2
> meta-openembedded: da9063bdfbe130f424ba487f167da68e0ce90e7d
> meta-virtualization: ac125d881f34ff356390e19e02964f8980d4ec38
> oecore: 0584d01f623e1f9b0fef4dfa95dd66de6cbfb7b3
> poky: d3b27346c3a4a7ef7ec517e9d339d22bda74349d
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
> View/Reply Online (#384): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/384
> Mute This Topic: https://lists.yoctoproject.org/mt/104272169/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

