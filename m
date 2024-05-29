Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87CA1C25B75
	for <webhook@archiver.kernel.org>; Wed, 29 May 2024 11:34:19 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.11566.1716982454210360616
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 May 2024 04:34:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DRK/XY3f;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2e95a1eff78so25952491fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 04:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716982452; x=1717587252; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fvEKwlXE3iu1uRJ7C8FIpa1SKtRukE8+ZH21TvBC/Gk=;
        b=DRK/XY3fM6a1ZNcBT7OA4Z+CY2SNGAlXBX0JykH65/t5k7ROQqemxUofMUPBVGcARz
         Uo7XtIa2bHS3hFagFNbW7cUqvx70q8xrkUo6FXNn0/tksemDf5l/yuUNDB8OP9W81ypd
         +CIf++Ae/wYNN0c7101Hm3SJl7xiy7LH7Ngnm6Jblfav/wjmcJK2hWyZnTaL8f4VSoXZ
         xlIUHUnX3ppti//NAh/8VKJvL/5Sq9H5MCc4FF31p88yDfbduikFz3/mvZcxvxY7WUL2
         ci2F2Wltzi3S25gtQijxv/mHKEmhupP8n79e1QeiqA1JdWNbigJ2s7G0U+uvLobYp7eo
         IRaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716982452; x=1717587252;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fvEKwlXE3iu1uRJ7C8FIpa1SKtRukE8+ZH21TvBC/Gk=;
        b=ZHwmvCdKy7qeq5nXffOonsR5WEDOWiteGeINVtdGoHX/ZNb3rZ56PN/Ew4JgBN6EKB
         gkQX9niTelfs29zNb0Pz6mdJNwSfWjfT4gq8kfYBhFxWVXZJBkh6Fhz7iC/p8pubOE3f
         E1AXAT+o8XY8yieacYAPgbdOYhmAd7a+KKZ6W9C4B6+PqfItkkKCx6gAxOx4xLArmtrJ
         qHQ3XQElxWEqJyEXlCueG03mKpwNiKsZaiO+vCiqIxDQbdIJ6Ti91rIMDZcdBjV7PSWt
         iNLb68dVae25yrJXFpl1OvhWp6gQ/wvyKKeKHVsQVLuHV/OVmIIH1lpyfLoT8r5318sY
         KK/A==
X-Gm-Message-State: AOJu0YxuHPAbvkWjMVeIk9/OagopfiJUo+JiKcPB1eSI6A0eaOAWOZql
	Ea5HaBKhlvAvlJoYPwXLvyxwbiHj6qOi/AZu6BQH63N878ZZlOtNn4Tii144Eq/9PqbmZmgu2zL
	i34qvgOraBYcAqz5tH3hL9RYYQ3x02w==
X-Google-Smtp-Source: AGHT+IEeaTMjmQsOZcNGdODkzZLPkjAddNK7ZyAo6PA7ouOuWoQvmJMZHCpTx3MWqSmKurbNDYl37W5kFh728uK+HaM=
X-Received: by 2002:a2e:900a:0:b0:2dd:d3a0:e096 with SMTP id
 38308e7fff4ca-2e95b0c5833mr142680341fa.31.1716982452094; Wed, 29 May 2024
 04:34:12 -0700 (PDT)
MIME-Version: 1.0
References: <sU3Q.1716973567621792975.HgRu@lists.yoctoproject.org> <CANnLRdjaNT=gyMtw0T4M+HhwPxxxZJR9Dj4ZLWGXZDQc8x3yfg@mail.gmail.com>
In-Reply-To: <CANnLRdjaNT=gyMtw0T4M+HhwPxxxZJR9Dj4ZLWGXZDQc8x3yfg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 29 May 2024 13:34:00 +0200
Message-ID: <CANNYZj9J2dNCpAVBez-eCZ+MiKP5ZGVvGfD3rMWoX9AO10_XgQ@mail.gmail.com>
Subject: Re: [yocto] GPL License Compliance - Automatically detect linking
 against GPL libraries
To: yocto@lists.yoctoproject.org, smooge@gmail.com
Cc: fabian.hanke@bosch.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 11:34:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63225

On Wed, 29 May 2024 at 13:18, Stephen John Smoogen via
lists.yoctoproject.org <smooge=3Dgmail.com@lists.yoctoproject.org>
wrote:
> I wanted to bring up a nuance because you are saying 'GPL based library'.=
 There are several different GPL licenses which need to be evaluated when l=
inking to. The lawyers at Bosch can give the best advice, but this followin=
g rule of thumb may be useful:
> Linking to licenses with AGPL -> must be a compatible source license (aka=
 source must be available and modifiable by user) and must meet additional =
requirements for delivery
> Linking to licenses with GPL -> must be a compatible source license (aka =
source must be available and modifiable by user)
> Linking to licenses with LGPL -> can be a closed source library in many c=
ases. [again get a lawyer's review]
>
> Then there are the GPL and LGPL with exception licenses. Those exceptions=
 might be something 'slight' so that licenses incompatibilities between the=
 OpenSSL or Apache can be still 'excepted' for use. And then there are the =
exceptions which basically allow any closed source to link against it. Thos=
e need a lawyer's review. There are also differences between version 2 and =
version 3 of the licenses that again need lawyer's advice.
>
> On many Linux operating systems the libc is based off of glibc which is L=
GPL2+ with exceptions and GPL2+ with exceptions for various binaries. Other=
 libraries that are in common use may also be. There are also example layer=
's like the one that Etienne Cordonnier brought up which can help cut down =
potential conflicts.
>
> And my apologies for bringing up 'lawyers review' so much. Various parts =
of Bosch have worked in this space for a long time so I figured there was a=
 dedicated counsel who can help guide engineering projects through GPL and =
other license linking and compliance.
>

The question was how to figure out programmatically what actually
links with gpl pieces without doing a laborious manual review of every
component in the product. And doing it at the yocto integration point
where the problem is introduced, and not after the fact in legal
review where the cost of correcting that mistake is going to be 10x or
100x.

Sounds like this could be a test in package_qa task? I'm not aware of
anything in oe-core that does it, but experiments in that direction
welcome.

Alex

