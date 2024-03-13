Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3BCC54E58
	for <webhook@archiver.kernel.org>; Wed, 13 Mar 2024 12:05:21 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web11.15030.1710331513963295031
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Mar 2024 05:05:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=i18pVBum;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d28387db09so73794721fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 13 Mar 2024 05:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710331512; x=1710936312; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YYoGj+tlEmTDBQRfx3OzJ2SkbR/LOsNLj5rAwEUK4AM=;
        b=i18pVBum0olC1HsiMn99Wn5VBBcQSV6qtaicODL+PGk6Nd+j/3TU2lXWkn0lte2tSJ
         BT/SldmMEvUp9WTCqp0o8AFLQ1WotoLjRnkAgjmm/dSkZQVwsY9kbgLFigA10fDy0N2C
         0My9f/UTeNA5ZomGM3lL8PbWLlAhishTwpZci+0wfo6q5DEqPsoLhZYz/bcx7xNF3xJ0
         7RzxBWE8PgoF2QwvEMTwK4EoCvA8i0Xqg75e/JrPQ0aGKGVylNOUIEXsq61UkoW1gz23
         T2SKol6woF1nwdlz/gvyA+AHO3sUHUNJxbeus8vEjDjfi0n5/eN9iD72ciShsC+h6+f9
         3Juw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710331512; x=1710936312;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YYoGj+tlEmTDBQRfx3OzJ2SkbR/LOsNLj5rAwEUK4AM=;
        b=n/jTFiBGfMyNclzyUyqgWW10ZEMrV/yh/Ig44rzx36LzqrGqWAPOKPvuFzUlWg/CjV
         XId9Br9Mx/eK2Bzfkz7HbFs2cWLucttEcn1H1rNP10FghxzBLZXuitqUtL6bB7MuJu+/
         K18410CSNVI6DkUreWZXoGMVydaoYqV5YDK/w58/jI+63uBI3GUZq3uq2E88KNC471ae
         lqEwvV1oDJgoavyYwMU8S7WiUmfsOeS+4rS8edxFCdaFnuTF0Seo4BSQ2haIVhaW0kLg
         fSUvdS/Tos5+mgEAG8t179/6ocWUrLFM2JD8sv9X7Aczt/hEFvBvPfZn0pg737rE0Qtx
         B6qA==
X-Gm-Message-State: AOJu0YwDa7BSIyhyHlYxHettaydj5vc6hjSaAL3jdZIr9FmpnvfevSrZ
	1rZs13+yJwrR1V57npaxqj8mWNR64WqG7D0ba90n8m81sIHJV10gRZcuwiHOysT/caKRZGRqOkj
	FHEvhBtDIL/CwlToZNgpXmMaaQYqRcUlB
X-Google-Smtp-Source: AGHT+IEs0nDQY/OB3jqxMnO2AnzZ1QfZ2PsPX+7wR6NL4fGIGSbU19lLN1OxaaP7q5vLnm5NwHZbjk0MkndHzR2BTxg=
X-Received: by 2002:a05:6512:3713:b0:513:25c6:e98d with SMTP id
 z19-20020a056512371300b0051325c6e98dmr7578207lfr.57.1710331511440; Wed, 13
 Mar 2024 05:05:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAKe-BNpj9=keyNj9SaHeHouFNzbFXW-De=mQ2qA4TOVURc32og@mail.gmail.com>
In-Reply-To: <CAKe-BNpj9=keyNj9SaHeHouFNzbFXW-De=mQ2qA4TOVURc32og@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 13 Mar 2024 13:04:59 +0100
Message-ID: <CANNYZj-N2ESLT69+K91-D0HJDjevUX+VFSRyX1fd-O-CKu0mng@mail.gmail.com>
Subject: Re: [yocto] How to use a single directory in multiple layers.
To: yocto@lists.yoctoproject.org, saswatinayak2010@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Mar 2024 12:05:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62750

Perhaps you can explain what is in that directory, and why do you need
access to it from another layer. It's not a common scenario.

Alex

On Wed, 13 Mar 2024 at 11:38, Saswati Nayak <saswatinayak2010@gmail.com> wrote:
>
> Hello All,
>
>          I require guidance on utilizing a file directory present in the 'meta-x' layer while also needing access to the same directory within the 'meta-y' layer.
>
> How can I achieve this while keeping the directory centralized in one layer?
>
>
> Thanks & Regards
> Saswati
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62748): https://lists.yoctoproject.org/g/yocto/message/62748
> Mute This Topic: https://lists.yoctoproject.org/mt/104902553/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

