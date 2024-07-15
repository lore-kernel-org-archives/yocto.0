Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA95CC3DA4B
	for <webhook@archiver.kernel.org>; Mon, 15 Jul 2024 14:30:48 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.39551.1721053846319758803
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jul 2024 07:30:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iy3IPy0H;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2eeb1ba0468so50636811fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jul 2024 07:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721053844; x=1721658644; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ExifFgQ15GA5yUQ2Bf0hqBQY//w5ok3kRgw1bN1iVYM=;
        b=iy3IPy0HwqQMrB+ojObbc0zc54AHUQ/JXvUgJk0GKYVgnylxuDQy+RW1nJhU+nDPV3
         xadQ7MKRzWkD0uMOKEKv2OPgft9VnHWM6vqUN4YrBRvOQPMLjafOAUj9vMVM7cun/q/m
         s/7qb5Hj4fR0CIdPD1pvJC6N2qIAXMT9WO/hbSvDx4Apg9rhT2LD6kyRMlMjH9bzDSJT
         JaqFyag3Fsjs7WRPeKbaz/Kkzm3J2rPEdZMZoBOuzKAPaa9wY4MITxNOzvzwu+y5b28h
         2lh6jI5w99sSQEhX0UEmNpdvaKEoWt4ROrhHp6lb6u3HOjBAf8Jg0KZOfIeMd3WKUyGs
         v64w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721053844; x=1721658644;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ExifFgQ15GA5yUQ2Bf0hqBQY//w5ok3kRgw1bN1iVYM=;
        b=fb1lzxg5fjuVZK4Uhq6cnKx8Bl+3UF3s7bScr3qSt7V8bgpqKOe+WuUatsB5hzYErt
         oHqQNrPJAPDlwU7NcUErDHx5/28hotbAm4+iZwkIdAe6W1N9x2peBEr86VSetnm4VI2V
         BSjdo2zDjk1t03/WmTUMJ2RZDbCOdH8BLo9MvaUucDNIo4+a6iASVv7KvLUlPR/Bilr3
         KsoxXgncbc8pvDf4sIfQcnr6diAt7pxN5+sef6RP17/hqb2SlUcDhhBUoKgr5kbtd4pW
         A0fpDiGJoVAZc6mCj+9SeE0U8af+gvcmLhghvmKhNPXTFfk26TDPoNibRLxQL3UIqTun
         Y/6w==
X-Gm-Message-State: AOJu0YxgFsNKiKGnOper30af532THhl9HqwuFvZRNCPyhv5ea7zewl+b
	QlgTW11RkPI0yG0SEHZWYwHvICBlUcbAi5l88T/b8ba7nb7fPoR+4Frvn1g9ImGf7aA++YHMZUE
	zyavl+LD1azhcUOs0MSW2lAYLyqKXecPB
X-Google-Smtp-Source: AGHT+IFuUz5XdC4VCltm+wcdi72gjxigLK0+lH631M3mqnkrbdSGYpOsV53jpBaK3WlKwzMYCReYZZoEJ2hhFU3oK4s=
X-Received: by 2002:a2e:90d0:0:b0:2ee:7d3c:670 with SMTP id
 38308e7fff4ca-2eef2d77038mr513401fa.19.1721053844212; Mon, 15 Jul 2024
 07:30:44 -0700 (PDT)
MIME-Version: 1.0
References: <rvFz.1721053282875833528.Pfy8@lists.yoctoproject.org>
In-Reply-To: <rvFz.1721053282875833528.Pfy8@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 15 Jul 2024 16:30:32 +0200
Message-ID: <CANNYZj9SWbo5dmrAj-SRq0TXeF5dXRFoQLAVr0v19qs2KeDPhg@mail.gmail.com>
Subject: Re: [yocto] multiple compilers in one sdk - possible? senseful?
To: yocto@lists.yoctoproject.org, andreas.2.weiss@continental-corporation.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jul 2024 14:30:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63500

On Mon, 15 Jul 2024 at 16:21, andreas.2.weiss via
lists.yoctoproject.org
<andreas.2.weiss=continental-corporation.com@lists.yoctoproject.org>
wrote:
> But is there a possiblity to create one SDK containing both 'worlds'?
> It would be nice to have something like that - (I think) development of the communication between the cores is easier.
>
> I dind't find any hint for that,
> maybe someone has an idea or comments on my idea?

I think using the 'direct SDK' feature could achieve that. We didn't
test it with multiconfig, but as it runs directly from a plain yocto
environment, you should be able to switch between compilers easily:
https://docs.yoctoproject.org/sdk-manual/extensible.html#installing-the-extensible-sdk

The tricky part is 'sharing' such an SDK in an organization, you
basically need to have a world class sstate cache infrastructure.

Alex

