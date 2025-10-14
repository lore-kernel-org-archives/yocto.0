Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6309CCD192
	for <webhook@archiver.kernel.org>; Tue, 14 Oct 2025 15:51:01 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
 by mx.groups.io with SMTP id smtpd.web10.284.1760457053805518450
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Oct 2025 08:50:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=A99uwnID;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.171, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-7815092cd0bso7458487b3.2
        for <yocto@lists.yoctoproject.org>; Tue, 14 Oct 2025 08:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1760457053; x=1761061853; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gPyHA0DTyukyan0xQKmpWHTOU/mRp3kk4A/Ao2grqt4=;
        b=A99uwnID4NYSG2HORY2ILqnK8TIbaH2nXbZGcAbYjNFxUuwfpKlLN6haZHOy2rXmLI
         fkqUUO+zQ3mulQL67RMWt1wNqImuQLuKhETSbwG9cZCmbZd1KW8T1wlLdZzPdPoC2O9P
         hsBaEx8jAcYD3ZxGXMh+nEw1E/ahHzY4lp85287D15Q7VoLpJaxecqlLwdkigrRbDMWW
         A2LFGEgLN9jM8Atue6LAFCb5YLwpE27yth/bGddZMTWdNyxnfGsXxcVSbOar5lzmF1/H
         9H/G8Tpl6DyNTddvckzZQsgO9rwUDwus/s1k6aPLbWRs1FM9lUk4Zku5+hq6zrrQ7uA1
         OIjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760457053; x=1761061853;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gPyHA0DTyukyan0xQKmpWHTOU/mRp3kk4A/Ao2grqt4=;
        b=skxwLbyse8mvwdmz6LksA00DIvhpLTf78IGEZOENH+asVSOpuN0uVwTxFVooRNqpZ4
         xZ0Lxqns7qg2Y9OqWVrilbKMNlYpW0pJSjpN33r9cPhQqggLRiTQ0YNc06x5Uid6YroN
         LVc/eZZaxIAACWVg/k/9DR6Wvc83Jp3lTPwndDrZogXIcVRTLegY9+Ga7qOI8G/7/xQ8
         koxouEcz/m9foUS+FowZXLs0HyRRINfj1azkaCTsTObNOTRio3h883+9w6PsTs3ZMZvm
         0kYSqYvpLfud4QGKV8GclLtVn2RAFbQRjp2uURxZuWFYUzeH3yK5nlSvwoNQjjvpDY9K
         Jy3Q==
X-Gm-Message-State: AOJu0YzYLQf4ZmHHI4g/QMahhKyd/FBzxUIts1NmhwVbVbCk5QS8F3Wj
	Q98iCCknOJ7U7VaLQNmE9EulnWADmLumA9dXySbUBLf3KDbYzNJ5205+rBK+dA3XWt4HlfI1K5U
	23fT2VM8NlTsibLtugX5tRvfZgrVfhRVZcJoUXEAJ4g==
X-Gm-Gg: ASbGncsx5nPVTh2LAVsanoc9bJJ+FZxAGYsneI0zTJ6LcHxCwThOCZD9E2Hu/yFhU0p
	oNq6hwv5f5cxIM2SFJA/R5/c933M8jp8lpBFS6SeimPvywSI60ofTpmhfbGPC+8Gk7Eghz9eOQc
	CBK/PoE316BeNlkD8Ltgc7z2AJHGxcc/ecPCjYMYZ70h8TLFR6pU3aU/5ziCX513oKa+UW21YpH
	9+3Jz66vlaQD/9y9t1KyFT+MT0SSt4F4R6Ua/vIhcu30B5uKT4gF77JKJlaUrgzZQoi
X-Google-Smtp-Source: AGHT+IF2vt9NXuWmmbaQEiAlS+x1+sFsfs44dyrqUgwWj1xmg3i8FiypfEMgnUPhIIABeBfl2AnLfVq1mW5MlJV+b38=
X-Received: by 2002:a05:690c:4512:b0:77f:7108:bd88 with SMTP id
 00721157ae682-780e1689bd6mr415080837b3.32.1760457052673; Tue, 14 Oct 2025
 08:50:52 -0700 (PDT)
MIME-Version: 1.0
References: <01010199e1452afe-32ecec07-e05c-46e5-adfb-fd30263242f7-000000@us-west-2.amazonses.com>
In-Reply-To: <01010199e1452afe-32ecec07-e05c-46e5-adfb-fd30263242f7-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Tue, 14 Oct 2025 08:50:41 -0700
X-Gm-Features: AS18NWAEVDhES8RKpO57Dgy8KGmcm577Fja-Y2CfPSlY7XZHR4plF_g3htsRI7s
Message-ID: <CAOSpxdb0Bnp-XosxMQmZfcLyDPSc+p5yE-LBWBY2-ML7Q0siKA@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.13.rc2)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Oct 2025 15:51:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65932

This was an "all green" build, so OK to proceed with QA

Steve

On Mon, Oct 13, 2025 at 10:50=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.0.13.rc2) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.13.rc2
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/2579
>
>     Build hash information:
>
>     bitbake: 1c9ec1ffde75809de34c10d3ec2b40d84d258cb4
> meta-agl: 07a44280ecb27c3cc794a79cd46c53caf7da925d
> meta-arm: 0f1e7bf92c89759f0ab74cfa5be4ee47b092ad46
> meta-aws: 446379f6892ce2145e68d9b95dbc7a208e9558d2
> meta-clang: 731488911f55ebfe746068512b426351192f82f2
> meta-intel: 6fc37057c7f0293a2345e303588901889df8b937
> meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> meta-openembedded: e621da947048842109db1b4fd3917a02e0501aa2
> meta-virtualization: af1db2042caf8021d767dce1b26c08b59b96f3d1
> meta-yocto: 3ff7ca786732390cd56ae92ff4a43aba46a1bf2e
> oecore: 7af6b75221d5703ba5bf43c7cd9f1e7a2e0ed20b
> poky: f16cffd030d21d12dd57bb95cfc310bda41f8a1f
> yocto-docs: 6f086fd3d9dbbb0c80f6c3e89b8df4fed422e79a
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
> View/Reply Online (#606): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/606
> Mute This Topic: https://lists.yoctoproject.org/mt/115748439/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

