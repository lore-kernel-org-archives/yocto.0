Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79F30CE7A8A
	for <webhook@archiver.kernel.org>; Sun, 24 Sep 2023 21:03:35 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web10.47833.1695589411601524633
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Sep 2023 14:03:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=tM0qasW/;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.41, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-9ae7383b7ecso906581466b.0
        for <yocto@lists.yoctoproject.org>; Sun, 24 Sep 2023 14:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1695589410; x=1696194210; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UgqNSdrwaKuKLnCFkaGpB5Tw8MoCvB6aHFFVmoeODNM=;
        b=tM0qasW/LJ1byMgRoti1j2b2GRKe6voOrr7pleh7xud8rkQTN9ar6EUp2jUvVVzsRW
         sCEoRm2aDEl15mHpwcx9IUI+Of9n5dUXS8k2TSdG2djvvYszztd8HxGq1CZT9j4PScnZ
         k+hhiq9/PlG+MuzCYFnNMFeEUNqx6V1beV4SxK2OsB8OZTm90F/zYR8UJ1OnXS8diYuw
         fl16zN9rldEkeFmCkTaYBLQWkcsrGTwCyZVbV4SGa0uLPjHvNXD/8WhxLs7jm2sgVV3y
         AOX2my9ZoI7KFm40jxk0DkLvAAzqgU9RKqLbauGl3hJcclnrA2SxP2Y4TxUJXQWNj5hP
         JtdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695589410; x=1696194210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UgqNSdrwaKuKLnCFkaGpB5Tw8MoCvB6aHFFVmoeODNM=;
        b=nPz7uNfmzMUwnsg9a4a3M9MMV53We9lXHpVxYbz4WMdSJXM47tjgcctD+k3zRFQVHn
         BrK1109g5vi2eT0rJUZSRqVxxJMpJ25D9vKWZ/PIgcVUtEIHae4k9LvsNSi/V1CveTX0
         yqviXLuA4B089la26j75RPj/vSkxnLC7giMX3C1jKJGKmWE4TDIuQu1LRRfMytTJRtGj
         DZ7uwIj7A+wgLbIgPvv7uG6YX2k06ZhpVcdLKuUssFb5Td39KKeBnkOBXqLwPY4ZhAsU
         t8ia4hzNiPog5B1a73DbjSm23hJug9iFyTWapmGZ8SvidsfSezFSgO/ZDdxo8Kn04xDL
         Ub3A==
X-Gm-Message-State: AOJu0YyRtwkw0Fdi4vW5pgPSSPzxLP/ASpRJtZKEc3dkqh9WxaoAjQhY
	KERLIFbgFDPRPKVTErGSgBdNZDJHOxSUuWHp7nuICw==
X-Google-Smtp-Source: AGHT+IFW1wGBUyygrRrFVQ/Tnm7EtiwYpgKWwH5sGknImYVFv9S/x8K/Qkx/OLiTCpZ/Q9+NtaK+JgA/RvpdmpA+7Vo=
X-Received: by 2002:a17:906:59:b0:9ae:3db1:ce05 with SMTP id
 25-20020a170906005900b009ae3db1ce05mr8003920ejg.24.1695589409279; Sun, 24 Sep
 2023 14:03:29 -0700 (PDT)
MIME-Version: 1.0
References: <0101018ac4736511-46b8f424-257c-4e7f-a253-0d7d2e27be7b-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018ac4736511-46b8f424-257c-4e7f-a253-0d7d2e27be7b-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sun, 24 Sep 2023 11:03:18 -1000
Message-ID: <CAOSpxdZP=v+1nK1yx=TVEakbsm-MASXQDGpj1sqTrM4QhoQTfg@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.0.13.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 24 Sep 2023 21:03:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61093

There was a buildperf failure with rc1, so I've just started an rc2 build.

Steve

On Sat, Sep 23, 2023 at 1:50=E2=80=AFPM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-4.0.13.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-4.0.13.rc1
>
>
> Build hash information:
>
> bitbake: 41b6684489d0261753344956042be2cc4adb0159
> meta-agl: 666f141563fd7fc12b7638479d5c0cd38dae5006
> meta-arm: b187fb9232ca0a6b5f8f90b4715958546fc41d73
> meta-aws: 60891e535ce219b3c473a89d8ae89cdba1d396f4
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: 1342bcdc5bfc6620737e7d195e7d9bd744348577
> meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
> meta-openembedded: a88cb922f91fda95e8a584cee3092083d5ad3e98
> meta-virtualization: 2d8b3cba8ff27c9ec2187a52b6a551fe1dcfaa07
> oecore: 6c7fef37d4286f6bfc7b1dcb2d1e543a110a7f6f
> poky: 64242e2844ff2015ffa9391152681d7c05a186af
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
> View/Reply Online (#311): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/311
> Mute This Topic: https://lists.yoctoproject.org/mt/101549125/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

