Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9594EC76196
	for <webhook@archiver.kernel.org>; Mon, 10 Apr 2023 14:57:00 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
 by mx.groups.io with SMTP id smtpd.web11.46396.1681138613869957819
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Apr 2023 07:56:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lvHKm/H2;
 spf=pass (domain: gmail.com, ip: 209.85.167.169, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f169.google.com with SMTP id bl22so21306107oib.11
        for <yocto@lists.yoctoproject.org>; Mon, 10 Apr 2023 07:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681138613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z2L38BcrtlnY17634eG49TCLZa2Tyxci3SS4UgDRxbo=;
        b=lvHKm/H2WBF6OjZBe1ntBGKlGVF4TUnOxGvE6bu82qjxiwn/IvW/Z9lF+ifDr+fiDJ
         D/7nUQXfJpEMtdFIPmSzWhW8CZ34LIV+1gNGhPIs52LCkJOog8USl+ESwg9UvohOGGWM
         u6UjWwP1pofUpeiJ+ogjjS5l4zHzFVb0fZmW4uu3vSCEfcNXsGG21g5lD9kR9/TYlE2Y
         Lm3J9nmmT6km083hmyHbedWfDJhnz6LqIYtd65rXIJPquHVxamz+VyeqdYJ/JX1g4oSt
         OFRwenTvkVaQ2hLh6mwJPbeTelrfihpV5jsdRTeYZeX1tAEX5cpthrMQsKJ/xou4dp3K
         LUgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681138613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z2L38BcrtlnY17634eG49TCLZa2Tyxci3SS4UgDRxbo=;
        b=mV1ER5lL34Vd8OI2lyCbvt3Q16kEeyUEQrEYiax04Krc35jm5Op7IvD7ErHbJgJTl2
         E55yND4g8eOUYIUoZz6GJ9HaKe8f2J77Cs4w7CVKhGjG9fjJZKiNZARDUbqpsa0llgLh
         ZYol7BBaeKVccGC0mqtsmeSAeDEB73VKAUorgvnnH9uC7shVkHHNY68dFWITirKbnJ/s
         XOb8jv7PZRORIJ0eDN9fCr6CLCXbrY5ezfyaPvcuFv/VqEyfRzyatHgWVCbq2pLS5nyz
         6SchzXHbVULRNpCHGo0i/2/CYt5cGUVzLLkujSk/rDZfSfmF4SWtKk/NkjSnTfxSiAa5
         ouGA==
X-Gm-Message-State: AAQBX9egKG8HmVH0cLBAreOnmhixUUuRBsTYzTmn/yx9JGgYHzHIi8Bz
	2o2B24t/B4DFtAaTLgW2n1Qqvv2NQ3to/UweSuc=
X-Google-Smtp-Source: AKy350aJdh4+dDyu+aC/ipijUXq6uBve+ykWH+z6xRhMQi+vjoy1j/Qgq09soZAGiJ/yn8ZyibD/rfxesLm42bhMo1I=
X-Received: by 2002:a05:6808:657:b0:389:1274:be51 with SMTP id
 z23-20020a056808065700b003891274be51mr3091823oih.4.1681138613064; Mon, 10 Apr
 2023 07:56:53 -0700 (PDT)
MIME-Version: 1.0
References: <6Dvh.1681123736329075845.nOOh@lists.yoctoproject.org>
In-Reply-To: <6Dvh.1681123736329075845.nOOh@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 10 Apr 2023 07:56:27 -0700
Message-ID: <CAMKF1spuP1oVWBXhzFLukbYJxLTtgx6tZ0sFxeSOw_n-oKBWkw@mail.gmail.com>
Subject: Re: [yocto] configure task runs in devshell but not in bitbake
 #devtool #kirkstone
To: douglas.cooper1@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Apr 2023 14:57:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59656

On Mon, Apr 10, 2023 at 3:48=E2=80=AFAM <douglas.cooper1@gmail.com> wrote:
>
> I have a native tool (dotnet cli) that i use for configure/compile. It us=
ed to run fine in honister but im now having issues in kirkstone after rece=
ntly upgrading. I can switch to a devshell and execute run.do_configure scr=
ipt without issue. Any tips to further debug would be appreciated.

Its not clear how its failing. So please describe how you built this
tool. Is it a native recipe which provides it ? if not then are you
expecting it to
come from host. If its being run but failing then share error logs.
This might help further pinpoint the problem.

> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59653): https://lists.yoctoproject.org/g/yocto/messag=
e/59653
> Mute This Topic: https://lists.yoctoproject.org/mt/98172764/1997914
> Mute #devtool:https://lists.yoctoproject.org/g/yocto/mutehashtag/devtool
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkst=
one
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

