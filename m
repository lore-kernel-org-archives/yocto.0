Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA0AC54E66
	for <webhook@archiver.kernel.org>; Thu, 14 Mar 2024 02:25:42 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web11.2157.1710383133213040380
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Mar 2024 19:25:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=0FNBO9GU;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.170, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-609f359b7b1so6238377b3.1
        for <yocto@lists.yoctoproject.org>; Wed, 13 Mar 2024 19:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1710383132; x=1710987932; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J7xjuPZIPo8V6Zmph6BwZ5sHJGLQH4F5qPdfhztQo+g=;
        b=0FNBO9GUkRcccTw5XEKExeCE11VST1tUFYAO0Alu2m5GoMwGUpkzIHWm5uRtKA8S82
         T2hDJXMBJOy5K2KxsDBWBq4vvAJR3PU8vYtn+573dlVDm4JmBpnUpjDA1TgbDUWZToSj
         C1C7uqZ3G/JRMXQyo4QWUFIdtYsUpQH6YzMjuv5HQgvHuT0BT7UMVCoSskA92HhgA91W
         m3XcN9j+cJ4jyHlHMITBCpoYJE7KcBwzwXetANkBtJgfq/ZhFT5X/nLC758LMK6FVGze
         banfb2LlKbau4rmOeXYtvjqnx0ispRwDq2bMyzFIWH5pMYMvf6yQ9+cUPvyqh3q2I2St
         oFrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710383132; x=1710987932;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J7xjuPZIPo8V6Zmph6BwZ5sHJGLQH4F5qPdfhztQo+g=;
        b=rLAUlRfoz40Fe02rvHminKXR9yEagJMcL7O/cGW6Fg0GHUtpVJcZ+8N4huhaaORu8B
         q6NjiJlpeiBS8m/mApdg6UXqFvszhmgpDm/3l0WjoIgzAKpvjU7+vHhJfh2i/wmS216o
         ePXw5oVePjRLA0hhxsCyYepCIJZDz8eKUNcxACZLm9ylt/gmwj7MkjTaWOC4AjOuHMjv
         XER0tawieuYvSnwUD5T675+f45HPiGmbnvxPcmV0wuYIxuQXl81ibSB1p8l3+nWH2gMw
         cmSqGxhCBfrTAKIjV5bNuaqcYYnJDKDrx4QxcHXOLf4nC8GL62YXSPOzLwY7yBmn7hIU
         x2IQ==
X-Gm-Message-State: AOJu0YxxTaUXJTbaC+G7zZhhzA0QGEd7wzQmygyzx+E+7BYkv/v3iMZY
	RNgNy66gSySkU5YeI2O0d6xXvdziknqiIE9PFz//KP2ZIyzDMVcu++8s4kbLVNFnPOaIKG6WmE1
	OTfEeHWsaL7BkYx+I+RuO97gyzX2IhK/y7S4/jpapC7s6vFHpq38=
X-Google-Smtp-Source: AGHT+IHHjRJ3022SABVsEuMrTRMaGQHYX4KsSFKHU2gVrDJpD3wL0M1aOwUUhCEZ5d+gLg7aG1v03Ta6IFcZjzG2TG8=
X-Received: by 2002:a81:9247:0:b0:609:9171:130d with SMTP id
 j68-20020a819247000000b006099171130dmr356766ywg.19.1710383132125; Wed, 13 Mar
 2024 19:25:32 -0700 (PDT)
MIME-Version: 1.0
References: <0101018e3a457956-327c6d93-de66-472d-859d-7bf581132908-000000@us-west-2.amazonses.com>
In-Reply-To: <0101018e3a457956-327c6d93-de66-472d-859d-7bf581132908-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Wed, 13 Mar 2024 16:25:21 -1000
Message-ID: <CAOSpxdbMLDwmibqsD_hP9xfJoi8ZRpu8fumsR9efN8kaOQKa0Q@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.0.17.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Mar 2024 02:25:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62757

This was an all green build, so we are good to start QA.

Steve

On Wed, Mar 13, 2024 at 2:03=E2=80=AFPM Pokybuild User
<pokybuild@yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-4.0.17.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-4.0.17.rc1
>
>
> Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/bui=
lds/6676
>
> Build hash information:
>
> bitbake: 40fd5f4eef7460ca67f32cfce8e229e67e1ff607
> meta-agl: 3fb5640211e4c3874036a6d4a61e852b348eb4ad
> meta-arm: b187fb9232ca0a6b5f8f90b4715958546fc41d73
> meta-aws: 11e0184fb8062c5384085e9c91339f76ccf191f4
> meta-clang: eebe4ff2e539f3ffb01c5060cc4ca8b226ea8b52
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: f932ebb2544170f43edd22739f44307809bf8cfb
> meta-mingw: f6b38ce3c90e1600d41c2ebb41e152936a0357d7
> meta-openembedded: fda737ec0cc1d2a5217548a560074a8e4d5ec580
> meta-virtualization: 7902664f89678164b7fc90d421cee74cbec51cdf
> oecore: 2501534c9581c6c3439f525d630be11554a57d24
> poky: 6d1a878bbf24c66f7186b270f823fcdf82e35383
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
> View/Reply Online (#395): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/395
> Mute This Topic: https://lists.yoctoproject.org/mt/104917815/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

