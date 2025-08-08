Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A6FC87FCB
	for <webhook@archiver.kernel.org>; Fri,  8 Aug 2025 20:03:34 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web10.58.1754683408582847303
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Aug 2025 13:03:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=eXGxuuMJ;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.169, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-70a57a8ffc3so25788337b3.0
        for <yocto@lists.yoctoproject.org>; Fri, 08 Aug 2025 13:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1754683408; x=1755288208; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vqpp1J5Bq/0+o526sjH17TMeRZ8sx0nGaxt1d8P0nvk=;
        b=eXGxuuMJ/apu/WLwgi83sTVmzCBs90Io100Qu4xL+EjvYZR7qRO+q1B5Z6//gKQaz6
         g/Obc2h9R1ArZ3rltUCod1X2WAf6XkRO+KqmMFiiKufFe/XTSARVKViXxcK4KRg5CJBG
         dusYxYG+osHcDXS9kDJj6FOQZzdt6DG4Wr2OtpJEzDdBJ7m881w7YS8YFriAQvGKYxeW
         FEl6Lx+dxX/fry3uX7hwky1WQP2Lwp9D0oDspCTja3vx9nPEb0jLgLkK7P/gnjg81xFn
         i2oM5eGjvYkRT6EAnmFriBMKFanpRmAJfYyJOSjokGPBF6NSKikSbS/xyl/V3KY7wQ+K
         aFlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754683408; x=1755288208;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vqpp1J5Bq/0+o526sjH17TMeRZ8sx0nGaxt1d8P0nvk=;
        b=MZr4WkouU2UAVbFqs3c/wxFjZnPgczrwAn4hhr3EbuKSI/nEB3CQC5qxzkvgAU/aDR
         0GVq8Ok0ejS/i/Vp6vcvKvS/d0U8GcyVlnXkxnPFbPuX4gyY/BjJMt6y8Q4PRwFBY7aK
         PY9nd7oEpL70RL/Qbllp4II4uitDvW4qEuKZj1Hwfe/pbVkfVjF99GPtGpdb7ZOjJ0gK
         m0Ydh2LbiNnoznCXHHLrA3IzfXuxnNsq50cOLoCnsOGWHcG4c38wkbnboAKALl35Q9hS
         eVkbY5U23dh9Naety/8SaMTbfGjV6/KydW86uM5s+jGiEER0EGPIABohe5kR5r4gP9zT
         krEA==
X-Gm-Message-State: AOJu0YyyiLeCzmwUIDMSMJtjKUGeJCXxR2ygt5kz+mrai7mGE9Ju+3p1
	y8TzCn1/TxcV2gr9HeFGh2qwyuZ4NmBquUVqPpSpBY75B+kMZV1geeqUWOcwFM84zqRD2C29z++
	/FTNDG0ovHt3ONxE4kSP9oQNmLby4w8+BgNgPhbhVwsXQnwwokYYy
X-Gm-Gg: ASbGncty7g6UgikiHPn+QOi3i//yegcwpjJhlTy7srhUL/L4Yt3JqbFoz3PMhXwMBHR
	UWAPnVXdzHRi8OFYIRirnTZnLZzHvIdh30gowWlUL7M+sk/y3E81r49g/bL7+orMsvZ88ChQBl7
	e74lpHxqLaat/UNuHTJOrY1Y/EKMjKFI4HdCIKDdCtQg3/tl+6KptdbMzGXc2Edt0hJx+zbQGlw
	N0sT02zHzU4HmcjZga2ZVrsKSO6QBIYngE85QjgOeFmFxZdsQ==
X-Google-Smtp-Source: AGHT+IH3KRXj2i2lc7wTqAseIWt21sHIlrkvFsF8//aaOz3l+6u2MLoslGk/CdtUIKxubBVkZWrbQt2r97Vj+rLB7AE=
X-Received: by 2002:a05:690c:6710:b0:718:38bd:bee4 with SMTP id
 00721157ae682-71bf0e97f63mr53919637b3.40.1754683407543; Fri, 08 Aug 2025
 13:03:27 -0700 (PDT)
MIME-Version: 1.0
References: <010101988a8ddda1-4bcd7346-02cb-4e85-96fe-d5f0fb67d5d0-000000@us-west-2.amazonses.com>
In-Reply-To: <010101988a8ddda1-4bcd7346-02cb-4e85-96fe-d5f0fb67d5d0-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 8 Aug 2025 13:03:16 -0700
X-Gm-Features: Ac12FXzJ7k0jSJ6sBssLdA91r2abcaTKadffXsT6K_KlTy4ELrR33PDWImCJNU4
Message-ID: <CAOSpxdZkkz4or_i9ySacxgjN7YBA68dkeKbm1-+7NtgDbOROcw@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.0.29.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Aug 2025 20:03:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65743

This is an "all green" build, so OK to proceed with QA.

Steve

On Fri, Aug 8, 2025 at 9:40=E2=80=AFAM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-4.0.29.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://valkyrie.yocto.io/pub/releases/yocto-4.0.29.rc1
>
>
> Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/bu=
ilds/2170
>
> Build hash information:
>
> bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
> meta-agl: a0cdd47872a252f9a9075ed5151bbd595fd6373c
> meta-arm: 10c27f061b22af78e17a23cf540b69501afc7160
> meta-aws: 876bd12dd82a5f9dd40a73288f0c2541c15a610f
> meta-clang: 8a1d0a1993040ab9d2fb7259b71e4c9582f5cd17
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: 95eb26cd3372439443acd1f4d4265989aadeca88
> meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
> meta-openembedded: 06fc0278f10d630838d703dde707bbf0e2999873
> meta-virtualization: 3e4dba95e6b5f5f68d0b3a5899b106c89da59428
> oecore: bd620eb14660075fd0f7476bbbb65d5da6293874
> poky: 81ab000fa437ca04f584a3327b076f7a512dc6d0
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
> View/Reply Online (#582): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/582
> Mute This Topic: https://lists.yoctoproject.org/mt/114603423/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

