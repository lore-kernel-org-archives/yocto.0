Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922F4CD1284
	for <webhook@archiver.kernel.org>; Sun, 31 Mar 2024 03:25:32 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web11.11149.1711855529463974968
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Mar 2024 20:25:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=V6wx01xB;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.182, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-61433761555so20943947b3.3
        for <yocto@lists.yoctoproject.org>; Sat, 30 Mar 2024 20:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1711855528; x=1712460328; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MP+9zGp+M/yxmw1Nm7+SLy1ZYXevOuuo23bkzxmcJ4Y=;
        b=V6wx01xB5y41uJRmhbGLOH3M1ghveiYuiPwOZUscZA94OvXVgClTpcLYzQg8kGhdNc
         2na+gXjwYAtz/q2jbv2K5V7BRkD0Ehamo4EPvRujkapQohyjdrjNV2/k0eSE0q+WQ18M
         +jCNc7MgvCVnxkufFwOYmqjdYj/XMBPaux8MPIMHMWLvLTE71iJE7mfd8ZZYUfDIH9qA
         1dKIWELwqqr3Tkh2QRZEjhfEUow6DoapiGmandnBLfmFgPYSe5NNjj2JMv4cV57Jwx1W
         Mx6y/Xm/08y01v74dNfr66in6p6Oi1Z7ZYSfAiwhXqT3Kw92UzIetSYwBT/MBlk3UTOt
         i/YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711855528; x=1712460328;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MP+9zGp+M/yxmw1Nm7+SLy1ZYXevOuuo23bkzxmcJ4Y=;
        b=NTenseXPdqS2yZ3CZA/P82hLVUM75JyEmumauioQ56yecY1abYmuul/docpPu0A9pn
         7k1fQdliaUgOMcrxCrI/PuK0TKCTfttoQ3nZVG/4YGmLMbCZdYfL0BU04ViRlXW7AKyc
         xqvH5tu0Pm877wVUD+hKOvV9m7zB9R9OAA4VnffWknQtF8nZz2QRDf3SsxsxLezEqnsv
         3GURay+2484Oz2jNpV3CnAWqd9Lrbqb1TTVhd+OkiU+B/9WDtp2saj6eRz842CzYg6Ct
         1ePIlsQAJP68NQB73i4+ZetmVq0qH/31uJXcIC+2JAp74zokWsg/bTzKODxP44QhDmxK
         3Jxw==
X-Gm-Message-State: AOJu0YwExUFSrjCOPBJVAH+t1mjjbku2SyzSMJf5G6cEHjnlmy+XkUDr
	/kv8QKE8ZYc6tj76uvxevpYZXilLjGaVkiqnr2jqDFS0qSG6O6T5hVMKJ1PkW/Abqlb+Em0HdVG
	QU6vUvKabzspmvkK6ejjECp9QaEt2GgUeD+aEmuBIDW38IMD1Cck=
X-Google-Smtp-Source: AGHT+IF3uzuksTy77OrY14c3/jDelTn5/pOkvcCC0yay/yGy/FhTSSIywaLrU+Ulk5AmzuRCCrCZ4KP6SHN//gpllhs=
X-Received: by 2002:a0d:efc6:0:b0:611:9104:b450 with SMTP id
 y189-20020a0defc6000000b006119104b450mr5956835ywe.15.1711855528509; Sat, 30
 Mar 2024 20:25:28 -0700 (PDT)
MIME-Version: 1.0
References: <0101018e91eacff0-19ec5ff7-4f94-46f3-b8a2-3614dca53175-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018e91eacff0-19ec5ff7-4f94-46f3-b8a2-3614dca53175-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 30 Mar 2024 17:25:17 -1000
Message-ID: <CAOSpxdZZ7Pq0krdgVPfrCm5sRbncoHj7cSJCP4xNenErQDZbEw@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.3.4.rc2)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 31 Mar 2024 03:25:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62865

This was an "all green" build, so OK to proceed with QA.

Steve

On Sat, Mar 30, 2024 at 2:31=E2=80=AFPM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-4.3.4.rc2) was completed on the autobui=
lder and is available at:
>
>
>         https://autobuilder.yocto.io/pub/releases/yocto-4.3.4.rc2
>
>
>     Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83=
/builds/6745
>
>     Build hash information:
>
>     bitbake: 380a9ac97de5774378ded5e37d40b79b96761a0c
> meta-agl: 5d487f3f281cd632d02b5aa16b2b1e0470f9afd8
> meta-arm: 150169d01f2f57dcd65854a2a43aebef87ee8d98
> meta-aws: 46ece2480cebc6be90a6056361f480d39976240e
> meta-clang: 73c00a5a0bebc871854e43cc1f0fe5bd5e5ad1d7
> meta-intel: e0c541c10f561b9c0087fd07ad5b79b0a534dab1
> meta-mingw: 49617a253e09baabbf0355bc736122e9549c8ab2
> meta-openembedded: da9063bdfbe130f424ba487f167da68e0ce90e7d
> meta-virtualization: ac125d881f34ff356390e19e02964f8980d4ec38
> oecore: d0e68072d138ccc1fb5957fdc46a91871eb6a3e1
> poky: 7b8aa378d069ee31373f22caba3bd7fc7863f447
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
> View/Reply Online (#402): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/402
> Mute This Topic: https://lists.yoctoproject.org/mt/105241076/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

